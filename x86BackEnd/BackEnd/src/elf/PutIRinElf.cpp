#include <assert.h>
#include <stdio.h>
#include <stddef.h> 

#include "DebugIR.h"
#include "PutIRctx.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "EasyDebug.h"

#pragma GCC diagnostic ignored "-Wunused-function"

const size_t BAD_ADD = 0xBAD;

static const char* GetOperationName (OperatorType type)
    {
    switch(type)
        {
        case OperatorType::Add: return "add";
        case OperatorType::Sub: return "sub";
        case OperatorType::Mul: return "mul";
        case OperatorType::Div: return "div";

        case OperatorType::Unknown: 
        default:
            return ("Unknown"); 
        }
    }

static const char* GetRegName (GPRegisterNumber reg);
static const char* GetRegName (GPRegisterNumber reg)
    {
    switch (reg)
        {
        case RAX: return "rax";
        
        case RDI: return "rdi";
        case RSI: return "rsi";
        case RDX: return "rdx";
        case RCX: return "rcx";
        case R8:  return "r8";
        case R9:  return "r9";
        
        case RSP: return "rsp";
        
        case RBX: return "rbx";
        case RBP: return "rbp";
        case R10: return "r10";
        case R11: return "r11";
        case R12: return "r12";
        case R13: return "r13";
        case R14: return "r14";
        case R15: return "r15";

        default: return "unknown";
        }
    }

static FILE* DUMP = NULL;
const char* DUMP_FILE = "logs/dump.s";

#define print(format, ...)                          \
    do                                              \
    {                                               \
    fprintf(DUMP, "\t");                       \
                                                    \
    fprintf(DUMP, format __VA_OPT__(,) __VA_ARGS__);      \
    }while(0);

#define print_rip()           fprintf(DUMP, "%x:\n", ctx->rip)
#define print_label(VALUE)    fprintf(DUMP, "%s:\n", (VALUE)->name)
#define print_ni(format, ...) fprintf(DUMP, format __VA_OPT__(,) __VA_ARGS__);   

static int PutMathOperation (OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest); 
static int PutMathOperation (OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest)
    {
    print_ni ("%s %s -> %s\n", GetOperationName(operation), GetRegName(src), GetRegName(dest));
    return 0;
    }
    
static int PutJump  (int type, size_t address);
static int PutJump  (int type, size_t address)
    {
    assert(type); // just for warning
    print_ni ("%s %lu", "jmp" /*GetJ0umpName(type)*/, address);
    return 0;
    }

static int PutCall  (size_t address);    
static int PutCall  (size_t address)
    {
    print_ni ("call %lu", address);
    return 0;
    }

static int PutPushR  (GPRegisterNumber reg);
static int PutPushMR  (size_t address, GPRegisterNumber dest)
    {
    print_ni ("move %lu -> %s\n", address, GetRegName(dest));
    return 0;
    }

static int PutPopM (size_t address);

static int PutPopR (GPRegisterNumber  reg);

static int PutMovRR (GPRegisterNumber src, GPRegisterNumber dest); 
static int PutMovRR (GPRegisterNumber src, GPRegisterNumber dest)
    {
    print_ni ("mov %s -> %s\n", GetRegName(src), GetRegName(dest));
    return 0;
    }

static GPRegisterNumber PutToGPReg (Context* ctx, const Value* val)
    {
    assert(ctx);
    assert(val);

    Location* loc = FindLocation (ctx->value_usage, val->name);
    assert(loc);

    if (loc->type == LocationType::Register)
        return loc->reg.number;
    
    Reg* free_reg = AllocateGPReg();
    assert (free_reg->number > 0);

    if (loc->type == LocationType::Stack)
        {
        print ("get from stack -> %s\n", GetRegName(free_reg->number));
        }
    
    if (loc->type == LocationType::Memory)
        {
        print ("get from mem -> %s\n", GetRegName(free_reg->number));
        }

    free_reg->loc = loc;

    loc->type       = LocationType::Register;
    loc->reg.number = free_reg->number;

    return free_reg->number;
    }

//////////////////////////////////////////////////////
size_t DecreaseUsage (LocationTable* table, const Value* val);
size_t DecreaseUsage (LocationTable* table, const Value* val)
    {
    assert(table);
    assert(val);
    
    Location*  location = FindLocation (table, val->name);
    assert (location);
    assert (location->n_usage);

    if (--location->n_usage == 0)
        FreeReg (location->reg.number);

    return location->n_usage;
    };

static int PutGlobalVars (Context* ctx, const ValueArr* global_vars);
static int PutGlobalVar  (Context* ctx, const GlobalVar* var);

static int PutFunctions  (Context* ctx, const ValueArr* functions);
static int PutFunction   (Context* ctx, const Function* function);
static int PutParameters (Context* ctx, const ValueArr* argv);

static int PutBaseBlock  (Context* ctx, const BaseBlock* block);
static int PutInstruction(Context* ctx, const Instruction* instr);

// static int GetOperator (const Operator* op);

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


    PutGlobalVars (&ctx, &mod->global_vars);
    PutFunctions  (&ctx, &mod->functions);


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

const size_t VAR_SIZE = 8;
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

static int PutFunctions  (Context* ctx, const ValueArr* functions)
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

    Reg* rbp = GetReg (RBP);
    rbp->status = BUSY;

    PutPushR  (rbp->number);
    PutMovRR (RBP, RSP);

    return SUCCESS;
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
    
    // SaveRegisters  ();
    ResetRegisters ();

    SetParametersRegisters (ctx, &function->argv);
    SetStackFrame          (ctx, ctx->value_usage->n_local_vars);

    const ValueArr* body = &function->body;
    for (size_t i = 0; i < body->size; i++)
        PutBaseBlock (ctx, (const BaseBlock*) body->arr[i]);

    ClearCtxAfterFunction (ctx);
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

    const ValueArr* inst_arr = &block->inst_arr;
    for (size_t i = 0; i < inst_arr->size; i++)
        PutInstruction (ctx,  (const Instruction*) inst_arr->arr[i]);

    return SUCCESS;
    }

static int PutOperator (Context* ctx, const Operator* op)
    {
    assert(ctx);
    assert(op);

    const Value* left_val  = op->left_op; 
          assert(left_val);

    const Value* right_val = op->right_op;
          assert(right_val);

    GPRegisterNumber left  = PutToGPReg (ctx, left_val);
    GPRegisterNumber right = PutToGPReg (ctx, right_val);

    DecreaseUsage (ctx->value_usage, left_val);
    DecreaseUsage (ctx->value_usage, right_val);

    GPRegisterNumber result = PutToGPReg (ctx, op);
    
    if (result == left)
        {
        PutMathOperation (op->type, right, left);
        return 0;
        }

    if (result == right)
        {
        PutMathOperation (op->type, left, right);
        return 0;
        }

    assert(0);
    }
        

static int PutInstruction (Context* ctx, const Instruction* instr)
    {
    assert(ctx);
    assert(instr);

    switch (instr->Instruction::type)
        {
        case InstructionType::Store:
                            return SUCCESS; 
                            
        case InstructionType::Load:
                            return SUCCESS;

        case InstructionType::Operator:
                            PutOperator (ctx, (const Operator*) instr);
                            return SUCCESS;

        case InstructionType::Branch:

                            return SUCCESS;

        case InstructionType::Call: 
                            // put reference
                            // increase rip
                            PutCall (BAD_ADD);
                            return SUCCESS;

        case InstructionType::Return: 
                            return  SUCCESS;

        default:
            report ("Unkown Instruction type\n");
            break;
        }

    return FAILURE;
    }

/*
static int PrintOperator (const Operator* op)
    {
    assert(op);

    switch(op->Operator::type)
        {
        case OperatorType::Add: print_ni ("add"); return SUCCESS;
        case OperatorType::Sub: print_ni ("sub"); return SUCCESS;
        case OperatorType::Mul: print_ni ("mul"); return SUCCESS;
        case OperatorType::Div: print_ni ("div"); return SUCCESS;

        case OperatorType::Unknown: 
        default:
            print_ni ("Unknown"); 
            break;
        }

    return FAILURE;
    }
*/