#pragma once

#include "Program.h"

struct AsmCtx 
    {
    const Program* program;

    NameTable* global_vars;
    int number_of_global_vars;
    };

int AsmCtxCtor (AsmCtx* ctx, const Program* program);
int AsmCtxDtor (AsmCtx* ctx);
