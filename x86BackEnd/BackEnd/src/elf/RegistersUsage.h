#pragma once

#include "Value.h"

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

    GPRegisterNumber reg_num; // if in register
    size_t offset;            // if in stack
    
    data_t data;              // if it is Constant

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
int AddLocation       (LocationTable* arr, Location* use);

int ResetLocationTable (LocationTable* table);
Location* FindLocation (LocationTable* arr, name_t name);

// int SetValuesUsage (LocationTable* table, const Function* func);

//////////////////////////////////////////////////////
enum RegStatus
    {
    FREE,
    BUSY,
    };

enum AllocationStatus
    {
    Allocatable,
    NotAllocatable,
    };

struct Reg
    {
    const GPRegisterNumber number;
    
    int                  status;
    const int allocation_status;
    const int    op_code_number;
    };

int         ResetRegisters ();
Reg*        GetReg         (int number);
const char* GetRegName     (int number);

int     PrintReg (int number);
#define PRINT_REG(NUMBER) do { printf ("%s:%d ", __FILE__, __LINE__); PrintReg(NUMBER); } while (0);

//////////////////////////////////////////////////////
Reg* AllocateReg     (LocationTable* table);
int  SetLocation     (Location* loc, Reg* reg);
size_t DecreaseUsage (LocationTable* table, const Value* val);
Location* FindLocationByReg (LocationTable* table, GPRegisterNumber);


void DumpLocations (LocationTable* table);
#define DUMP_LOCATIONS (TABLE) {printf ("Dump from %s:%d\n", __FILE__, __LINE__); DumpLocations (table) }

int     PrintLocation (Location* loc);

#define PRINT_LOCATION(LOC) do  {                                       \
                                printf ("%s:%d ", __FILE__, __LINE__);  \
                                PrintLocation (LOC);                    \
                                printf ("\n");                          \
                                } while (0);
