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

int ResolveReferences (Buffer* code, AddressTable* functions, ReferenceArr* refs)
    {
    assert(code);
    assert(functions);
    assert(refs);
    
    report ("Not ready\n");
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

    AddressTableCtor  (ctx->baseblocks_table);
    ReferenceArrCtor  (ctx->jump_refs);
    LocationTableCtor (ctx->value_usage);

    return SUCCESS;
    }

int ClearCtxAfterFunction (Context* ctx)
    {
    assert(ctx);

    AddressTableDtor (ctx->baseblocks);
    ReferenceArrDtor (ctx->jump_refs);
    LocationTableDtor (ctx->value_usage);

    return SUCCESS;
    }

size_t GetVa (Context* ctx, size_t increase)
    {
    size_t temp = ctx->rip;
    ctx->rip += increase;

    return temp;
    }
