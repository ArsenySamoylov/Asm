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

int AddReference (ReferenceArr* arr, Reference* ref);

////////////////////////////////////////////////////// 
struct Context
    {
    AddressTable global_vars;
    AddressTable functions;

    ReferenceArr call_refs;
    
    AddressTable* baseblocks;
    ReferenceArr* jump_refs;
    LocationTable*   value_usage;

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

int ResolveReferences (Buffer* buf, AddressTable* functions, ReferenceArr* refs);
//////////////////////////////////////////////////////
enum RegStatus
    {
    FREE,
    BUSY,
    LOCKED, // can't be freed
    };

struct Reg
    {
    GPRegisterNumber number;
    
    Location* loc;
    int status;
    };

Reg* GetReg (int number);
int ResetRegisters ();
size_t SetParametersRegisters (Context* ctx, const ValueArr* argv);

int FreeReg (int number);

// TODO instead of for loops MUST be Stack and Que respectively (because can be bugs with freeing last allocated reg);
Reg* AllocateReg ();
int SetReg (Location* loc, Reg* reg);

int ResetTempLocations ();

size_t GetVa (Context* ctx, size_t increase);   

#define PRINT_REG(NUMBER) printf ("%s:%d ", __FILE__, __LINE__); PrintReg(NUMBER);

int PrintReg (int number);
int PrintLocation (Location* loc);

const char* GetRegName (GPRegisterNumber reg);
