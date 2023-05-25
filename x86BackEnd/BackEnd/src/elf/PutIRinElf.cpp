#include <assert.h>
#include <stdio.h>
#include <stddef.h> 

#include "DebugIR.h"
#include "PutIRctx.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "EasyDebug.h"

// const size_t BAD_ADD = 0xBAD;
const size_t VAR_SIZE = 8;

static const char* GetOperationName (OperatorType type)
    {
    switch(type)
        {
        case OperatorType::Add: return "add";
        case OperatorType::Sub: return "sub";
        case OperatorType::Mul: return "imul";
        case OperatorType::Div: return "idiv";

        case OperatorType::Bigger: return "setg";
        case OperatorType::Less:   return "setl"; 

        case OperatorType::Unknown: 
        default:
            return ("Unknown"); 
        }
    }

const char* DUMP_FILE = "logs/dump.s";

#define print_rip()           fprintf(DUMP, "%x:\n", ctx->rip)
#define print_label(VALUE)    fprintf(DUMP, "%s:\n", (VALUE)->name)
#define print_raw(format, ...) fprintf(DUMP, format __VA_OPT__(,) __VA_ARGS__);   

#define PRINT_INSTR_COMM(INSTR) print_raw ("### "); WriteToFile (DUMP, INSTR); print_raw("\n");   


static int MoveToLocalVar   (Context* ctx, const Value* src, const Value* dest);
static int MoveFromLocalVar (Context* ctx, const Value* srs, Value* dest);
static int PutMathOperation (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest);

static GPRegisterNumber PutValueToReg (Context* ctx, const Value* val);
static int MoveToReg (Context* ctx, const Value* val, Reg* dest_reg);


static int MoveToLocalVar (Context* ctx, const Value* src, const Value* dest)
    {
    assert (ctx);
    assert (src);
    assert (dest);

    Location* dest_loc = FindLocation (ctx->value_usage, dest->get_name());
    assert   (dest_loc);
    assert   (dest_loc->type == LocationType::Local);

    if (dest_loc->status == LocationType::Register)
        FreeLocationReg (dest_loc);

    PutValueToReg (ctx, src);

    Location* src_loc = FindLocation (ctx->value_usage, src->get_name());
    assert   (src_loc);
    assert   (src_loc->status == LocationType::Register);

    MoveToStack (ctx, src_loc->reg_number, dest_loc->stack.offset);
    
    dest_loc->status = LocationType::Stack;
    return 0;
    }

static int MoveFromLocalVar (Context* ctx, const Value* src, const Value* dest)
    {
    assert (ctx);
    assert (src);
    assert (dest);

    Location* src_loc = FindValue (ctx->value_usage, src->get_name());
    assert   (src_loc);
    assert   (src_loc->type == LocationType::Stack);
    assert   (src_loc->variable_type == LOCAL);

    PutValueToReg (ctx, dest);

    Location* dest_loc = FindValue (ctx->value_usage, dest->get_name ());
    assert   (dest_loc);
    assert   (dest_loc->type == LocationType::Register);

    MoveFromStack (ctx, src_loc->offset, dest_loc->reg_number);

    dest_loc->type       = LocationType::Register;
    dest_loc->reg_number = dest_loc->reg_number;

    return 0;
    }

static int PutMathOperation (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest)
    {
    assert (ctx);

    switch (operation)
        {
        case OperatorType::Add:
        case OperatorType::Sub:
                          return PutMathAddSub (ctx, operation, src, dest);

        case OperatorType::Mul:
        case OperatorType::Div: return PutMulDiv (ctx, operation, src, dest);

        case OperatorType::Bigger:
        case OperatorType::Less: return PutLogicOp (ctx, operation, src, dest);
        default:
            {
            report ("Unknown operator\n");            
            return 0;
            }
        }
    }

static GPRegisterNumber PutValueToReg (Context* ctx, const Value* val)
    {
    $log(DEBUG)
    assert(ctx);
    assert(val);

    Location* loc = FindLocation (ctx->value_usage, val->name);
    assert   (loc);

    if (loc->type == LocationType::Register)
        return loc->reg.number;
    
    // report ("Alloc\n");
    Reg*    free_reg = AllocateReg (ctx->usage_table);
    assert (free_reg);
    assert (free_reg->number >= 0);

    // print ("\t#put value to reg, Allocated reg %s\n", GetRegName (free_reg->number));
    static char comment [MAX_COMMENT_LENGTH + 16] = {};

    snprintf (comment, MAX_COMMENT_LENGTH,"put value to reg: %s -> %s", 
                                           loc->name, GetRegName (reg->number));
    
    MoveToReg (ctx, val, free_reg, comment);
    return free_reg->number;
    }

static int MoveToReg (Context* ctx, const Value* val, Reg* dest_reg, const char* comment)
    {
    $log(DEBUG)
    assert (ctx);
    assert (val);
    assert (dest_reg);

    Location* loc = FindLocation (ctx->value_usage, val->get_name());
    assert   (loc);

    switch (loc->type)
        {
        case LocationType::Register:
                PutMovRR (ctx, loc->reg.number, dest_reg->number, comment);
                FreeReg  (loc->reg_num);
                break;

        case LocationType::NoWhere:  
                // PRINT_VALUE (val);
                assert(val->type == ValueType::Constant);
                PutMovConstant (ctx, dest_reg->number, val->get_data(), comment);
                break;

        case LocationType::Stack:
                MoveFromStack (ctx, loc->stack.offset, dest_reg->number, comment);
                break;

        case LocationType::Memory:
                print ("get from mem -> %s\n", GetRegName(dest_reg->number));
                assert (0);

        default:
                assert(0);
        }

    // report ("\t%s\n", loc->name);
    // assert (loc->type != LocationType::Register);
    SetLocation (loc, dest_reg);

    return 0;
    }

//////////////////////////////////////////////////////
size_t DecreaseUsage (LocationTable* table, const Value* val);
size_t DecreaseUsage (LocationTable* table, const Value* val)
    {
    report ("decreasing usage\n");

    assert(table);
    assert(val);
    
    Location*  location = FindLocation (table, val->name);
    assert (location);
    PrintLocation (location);
    
    if (location->n_usage == 0 && location->type == LocationType::Register)
        FreeReg (location->reg.number);

    if (--location->n_usage == 0 && location->type == LocationType::Register)
        FreeReg (location->reg.number);

    PrintLocation (location);
    return location->n_usage;
    };

static int PutGlobalVars (Context* ctx, const ValueArr* global_vars);
static int PutGlobalVar  (Context* ctx, const GlobalVar* var);

static int PutFunctions  (Context* ctx, const ValueArr* functions);
static int PutFunction   (Context* ctx, const Function* function);
static int PutParameters (Context* ctx, const ValueArr* argv);

static int PutBaseBlock  (Context* ctx, const BaseBlock* block);
static int PutInstruction(Context* ctx, const Instruction* instr);

static int SetStart (Context* ctx);
static int SetStart (Context* ctx)
    {
    assert (ctx);

    print (".global main\n");
    print (".extern fin\n");
    print (".extern fout\n\n");
    
    // print (".global\n");

    print (".section .text\n");

    print_raw ("%s:\n", "_start");
    print    ("# call InitGlobals\n");
    print    ("call main\n");
    print    ("mov $60, %%rax\n");
    print    ("syscall\n\n");

    Reference* reference = (Reference*) calloc (1, sizeof(reference[0]));
    assert (reference);

    reference->position  = 0;
    reference->va        = 0;
    reference->reference = "main";

    AddReference (&ctx->call_refs, reference);
    return 0; 
    }

//////////////////////////////////////////////////////
int PutIRinElf (const Module* mod, Elf* elf);
int PutIRinElf (const Module* mod, Elf* elf)
    {
    assert(mod);

    Context ctx = {};
    ContextCtor (&ctx, elf);

    DUMP = fopen (DUMP_FILE, "w");
    assert (DUMP);
    setvbuf (DUMP, NULL, _IONBF, 0);

    SetStart (&ctx);
    PutGlobalVars (&ctx, &mod->global_vars);
    PutFunctions  (&ctx, &mod->functions);

    ResolveReferences (ctx.code, &ctx.functions, &ctx.call_refs); 

    ContextDtor (&ctx);
    fclose(DUMP);
    DUMP = NULL;

    return SUCCESS;
    }

static int PutGlobalVars (Context* ctx, const ValueArr* global_vars)
    {
    assert(ctx);
    assert(global_vars);
    
    for (size_t i = 0; i < global_vars->size; i++)
        PutGlobalVar (ctx, (const GlobalVar*) global_vars->arr[i]);

    return SUCCESS;
    }

static int PutGlobalVar  (Context* ctx, const GlobalVar* var)
    {
    assert(ctx);
    assert(var);

    Address* var_ad = (Address*) calloc (1, sizeof(var_ad[0]));
    assert(var_ad);

    var_ad->name = var->name;
    var_ad->va   = GetVa (ctx, VAR_SIZE);

    AddAddress (&ctx->global_vars, var_ad);
    return SUCCESS;
    }

static int PutFunctions (Context* ctx, const ValueArr* functions)
    {
    assert(ctx);
    assert(functions);
    
    for (size_t i = 0; i < functions->size; i++)
        PutFunction (ctx,  (const Function*) (functions->arr[i]));

    return SUCCESS;
    }

static int SetStackFrame (Context* ctx, size_t n_locals)
    {
    assert(ctx);

    PutSubRsp (ctx, n_locals * 8);

    Reg* rbp = GetReg (RBP);
    rbp->status = LOCKED;

    PutPushR (ctx, rbp->number);
    PutMovRR (ctx, RSP, RBP);

    print_raw ("\n");
    return SUCCESS;
    }

static int ClearStackFrame (Context* ctx, size_t n_locals)
    {
    assert(ctx);

    Reg* rbp = GetReg (RBP);
    // rbp->status = FREE;

    PutPopR (ctx, rbp->number);
    
    PutAddRsp (ctx, n_locals * 8);

    return SUCCESS;
    }

static int SaveCalleeSaveRegisters  (Context* ctx)
    {
    PutPushR (ctx, RBX);

    for (int i = R10; i <= R15; i++)
        PutPushR (ctx, (GPRegisterNumber) i);

    print_raw ("\n");
    return 0;
    }

static int RestoreCalleeSaveRegisters  (Context* ctx)
    {

    for (int i = R15; i >= R10; i--)
        PutPopR (ctx, (GPRegisterNumber) i);

    PutPopR (ctx, RBX);
   
    print_raw ("\n");
    return 0;
    }

static int PutFunction (Context* ctx, const Function* function)
    {
    assert(function);
    print_label (function);

    Address* func_ad = (Address*) calloc (1, sizeof(func_ad[0]));
    assert(func_ad);

    func_ad->name = function->name;    
    func_ad->va   = GetVa (ctx, 0);

    AddAddress (&ctx->functions, func_ad);

    SetCtxForFunction (ctx);
    SetValuesUsage    (ctx->value_usage,  function);
    
    SetStackFrame           (ctx, ctx->value_usage->n_local_vars);
    SaveCalleeSaveRegisters (ctx);

    ResetRegisters ();
    SetParametersRegisters (ctx, &function->argv);

    const ValueArr* body = &function->body;
    for (size_t i = 0; i < body->size; i++)
        PutBaseBlock (ctx, (const BaseBlock*) body->arr[i]);

    RestoreCalleeSaveRegisters (ctx);
    ClearStackFrame (ctx, ctx->value_usage->n_local_vars);
    PutRet (ctx);

    ResolveReferences (ctx->code, ctx->baseblocks, ctx->jump_refs);
    
    ClearCtxAfterFunction (ctx);
    
    print_raw ("\n");
    return SUCCESS;
    }

static int PutBaseBlock  (Context* ctx, const BaseBlock* block)
    {
    assert(block);
    print_label(block);
    
    ctx->n_pushes = 0;

    Address* add = (Address*) calloc (1, sizeof(add[0]));
      assert(add);

    add->name = block->name;
    add->va   = GetVa (ctx, 0);

    AddAddress (ctx->baseblocks, add);

    ResetTempLocations ();

    const ValueArr* inst_arr = &block->inst_arr;
    for (size_t i = 0; i < inst_arr->size; i++)
        PutInstruction (ctx,  (const Instruction*) inst_arr->arr[i]);

    return SUCCESS;
    }

static int PutOperator (Context* ctx, const Operator* op)
    {
     $log(DEBUG)
    // print ("# put math operation\n");
    assert(ctx);
    assert(op);

    report ("Put math\n");

    const Value* result    = op;

    const Value* left_val  = op->left_op; 
          assert(left_val);

    const Value* right_val = op->right_op;
          assert(right_val);
    
    report ("1\n");
    GPRegisterNumber right = PutValueToReg (ctx, right_val);
    report ("2\n");
    GPRegisterNumber left  = PutValueToReg (ctx, left_val);
    report ("2.2\n");
    // PRINT_REG (left);
    // PRINT_REG (right);

    Location* left_loc = FindLocation (ctx->value_usage, left_val->name);
    assert (left_loc);

    Location* result_loc = FindLocation(ctx->value_usage, result->name);
    assert   (result_loc);
    assert   (result_loc->type != LocationType::Register);

    assert(left_loc->reg.number == left);
    Reg* result_reg = GetReg (left);
    assert (result_reg);

    left_loc->type = LocationType::NoWhere;

    if (left_loc->n_usage > 1)
        {
        report ("Alloc\n");
        PrintLocation (left_loc);
        Reg* save_left = AllocateReg ();
        assert (save_left);    

        print ("# save left\n");
        PutMovRR (ctx, left, save_left->number);

        SetReg (left_loc, save_left);
        }

    SetReg (result_loc, result_reg);

    PutMathOperation (ctx, op->type, right, left);

    if (result_reg->number != left)
        PutMovRR (ctx, left, result_reg->number);

    DecreaseUsage (ctx->value_usage, right_val);
    DecreaseUsage (ctx->value_usage, left_val); // if left_val is no more used, than result will take it
    
    report ("END math\n");
    return 0;
    }

static int PutConditionalBr (Context* ctx, const Branch* br)
    {
    assert (ctx);
    assert (br);

    Value* cond = br->condition;
    assert(cond);

    Location* cond_loc = FindLocation (ctx->value_usage, cond->name);
    assert(cond_loc);
    assert(cond_loc->type == LocationType::Register);

    BaseBlock* true_block = br->true_block;
        assert(true_block);

    BaseBlock* false_block = br->false_block;
    if (!false_block)
        assert (false_block);

    Reference* true_ref = (Reference*) calloc (1, sizeof(true_ref[0]));
       assert (true_ref);

    true_ref->position  = 0;
    true_ref->va        = GetVa (ctx, 0);
    true_ref->reference = true_block->name;

    Reference* false_ref = (Reference*) calloc (1, sizeof(false_ref[0]));
       assert (false_ref);

    false_ref->position  = 0;
    false_ref->va        = GetVa (ctx, 0);
    false_ref->reference = false_block->name;

    PutCJump (ctx, cond_loc->reg.number, true_ref->reference);
    PutJump  (ctx, false_ref->reference);

    AddReference (ctx->jump_refs, true_ref);
    AddReference (ctx->jump_refs, false_ref);

    return 0;
    }

#include <stack>

using namespace std;
static  stack <Reg> PushedRegs;

static int SaveBusyRegs (Context* ctx);
static int SaveBusyRegs (Context* ctx)
    {
    assert (ctx);

    print ("# save busy regs\n");
    for (int i = RDI; i <= R9; i++)
        {
        Reg* param_reg = GetReg (i);

        if (param_reg->status != BUSY)
            continue;

        report ("SUKA :::::: %s\n", GetRegName ( (GPRegisterNumber) i));

        PutPushR (ctx, param_reg->number);
        PushedRegs.push (*param_reg); // to save old location and status
        }

    Reg* rax = GetReg (RAX);
    assert (rax);

    if (rax->status != BUSY)
        return 0;

    LocationTable* table = ctx->value_usage;
    assert (table);

    for (size_t i = 0; i < table->size; i++)
        {
        Location* loc = table->arr [i];
        assert (loc);

        if (loc->type == LocationType::Register && loc->reg.number == RAX)
            {
            PrintLocation (loc);
            // assert (0);
            }
        }

  /*  
    Location* loc = rax->loc;
    assert (loc);
    assert (loc->variable_type == LOCAL);
    PrintLocation (loc);

    MoveToStack (ctx, rax->number, loc->stack.offset);
    FreeReg (rax->number);    
    */
    return 0;
    }

static int SetRegsBeforeCall (Context* ctx, const ValueArr* argv)
    {
    $log(DEBUG)
    assert (ctx);
    assert (argv);

    print ("# set parameters \n");
    
    int i = RDI;
    for (size_t n_params = 0; n_params < argv->size; n_params++)
        {
        // report ("%d, %lu, size %lu\n", i, n_params, argv->size);
        Reg* param_reg = GetReg (i++);

        Value*    param_val = argv->arr [n_params];
        assert (param_val);

        Location* param_loc = FindLocation (ctx->value_usage, param_val->name);
        assert   (param_loc); 
        
        MoveToReg (ctx, param_val, param_loc, param_reg);
        DecreaseUsage (ctx->value_usage, param_val);
        }

    return 0;
    }

static int RestoreBusyRegs (Context* ctx)
    {
    assert (ctx);

    while (!PushedRegs.empty())
        {
        Reg temp = PushedRegs.top();
        PushedRegs.pop();

        Reg* reg = GetReg (temp.number);

        reg->loc = temp.loc;
        reg->status = temp.status;

        PutPopR (ctx, reg->number); 
        };
    
    return 0;
    }

static int PutInstruction (Context* ctx, const Instruction* instr)
    {
    assert(ctx);
    assert(instr);

    PRINT_INSTR_COMM(instr);

    switch (instr->Instruction::type)
        {
        case InstructionType::Store: // init local val
                            {
                            Value* init_val = ((const Store*) instr)->val;
                            
                            if (!init_val)
                                return SUCCESS;

                            // INSTR MUST be Local Variable in Stack
                            Location* local_var = FindLocation (ctx->value_usage, instr->name); 
                               assert(local_var);
                            
                            MoveToLocalVar (ctx, init_val, local_var);
                            DecreaseUsage (ctx->value_usage, init_val);
        
                            break;
                            }

        case InstructionType::Load: // save local val
                            {
                            Value*  dest = ((const Load*) instr)->dest; 
                            assert (dest);

                            Value*  src = ((const Load*) instr)->src;
                            assert (src);

                            Location* dest_loc = FindLocation (ctx->value_usage, dest->name); 
                              assert (dest_loc);
                            
                            MoveToLocalVar (ctx, src, dest_loc);
                            DecreaseUsage (ctx->value_usage, src);

                            break;
                            }

        case InstructionType::Operator:
                            PutOperator (ctx, (const Operator*) instr);
                            break;

        case InstructionType::Branch:
                            {
                            const Branch* br  = (const Branch*) instr;
                            const Value* cond = br->condition;
                            
                            if (cond)  
                                return PutConditionalBr (ctx, br);

                            Reference* true_ref = (Reference*) calloc (1, sizeof(true_ref[0]));
                              assert (true_ref);

                            true_ref->position  = 0;
                            true_ref->va        = GetVa (ctx, 0);
                            true_ref->reference = br->true_block->name;

                            print ("jmp %s\n\n", true_ref->reference); 
                            AddReference (ctx->jump_refs, true_ref);
                            break;
                            }
        case InstructionType::Call: 
                            {
                            const Function* call_func = ((const Call*) instr)->function;
                            assert(call_func);

                            SaveBusyRegs (ctx);
                            SetRegsBeforeCall (ctx, &((const Call*) instr)->argv);

                            Reference* call_ref = (Reference*) calloc (1, sizeof(call_ref[0]));
                              assert (call_ref);

                            call_ref->position  = 0;
                            call_ref->va        = GetVa (ctx, 0);
                            call_ref->reference = call_func->name;

                            AddReference (&ctx->call_refs, call_ref);
                            
                            PutCall (ctx, call_func->name);

                            Location* call_loc = FindLocation (ctx->value_usage, instr->name);
                            assert (call_loc);

                            if (call_loc->n_usage > 0)
                                {
                                Reg* rax = GetReg (RAX);
                                SetReg (call_loc, rax);
                                }

                            RestoreBusyRegs (ctx);

                            report ("Alloc\n");
                            Reg* call_reg = AllocateReg();
                            assert(call_reg);
                            
                            PutMovRR (ctx, RAX, call_reg->number);
                            SetReg (call_loc, call_reg);

                            break;
                            }

        case InstructionType::Return:
                            {
                            const Value* ret_val = ((const Return*) instr)->value;

                            if (!ret_val)
                                break;
                            
                            assert (ret_val->name);

                            Reg* rax = GetReg (RAX);
                            assert (rax);

                            MoveToReg (ctx, ret_val, FindLocation (ctx->value_usage, ret_val->name), rax); 
                            break;
                            }
        default:
            report ("Unkown Instruction type\n");
            break;
        }

    print ("\n");
    return SUCCESS;
    }