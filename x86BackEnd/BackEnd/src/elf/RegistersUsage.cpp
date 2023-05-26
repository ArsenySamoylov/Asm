#include <assert.h>
#include <stdio.h>
#include <stddef.h> 
#include <stdlib.h>

#include "RegistersUsage.h"
#include "Instructions.h"

#include "CommonEnums.h"
#include "LogMacroses.h"


#include "ArrayTemplate.h"

ARR_CTOR   (LocationTable, Location)
ARR_DTOR   (LocationTable, Location)
ARR_RESIZE (LocationTable, Location)
ARR_ADD    (LocationTable, Location)

#undef ARR_CTOR   
#undef ARR_DTOR   
#undef ARR_RESIZE 
#undef ARR_ADD    
#undef FIND_IN_ARR
#undef COPY_TO_ARR

Location* FindLocation (LocationTable* arr, const char* name)
    {
    assert(arr);
    if (!name) return NULL;

    for (size_t i = 0; i < arr->size; i++)
        {
        Location* temp = arr->arr[i];
        assert(temp);

        const char* temp_name = temp->name;
        
        if (!temp_name)
            continue;

        if (!strcmp(temp_name, name))
            return temp;
        }

    return NULL;
    }

void Function::count_location (LocationTable* table) const
    {
    assert(table);
    
    for (size_t i = 0; i < argv.get_size(); i++)
        argv.get_const_value(i)->count_location (table);

    for (size_t i = 0; i < body.get_size(); i++)
        body.get_const_value(i)->count_location (table);
    }

void BaseBlock::count_location (LocationTable* table) const
    {
    assert (table);

    for (size_t i = 0; i < inst_arr.get_size(); i++)
        inst_arr.get_const_value(i)->count_location (table);
    }

void Store::count_location (LocationTable* table) const 
    {
    assert(table);

    this->add_location (table);
    
    if (val)
        val->add_location (table);
    }

void Load::count_location (LocationTable* table) const 
    {
    assert(table);

    this->add_location (table);
    dest->add_location (table);  
    src-> add_location (table);
    }

void Operator::count_location (LocationTable* table) const 
    {
    assert(table);

    this    ->add_location (table);
     left_op->add_location (table);
    right_op->add_location (table);
    }

void Branch::count_location (LocationTable* table) const 
    {
    assert(table);

    // add_location (table, this);
    if (condition)
        condition->add_location (table);
    }

void Call::count_location (LocationTable* table) const 
    {
    assert(table);
    
    this->add_location (table);
    
    for (size_t i = 0; i < argv.get_size(); i++)
        argv.get_const_value(i)->count_location (table);
    }

void Return::count_location (LocationTable* table) const 
    {
    assert(table);
    
    this     ->add_location (table);
    ret_value->add_location (table);
    }

//////////////////////////////////////////////////////
void Value::add_location (LocationTable* table) const
    {
    assert(table);
    
    if (!name)
        return;

    Location* val_location = FindLocation (table, name);

    if (val_location)
        {
        val_location->n_usage++;
        // report ("%s->n_usage = %lu\n", val->name,  val_location->n_usage);
        return;
        }

    val_location = (Location*) calloc (1, sizeof(val_location[0]));
    assert (val_location);

    val_location->name       = name;
    val_location->n_usage    = 0;
    
    val_location->type          = LocationType::NoWhere;
    val_location->variable_type = TEMP;

    AddLocation (table, val_location);
    }


void Store::add_location (LocationTable* table) const
    {
    assert(table);
    
    Location* val_location = FindLocation (table, name);

    if (val_location)
        {
        val_location->n_usage++;
        // report ("%s->n_usage = %lu\n", val->name,  val_location->n_usage);
        return;
        }

    val_location = (Location*) calloc (1, sizeof(val_location[0]));
    assert (val_location);

    val_location->name       = name;
    val_location->n_usage    = 0;
    
    val_location->type          = LocationType::Stack;
    val_location->variable_type = LOCAL;
    val_location->offset  = ++table->n_local_vars; 
                
    AddLocation (table, val_location);
    }

//////////////////////////////////////////////////////
Reg GeneralPurposeRegs[] = {
{ RAX, FREE, NotAllocatable }, 

{ RDI, FREE, NotAllocatable }, 
{ RSI, FREE, Allocatable    }, 
{ RDX, FREE, NotAllocatable }, 
{ RCX, FREE, Allocatable    }, 
{ R8,  FREE, Allocatable    }, 
{ R9,  FREE, Allocatable    },

{ RSP, BUSY, NotAllocatable },

{ RBX, FREE, Allocatable    }, 
{ RBP, BUSY, NotAllocatable }, 

{ R10, FREE, Allocatable }, 
{ R11, FREE, Allocatable }, 
{ R12, FREE, Allocatable }, 
{ R13, FREE, Allocatable }, 
{ R14, FREE, Allocatable }, 
{ R15, FREE, Allocatable }, 
};

const int NUMBER_OF_REGS = sizeof(GeneralPurposeRegs) / sizeof(Reg);

#include <stack>
using namespace std;
static  stack <Reg*> FreeRegs;

static int FreeAllocatableReg    (Reg* reg);
static int FreeNotAllocatableReg (Reg* reg);

int ResetRegisters ()
    {
    for (int i = 0; i < NUMBER_OF_REGS; i++)
        {
        if (i == RSP)
            continue; 
        
        Reg*    reg = GetReg (i);
        assert (reg);

        if (reg->allocation_status == Allocatable)
            FreeAllocatableReg (reg);

        if (reg->allocation_status == NotAllocatable)
            FreeNotAllocatableReg (reg);
        }
    
    return SUCCESS;
    }

Reg* GetReg (int number)
    {
    assert(number >= 0 && number < NUMBER_OF_REGS);

    // report ("Get Reg: %s\n", GetRegName( (GPRegisterNumber)  number));
    return GeneralPurposeRegs + number;
    }

static int FreeAllocatableReg (Reg* reg)
    {
    assert (reg);
    assert (reg->allocation_status == Allocatable);
    assert (reg->status == BUSY); // otherwise register will be pushed twice to stack !!!

    // report ("Freeing: %s\n", GetRegName ( (GPRegisterNumber) number));
    reg->status = FREE;
    
    FreeRegs.push (reg);
    return SUCCESS;
    }

static int FreeNotAllocatableReg (Reg* reg)
    {
    assert (reg);
    assert (reg->allocation_status == NotAllocatable);

    // report ("Freeing: %s\n", GetRegName ( (GPRegisterNumber) number));
    reg->status = FREE;

    return SUCCESS;
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
    
    printf ("%s, status %d, \n\t", GetRegName (reg->number), reg->status);

    return 0;
    }

//////////////////////////////////////////////////////
// static int FreeUnusedLocations (LocationTable* table);
static int FreeReg (int reg_number);

Reg* AllocateReg (LocationTable* table)
    {
    assert (table);
    
    if (FreeRegs.empty())
        {
        // int n_free = FreeUnusedLocations (table);
        // assert (n_free > 0);
        assert (0);
         // TODO: locate space on stack and push, or put local
        }

    Reg* free_reg = FreeRegs.top();
    FreeRegs.pop();
    
    assert (free_reg);
    assert (free_reg->allocation_status == Allocatable);
    assert (free_reg->status == FREE);     
    
    return free_reg;
    }

int SetLocation (Location* loc, Reg* reg)
    {
    $log(DEBUG)
    assert (loc);
    assert (reg);

    // report ("%s -> %s\n", loc->name, GetRegName (reg->number));

    if (loc->type == LocationType::Register)
        FreeReg (loc->reg_num);

    loc->type    = LocationType::Register;
    loc->reg_num = reg->number;

    return 0;
    }

size_t DecreaseUsage (LocationTable* table, const Value* val)
    {
    report ("decreasing usage\n");

    assert(table);
    assert(val);
    
    Location* location = FindLocation (table, val->get_name());
    assert   (location);
    // PrintLocation (location);
    
    if (location->n_usage == 0 && location->type == LocationType::Register)
        FreeReg (location->reg_num);

    if (--location->n_usage == 0 && location->type == LocationType::Register)
        FreeReg (location->reg_num);

    PrintLocation (location);
    return location->n_usage;
    };

Location* FindLocationByReg (LocationTable* table, GPRegisterNumber reg_num)
    {
    assert (table);

    for (size_t i = 0; i < table->size; i++)
        {
        Location* location = table->arr[i];
        assert   (location);

        if (location->type == LocationType::Register &&
            location->reg_num == reg_num)
            return location;
        }
    
    return NULL;
    }

static int FreeReg (int reg_number)
    {
    Reg*    reg = GetReg (reg_number);
    assert (reg);
    assert (reg->status == BUSY);

    if (reg->allocation_status == Allocatable)
        FreeAllocatableReg (reg);

    if (reg->allocation_status == NotAllocatable)
        FreeNotAllocatableReg (reg);
    
    return SUCCESS;
    }


/*
int ResetTempLocations ()
    {
    for (int i = 0; i < NUMBER_OF_REGS; i++)
        {
        Reg* reg = GeneralPurposeRegs + i;

        if (reg->status == FREE || reg->status == LOCKED)
            {
            reg->loc = NULL;
            continue;
            }
        
        // assert (reg->loc);
        // if (!reg->loc)
            // FreeReg (i);

        // if (reg->loc->variable_type == TEMP)
            // FreeReg (i);

        report (":::::::FREE BASE BLOCK:::::::::::\n");
        FreeReg    (i);
        PRINT_REG  (i);
        }
    
    return 0;
    }
*/

size_t SetParametersRegisters (LocationTable* table, const ValueArr* argv)
    {
    assert (table);
    assert(argv);

    size_t n_params = 0;
    const Instruction* param = (const Instruction*) argv->get_const_value (n_params);
    assert            (param->get_type () == ValueType::Instruction);

    for (size_t i = RDI; i < table->n_local_vars; i++, n_params++)
        {
        assert (param->get_type()         == ValueType::Instruction);
        assert (param->get_instr_type()   == InstructionType::Store);

        Location* loc = FindLocation (table, param->get_name());
        
        if (!loc)
            report ("Warning: unused parameter '%s'\n", param->get_name());
        
        if (loc)
            {    
            assert (i <= R9);
            assert (loc->type == LocationType::NoWhere);
            
            Reg* reg = GetReg ( (int) i);
            SetLocation (loc, reg); 
            }

        param = (const Instruction*) argv->get_const_value (n_params); 
        }

    assert (n_params == argv->get_size());
    assert (n_params <= 6);

    // report ("n_params: %lu \n", n_params);
    return n_params;
    }

int PrintLocation (Location* loc)
    {
    assert(loc);

    printf ("location: '%s', n_usage %lu", loc->name, loc->n_usage);

    if (loc->type == LocationType::Stack)
        printf (", on stack (offset %lu)", loc->offset);

    if (loc->type == LocationType::Register)
        printf (", in reg %s", GetRegName (loc->reg_num));

    if (loc->type == LocationType::Memory)
        printf (", in memory");

    if (loc->type == LocationType::NoWhere)
        printf (", NoWhere");
    
    return 0;
    }