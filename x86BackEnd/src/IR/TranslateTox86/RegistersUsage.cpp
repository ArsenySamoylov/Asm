#include <assert.h>
#include <stdio.h>
#include <stddef.h> 
#include <stdlib.h>

#include "RegistersUsage.h"
#include "Instructions.h"

#include "CommonEnums.h"
#include "LogMacroses.h"

static Reg GeneralPurposeRegs[] = {
{ RAX, FREE, NotAllocatable, 0 }, 

{ RDI, FREE, Allocatable,    7 }, 
{ RSI, FREE, Allocatable,    6 }, 
{ RDX, FREE, Allocatable,    2}, 
{ RCX, FREE, Allocatable,    1 }, 
{ R8,  FREE, Allocatable,    8 }, 
{ R9,  FREE, Allocatable,    9 },

{ RSP, BUSY, NotAllocatable, 4 },

{ RBX, FREE, Allocatable,    3 }, 
{ RBP, BUSY, NotAllocatable, 5 }, 

{ R10, FREE, Allocatable,    10}, 
{ R11, FREE, Allocatable,    11 }, 
{ R12, FREE, Allocatable,    12 }, 
{ R13, FREE, Allocatable,    13 }, 
{ R14, FREE, Allocatable,    14 }, 
{ R15, FREE, Allocatable,    15 }, 
};

const int NUMBER_OF_REGS = sizeof(GeneralPurposeRegs) / sizeof(Reg);

#include <stack>
static std::stack <Reg*> FreeRegs;

int ResetRegisters ()
    {
    for (int i = 0; i < NUMBER_OF_REGS; i++)
        {
        if (i == RSP)
            continue; 
        
        Reg*    reg = GetReg (i);
        assert (reg);

        FreeReg (i);
        }
    
    return SUCCESS;
    }

Reg* GetReg (int number)
    {
    assert(number >= 0 && number < NUMBER_OF_REGS);
    return GeneralPurposeRegs + number;
    }

const char* GetRegName (int reg)
    {
    switch (reg)
        {
        case RAX: return "%rax";
        
        case RDI: return "%rdi";
        case RSI: return "%rsi";
        case RDX: return "%rdx";
        case RCX: return "%rcx";
        case R8:  return "%r8";
        case R9:  return "%r9";
        
        case RSP: return "%rsp";
        
        case RBX: return "%rbx";
        case RBP: return "%rbp";
        case R10: return "%r10";
        case R11: return "%r11";
        case R12: return "%r12";
        case R13: return "%r13";
        case R14: return "%r14";
        case R15: return "%r15";

        default: return "unknown";
        }
    }

int PrintReg (int number)
    {
    assert(number >= 0 && number < NUMBER_OF_REGS); 

    Reg* reg =  GeneralPurposeRegs + number;
    
    printf ("%s, status %s, \n\t", GetRegName (reg->number), 
                                   reg->status ==  BUSY ? "BUSY" : "FREE");

    return 0;
    }


Reg* AllocateReg ()
    {
    if (FreeRegs.empty())
        assert (0);

    Reg*    free_reg = FreeRegs.top();
    assert (free_reg);
    assert (free_reg->allocation_status == Allocatable);
    
    FreeRegs.pop();
    
    while (free_reg->status != FREE)
        {
        if (FreeRegs.empty())
            assert (0);

        free_reg = FreeRegs.top();
        FreeRegs.pop();
        
        assert (free_reg);
        assert (free_reg->allocation_status == Allocatable);
        }

    return free_reg;
    }


static int FreeAllocatableReg    (Reg* reg);
static int FreeNotAllocatableReg (Reg* reg);

int FreeReg (int reg_number)
    {
    Reg*    reg = GetReg (reg_number);
    assert (reg);

    if (reg->allocation_status == Allocatable)
        FreeAllocatableReg (reg);

    if (reg->allocation_status == NotAllocatable)
        FreeNotAllocatableReg (reg);
    
    return SUCCESS;
    }

static int FreeAllocatableReg (Reg* reg)
    {
    assert (reg);
    assert (reg->allocation_status == Allocatable);

    FreeRegs.push (reg);
    reg->status = FREE;
    
    return SUCCESS;
    }

static int FreeNotAllocatableReg (Reg* reg)
    {
    assert (reg);
    assert (reg->allocation_status == NotAllocatable);

    reg->status = FREE;

    return SUCCESS;
    }