#pragma once

#include "Value.h"

//////////////////////////////////////////////////////
//              Location
// stack                        register        memory
// -> offset                    -> reg_num
// -> type                      
//      -> stack_offset               
//      -> rbp offset                 
//////////////////////////////////////////////////////
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
    RBX = 8, // 1 
    RBP = 9, // 

    R10 = 10, // 2
    R11 = 11, // 3
    R12 = 12, // 4
    R13 = 13, // 5
    R14 = 14, // 6
    R15 = 15, // 7
    };
    
struct RegisterLocation
    {
    GPRegisterNumber number;
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
    Memory,
    NoWhere
    };

enum VariableLocationType
    {
    LOCAL,
    GLOBAL,
    TEMP
    };

struct Location 
    {
    enum LocationType type;

    StackLocation stack;
    RegisterLocation reg;
    
    size_t n_usage;
    name_t name;

    int variable_type;
    };

struct LocationTable
    {
    Location** arr;

    size_t size;
    size_t capacity;

    size_t n_local_vars = 0;
    };

int LocationTableCtor (LocationTable* arr);
int LocationTableDtor (LocationTable* arr);

int AddLocation (LocationTable* arr, Location* use);
Location* FindLocation (LocationTable* arr, name_t name);

int SetValuesUsage (LocationTable* table, const Function* func);