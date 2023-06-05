#pragma once

#include <stdlib.h>

#include "Elf.hpp"
#include "Value.h"

struct Reference 
    {
    size_t    position;
    address_t address;

    const Value*  ref_value;
    };

struct ReferenceArr 
    {
    Reference** arr;

    size_t size;
    size_t capacity;
    };

int ReferenceArrCtor (ReferenceArr* arr);
int ReferenceArrDtor (ReferenceArr* arr);

int ResetReferenceArr (ReferenceArr* arr);

int AddReference      (ReferenceArr* arr, Reference* ref);
int ResolveReferences (Buffer* buf, ReferenceArr* refs);

////////////////////////////////////////////////////// 
struct Context
    {
    ReferenceArr call_refs;
    ReferenceArr jump_refs;

    Buffer* code;
    Buffer* data;

    Buffer* stdlib;

    size_t n_locals;
    FILE* dump;
    };

int ContextCtor (Context* ctx, Elf* elf);
int ContextDtor (Context* ctx);

int SetCtxForFunction     (Context* ctx, const Function* func);
int ClearCtxAfterFunction (Context* ctx);

void WriteOpCodes (Context* ctx, const char* src, unsigned size);

extern FILE* DUMP;

#define print_raw(format, ...) fprintf (DUMP, format __VA_OPT__(,) __VA_ARGS__);   
#define print_label(VALUE)      print_raw  ("%s:\n", (VALUE)->name)
#define new_line()              print_raw ("\n");
#define PRINT_INSTR_COMM(INSTR) print_raw ("### "); WriteToFile (DUMP, INSTR); print_raw("\n");   

#define print_tab(format, ...)                            \
    do                                                    \
    {                                                     \
    print_raw ("\t");                                     \
                                                          \
    print_raw (format __VA_OPT__(,) __VA_ARGS__);         \
    }while(0);

const char* MakeComment (const char* format, ...);