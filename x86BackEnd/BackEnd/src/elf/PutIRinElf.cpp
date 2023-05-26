#include <assert.h>
#include <stdio.h>
#include <stddef.h> 

#include "DebugIR.h"
#include "IRContext.h"
#include "Commands.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "EasyDebug.h"

// const size_t BAD_ADD = 0xBAD;
const size_t VAR_SIZE = 8;

const int MAX_COMMENT_LENGTH = 128;
const char* MakeComment (const char* format, ...);
const char* MakeComment (const char* format, ...)
    {
    assert (format);

    static char comment [MAX_COMMENT_LENGTH + 16] = {};

    va_list ptr;
    va_start(ptr, format);

    size_t length = strlen(format);
    assert(length < MAX_COMMENT_LENGTH);

    vsnprintf (comment, MAX_COMMENT_LENGTH, format, ptr);

    va_end(ptr);
    return comment;
    }

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
// static int MoveFromLocalVar (Context* ctx, const Value* srs, Value* dest);

static int PutMathOperation (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest);

static GPRegisterNumber PutValueToReg (Context* ctx, const Value* val);
static int MoveToReg (Context* ctx, const Value* val, Reg* dest_reg, const char* comment = NULL);


static int MoveToLocalVar (Context* ctx, const Value* src, const Value* dest)
    {
    assert (ctx);
    assert (src);
    assert (dest);

    PutValueToReg (ctx, src);

    Location* src_loc = FindLocation (&ctx->value_usage, src->get_name());
    assert   (src_loc);
    assert   (src_loc->type == LocationType::Register);

    Location* dest_loc = FindLocation (&ctx->value_usage, dest->get_name());
    assert   (dest_loc);
    assert   (dest_loc->variable_type == LOCAL);

    PutMoveToStack (ctx, src_loc->reg_num, dest_loc->offset);
    
    dest_loc->type = LocationType::Stack;
    return 0;
    }

static int MoveFromLocalVar (Context* ctx, const Value* src, const Value* dest)
    {
    assert (ctx);
    assert (src);
    assert (dest);

    Location* src_loc = FindLocation (&ctx->value_usage, src->get_name());
    assert   (src_loc);
    assert   (src_loc->type == LocationType::Stack);
    assert   (src_loc->variable_type == LOCAL);

    PutValueToReg (ctx, dest);

    Location* dest_loc = FindLocation (&ctx->value_usage, dest->get_name ());
    assert   (dest_loc);
    assert   (dest_loc->type == LocationType::Register);

    PutMoveFromStack (ctx, src_loc->offset, dest_loc->reg_num);

    dest_loc->type    = LocationType::Register;
    dest_loc->reg_num = dest_loc->reg_num;

    return 0;
    }

static int PutMathOperation (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest)
    {
    assert (ctx);

    switch (operation)
        {
        case OperatorType::Add:
        case OperatorType::Sub:
                          PutMathAddSub (ctx, operation, src, dest);
                          return 0;

        case OperatorType::Mul:
        case OperatorType::Div: 
                           PutMulDiv (ctx, operation, src, dest);
                           return 0;

        case OperatorType::Bigger:
        case OperatorType::Less: 
                           PutLogicOp (ctx, operation, src, dest);
                           return 0; 
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

    Location* loc = FindLocation (&ctx->value_usage, val->get_name());
    assert   (loc);

    // report ("Alloc\n");
    Reg*    free_reg = AllocateReg (&ctx->value_usage);
    assert (free_reg);
    assert (free_reg->number >= 0);

    // print ("\t#put value to reg, Allocated reg %s\n", GetRegName (free_reg->number));
    const char* comment = MakeComment ("put value to reg: %s -> %s", 
                                       loc->name, GetRegName (free_reg->number));
    assert (comment);

    MoveToReg (ctx, val, free_reg, comment);
    return free_reg->number;
    }

static int MoveToReg (Context* ctx, const Value* val, Reg* dest_reg, const char* comment)
    {
    $log(DEBUG)
    assert (ctx);
    assert (val);
    assert (dest_reg);

    Location* loc = FindLocation (&ctx->value_usage, val->get_name());
    assert   (loc);

    switch (loc->type)
        {
        case LocationType::Register:
                PutMovRR (ctx, loc->reg_num, dest_reg->number, comment);
                break;

        case LocationType::NoWhere:  
                // PRINT_VALUE (val);
                assert(val->get_type() == ValueType::Constant);
                PutMovConstant (ctx, dest_reg->number, ((const Constant*) val)->get_data(), comment);
                break;

        case LocationType::Stack:
                PutMoveFromStack (ctx, loc->offset, dest_reg->number, comment);
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
// Module
//////////////////////////////////////////////////////
static int SetStart (Context* ctx);

void Module::translate_x86 (Elf* elf) const
    {
    assert (elf);

    Context ctx = {};
    ContextCtor (&ctx, elf);

    DUMP = fopen (DUMP_FILE, "w");
    assert (DUMP);
    setvbuf (DUMP, NULL, _IONBF, 0);

    SetStart (&ctx);

    for (size_t i = 0; i < global_vars.get_size(); i++)
        (global_vars.get_const_value(i))->translate_x86 (&ctx);

    for (size_t i = 0; i < functions.get_size(); i++)
        (functions.get_const_value(i))->translate_x86 (&ctx);
    
    ResolveReferences (ctx.code, &ctx.functions, &ctx.call_refs); 

    ContextDtor (&ctx);
    fclose(DUMP);
    DUMP = NULL;
    }

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
// GlobalVar
//////////////////////////////////////////////////////
void GlobalVar::translate_x86 (Context* ctx) const 
    {
    assert(ctx);

    Address* var_ad = (Address*) calloc (1, sizeof(var_ad[0]));
    assert(var_ad);

    var_ad->name = name;
    var_ad->va   = GetVa (ctx, VAR_SIZE);

    AddAddress (&ctx->global_vars, var_ad);
    }

//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
static int SetStackFrame (Context* ctx, size_t n_locals);
static int ClearStackFrame (Context* ctx, size_t n_locals);
static int SaveCalleeSaveRegisters  (Context* ctx);
static int RestoreCalleeSaveRegisters  (Context* ctx);

void Function::translate_x86 (Context* ctx) const 
    {
    Address* func_ad = (Address*) calloc (1, sizeof(func_ad[0]));
    assert(func_ad);

    func_ad->name = name;    
    func_ad->va   = GetVa (ctx, 0);

    AddAddress (&ctx->functions, func_ad);

    SetCtxForFunction (ctx);

    this->count_location(&ctx->value_usage);
    
    SetStackFrame           (ctx, ctx->value_usage.n_local_vars);
    SaveCalleeSaveRegisters (ctx);

    ResetRegisters ();
    SetParametersRegisters (&ctx->value_usage, &argv);

    for (size_t i = 0; i < body.get_size(); i++)
        (body.get_const_value(i))->translate_x86 (ctx) ;

    RestoreCalleeSaveRegisters (ctx);
    ClearStackFrame (ctx, ctx->value_usage.n_local_vars);
    PutRet (ctx);

    ResolveReferences (ctx->code, &ctx->baseblocks, &ctx->jump_refs);
    
    ClearCtxAfterFunction (ctx);
    
    print_raw ("\n");
    }

static int SetStackFrame (Context* ctx, size_t n_locals)
    {
    assert(ctx);

    PutSubRsp (ctx, n_locals * 8);

    Reg* rbp = GetReg (RBP);

    PutPushR (ctx, rbp->number);
    PutMovRR (ctx, RSP, RBP);

    print_raw ("\n");
    return SUCCESS;
    }

static int ClearStackFrame (Context* ctx, size_t n_locals)
    {
    assert(ctx);

    Reg* rbp = GetReg (RBP);
    
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

//////////////////////////////////////////////////////
// BaseBlock
//////////////////////////////////////////////////////
void BaseBlock::translate_x86 (Context* ctx) const 
    {
    assert (ctx);
    
    ctx->n_pushes = 0;

    Address* add = (Address*) calloc (1, sizeof(add[0]));
      assert(add);

    add->name = name;
    add->va   = GetVa (ctx, 0);

    AddAddress (&ctx->baseblocks, add);

    for (size_t i = 0; i < inst_arr.get_size(); i++)
        (inst_arr.get_const_value(i))->translate_x86 (ctx);
    }

//////////////////////////////////////////////////////
// Operator
//////////////////////////////////////////////////////
void Operator::translate_x86 (Context* ctx) const
    {
    assert(ctx);

    GPRegisterNumber right = PutValueToReg (ctx, right_op);
    GPRegisterNumber left  = PutValueToReg (ctx, left_op);

    Location* left_loc = FindLocation (&ctx->value_usage, left_op->get_name());
    assert   (left_loc);
    assert   (left_loc->type == LocationType::Register);

    Location* result_loc = FindLocation (&ctx->value_usage, name);
    assert   (result_loc);
    assert   (result_loc->type == LocationType::NoWhere);

    Reg*    result_reg = GetReg (left_loc->reg_num);
    assert (result_reg);

    if (left_loc->n_usage > 1)
        {
        Reg* save_left = AllocateReg (&ctx->value_usage);
        assert (save_left);    

        PutMovRR (ctx, left, save_left->number, "# save left");
        SetLocation   (left_loc, save_left);
        }

    SetLocation (result_loc, result_reg);

    PutMathOperation (ctx, op_type, right, left);

    DecreaseUsage (&ctx->value_usage, left_op); 
    DecreaseUsage (&ctx->value_usage, right_op);
    }

//////////////////////////////////////////////////////
// Branch
//////////////////////////////////////////////////////
void Branch::translate_x86 (Context* ctx) const
    {

    Reference* true_ref = (Reference*) calloc (1, sizeof(true_ref[0]));
        assert (true_ref);

    true_ref->position  = 0;
    true_ref->va        = GetVa (ctx, 0);
    true_ref->reference = true_block->get_name();

    AddReference (&ctx->jump_refs, true_ref);
    
    name_t jump_label = true_ref->reference;

    if (condition)
        {  
        PutValueToReg (ctx, condition);

        Reference* false_ref = (Reference*) calloc (1, sizeof(false_ref[0]));
        assert (false_ref);

        false_ref->position  = 0;
        false_ref->va        = GetVa (ctx, 0);
        false_ref->reference = false_block->get_name();

        Location* cond_loc = FindLocation (&ctx->value_usage, condition->get_name());
        assert   (cond_loc);

        PutCJump (ctx, cond_loc->reg_num, true_ref->reference);
        AddReference (&ctx->jump_refs, false_ref);

        jump_label = false_ref->reference;
        }

    PutJump  (ctx, jump_label);
    }

//////////////////////////////////////////////////////
// Call
//////////////////////////////////////////////////////
#include <stack>

using namespace std;
static  stack <Reg> PushedRegs;

static int SaveBusyRegs      (Context* ctx);
static int SetRegsBeforeCall (Context* ctx, const ValueArr* argv);
static int RestoreBusyRegs   (Context* ctx);

void Call::translate_x86 (Context* ctx) const
    {
    SaveBusyRegs (ctx);
    SetRegsBeforeCall (ctx, &argv);

    Reference* call_ref = (Reference*) calloc (1, sizeof(call_ref[0]));
        assert (call_ref);

    call_ref->position  = 0;
    call_ref->va        = GetVa (ctx, 0);
    call_ref->reference = function->get_name();

    AddReference (&ctx->call_refs, call_ref);
    
    PutCall (ctx, function->get_name());

    Location* call_loc = FindLocation (&ctx->value_usage, name);
    assert (call_loc);

    if (call_loc->n_usage > 0)
        {
        Reg*    call_reg = AllocateReg (&ctx->value_usage);
        assert (call_reg);

        PutMovRR    (ctx, RAX, call_reg->number);
        SetLocation (call_loc, call_reg);
        }

    RestoreBusyRegs (ctx);
    }

static int SaveBusyRegs (Context* ctx)
    {
    assert (ctx);

    print ("# save busy regs\n");
    for (int i = RDI; i <= R9; i++)
        {
        Reg* param_reg = GetReg (i);

        if (param_reg->status != BUSY)
            continue;

        Location* loc = FindLocationByReg (&ctx->value_usage, param_reg->number);
        assert   (loc);

        const char* comment = MakeComment ("save: %s", loc->name);
        assert     (comment);

        PutPushR (ctx, param_reg->number, comment);
        PushedRegs.push (*param_reg);  // to save old location and status
        }

    return 0;
    }

static int SetRegsBeforeCall (Context* ctx, const ValueArr* argv)
    {
    $log(DEBUG)
    assert (ctx);
    assert (argv);

    print ("# set parameters \n");
    
    int i = RDI;
    for (size_t n_params = 0; n_params < argv->get_size(); n_params++)
        {
        // report ("%d, %lu, size %lu\n", i, n_params, argv->size);
        Reg* param_reg = GetReg (i++);

        const Value*    param_val = argv->get_const_value (n_params);
        assert (param_val);

        Location* param_loc = FindLocation (&ctx->value_usage, param_val->get_name());
        assert   (param_loc); 
        
        MoveToReg (ctx, param_val, param_reg);
        DecreaseUsage (&ctx->value_usage, param_val);
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

        reg->status = temp.status;

        PutPopR (ctx, reg->number); 
        };
    
    return 0;
    }

//////////////////////////////////////////////////////
// Store // store on stack
//////////////////////////////////////////////////////
void Store::translate_x86 (Context* ctx) const
    {
    assert (ctx);

    if (!val)
        return;
    
    MoveToLocalVar (ctx, val, this);
    DecreaseUsage (&ctx->value_usage, val);
    }

//////////////////////////////////////////////////////
// Load // load from stack
//////////////////////////////////////////////////////
void Load::translate_x86 (Context* ctx) const
    {
    assert (ctx);

    MoveFromLocalVar (ctx, src, dest);
    DecreaseUsage (&ctx->value_usage, src);
    }

//////////////////////////////////////////////////////
// Return 
//////////////////////////////////////////////////////
void Return::translate_x86 (Context* ctx) const
    {
    assert (ctx);

    if (!ret_value)
        return;
    
    Reg* rax = GetReg (RAX);
    assert (rax);

    MoveToReg (ctx, ret_value, rax); 
    }