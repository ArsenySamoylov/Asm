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
const char* DUMP_FILE = "logs/dump.s";

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

    ctx->dump = fopen (DUMP_FILE, "w");
    assert(ctx->dump);
    setvbuf (ctx->dump, NULL, _IONBF, 0);

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

    fclose(ctx->dump);
    ctx->dump = NULL;

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

    UsageTable*    table = (UsageTable*) calloc (1, sizeof(table[0])) ;
           assert (table);
    UsageTableCtor(table);

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

    UsageTableDtor (ctx->value_usage);
    free (ctx->value_usage);

    return SUCCESS;
    }

//////////////////////////////////////////////////////
struct Reg
    {
    enum RegisterLocationType type;
    GPRegisterNumber number;
    Location* loc;
    };

Reg GeneralPurposeRegs[] = {
{RegisterLocationType::GeneralPurpose, RAX, NULL}, 
{RegisterLocationType::GeneralPurpose, RDI, NULL}, 
{RegisterLocationType::GeneralPurpose, RSI, NULL}, 
{RegisterLocationType::GeneralPurpose, RDX, NULL}, 
{RegisterLocationType::GeneralPurpose, RCX, NULL}, 
{RegisterLocationType::GeneralPurpose, R8, NULL}, 
{RegisterLocationType::GeneralPurpose, R8, NULL}, 
};

const int NUMBER_OF_GP_REGS = sizeof(GeneralPurposeRegs) / sizeof(Reg);

// TODO instead of for loops MUST be Stack and Que respectively (because can be bugs with freeing last allocated reg);
GPRegisterNumber AllocateGPReg (Context* ctx, Location* loc)
    {
    assert(ctx);
    assert(loc->type != LocationType::Register);

    static int n_free_regs = NUMBER_OF_GP_REGS;
    static int n_busy_regs = 0;

    for (int i = 0; i < NUMBER_OF_GP_REGS; i++)
        {
        Reg reg = GeneralPurposeRegs[i];

        if (reg.loc)
            continue;
        
        reg.loc = loc;

        loc->type       = LocationType::Register;
        loc->reg.type   = RegisterLocationType::GeneralPurpose;
        loc->reg.number = reg.number;

        n_free_regs--;
        n_busy_regs++;

        return reg.number;
        }

    UsageTable* table = ctx->value_usage;

    for (size_t i = 0; i < table->size; i++)
        {
        Usage*  temp = table->arr[i];
        assert (temp);

        if (temp->n_usage != 0)
            continue;

        Location* temp_loc = &temp->location;

        if (temp_loc->type != LocationType::Register)
            continue;

        if (temp_loc->reg.type != RegisterLocationType::GeneralPurpose)
            continue;

        GPRegisterNumber reg_num = (GPRegisterNumber) temp_loc->reg.number;
        temp_loc->type = LocationType::NoWhere;

        Reg reg  = GeneralPurposeRegs[reg_num];
        assert (reg_num == reg.number);

        reg.loc = loc;
        return reg_num;
        }
    
    // TODO: locate space on stack and push, or put local
    assert(0);
    }

size_t GetVa (Context* ctx, size_t increase)
    {
    size_t temp = ctx->rip;
    ctx->rip += increase;

    return temp;
    }