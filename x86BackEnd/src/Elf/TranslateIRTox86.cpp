#include <assert.h>
#include <stdio.h>
#include <stddef.h> 

#include "DumpIR.h"
#include "IRContext.h"
#include "Commands.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "EasyDebug.h"

#define NO_BUFFER
#include "my_buffer.h"

//////////////////////////////////////////////////////
// Value
//////////////////////////////////////////////////////
GPRegisterNumber Value::put_to_reg (Context* ctx) const
    {
    assert(ctx);

    if (storage.get_storage_type() == StorageType::Register)
        {
        print_tab ("\t\t\t\t\t  # put_value_to_reg: '%s' already in %s\n", 
                            name, GetRegName (storage.get_reg_num()));

        return storage.get_reg_num();
        }

    Reg*    free_reg = AllocateReg ();
    assert (free_reg);

    const char* comment = MakeComment ("put_value_to_reg: '%8s' -> %s", 
                                        name, GetRegName (free_reg->number));
    assert (comment);

    storage.move_to_reg (ctx, free_reg, comment);
    return free_reg->number;
    }

//////////////////////////////////////////////////////
// Module
//////////////////////////////////////////////////////
static int  SetStart  (Context* ctx, const Function* main_func);
static void AddStdlib (Context* ctx, const char* path, size_t offset, size_t size);

const char* STDLIB_OBJ_PATH = "src/Elf/stdlib.o";

const size_t STDLIB_OFFSET = 0x40;
const size_t STDLIB_SIZE   = 0x165;

struct NativeFunctionStorage 
    {
    const Function* func_value;
    size_t              offset;
    };

NativeFunctionStorage STD_FUNCTIONS[] = { 
    {GetNativeFunction (NativeFunction::Pow),   0x0  },
    {GetNativeFunction (NativeFunction::Sin),   0x21 },
    {GetNativeFunction (NativeFunction::Cos),   0x22 },
    {GetNativeFunction (NativeFunction::Fout),  0x23 },
    {GetNativeFunction (NativeFunction::Fin),   0x109}                 
                                            };

const int N_STD_FUNCTIONS = sizeof(STD_FUNCTIONS) / sizeof (STD_FUNCTIONS[0]);

void Module::translate_x86 (Elf* elf, const char* path_to_assembler_dump) const
    {
    assert (elf);
    assert (path_to_assembler_dump);

    Context ctx = {};
    ContextCtor (&ctx, elf);


    DUMP = fopen (path_to_assembler_dump, "w");
    assert  (DUMP);
    setvbuf (DUMP, NULL, _IONBF, 0);

    const Function* main_func = this->find_main ();
    assert         (main_func);
    
    SetStart (&ctx, main_func);

    for (size_t i = 0; i < global_vars.get_size(); i++)
        (global_vars.get_const_value(i))->translate_x86 (&ctx);

    for (size_t i = 0; i < functions.get_size(); i++)
        (functions.get_const_value(i))->translate_x86 (&ctx);
    
    AddStdlib (&ctx, STDLIB_OBJ_PATH, STDLIB_OFFSET, STDLIB_SIZE);
    ResolveReferences (ctx.code, &ctx.call_refs); 

    ContextDtor (&ctx);
    fclose(DUMP);
    DUMP = NULL;
    }

static int SetStart (Context* ctx, const Function* main_func)
    {
    assert (ctx);
    assert (main_func);

    print_tab (".global main\n");
    print_tab (".extern fin\n");
    print_tab (".extern fout\n\n");
    
    print_tab (".section .text\n");

    print_raw ("%s:\n", "_start");
    print_tab    ("# TODO: call InitGlobals\n");
    
    PUT_CALL  (ctx, main_func);

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
        const NativeFunctionStorage* native_func_storage = STD_FUNCTIONS + i;
        native_func_storage->func_value->set_address (address_offset + CODE_VIRTUAL_ADDRESS);
        }

    free (stdlib_obj);
    }

//////////////////////////////////////////////////////
// GlobalVar
//////////////////////////////////////////////////////
void GlobalVar::translate_x86 (Context* ctx) const 
    {
    assert(ctx);
    // TODO set address for GlobalVar
    }

//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
static int SetStackFrame (Context* ctx, size_t n_locals);
static int SaveCalleeSaveRegisters   (Context* ctx);
static size_t SetParametersRegisters (Context* ctx, const ValueArr<Value>* argv);

void Function::translate_x86 (Context* ctx) const 
    {
    if (body.get_size() == 0)
        return;
        
    print_label (this);

    this->set_storage ();
    this->set_address (CODE_VIRTUAL_ADDRESS + ctx->code->size);

    SetCtxForFunction (ctx);

    SetStackFrame           (ctx, n_local_vars);
    SaveCalleeSaveRegisters (ctx);

    ResetRegisters ();
    SetParametersRegisters (ctx, &argv);

    for (size_t i = 0; i < body.get_size(); i++)
        (body.get_const_value(i))->translate_x86 (ctx) ;

    ResolveReferences (ctx->code, &ctx->jump_refs);
    
    ClearCtxAfterFunction (ctx);

    new_line ();    
    }

static int SetStackFrame (Context* ctx, size_t n_locals)
    {
    assert(ctx);
    print_tab ("# set stack frame (%lu local vars)\n", n_locals);

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
    print_tab ("# save callee-save regs\n");

    PutPushR (ctx, RBX);

    for (int i = R10; i <= R15; i++)
        PutPushR (ctx, (GPRegisterNumber) i);

    print_raw ("\n");
    return 0;
    }

static size_t SetParametersRegisters (Context* ctx, const ValueArr<Value>* argv)
    {
    assert (ctx);
    assert (argv);

    print_tab ("# save param regs on stack\n");

    size_t n_params = 0;
    int    i = RDI;

    const Value* param = NULL;

    while (n_params < argv->get_size())   
        {
        assert (n_params <= 6);
        assert (i <= R9);

        param = argv->get_const_value (n_params);
        assert (param);

        Storage* param_storage = param->get_storage();
        assert  (param_storage);

        if (param_storage->get_n_usage() == 0)
            report ("Warning: unused parameter '%s'\n", param->get_name());

        if (param_storage->get_storage_type() != StorageType::Stack)
            assert (0);
        
        Reg* reg = GetReg (i);
        param__storage->set_with_reg (reg); 

        const char* comment = MakeComment ("save parameter '%s' on stack", param->get_name());
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
static int PutMathOperation (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest);

void Operator::translate_x86 (Context* ctx) const
    {
    assert(ctx);
    
    GPRegisterNumber right = PutValueToReg (ctx, right_op);
    GPRegisterNumber left  = PutValueToReg (ctx, left_op);

    Location* left_loc = FindLocation (&ctx->value_usage, left_op->get_name());
    assert   (left_loc);
    assert   (left_loc->type == StorageType::Register);

    Location* result_loc = FindLocation (&ctx->value_usage, name);
    assert   (result_loc);
    assert   (result_loc->type == StorageType::NoWhere);

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
        assert   (cond_loc->type == StorageType::Register);

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

    print_tab ("# save busy regs\n");
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

    print_tab ("# set parameters \n");
    
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
static int MoveToLocalVar (Context* ctx, const Value* src, const Value* dest);

void Store::translate_x86 (Context* ctx) const
    {
    assert (ctx);

    if (!val)
        return;
    
    MoveToLocalVar (ctx, val, this);
    val->decrease_usage ();
    }

static int MoveToLocalVar (Context* ctx, const Value* src, const Value* dest)
    {
    assert (ctx);
    assert (src);
    assert (dest);

    PutValueToReg (ctx, src);

    assert   (src.get_storage_type   () == StorageType::Register);
    assert   (dest.get_variable_type () == VariableType::Local);

    const char* comment = MakeComment ("copy '%s' to stack (to '%s')", src->get_name(), dest->get_name());
    assert     (comment);

    PutMoveToStack (ctx, src_loc->reg_num, dest_loc->offset, comment);
    
    dest_loc->type = StorageType::Stack;
    return 0;
    }

//////////////////////////////////////////////////////
// Load 
//////////////////////////////////////////////////////
void Load::translate_x86 (Context* ctx) const
    {
    assert (ctx);

    MoveToLocalVar (ctx, src, dest);

    src->decrease_usage ();
    }

//////////////////////////////////////////////////////
// Return 
//////////////////////////////////////////////////////
static int ClearStackFrame             (Context* ctx, size_t n_locals);
static int RestoreCalleeSaveRegisters  (Context* ctx);

void Return::translate_x86 (Context* ctx) const
    {
    assert (ctx);

    if (ret_value)
        {
        Reg* rax = GetReg (RAX);
        assert (rax);

        const char* comment = MakeComment ("return %s", ret_value->get_name());
        assert     (comment);
        print_tab ("\n");

        MoveToReg (ctx, ret_value, rax, comment);
        }

    RestoreCalleeSaveRegisters (ctx);
    ClearStackFrame (ctx, ctx->value_usage.n_local_vars);

    PutRet (ctx);
    }

static int ClearStackFrame (Context* ctx, size_t n_locals)
    {
    assert(ctx);
    print_tab ("# clear stack frame\n");

    Reg* rbp = GetReg (RBP);
    
    PutPopR (ctx, rbp->number);
    PutAddRsp (ctx, n_locals * 8);

    return SUCCESS;
    }

static int RestoreCalleeSaveRegisters  (Context* ctx)
    {
    assert (ctx);

    print_tab ("# restore callee-save regs\n");

    for (int i = R15; i >= R10; i--)
        PutPopR (ctx, (GPRegisterNumber) i);

    PutPopR (ctx, RBX);
   
    print_raw ("\n");
    return 0;
    }