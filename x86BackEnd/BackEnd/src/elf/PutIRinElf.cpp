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

static int PutMathOperation (int operation, GPRegisterNumber dest , GPRegisterNumber src); 
static int PutJump  (int type, size_t address);
static int PutCall  (size_t address);
static int PutPush  (size_t address, GPRegisterNumber  reg);
static int PutPushX (size_t address, XMMRegisterNumber reg);

static int PutPop   (size_t address);
static int PutPop   (GPRegisterNumber  reg);

static int PutMov   (GPRegisterNumber dest, GPRegisterNumber src); 

static int MovToGPReg (const Value* val, GPRegisterNumber num);


//////////////////////////////////////////////////////
static size_t DecreaseUsage (UsageTable* table, const Value* val);
static size_t DecreaseUsage (UsageTable* table, const Value* val)
    {
    assert(table);
    assert(val);
    
    Usage*  usage = FindUsage (table, val->name);
    assert (usage);
    assert (usage->n_usage);

    usage->n_usage--;
    return usage->n_usage;
    };

static GPRegisterNumber PutToGPReg (Context* ctx, const Value* val)
    {
    assert(ctx);
    assert(val);
    
    Usage*  usage = FindUsage (ctx->value_usage, val->name);
    assert (usage);

    Location* location = &usage->location;

    switch (location->type)
        {
        case LocationType::Stack:
                            {
                            GPRegisterNumber reg_num = AllocateGPReg(ctx, location);
                            MovToGPReg (val, reg_num);

                            location->type = LocationType::Register;
                            location->reg.number = reg_num;

                            return reg_num;
                            }

        case LocationType::Register:
                            assert(location->reg.type == RegisterLocationType::GeneralPurpose);
                            return (GPRegisterNumber) location->reg.number;

        default:
            assert(0);
        }
    }


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

    PutGlobalVars (&ctx, &mod->global_vars);
    PutFunctions  (&ctx, &mod->functions);

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

    var_ad->val = var;
    var_ad->va  = GetVa (ctx, VAR_SIZE);

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
    
static int PutFunction (Context* ctx, const Function* function)
    {
    assert(function);
    
    Address* func_ad = (Address*) calloc (1, sizeof(func_ad[0]));
    assert(func_ad);

    func_ad->val = function;    
    func_ad->va  = GetVa (ctx, 0);

    AddAddress (&ctx->functions, func_ad);

    SetCtxForFunction (ctx);
    SetValueUsage (ctx->value_usage,  function);

    const ValueArr* body = &function->body;
    for (size_t i = 0; i < body->size; i++)
        PutBaseBlock (ctx, (const BaseBlock*) body->arr[i]);

    ClearCtxAfterFunction (ctx);
    return SUCCESS;
    }

static int PutBaseBlock  (Context* ctx, const BaseBlock* block)
    {
    assert(block);

    ctx->n_pushes = 0;

    Address* add = (Address*) calloc (1, sizeof(add[0]));
      assert(add);

    add->val = block;
    add->va  = GetVa (ctx, 0);

    AddAddress (ctx->baseblocks, add);

    const ValueArr* inst_arr = &block->inst_arr;
    for (size_t i = 0; i < inst_arr->size; i++)
        PutInstruction (ctx,  (const Instruction*) inst_arr->arr[i]);

    return SUCCESS;
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