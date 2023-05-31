#include <assert.h>
#include <stdio.h>
#include <stddef.h> 
#include <stdlib.h>

#include "IRContext.h"
#include "Instructions.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "DebugIR.h"


FILE* DUMP = NULL;


#include "ArrayTemplate.h"

ARR_CTOR   (AddressTable, Address)
ARR_DTOR   (AddressTable, Address)
ARR_RESIZE (AddressTable, Address)
ARR_ADD    (AddressTable, Address)
RESET_ARR  (AddressTable)

ARR_CTOR   (ReferenceArr, Reference)
ARR_DTOR   (ReferenceArr, Reference)
ARR_RESIZE (ReferenceArr, Reference)
ARR_ADD    (ReferenceArr, Reference)
RESET_ARR  (ReferenceArr)

#undef ARR_CTOR   
#undef ARR_DTOR   
#undef ARR_RESIZE 
#undef ARR_ADD    
#undef FIND_IN_ARR
#undef COPY_TO_ARR
#undef RESET_ARR

int ResolveReferences (Buffer* code, AddressTable* functions, ReferenceArr* refs)
    {
    assert(code);
    assert(functions);
    assert(refs);
    
    report ("Resolve reference: Not ready\n");
    return 0;
    }

//////////////////////////////////////////////////////
int ContextCtor (Context* ctx, Elf* elf)
    {
    assert(ctx);
    assert(elf);

    AddressTableCtor (&ctx->global_vars);
    AddressTableCtor (&ctx->functions);

    ReferenceArrCtor (&ctx->call_refs);

    AddressTableCtor (&ctx->baseblocks);
    ReferenceArrCtor (&ctx->jump_refs);
    
    LocationTableCtor (&ctx->value_usage);

    ctx->code = &elf->code_buf;
    ctx->data = &elf->data_buf;

    ctx->rip = ENTRY_POINT;

    return SUCCESS;
    }

int ContextDtor (Context* ctx)
    {
    assert(ctx);

    AddressTableDtor (&ctx->global_vars);
    AddressTableDtor (&ctx->functions);

    ReferenceArrDtor (&ctx->call_refs);

    AddressTableDtor (&ctx->baseblocks);
    ReferenceArrDtor (&ctx->jump_refs);
    
    LocationTableDtor (&ctx->value_usage);

    ctx->code = NULL;
    ctx->data = NULL;

    return SUCCESS;
    }

int SetCtxForFunction (Context* ctx)
    {
    assert(ctx);

    return SUCCESS;
    }

int ClearCtxAfterFunction (Context* ctx)
    {
    assert(ctx);

    ResetAddressTable  (&ctx->baseblocks);
    ResetReferenceArr  (&ctx->jump_refs);

    ResetLocationTable (&ctx->value_usage);
    ctx->value_usage.n_local_vars = 0;// cause ResetLocation doesn't do it

    return SUCCESS;
    }

size_t GetVa (Context* ctx, size_t increase)
    {
    size_t temp = ctx->rip;
    ctx->rip += increase;

    return temp;
    }

#pragma GCC diagnostic ignored "-Wcast-qual"
void WriteOpCodes (Context* ctx, const char* src, unsigned size)
    {
    assert (ctx);
    assert (src);

    // printf ("Ctx size %u\n", size);
    ctx->rip += size;

    CopyToBuff (ctx->code, ctx->code->size, (void*) src, size);
    } 
