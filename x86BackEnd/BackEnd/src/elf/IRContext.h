#pragma once

#include <stdlib.h>

#include "RegistersUsage.h"
#include "Elf.hpp"

struct Address
    {
    name_t name;
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

int ResetAddressTable (AddressTable* arr);

int AddAddress (AddressTable* arr, Address* ad);
//////////////////////////////////////////////////////
struct Reference 
    {
    size_t position;
    size_t va;

    name_t reference;
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

int AddReference (ReferenceArr* arr, Reference* ref);
int ResolveReferences (Buffer* buf, AddressTable* functions, ReferenceArr* refs);

////////////////////////////////////////////////////// 
struct Context
    {
    AddressTable global_vars;
    AddressTable functions;
    ReferenceArr call_refs;
    
    AddressTable baseblocks; 
    ReferenceArr jump_refs;
    
    LocationTable value_usage;

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

size_t GetVa (Context* ctx, size_t increase);   

extern FILE* DUMP;

#define print(format, ...)                                \
    do                                                    \
    {                                                     \
    fprintf(DUMP, "\t");                                  \
                                                          \
    fprintf(DUMP, format __VA_OPT__(,) __VA_ARGS__);      \
    }while(0);
