#include <assert.h>
#include <stdio.h>
#include <stddef.h> 
#include <stdlib.h>

#include "PutIRctx.h"
#include "Instructions.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "DebugIR.h"

#include "ArrayTemplate.h"

ARR_CTOR   (AddressTable, Address)
ARR_DTOR   (AddressTable, Address)
ARR_RESIZE (AddressTable, Address)
ARR_ADD    (AddressTable, Address)

ARR_CTOR   (ReferenceArr, Reference)
ARR_DTOR   (ReferenceArr, Reference)
ARR_RESIZE (ReferenceArr, Reference)
ARR_ADD    (ReferenceArr, Reference)

#undef ARR_CTOR   
#undef ARR_DTOR   
#undef ARR_RESIZE 
#undef ARR_ADD    
#undef FIND_IN_ARR
#undef COPY_TO_ARR

//////////////////////////////////////////////////////
int ContextCtor (Context* ctx, Elf* elf)
    {
    assert(ctx);
    assert(elf);

    AddressTableCtor (&ctx->global_vars);
    AddressTableCtor (&ctx->functions);

    ReferenceArrCtor (&ctx->call_refs);

    ctx->baseblocks  = NULL;
    ctx->jump_refs   = NULL;
    ctx->value_usage = NULL;

    ctx->code = &elf->code_buf;
    ctx->data = &elf->data_buf;

    return SUCCESS;
    }

int ContextDtor (Context* ctx)
    {
    assert(ctx);

    AddressTableDtor (&ctx->global_vars);
    AddressTableDtor (&ctx->functions);

    ReferenceArrDtor (&ctx->call_refs);

    ctx->baseblocks  = NULL;
    ctx->jump_refs   = NULL;
    ctx->value_usage = NULL;

    ctx->code = NULL;
    ctx->data = NULL;

    return SUCCESS;
    }

int SetCtxForFunction (Context* ctx)
    {
    assert(ctx);

    AddressTable*    baseblocks_table = (AddressTable*) calloc (1, sizeof(baseblocks_table[0]));
              assert(baseblocks_table);
    AddressTableCtor(baseblocks_table);

    ReferenceArr*    jump_refs = (ReferenceArr*) calloc (1, sizeof(jump_refs[0]));
              assert(jump_refs);
    ReferenceArrCtor(jump_refs);

    LocationTable*    table = (LocationTable*) calloc (1, sizeof(table[0])) ;
              assert (table);
    LocationTableCtor(table);

    ctx->baseblocks  = baseblocks_table;
    ctx->jump_refs   = jump_refs;
    ctx->value_usage = table;
    
    return SUCCESS;
    }

int ClearCtxAfterFunction (Context* ctx)
    {
    assert(ctx);
    assert(ctx->baseblocks);
    assert(ctx->jump_refs);
    assert(ctx->value_usage);

    AddressTableDtor (ctx->baseblocks);
    free (ctx->baseblocks);

    ReferenceArrDtor (ctx->jump_refs);
    free (ctx->jump_refs);

    LocationTableDtor (ctx->value_usage);
    free (ctx->value_usage);

    return SUCCESS;
    }

//////////////////////////////////////////////////////
int ResolveReferences (Buffer* code, AddressTable* functions, ReferenceArr* refs)
    {
    assert(code);
    assert(functions);
    assert(refs);
    return 0;
    }

//////////////////////////////////////////////////////
Reg GeneralPurposeRegs[] = {
{ RAX, NULL, LOCKED }, 

{ RDI, NULL, LOCKED }, 
{ RSI, NULL, FREE   }, 
{ RDX, NULL, LOCKED }, 
{ RCX, NULL, FREE }, 
{ R8,  NULL, FREE }, 
{ R9,  NULL, FREE },

{ RSP, NULL, LOCKED },

{ RBX, NULL, FREE }, 
{ RBP, NULL, FREE }, 

{ R10, NULL, FREE }, 
{ R11, NULL, FREE }, 
{ R12, NULL, FREE }, 
{ R13, NULL, FREE }, 
{ R14, NULL, FREE }, 
{ R15, NULL, FREE }, 
};

const int NUMBER_OF_REGS = sizeof(GeneralPurposeRegs) / sizeof(Reg);


#include <stack>

using namespace std;
static  stack <Reg*> FreeRegs;

// TODO instead of for loops MUST be Stack and Que respectively (because can be bugs with freeing last allocated reg);
static int FreeUnusedLocations ();
static int FreeUnusedLocations ()
    {
    int number_of_frees_regs = 0;

    for (int i = 0; i < NUMBER_OF_REGS; i++)
        {
        Reg* reg = GeneralPurposeRegs + i;
        
        if (reg->status == FREE || reg->status == LOCKED)
            continue;
        
        Location* loc = reg->loc;
        assert(loc);

        if (loc->n_usage > 0)
            continue;

        FreeReg(i);
        number_of_frees_regs++;
        }
    
    return number_of_frees_regs;
    }

Reg* AllocateReg ()
    {
    if (FreeRegs.empty())
        {
        int n_free = FreeUnusedLocations ();
        assert (n_free > 0);
         // TODO: locate space on stack and push, or put local
        }

    Reg* free_reg = FreeRegs.top();
    FreeRegs.pop();

    if (free_reg->status == LOCKED)
        {
        report ("%s\n", GetRegName (free_reg->number));
        assert(0);
        }
    
    return free_reg;
    }

int SetReg (Location* loc, Reg* reg)
    {
    $log(DEBUG)
    report ("%s -> %s\n", loc->name, GetRegName (reg->number));

    assert (loc);
    assert (reg->number >= 0);
    
    if (loc->type == LocationType::Register)
        FreeReg (loc->reg.number);

    reg->loc    = loc;

    if (reg->status != LOCKED)
        reg->status = BUSY;
     
    loc->type       = LocationType::Register;
    loc->reg.number = reg->number;

    return 0;
    }

Reg* GetReg (int number)
    {
    assert(number >= 0 && number < NUMBER_OF_REGS); 
    report ("Get Reg: %s\n", GetRegName( (GPRegisterNumber)  number));
    return GeneralPurposeRegs + number;
    }

int ResetRegisters ()
    {
    for (int i = 0; i < NUMBER_OF_REGS; i++)
        {
        Reg* reg = GetReg ( (GPRegisterNumber) i);
        if (reg->status == LOCKED)
            continue;

        FreeReg (i);
        }
    
    return SUCCESS;
    }

size_t SetParametersRegisters (Context* ctx, const ValueArr* argv)
    {
    assert(ctx);
    assert(argv);

    size_t n_params = 0;
    const Instruction* param = (const Instruction*) (argv->arr[n_params]);
    
    size_t  i = RDI;

    while (param)
        {
        assert (param->Value::type        == ValueType::Instruction);
        assert (param->Instruction::type  == InstructionType::Store);

        Location* loc = FindLocation (ctx->value_usage, param->name);
        if (!loc)
            {
            report ("Warning: unused parameter '%s'\n", param->name);
            }
        else
            {    
            Reg* param_reg =  GeneralPurposeRegs + i;
            assert(i <= R9);
            
            param_reg->loc    = loc;
            param_reg->status = LOCKED;
            
            loc->type       = LocationType::Register;
            loc->reg.number = param_reg->number;
            }

        i++;
        n_params++;
        if (n_params >= argv->size)
            break;

        param = (const Instruction*) argv->arr[n_params]; 
        }

    assert (n_params == argv->size);
    assert(n_params <= 6);

    report ("n_params: %lu \n", n_params);
    return n_params;
    }

int FreeReg (int number)
    {
    assert(number >= 0 && number < NUMBER_OF_REGS); 

    report ("Freeing: %s\n", GetRegName ( (GPRegisterNumber) number));
    Reg*  reg = GeneralPurposeRegs + number;
    assert(reg);

    reg->loc    = NULL;

    if (reg->status == LOCKED)
        return 0;

    reg->status = FREE;
    
    FreeRegs.push (reg);
    return SUCCESS;
    }


int ResetTempLocations ()
    {
    for (int i = 0; i < NUMBER_OF_REGS; i++)
        {
        Reg* reg = GeneralPurposeRegs + i;

        if (reg->status == FREE || reg->status == LOCKED)
            {
            reg->loc = NULL;
            continue;
            }
        
        // assert (reg->loc);
        // if (!reg->loc)
            // FreeReg (i);

        // if (reg->loc->variable_type == TEMP)
            // FreeReg (i);

        report (":::::::FREE BASE BLOCK:::::::::::\n");
        FreeReg    (i);
        PRINT_REG  (i);
        }
    
    return 0;
    }

size_t GetVa (Context* ctx, size_t increase)
    {
    size_t temp = ctx->rip;
    ctx->rip += increase;

    return temp;
    }

int PrintReg (int number)
    {
    assert(number >= 0 && number < NUMBER_OF_REGS); 

    Reg* reg =  GeneralPurposeRegs + number;
    
    printf ("%s, status %d, loc %p\n\t", GetRegName (reg->number), reg->status, reg->loc);

    if (reg->loc)
        PrintLocation (reg->loc);

    return 0;
    }

int PrintLocation (Location* loc)
    {
    assert(loc);

    printf ("location: '%s', n_usage %lu\n", loc->name, loc->n_usage);
    return 0;
    }

const char* GetRegName (GPRegisterNumber reg)
    {
    switch (reg)
        {
        case RAX: return "%rax";
        
        case RDI: return "%rdi";
        case RSI: return "%rsi";
        case RDX: return "%rdx";
        case RCX: return "%rcx";
        case R8:  return "%r8";
        case R9:  return "%r9";
        
        case RSP: return "%rsp";
        
        case RBX: return "%rbx";
        case RBP: return "%rbp";
        case R10: return "%r10";
        case R11: return "%r11";
        case R12: return "%r12";
        case R13: return "%r13";
        case R14: return "%r14";
        case R15: return "%r15";

        default: return "unknown";
        }
    }