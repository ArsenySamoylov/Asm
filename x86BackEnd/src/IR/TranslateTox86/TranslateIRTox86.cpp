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
        print_comment (
                       MakeComment ("put_value_to_reg: '%s' already in %s", 
                            name, GetRegName (storage.get_reg_num()))
                      );

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
// Storage
//////////////////////////////////////////////////////
#include <stack>
using namespace std;
static  stack <Storage*> StackedStorages; // I need container to hold storages that was moved from stack to registers.
                                          // So when BaseBlock ends it will reset this storages

void Storage::move_to_reg (Context* ctx, Reg* dest_reg, const char* comment)
    {
    assert (ctx);
    assert (dest_reg);

    switch (storage_type)
        {
        case StorageType::Register:
                PutMovRR (ctx, storage_data.reg_num, dest_reg->number, comment);
                break;

        case StorageType::Constant:
                PutMovConstant (ctx, dest_reg->number, storage_data.data, comment);
                break;

        case StorageType::NoWhere:  
                this->print ();
                assert (0);
                break;

        case StorageType::Stack:
                PutMoveFromStack (ctx, storage_data.offset, dest_reg->number, comment);
                StackedStorages.push (this);
                break;

        case StorageType::Memory:
                // TODO
                print_tab ("get from mem -> %s", GetRegName(dest_reg->number));
                assert (0);

        default:
                assert(0);
        }

    this->set_with_reg (dest_reg);
    }

//////////////////////////////////////////////////////
// Module
//////////////////////////////////////////////////////
static int  SetStart  (Context* ctx, const Function* main_func);
static void AddStdlib (Context* ctx, const char* path, size_t offset, size_t size);

const char* STDLIB_OBJ_PATH = "src/IR/TranslateTox86/stdlib.o";

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
    print_tab ("# TODO: call InitGlobals");
    new_line();
    
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

        native_func_storage->func_value->set_address (address_offset +
                                                     native_func_storage->offset +
                                                     CODE_VIRTUAL_ADDRESS);
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

    SetCtxForFunction (ctx, this);

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
    print_tab ("# set stack frame (%lu local vars)", n_locals);
    new_line ();

    PutSubRsp (ctx, n_locals * 8);

    Reg* rbp = GetReg (RBP);

    PutPushR (ctx, rbp->number);
    PutMovRR (ctx, RSP, RBP);

    new_line ();
    return SUCCESS;
    }

static int SaveCalleeSaveRegisters  (Context* ctx)
    {
    assert (ctx);
    print_tab ("# save callee-save regs");
    new_line ();

    PutPushR (ctx, RBX);

    for (int i = R10; i <= R15; i++)
        PutPushR (ctx, (GPRegisterNumber) i);

    new_line ();
    return 0;
    }

static size_t SetParametersRegisters (Context* ctx, const ValueArr<Value>* argv)
    {
    assert (ctx);
    assert (argv);

    print_tab ("# save param regs on stack");
    new_line ();

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
        assert  (param_storage->get_var_type() == VariableType::Local);

        if (param_storage->get_usage() == 0)
            report ("Warning: unused parameter '%s'\n", param->get_name());

        Reg* reg = GetReg (i);
        param_storage->set_with_reg (reg); 
        
        const char* comment = MakeComment ("save parameter '%s' on stack", param->get_name());
        assert     (comment);

        PutMoveToStack (ctx, (GPRegisterNumber) i, param_storage->get_stack_offset(), comment);
        if (i == RDX)
            {
            param_storage->set_storage_type (StorageType::Stack);
            }

        i++; 
        n_params++; 
        }

    assert (n_params == argv->get_size());
    assert (n_params <= 6);

    new_line();
    new_line();
    
    return n_params;
    }

//////////////////////////////////////////////////////
// BaseBlock
//////////////////////////////////////////////////////
static void ResetVarStorage (); // Relays on StackedStorages container

void BaseBlock::translate_x86 (Context* ctx) const 
    {
    assert (ctx);
    
    print_label (this);

    this->set_address (CODE_VIRTUAL_ADDRESS + ctx->code->size);

    for (size_t i = 0; i < inst_arr.get_size(); i++)
        {
        const Instruction*  val = inst_arr.get_const_value(i);
        assert (val);
        
        PrintIRInstruction (val);
        val->translate_x86 (ctx);
        new_line();
        }

    ResetVarStorage ();
    }   


static void ResetVarStorage ()
    {
    while (!StackedStorages.empty())
        {
        Storage* storage = StackedStorages.top();
        assert  (storage);
        StackedStorages.pop();

        storage->set_storage_type (StorageType::Stack);
        report (" ");
        storage->print();
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
    
    GPRegisterNumber right = right_op->put_to_reg (ctx);
    GPRegisterNumber left  = left_op ->put_to_reg (ctx);

    Reg*    result_reg = GetReg (left);
    assert (result_reg);

    new_line ();

    if ((left_op->get_storage())->get_usage() > 1)
        {
        Reg* save_left = AllocateReg ();
        assert (save_left);    

        const char* comment = MakeComment ("save '%s' to %s", left_op->get_name(), GetRegName (save_left->number));
        assert     (comment);

        PutMovRR (ctx, left, save_left->number, comment);
        new_line ();

        (left_op->get_storage())->set_with_reg (save_left);
        }


    PutMathOperation (ctx, op_type, right, left);

    (left_op ->get_storage())->decrease_usage (); 
    (right_op->get_storage())->decrease_usage ();
    
    storage.set_with_reg (result_reg);
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
            report ("Unknown operator\n");            
            return 0;
        }
    }

//////////////////////////////////////////////////////
// Branch
//////////////////////////////////////////////////////
void Branch::translate_x86 (Context* ctx) const
    {
    assert (ctx);
    
    const BaseBlock* jump_block = true_block;

    if (condition)
        {  
        condition->put_to_reg (ctx);

        PUT_CJUMP (ctx, jump_block, (condition->get_storage())->get_reg_num());
        (condition->get_storage())->decrease_usage();

        jump_block = false_block;
        }

    PUT_JUMP  (ctx, jump_block);
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

    PUT_CALL (ctx, function);

    RestoreBusyRegs (ctx);

    if (storage.get_usage() > 0)
        {
        Reg*    call_reg = AllocateReg ();
        assert (call_reg);

        storage.set_with_reg (GetReg(RAX));
        storage.move_to_reg (ctx, call_reg, "save call result from rax");
        }
    }

static int SaveBusyRegs (Context* ctx)
    {
    assert (ctx);

    print_tab ("# save busy regs");
    new_line ();

    for (int i = RDI; i <= R9; i++)
        {
        Reg* param_reg = GetReg (i);

        if (param_reg->status == FREE)
            continue;

        PutPushR (ctx, param_reg->number, "save reg");
        PushedRegs.push (*param_reg); 
        }

    return 0;
    }

static int SetRegsBeforeCall (Context* ctx, const ValueArr<Value>* argv)
    {
    $log(DEBUG)
    assert (ctx);
    assert (argv);

    print_tab ("# set parameters");
    new_line ();
    
    int i = RDI;
    for (size_t n_params = 0; n_params < argv->get_size(); n_params++)
        {
        Reg* param_reg = GetReg (i++);

        const Value*    param_val = argv->get_const_value (n_params);
        assert (param_val);

        (param_val->get_storage())->move_to_reg    (ctx, param_reg);
        (param_val->get_storage())->decrease_usage ();
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
// Store 
//////////////////////////////////////////////////////
static int MoveToLocalVar (Context* ctx, const Value* src, const Value* dest);

void Store::translate_x86 (Context* ctx) const
    {
    assert (ctx);

    if (!val)
        return;
    
    MoveToLocalVar (ctx, val, this);
    (val->get_storage())->decrease_usage ();
    }

static int MoveToLocalVar (Context* ctx, const Value* src, const Value* dest)
    {
    assert (ctx);
    assert (src);
    assert (dest);

    src->put_to_reg (ctx);

    assert   (src ->get_storage()->get_storage_type  () == StorageType::Register);
    assert   (dest->get_storage()->get_var_type      () == VariableType::Local);

    const char* comment = MakeComment ("copy '%s' to stack (to '%s')", src->get_name(), dest->get_name());
    assert     (comment);

    PutMoveToStack (ctx, (src-> get_storage())->get_reg_num(), 
                         (dest->get_storage())->get_stack_offset(), 
                         comment);
    
    (dest->get_storage())->set_storage_type (StorageType::Stack);
    return 0;
    }

//////////////////////////////////////////////////////
// Load 
//////////////////////////////////////////////////////
void Load::translate_x86 (Context* ctx) const
    {
    assert (ctx);

    MoveToLocalVar (ctx, src, dest);

    (src->get_storage())->decrease_usage ();
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
        new_line ();

        (ret_value->get_storage())->move_to_reg (ctx, rax, comment);
        new_line ();
        }

    RestoreCalleeSaveRegisters (ctx);
    ClearStackFrame (ctx, ctx->n_locals);

    PutRet (ctx);
    }

static int ClearStackFrame (Context* ctx, size_t n_locals)
    {
    assert(ctx);
    print_tab ("# clear stack frame");
    new_line();

    Reg* rbp = GetReg (RBP);
    
    PutPopR (ctx, rbp->number);
    PutAddRsp (ctx, n_locals * 8);

    return SUCCESS;
    }

static int RestoreCalleeSaveRegisters  (Context* ctx)
    {
    assert (ctx);

    print_tab ("# restore callee-save regs");
    new_line ();

    for (int i = R15; i >= R10; i--)
        PutPopR (ctx, (GPRegisterNumber) i);

    PutPopR (ctx, RBX);
    
    new_line();
    return 0;
    }