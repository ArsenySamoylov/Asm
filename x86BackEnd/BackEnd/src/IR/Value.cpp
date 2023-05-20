#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "Value.h"
#include "Instructions.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "EasyDebug.h"

#include "DebugIR.h"
//////////////////////////////////////////////////////
// Value
int ValueCtor(Value* val, ValueType type, name_t name) 
    {
    val->type = type;
    val->name = name;

    return SUCCESS;
    }

int ValueDtor(Value* val) 
    {
    assert(val);
    return SUCCESS;
    }

//////////////////////////////////////////////////////
// ValueArr
const size_t START_ARR_SIZE = 16;
const size_t GROWTH_RATE    = 2;

static int ValueArrResize (ValueArr* arr);

int ValueArrCtor (ValueArr* arr, ValueType type)
    {
    assert(arr);

    arr->base_type = type;

    arr->arr = (Value**) calloc (START_ARR_SIZE, sizeof(arr->arr[0]));
    assert(arr->arr);                                                         
                                                                              
    arr->size     = 0;                                                        
    arr->capacity = START_ARR_SIZE;                                           
                                                                              
    return SUCCESS;                                                           
    return SUCCESS;
    }

int ValueArrDtor (ValueArr* arr)
    {
    assert(arr);                                                
                                                                
    if (arr->capacity == 0)                                     
        {                                                       
        report ("Capacity can't be 0 in Dtor\n");               
        return FAILURE;                                         
        }                                                       
                                                                
    for (size_t i = 0; i < arr->size; i++)                      
        free(arr->arr[i]);                                      
                                                                
    free (arr->arr);                                            
                                                                
    arr->capacity = 0;                                          
    arr->size     = 0;                                          
    arr->arr      = NULL;                                       
                                                                
    return SUCCESS;                                             
    }

static int ValueArrResize (ValueArr* arr)                                          
    {                                                                                       
    assert(arr);                                                                            
                                                                                            
    size_t new_size = arr->capacity * GROWTH_RATE;                                          
                                                                                            
    Value** temp = (Value**) realloc (arr->arr, new_size * sizeof(temp[0]));    
    assert(temp);                                                                           
                                                                                            
    arr->capacity = new_size;                                                               
arr->arr      = temp;                                                                   
                                                                                            
    return SUCCESS;                                                                         
    }

Value* AddValue (ValueArr* arr, Value* val)  
    {               
    assert(arr);                                            
    assert(val);                                            

    // PRINT_VALUE(val);                                        
    // report ("Arr %p, Val %p, ArrSize %lu\n", arr, val, arr->size);

    if (arr->size >= arr->capacity)                         
        ValueArrResize (arr);                          

    (arr->arr)[arr->size++] = val;   

    return val;                                            
    }

Value* AllocValue (ValueArr* arr, size_t val_size)
    {
    assert(arr);

    if (arr->size >= arr->capacity)                         
        ValueArrResize (arr);                          
                                                            
    Value* temp = (Value*) calloc (1, val_size);  
    assert(temp);                                           
                                                            
    arr->arr[arr->size++] = temp;                           
    
    return temp;                                            
    }

//////////////////////////////////////////////////////
// BaseBlock
int BaseBlockCtor (BaseBlock* block)
    {
    assert(block);

    ValueCtor (block, ValueType::BaseBlock);
    ValueArrCtor (&block->inst_arr, ValueType::Instruction);

    return SUCCESS;
    }

int BaseBlockDtor (BaseBlock* block)
    {
    assert(block);

    ValueArrDtor (&block->inst_arr);
    return SUCCESS;
    }

//////////////////////////////////////////////////////
// Constant
int ConstantCtor (Constant* constant, data_t value)
    {
    assert(constant);

    ValueCtor (constant, ValueType::Constant);

    constant->Constant::data = value;
    return SUCCESS;
    }

int ConstantDtor (Constant* constant) 
    {
    assert(constant);
    return SUCCESS;
    }

//////////////////////////////////////////////////////
// Global var
int GlobalVarCtor (GlobalVar* var, name_t name, Constant* init_val)
    {
    assert(var);
    assert(name);
    assert(init_val);

    ValueCtor (var, ValueType::GlobalVar);

    var->Value::name = name;
    var->GlobalVar::init_val = init_val;

    return SUCCESS;
    }

int GlobalVarDtor (GlobalVar* var)
    {
    assert(var);

    return SUCCESS;
    }

//////////////////////////////////////////////////////
// Function
int FunctionCtor (Function* func, name_t name)
    {
    assert(func);

    ValueCtor (func, ValueType::Function, name);
    
    ValueArrCtor (&func->argv, ValueType::GlobalVar);
    ValueArrCtor (&func->body, ValueType::BaseBlock);

    return SUCCESS;
    }

int FunctionDtor (Function* func)
    {
    assert(func);

    ValueArrDtor (&func->argv);
    ValueArrDtor (&func->body);

    return SUCCESS;
    }