#pragma once

#include <stdlib.h>

#include "RegistersUsage.h"
#include "Elf.hpp"

struct Address
    {
    const Value* val;
    size_t va;
    };

struct AddressTable 
    {
    Address** arr;

    size_t size;
    size_t capacity;
    };

int AddressTableCtor (AddressTable* arr);
int AddressTableDtor (AddressTable* arr);

int AddAddress (AddressTable* arr, Address* ad);
//////////////////////////////////////////////////////
struct Reference 
    {
    size_t position;
    size_t va;

    Value* reference;
    };

struct ReferenceArr 
    {
    Reference** arr;

    size_t size;
    size_t capacity;
    };

int ReferenceArrCtor (ReferenceArr* arr);
int ReferenceArrDtor (ReferenceArr* arr);

int AddReference (ReferenceArr* arr, Reference* ref);

////////////////////////////////////////////////////// 
struct Context
    {
    AddressTable global_vars;
    AddressTable functions;

    ReferenceArr call_refs;

    AddressTable* baseblocks;
    ReferenceArr* jump_refs;
    UsageTable*   value_usage;

    size_t rip;

    size_t n_pushes;

    Buffer* code;
    Buffer* data;

    FILE* dump;
    };

int ContextCtor (Context* ctx, Elf* elf);
int ContextDtor (Context* ctx);

int SetCtxForFunction     (Context* ctx);
int ClearCtxAfterFunction (Context* ctx);


// TODO instead of for loops MUST be Stack and Que respectively (because can be bugs with freeing last allocated reg);
// XMMRegisterNumber AllocateXMMReg (Context* ctx, Location* loc);
GPRegisterNumber AllocateGPReg (Context* ctx, Location* loc);

size_t GetVa (Context* ctx, size_t increase);

#define print(format, ...)                          \
    do                                              \
    {                                               \
    fprintf(DUMP_FILE, "\t");                       \
                                                    \
    fprintf(ctx->dump, format __VA_OPT__(,) __VA_ARGS__);      \
    }while(0);

#define print_rip() fprintf("%x:\n", ctx->rip)