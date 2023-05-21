#include <assert.h>
#include <stdio.h>
#include <stddef.h> 
#include <stdlib.h>

#include "PutIRctx.h"
#include "Instructions.h"

#include "CommonEnums.h"
#include "LogMacroses.h"

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
    assert(ctx->baseblocks);
    assert(ctx->jump_refs);

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
    assert(!ctx->baseblocks);
    assert(!ctx->jump_refs);

    AddressTableDtor (ctx->baseblocks);
    free (ctx->baseblocks);

    ReferenceArrDtor (ctx->jump_refs);
    free (ctx->jump_refs);

    LocationTableDtor (ctx->value_usage);
    free (ctx->value_usage);

    return SUCCESS;
    }

//////////////////////////////////////////////////////
Reg GeneralPurposeRegs[] = {
{ RAX, NULL, FREE }, 

{ RDI, NULL, FREE }, 
{ RSI, NULL, FREE }, 
{ RDX, NULL, FREE }, 
{ RCX, NULL, FREE }, 
{ R8,  NULL, FREE }, 
{ R9,  NULL, FREE },

{ RSP, NULL, BUSY },

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

// TODO instead of for loops MUST be Stack and Que respectively (because can be bugs with freeing last allocated reg);
static int FreeUnusedLocations ();
static int FreeUnusedLocations ()
    {
    int number_of_frees_regs = 0;

    for (size_t i = 0; i < NUMBER_OF_REGS; i++)
        {
        Reg reg  = GeneralPurposeRegs[i];
        
        if (reg.status == FREE)
            continue;
        
        Location* loc = reg.loc;
        assert(loc);

        if (loc->n_usage > 0)
            continue;

        reg.loc    = NULL;
        reg.status = FREE;

        number_of_frees_regs++;
        }
    
    return number_of_frees_regs;
    }

Reg* AllocateGPReg (int status)
    {
    static int n_free_regs = NUMBER_OF_REGS;
    static int n_busy_regs = 0;

    for (int i = 0; i < NUMBER_OF_REGS; i++)
        {
        Reg*    reg = GeneralPurposeRegs + i;
        assert (reg);

        if (reg->status == BUSY)
            continue;

        assert(reg->loc == NULL);

        n_free_regs--;
        n_busy_regs++;

        reg->status = BUSY;

        return reg;
        }

    assert (status == SUCCESS); // to prevent recursion
    if (FreeUnusedLocations () > 0)
        return AllocateGPReg (FAILURE);
    
    // TODO: locate space on stack and push, or put local
    assert(0);
    }

Reg* GetReg (int number)
    {
    assert(number >= 0 && number < NUMBER_OF_REGS); 
    return GeneralPurposeRegs + number;
    }

int ResetRegisters ()
    {
    for (int i =0; i < NUMBER_OF_REGS; i++)
        {
        if (i == RSP)
            continue;

        FreeReg (i);
        }
    
    return SUCCESS;
    }

int SetParametersRegisters (Context* ctx, const ValueArr* argv)
    {
    assert(ctx);
    assert(argv);

    size_t n_param = argv->size;
    assert(n_param <= 6);

    report ("Argv = %lu\n", n_param);

    for (size_t i = RDI; i < n_param; i++)
        {
        Reg* param =  GeneralPurposeRegs + i;
        assert(param);

        param->status = BUSY;
        }

    return SUCCESS;
    }

int FreeReg (int number)
    {
    assert(number >= 0 && number < NUMBER_OF_REGS); 

    Reg*  reg = GeneralPurposeRegs + number;
    assert(reg);

    reg->loc    = NULL;
    reg->status = FREE;
    
    return SUCCESS;
    }

size_t GetVa (Context* ctx, size_t increase)
    {
    size_t temp = ctx->rip;
    ctx->rip += increase;

    return temp;
    }