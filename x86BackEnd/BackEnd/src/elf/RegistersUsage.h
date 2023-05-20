#pragma once

#include "Value.h"

//////////////////////////////////////////////////////
//              Location
// stack                        register 
// -> offset                    -> reg_num
// -> type                      -> type
//      -> stack_offset               -> general purpose
//      -> rbp offset                 -> XMM
//////////////////////////////////////////////////////
enum class RegisterLocationType
    {
    GeneralPurpose, 
    XMM, 
    };

enum GPRegisterNumber
    {
    // return value
    RAX = 0, 
    
    // (1-6 general purpose registers are used as parameters for call)
    RDI = 1,  
    RSI = 2, 
    RDX = 3,   
    RCX = 4, 
    R8  = 5, 
    R9  = 6, 

    RSP = 7,

    // callee saved
    RBX = 8, // temp register if needed    
    RBP = 9,

    R10 = 10,
    R11 = 11,
    R12 = 12,
    R13 = 13,
    R14 = 14,
    R15 = 15,
    };
    
enum XMMRegisterNumber
    {
    XMM0 = 0,
    XMM1 = 1,  
    XMM2 = 2, 
    XMM3 = 3,   
    XMM4 = 4, 
    XMM5 = 5, 
    XMM6 = 6, 
    XMM7 = 7,
    XMM8 = 8,     
    XMM9 = 9,
    XMM10 = 10,
    XMM11 = 11,
    XMM12 = 12,
    XMM13 = 13,
    XMM14 = 14,
    XMM15 = 15,
    };

struct RegisterLocation
    {
    enum RegisterLocationType type;
    size_t number;
    };

//////////////////////////////////////////////////////
enum class StackLocationType
    {
    Local, // Local variable
    Stack, // value on stack
    };

struct StackLocation
    {
    enum StackLocationType type;
    size_t offset;
    };
//////////////////////////////////////////////////////

enum class LocationType
    {
    Stack,
    Register,
    NoWhere
    };

struct Location 
    {
    enum LocationType type;

    StackLocation stack;
    RegisterLocation reg;
    };
//////////////////////////////////////////////////////

struct Usage
    {
    Value* val;
    size_t n_usage;

    Location location;
    };

struct UsageTable
    {
    Usage** arr;

    size_t size;
    size_t capacity;

    size_t n_local_vars = 0;
    };

int UsageTableCtor (UsageTable* arr);
int UsageTableDtor (UsageTable* arr);

int AddUsage (UsageTable* arr, Usage* use);
Usage* FindUsage (UsageTable* arr, const char* name);

int SetValueUsage (UsageTable* table, const Function* func);