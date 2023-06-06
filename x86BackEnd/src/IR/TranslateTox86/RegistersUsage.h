/*!
\file
\brief This file contains interface for using General Purpose Registers
*/
#pragma once

/**
 * @brief Registers logical number
 * @note each number is used as index in static Reg array
 */
enum GPRegisterNumber
    {
    RAX = 0, // return value 
    
    // (1-6 general purpose registers are used as parameters for call)
    RDI = 1,  
    RSI = 2, 
    RDX = 3,   
    RCX = 4, 
    R8  = 5, 
    R9  = 6, 

    RSP = 7, // Not allocatable

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

/**
 * @brief Structure to represent register
 * @note op_code_number used in Commands.cpp 
 * (because my logical numeration doesn't connect to Intel's)
 */
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

/**
 * @brief Allocate Reg
 * @todo It uses stack to store free regs. Maybe it is better to use another container. 
 * @return Reg* 
 */
Reg* AllocateReg ();

/**
 * @brief Frees reg
 * @note if reg id allocatable, than it also pushes reg to FreeRegs stack
 * @param reg_number 
 * @return int 
 */
int FreeReg      (int reg_number);