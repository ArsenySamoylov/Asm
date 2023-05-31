#include <assert.h>
#include <stdio.h>
#include <stddef.h> 
#include <stdlib.h>

#include "RegistersUsage.h"
#include "Instructions.h"
#include "DebugIR.h"

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

int ResetLocationTable (LocationTable* table)
    {
    assert (table);
    assert (table->arr);

    if (table->size == 0)
        {
        report ("Warning: empty location table\n");
        return 0;
        }

    for (size_t i = 0; i < table->size; i++)
        free (table->arr[i]);

    table->size = 0;
    return 0;
    }

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

//////////////////////////////////////////////////////
// Bad functions
//////////////////////////////////////////////////////
void BaseBlock::add_location (LocationTable* table) const
    {
    report ("Error, You can't use this function\n");
    assert (table);
    assert (0);
    }

void GlobalVar::count_location (LocationTable* table) const
    {
    report ("Error, You can't use this function\n");
    assert (table);
    assert (0);
    }

void Function::add_location (LocationTable* table) const
    {
    report ("Error, You can't use this function\n");
    assert (table);
    assert (0);
    }
//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
void Function::count_location (LocationTable* table) const
    {
    assert(table);

    for (size_t i = 0; i < argv.get_size(); i++)
        argv.get_const_value(i)->count_location (table);

    for (size_t i = 0; i < body.get_size(); i++)
        body.get_const_value(i)->count_location (table);
    }

//////////////////////////////////////////////////////
// BaseBlock
//////////////////////////////////////////////////////
void BaseBlock::count_location (LocationTable* table) const
    {
    assert (table);

    for (size_t i = 0; i < inst_arr.get_size(); i++)
        {
        // PrintValue ( inst_arr.get_const_value(i));
        inst_arr.get_const_value(i)->count_location (table);
        }

    }

//////////////////////////////////////////////////////
// Constant
//////////////////////////////////////////////////////
void Constant::count_location (LocationTable* table) const
    {
    assert (table);

    this->add_location (table);
    }

//////////////////////////////////////////////////////
// Instructions
//////////////////////////////////////////////////////
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
// Add locations
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

    val_location->data = BAD_VALUE;

    AddLocation (table, val_location);
    }

void Constant::add_location (LocationTable* table) const
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
    
    val_location->type          = LocationType::NoWhere;
    val_location->variable_type = TEMP;

    val_location->data = data;

    AddLocation (table, val_location);
    }

void GlobalVar::add_location (LocationTable* table) const
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
    
    val_location->type          = LocationType::Memory;
    val_location->variable_type = GLOBAL;

    val_location->data = BAD_VALUE;

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
    
    val_location->data = BAD_VALUE;

    AddLocation (table, val_location);
    }


//////////////////////////////////////////////////////
Reg GeneralPurposeRegs[] = {
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
using namespace std;
static  stack <Reg*> FreeRegs;

static int FreeAllocatableReg    (Reg* reg);
static int FreeNotAllocatableReg (Reg* reg);

int ResetRegisters ()
    {
    // report ("%s\n", __func__);

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
    // PRINT_REG (reg->number);
    // assert (reg->status == BUSY); // otherwise register will be pushed twice to stack !!!

    // report ("Freeing: %s\n", GetRegName ( (GPRegisterNumber) number));
    FreeRegs.push (reg);
    reg->status = FREE;
    
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
    
    printf ("%s, status %s, \n\t", GetRegName (reg->number), 
                                   reg->status ==  BUSY ? "BUSY" : "FREE");

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
    // report ("decreasing usage\n");

    assert(table);
    assert(val);
    
    Location* location = FindLocation (table, val->get_name());
    assert   (location);
    // PRINT_LOCATION (location);
    
    if (location->n_usage == 0 && location->type == LocationType::Register)
        FreeReg (location->reg_num);

    if (--location->n_usage == 0 && location->type == LocationType::Register)
        FreeReg (location->reg_num);

    // PRINT_LOCATION (location);
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
    // assert (reg->status == BUSY);

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

void DumpLocations (LocationTable* table)
    {
    assert (table);

    for (size_t i = 0; i < table->size; i++)
        {
        printf ("Location %lu/%lu: ", i, table->size);
        PRINT_LOCATION (table->arr[i]);
        }
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