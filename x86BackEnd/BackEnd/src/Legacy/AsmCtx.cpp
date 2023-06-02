#include "AsmCtx.h"

#include "LogMacroses.h"

int AsmCtxCtor (AsmCtx* ctx, const Program* program)
    {
    assertlog(ctx,      EFAULT, return BAD_ARGUMENT);
    assertlog(program,  EFAULT, return BAD_ARGUMENT);

    ctx->program = program;
    ctx->global_vars = NewNameTable();

    if (!ctx->global_vars)
        return FAILURE;

    ctx->number_of_global_vars = 0;

    return SUCCESS;
    }

int AsmCtxDtor (AsmCtx* ctx)
    {
    assertlog(ctx, EFAULT, return BAD_ARGUMENT);

    if (CloseNameTable(ctx->global_vars) != SUCCESS)
        return LFAILURE;

    // maybe double free
    // yes, it is
    // KILL(ctx->global_vars);

    return SUCCESS;
    }