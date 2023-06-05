#pragma once

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

Reg* AllocateReg ();
int FreeReg      (int reg_number);