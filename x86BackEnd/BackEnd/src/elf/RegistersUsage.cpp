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

static int CheckValueArr (LocationTable* table, const ValueArr* arr);
static int CountLocation (LocationTable* table, const Instruction* instr);
static int CheckLocation (LocationTable* table, const Value* val);

int SetValuesUsage (LocationTable* table, const Function* func)
    {
    assert(func);
    assert(table);
    
    const ValueArr* body = &func->body;
    for (size_t i = 0; i < body->size; i++)
        {
        const BaseBlock* block = ( (const BaseBlock*) body->arr[i]);
        assert(block);
        
        const ValueArr* inst_arr = &block->inst_arr;
        CheckValueArr (table, inst_arr); 
        }

    return SUCCESS;
    }

static int CheckValueArr (LocationTable* table, const ValueArr* arr)
    {
    assert (table);
    assert (arr);

    for (size_t i = 0; i < arr->size; i++)
            CountLocation (table, (const Instruction*) arr->arr[i]);

    return 0;
    }

static int CheckArgv (LocationTable* table, const ValueArr* argv)
    {
    assert (table);
    assert (argv);

    for (size_t i = 0; i < argv->size; i++)
            CheckLocation (table, argv->arr[i]);

    return 0;
    }

static int CountLocation (LocationTable* table, const Instruction* instr)
    {
    assert(table);
    assert(instr);

    CheckLocation(table, instr);

    switch (instr->Instruction::type)
        {
        case InstructionType::Store:
                            CheckLocation (table, ((const Store*)instr)->val);
                            return SUCCESS; 
                            
        case InstructionType::Load:
                            CheckLocation (table, ((const Load*)instr)->dest);  
                            CheckLocation (table, ((const Load*)instr)->src);

                            return SUCCESS;

        case InstructionType::Operator:
                            CheckLocation (table, ((const Operator*)instr)->left_op);
                            CheckLocation (table, ((const Operator*)instr)->right_op);

                            return SUCCESS;

        case InstructionType::Branch:
                            CheckLocation (table, ((const Branch*)instr)->condition);
                            return SUCCESS;

        case InstructionType::Call: 
                            {
                            const ValueArr* arr = &((const Call*) instr)->argv;
                            
                            CheckArgv (table, arr);
                            return SUCCESS;
                            }

        case InstructionType::Return: 
                            CheckLocation (table, ((const Return*)instr)->value);
                            return  SUCCESS;

        default:
            report ("Unkown Instruction type\n");
            break;
        }

    return FAILURE;
    }

static int CheckLocation (LocationTable* table, const Value* val)
    {
    assert(table);
    
    if (!val)
        return SUCCESS;

    if (!val->name)
        return SUCCESS;

    name_t name = val->name;

    Location* val_location = FindLocation (table, name);

    if (val_location)
        {
        val_location->n_usage++;
        // report ("%s->n_usage = %lu\n", val->name,  val_location->n_usage);
        return SUCCESS;
        }

    val_location = (Location*) calloc (1, sizeof(val_location[0]));
    assert(val_location);

    val_location->name       = name;
    val_location->n_usage    = 0;
    
    if (                     val ->type == ValueType      ::Instruction && 
        ((const Instruction*)val)->type == InstructionType::Store) 
        {
        val_location->type          = LocationType::Stack;
        val_location->variable_type = LOCAL;
        val_location->stack.type    = StackLocationType::Local;
        val_location->stack.offset  = table->n_local_vars++; 
        }
    else
        {
        val_location->type          = LocationType::NoWhere;
        val_location->variable_type = TEMP;
        }

    AddLocation (table, val_location);
    return SUCCESS;
    }
