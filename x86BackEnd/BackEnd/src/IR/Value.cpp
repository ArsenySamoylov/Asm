#include <cstdlib>
#include <cstdio>
#include <cstring>
#include <cassert>

#include "Value.h"
#include "Instructions.h"

//////////////////////////////////////////////////////
// Value
//////////////////////////////////////////////////////
Value::Value (ValueType param_type, name_t param_name) : 
    type(param_type), 
    name(param_name) 
    {}

//////////////////////////////////////////////////////
// ValueArr
//////////////////////////////////////////////////////
ValueArr::ValueArr (ValueType base_type_param) :
    base_type(base_type_param)
    {
    arr = (Value**) calloc (START_ARR_SIZE, sizeof(arr[0]));
                                                                              
    size     = 0;                                                        
    capacity = START_ARR_SIZE;                                           
    }

ValueArr::~ValueArr ()
    {
    if (capacity == 0)                                     
        {                                                       
        printf ("%s:%d, Capacity can't be 0 in Dtor\n", __FILE__, __LINE__);               
        return;                                         
        }                                                       
                                                                
    for (size_t i = 0; i < size; i++)                      
        delete arr[i];                                      
                                                                
    free (arr);                                            
                                                                
    capacity = 0;                                          
    size     = 0;                                          
    arr      = NULL;                                       
    }

void ValueArr::resize ()                                          
    {                                                                                            
    size_t new_size = capacity * GROWTH_RATE;                                          
                                                                                            
    Value** temp = (Value**) realloc (arr, new_size * sizeof(temp[0]));    
    assert(temp);                                                                           
                                                                                            
    capacity = new_size;                                                               
    arr      = temp;                                                                   
    }

Value* ValueArr::add (Value* val)  
    {               
    assert(val);                                            

    // PRINT_VALUE(val);                                        
    // report ("Arr %p, Val %p, ArrSize %lu\n", arr, val, arr->size);

    if (size >= capacity)                         
        this->resize ();                          

    arr[size++] = val;   

    return val;                                            
    }

//////////////////////////////////////////////////////
// BaseBlock
//////////////////////////////////////////////////////
BaseBlock::BaseBlock (name_t name_param) :
    Value    (ValueType::BaseBlock, name_param), 
    inst_arr (ValueType::Instruction) 
    {}

// BaseBlock::~BaseBlock ()  {}

//////////////////////////////////////////////////////
// Constant
//////////////////////////////////////////////////////
Constant::Constant (name_t name_param, const data_t value) :
    Value (ValueType::Constant, name_param),
    data  (value)   
    {}

// Constant::~Constant () {}

//////////////////////////////////////////////////////
// Global var
//////////////////////////////////////////////////////
GlobalVar::GlobalVar (name_t name_param, VariableType var_type_param, const Constant* init_val_param) :
    Value    (ValueType::GlobalVar, name_param),
    var_type (var_type_param),
    init_val (init_val_param)  
    {}

//  GlobalVar::~GlobalVar () {}

//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
Function::Function (name_t name_param, FunctionRetType ret_type_param) :
    Value    (ValueType::Function, name_param),
    ret_type (ret_type_param),    
    argv     (ValueType::Instruction),
    body     (ValueType::Instruction)  
    {}

// Function::~Function () {}