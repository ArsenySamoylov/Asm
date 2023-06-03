#include <assert.h>
#include <stdio.h>
#include <stddef.h> 

#include "DebugIR.h"
#include "IRContext.h"
#include "Commands.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "EasyDebug.h"

#define NO_BUFFER
#include "my_buffer.h"

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

const char* DUMP_FILE = "tests/dump.s";

#define print_rip()           fprintf(DUMP, "%x:\n", ctx->rip)
#define print_label(VALUE)    fprintf(DUMP, "%s:\n", (VALUE)->name)
#define print_raw(format, ...) fprintf(DUMP, format __VA_OPT__(,) __VA_ARGS__);   
#define new_line() print_raw ("\n");

#define PRINT_INSTR_COMM(INSTR) print_raw ("### "); WriteToFile (DUMP, INSTR); print_raw("\n");   


static int MoveToLocalVar   (Context* ctx, const Value* src, const Value* dest);
// static int MoveFromLocalVar (Context* ctx, const Value* srs, Value* dest);

static int PutMathOperation (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest);

static GPRegisterNumber PutValueToReg (Context* ctx, const Value* val);
static int MoveToReg (Context* ctx, const Value* val, Reg* dest_reg, const char* comment = NULL);

static void PUT_CALL  (Context* ctx, name_t label);
static void PUT_JUMP  (Context* ctx, name_t label);
static void PUT_CJUMP (Context* ctx, name_t label, GPRegisterNumber reg_num);

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

    const char* comment = MakeComment ("copy '%s' to stack (to '%s')", src->get_name(), dest->get_name());
    assert     (comment);

    PutMoveToStack (ctx, src_loc->reg_num, dest_loc->offset, comment);
    
    dest_loc->type = LocationType::Stack;
    return 0;
    }

/*
static int MoveFromLocalVar (Context* ctx, const Value* src, const Value* dest)
    {
    assert (ctx);
    assert (src);
    assert (dest);

    Location* src_loc = FindLocation (&ctx->value_usage, src->get_name());
    assert   (src_loc);

    if (src_loc->type != LocationType::Stack)
        {
        report ("Warning '%s' currently not in stack\n", src_loc->name);
        }

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
*/

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

    if (loc->type == LocationType::Register)
        {
        print ("\t\t\t\t\t  # put_value_to_reg: '%s' already in %s\n", loc->name, GetRegName (loc->reg_num));
        return loc->reg_num;
        }

    // report ("Alloc\n");
    Reg*    free_reg = AllocateReg (&ctx->value_usage);
    assert (free_reg);
    assert (free_reg->number >= 0);

    // print ("\t#put value to reg, Allocated reg %s\n", GetRegName (free_reg->number));
    const char* comment = MakeComment ("put_value_to_reg: '%8s' -> %s", 
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
                if (val->get_type() != ValueType::Constant) 
                    {
                    PRINT_VALUE (val);
                    assert (0);
                    }

                PutMovConstant (ctx, dest_reg->number, loc->data, comment);
                break;

        case LocationType::Stack:
                PutMoveFromStack (ctx, loc->offset, dest_reg->number, comment);
                break;

        case LocationType::Memory:
                print ("get from mem -> %s\n", GetRegName(dest_reg->number));
                report ("NOT READY\n");
                assert (0);

        default:
                assert(0);
        }

    // report ("\t%s\n", loc->name);
    // assert (loc->type != LocationType::Register);
    SetLocation (loc, dest_reg);

    return 0;
    }

static void PUT_CALL (Context* ctx, name_t label)
    {
    assert (ctx);
    assert (label);

    Reference* reference = (Reference*) calloc (1, sizeof(reference[0]));
    assert    (reference);

    reference->position  = PutCall (ctx, label);
    reference->va        = reference->position + 4 + CODE_VIRTUAL_ADDRESS;
    reference->reference = label;
    
    AddReference (&ctx->call_refs, reference);

    return;
    }

static void PUT_JUMP (Context* ctx, name_t label)
    {
    assert (ctx);
    assert (label);

    Reference* ref = (Reference*) calloc (1, sizeof(ref[0]));
        assert (ref);

    ref->position  = PutJump (ctx, label);
    ref->va        = ref->position + 4 +CODE_VIRTUAL_ADDRESS;
    ref->reference = label;

    AddReference (&ctx->jump_refs, ref);
    }

static void PUT_CJUMP (Context* ctx, name_t label, GPRegisterNumber reg_num)
    {
    assert (ctx);
    assert (label);

    Reference* ref = (Reference*) calloc (1, sizeof(ref[0]));
    assert (ref);

    ref->position  = PutCJump (ctx, reg_num, label);
    ref->va        = ref->position + 4 + CODE_VIRTUAL_ADDRESS;
    ref->reference = label;

    AddReference (&ctx->jump_refs, ref);
    }

//////////////////////////////////////////////////////
// Module
//////////////////////////////////////////////////////
static int  SetStart  (Context* ctx);
static void AddStdlib (Context* ctx, const char* path, size_t offset, size_t size);


const char* STDLIB_OBJ_PATH = "src/Elf/stdlib.o";

const size_t STDLIB_OFFSET = 0x40;
const size_t STDLIB_SIZE   = 0x165;

Address STD_FUNCTIONS[] = { 
{"pow",  CODE_VIRTUAL_ADDRESS + 0x0},
{"sin",  CODE_VIRTUAL_ADDRESS + 0x21},
{"cos",  CODE_VIRTUAL_ADDRESS + 0x22},
{"fout", CODE_VIRTUAL_ADDRESS + 0x23},
{"fin",  CODE_VIRTUAL_ADDRESS + 0x109}, 
                                };

const int N_STD_FUNCTIONS = sizeof(STD_FUNCTIONS) / sizeof (STD_FUNCTIONS[0]);


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
    
    AddStdlib (&ctx, STDLIB_OBJ_PATH, STDLIB_OFFSET, STDLIB_SIZE);
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
    
    print (".section .text\n");

    print_raw ("%s:\n", "_start");
    print    ("# TODO: call InitGlobals\n");
    
    PUT_CALL  (ctx, "main");

    PutMovConstant (ctx, RDI, 0);  
    PutMovConstant (ctx, RAX, 60);
    PutSysCall     (ctx);

    return 0; 
    }

static void AddStdlib (Context* ctx, const char* path, size_t offset, size_t size)
    {
    assert (ctx);
    assert (path);

    char*   stdlib_obj = GetSrcFile (path);
    assert (stdlib_obj);

    size_t address_offset = ctx->code->size;

    WriteOpCodes (ctx, stdlib_obj + offset, (unsigned) size);
    
    for (int i = 0; i < N_STD_FUNCTIONS; i++)
        {
        STD_FUNCTIONS[i].va += address_offset;
        CopyAddress (&ctx->functions, &STD_FUNCTIONS[i]);
        }

    free (stdlib_obj);
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
    var_ad->va   = 0; //RODATA_VIRTUAL_ADDRESS;

    AddAddress (&ctx->global_vars, var_ad);
    }

//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
static int SetStackFrame (Context* ctx, size_t n_locals);
static int SaveCalleeSaveRegisters  (Context* ctx);
static size_t SetParametersRegisters      (Context* ctx, LocationTable* table, const ValueArr<Value>* argv);

void Function::translate_x86 (Context* ctx) const 
    {
    if (body.get_size() == 0)
        return;
        
    print_label (this);

    Address* func_ad = (Address*) calloc (1, sizeof(func_ad[0]));
    assert(func_ad);

    func_ad->name = name;    
    func_ad->va   = CODE_VIRTUAL_ADDRESS + ctx->code->size;

    // report ("Function %s va %x\n", name, func_ad->va);

    AddAddress (&ctx->functions, func_ad);

    SetCtxForFunction (ctx);

    this->count_location(&ctx->value_usage);
    
    SetStackFrame           (ctx, ctx->value_usage.n_local_vars);
    SaveCalleeSaveRegisters (ctx);

    ResetRegisters ();
    SetParametersRegisters (ctx, &ctx->value_usage, &argv);

    for (size_t i = 0; i < body.get_size(); i++)
        (body.get_const_value(i))->translate_x86 (ctx) ;

    ResolveReferences (ctx->code, &ctx->baseblocks, &ctx->jump_refs);
    
    ClearCtxAfterFunction (ctx);
    
    print_raw ("\n");
    }

static int SetStackFrame (Context* ctx, size_t n_locals)
    {
    assert(ctx);
    print ("# set stack frame (%lu local vars)\n", n_locals);

    PutSubRsp (ctx, n_locals * 8);

    Reg* rbp = GetReg (RBP);

    PutPushR (ctx, rbp->number);
    PutMovRR (ctx, RSP, RBP);

    print_raw ("\n");
    return SUCCESS;
    }

static int SaveCalleeSaveRegisters  (Context* ctx)
    {
    assert (ctx);
    print ("# save callee-save regs\n");

    PutPushR (ctx, RBX);

    for (int i = R10; i <= R15; i++)
        PutPushR (ctx, (GPRegisterNumber) i);

    print_raw ("\n");
    return 0;
    }

static size_t SetParametersRegisters (Context* ctx, LocationTable* table, const ValueArr<Value>* argv)
    {
    assert (ctx);
    assert (table);
    assert (argv);

    print ("# save param regs on stack\n");

    size_t n_params = 0;
    int    i = RDI;

    const Value* param = NULL;

    while (n_params < argv->get_size())   
        {
        assert (n_params <= 6);
        assert (i <= R9);

        param = argv->get_const_value (n_params);
        assert (param);

        Location* loc = FindLocation (table, param->get_name());
        assert (loc);

        if (loc->n_usage == 0)
            report ("Warning: unused parameter '%s'\n", param->get_name());

        if (loc->type != LocationType::Stack)
            {
            PRINT_LOCATION (loc);
            assert (0);
            }
        
        Reg* reg = GetReg (i);
        SetLocation (loc, reg); 

        // report ("Save param  '%s' to stack\n", param->get_name());
        const char* comment = MakeComment ("Save '%s' on stack", param->get_name());
        assert     (comment);

        PutMoveToStack (ctx, (GPRegisterNumber) i, loc->offset, comment);

        i++; 
        n_params++; 
        }

    assert (n_params == argv->get_size());
    assert (n_params <= 6);

    // report ("n_params: %lu \n", n_params);
    print_raw ("\n\n");

    return n_params;
    }

//////////////////////////////////////////////////////
// BaseBlock
//////////////////////////////////////////////////////
void BaseBlock::translate_x86 (Context* ctx) const 
    {
    assert (ctx);
    
    print_label (this);
    ctx->n_pushes = 0;

    Address* add = (Address*) calloc (1, sizeof(add[0]));
      assert(add);

    add->name = name;
    add->va   = CODE_VIRTUAL_ADDRESS + ctx->code->size;

    // report ("Base block  %s va %lu\n", name, add->va);
    AddAddress (&ctx->baseblocks, add);

    for (size_t i = 0; i < inst_arr.get_size(); i++)
        {
        const Instruction*  val = inst_arr.get_const_value(i);
        assert (val);
        
        PRINT_INSTR_COMM (val);
        val->translate_x86 (ctx);
        new_line();
        }
    }   

//////////////////////////////////////////////////////
// Constant
//////////////////////////////////////////////////////
void Constant::translate_x86 (Context* ctx) const
    {
    assert (ctx);

    report ("It is constant\n");
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

    new_line ();

    if (left_loc->n_usage > 1)
        {
        Reg* save_left = AllocateReg (&ctx->value_usage);
        assert (save_left);    

        const char* comment = MakeComment ("save '%s' to %s", left_loc->name, GetRegName (save_left->number));
        assert     (comment);

        PutMovRR (ctx, left, save_left->number, comment);
        new_line ();

        SetLocation (left_loc, save_left);
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
    assert (ctx);
    
    name_t jump_label = true_block->get_name();

    if (condition)
        {  
        PutValueToReg (ctx, condition);

        Location* cond_loc = FindLocation (&ctx->value_usage, condition->get_name());
        assert   (cond_loc);
        assert   (cond_loc->type == LocationType::Register);

        PUT_CJUMP (ctx, jump_label, cond_loc->reg_num);

        jump_label = false_block->get_name();

        DecreaseUsage (&ctx->value_usage, condition);
        }

    PUT_JUMP  (ctx, jump_label);
    }

//////////////////////////////////////////////////////
// Call
//////////////////////////////////////////////////////
#include <stack>

using namespace std;
static  stack <Reg> PushedRegs;

static int SaveBusyRegs      (Context* ctx);
static int SetRegsBeforeCall (Context* ctx, const ValueArr<Value>* argv);
static int RestoreBusyRegs   (Context* ctx);

void Call::translate_x86 (Context* ctx) const
    {
    SaveBusyRegs (ctx);
    SetRegsBeforeCall (ctx, &argv);

    PUT_CALL (ctx, function->get_name());

    Location* call_loc = FindLocation (&ctx->value_usage, name);
    assert (call_loc);

    RestoreBusyRegs (ctx);

    if (call_loc->n_usage > 0)
        {
        Reg*    call_reg = AllocateReg (&ctx->value_usage);
        assert (call_reg);

        PutMovRR    (ctx, RAX, call_reg->number, "save call result from rax");
        SetLocation (call_loc, call_reg);
        }
    }

static int SaveBusyRegs (Context* ctx)
    {
    assert (ctx);

    print ("# save busy regs\n");
    for (int i = RDI; i <= R9; i++)
        {
        Reg* param_reg = GetReg (i);

        if (param_reg->status == FREE)
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

static int SetRegsBeforeCall (Context* ctx, const ValueArr<Value>* argv)
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

    MoveToLocalVar (ctx, src, dest);
    DecreaseUsage (&ctx->value_usage, src);
    }

//////////////////////////////////////////////////////
// Return 
//////////////////////////////////////////////////////
static int ClearStackFrame (Context* ctx, size_t n_locals);
static int    RestoreCalleeSaveRegisters  (Context* ctx);

void Return::translate_x86 (Context* ctx) const
    {
    assert (ctx);

    if (ret_value)
        {
    
        Reg* rax = GetReg (RAX);
        assert (rax);

        print ("\n");

        const char* comment = MakeComment ("return %s", ret_value->get_name());
        assert     (comment);

        MoveToReg (ctx, ret_value, rax, comment);
        }

    RestoreCalleeSaveRegisters (ctx);
    ClearStackFrame (ctx, ctx->value_usage.n_local_vars);

    PutRet (ctx);
    }

static int ClearStackFrame (Context* ctx, size_t n_locals)
    {
    assert(ctx);
    print ("# clear stack frame\n");

    Reg* rbp = GetReg (RBP);
    
    PutPopR (ctx, rbp->number);
    PutAddRsp (ctx, n_locals * 8);

    return SUCCESS;
    }

static int RestoreCalleeSaveRegisters  (Context* ctx)
    {
    assert (ctx);

    print ("# restore callee-save regs\n");

    for (int i = R15; i >= R10; i--)
        PutPopR (ctx, (GPRegisterNumber) i);

    PutPopR (ctx, RBX);
   
    print_raw ("\n");
    return 0;
    }