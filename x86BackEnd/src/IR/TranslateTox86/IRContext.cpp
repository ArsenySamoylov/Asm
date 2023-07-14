#include <assert.h>
#include <stdio.h>
#include <stddef.h> 
#include <stdlib.h>

#include "IRContext.h"
#include "Instructions.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "DumpIR.h"

FILE* DUMP = NULL;

#pragma GCC diagnostic ignored "-Wconversion"
void ResetReferenceArr (ReferenceArr& arr)
    {
    arr.clear();
    }

void AddReference (ReferenceArr& arr, Reference ref)
    {
    arr.push_back(ref);
    }

int ResolveReferences (Buffer* code, ReferenceArr& refs)
    {
    assert(code);
    
    for (size_t i = 0; i < refs.size(); i++)
        {
        const Reference& reference = refs[i];

        byte* where_to_write = code->buffer + reference.position;
        assert (code->size > reference.position);

        *((int32_t*) where_to_write) = reference.ref_value->get_storage()->get_address() -
                                       reference.address;
        }

    return 0;
    }

//////////////////////////////////////////////////////
int ContextCtor (Context* ctx, Elf* elf)
    {
    assert(ctx);
    assert(elf);

    ctx->code = &elf->code_buf;

    return SUCCESS;
    }

int ContextDtor (Context* ctx)
    {
    assert(ctx);

    ctx->code = NULL;
    ctx->data = NULL;

    ctx->stdlib = NULL;

    return SUCCESS;
    }

int SetCtxForFunction (Context* ctx, const Function* func)
    {
    assert(ctx);

    ctx->n_locals = func->get_n_local_vars ();
    
    return SUCCESS;
    }

int ClearCtxAfterFunction (Context* ctx)
    {
    assert(ctx);
    
    ctx->n_locals = 0;
    ResetReferenceArr (ctx->jump_refs);
    return SUCCESS;
    }

#pragma GCC diagnostic ignored "-Wcast-qual"
void WriteOpCodes (Context* ctx, const char* src, unsigned size)
    {
    assert (ctx);
    assert (src);

    CopyToBuff (ctx->code, ctx->code->size, (void*) src, size);
    } 

//////////////////////////////////////////////////////
const int COMMENT_ALIGNMENT = 30;
      int CURRENT_LINE_LENGTH   = 0;

const int TAB_SIZE = 4;
const int MAX_COMMENT_LENGTH = 128;

void print_raw     (const char* format, ...)
    {
    assert (format);

    va_list ptr;
    va_start(ptr, format);

    CURRENT_LINE_LENGTH += vfprintf (DUMP, format, ptr);

    va_end(ptr);
    }

void print_comment (const char* comment)
    {
    if (!comment) 
        {
        new_line ();
        return;
        }

    if (COMMENT_ALIGNMENT - CURRENT_LINE_LENGTH > 0)
        fprintf (DUMP, "%*c", COMMENT_ALIGNMENT - CURRENT_LINE_LENGTH, ' ');

    print_raw ("# %s", comment);
    new_line ();
    }

void new_line ()
    {
    print_raw ("\n");
    CURRENT_LINE_LENGTH = 0;
    }

void PrintIRInstruction (const Instruction* instr)
    {
    assert (instr);

    print_raw ("### "); 
    WriteToFile (DUMP, instr); 
    new_line ();
    }

const char* MakeComment (const char* format, ...)
    {
    assert (format);

    static char comment [MAX_COMMENT_LENGTH + 16] = {};

    va_list ptr;
    va_start(ptr, format);

    size_t length = strlen(format);
    assert(length < MAX_COMMENT_LENGTH);

    vsnprintf (comment, MAX_COMMENT_LENGTH, format, ptr);

    va_end(ptr);
    return comment;
    }