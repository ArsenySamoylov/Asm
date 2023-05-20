#include <assert.h>
#include <stdio.h>
#include <stddef.h> 
#include <stdlib.h>

#include "RegistersUsage.h"
#include "Instructions.h"

#include "CommonEnums.h"
#include "LogMacroses.h"


#include "ArrayTemplate.h"

ARR_CTOR   (UsageTable, Usage)
ARR_DTOR   (UsageTable, Usage)
ARR_RESIZE (UsageTable, Usage)
ARR_ADD    (UsageTable, Usage)

#undef ARR_CTOR   
#undef ARR_DTOR   
#undef ARR_RESIZE 
#undef ARR_ADD    
#undef FIND_IN_ARR
#undef COPY_TO_ARR

Usage* FindUsage (UsageTable* arr, const char* name)
    {
    assert(arr);
    assert(name);

    for (size_t i = 0; i < arr->size; i++)
        {
        Usage* temp = arr->arr[i];
        assert(temp);

        const char* temp_name = temp->val->name;
        
        if (!temp_name)
            continue;

        if (!strcmp(temp_name, name))
            return temp;
        }

    return NULL;
    }

static int CountUsage (UsageTable* table, const Instruction* instr);
static int CheckUsage (UsageTable* table, const Value* val);


int SetValueUsage (UsageTable* table, const Function* func)
    {
    assert(func);
    assert(table);
    
    const ValueArr* body = &func->body;
    for (size_t i = 0; i < body->size; i++)
        {
        const BaseBlock* block = ( (const BaseBlock*) body->arr[i]);
        assert(block);
        
        const ValueArr* inst_arr = &block->inst_arr;
        for (size_t j = 0; j < inst_arr->size; j++)
            CountUsage (table, (const Instruction*) inst_arr->arr[j]);
        }

    return SUCCESS;
    }

static int CountUsage (UsageTable* table, const Instruction* instr)
    {
    assert(table);
    assert(instr);

    CheckUsage(table, instr);

    switch (instr->Instruction::type)
        {
        case InstructionType::Store:
                            CheckUsage (table, ((const Store*)instr)->val);
                            return SUCCESS; 
                            
        case InstructionType::Load:
                            CheckUsage (table, ((const Load*)instr)->dest);  
                            CheckUsage (table, ((const Load*)instr)->src);

                            return SUCCESS;

        case InstructionType::Operator:
                            CheckUsage (table, ((const Operator*)instr)->left_op);
                            CheckUsage (table, ((const Operator*)instr)->right_op);

                            return SUCCESS;

        case InstructionType::Branch:
                            CheckUsage (table, ((const Branch*)instr)->condition);
                            return SUCCESS;

        case InstructionType::Call: 
                            return SUCCESS;

        case InstructionType::Return: 
                            CheckUsage (table, ((const Return*)instr)->value);
                            return  SUCCESS;

        default:
            report ("Unkown Instruction type\n");
            break;
        }

    return FAILURE;
    }

static int CheckUsage (UsageTable* table, const Value* val)
    {
    assert(table);
    assert(val);

    if (val->Value::type == ValueType::Constant)
        return SUCCESS;

    name_t name = val->name;

    Usage* val_usage = FindUsage (table, name);

    if (val_usage)
        {
        val_usage->n_usage++;
        return SUCCESS;
        }

    val_usage = (Usage*) calloc (1, sizeof(val_usage[0]));
    assert(val_usage);

    val_usage->val    =  0;
    val_usage->n_usage = 0;

    Location* location = &val_usage->location;
    
    if (                     val ->type == ValueType      ::Instruction && 
        ((const Instruction*)val)->type == InstructionType::Store) 
        {
        location->type = LocationType::Stack;
        
        location->stack.type    = StackLocationType::Local;
        location->stack.offset  = table->n_local_vars++; 
        }
    else
        {
        location->type = LocationType::NoWhere;
        }

    AddUsage (table, val_usage);
    return SUCCESS;
    }