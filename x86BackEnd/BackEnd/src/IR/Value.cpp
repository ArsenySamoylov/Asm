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
    type (param_type), 
    name (param_name) 
    {}

name_t Value::get_name () const  {return name;}

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

    // printf ("ValueArr dtor\n");                                                      

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

Value* ValueArr::get_value (size_t index)
    {
    assert (index < size);
    return arr[index];
    }

size_t ValueArr::get_size () const {return size;}

const Value* ValueArr::get_const_value (size_t index) const
    {
    assert (index < size);

    return arr[index];
    }

//////////////////////////////////////////////////////
// BaseBlock
//////////////////////////////////////////////////////
BaseBlock::BaseBlock (name_t name_param) :
    Value    (ValueType::BaseBlock, name_param), 
    inst_arr (ValueType::Instruction) 
    {}

BaseBlock::~BaseBlock ()
    {
    // printf ("\t\t\tDeleting base block\n");

    for (size_t i = 0; i < inst_arr.get_size(); i++)
        {
        // printf ("\t\t\t\tdeleting instruction\n");
        delete inst_arr.get_value (i);
        }
    }

ValueType BaseBlock::get_type () const 
    {
    assert (type == ValueType::BaseBlock); 
    return ValueType::BaseBlock;
    }

Value* BaseBlock::add_instr (Value* instr)
    {
    assert (instr);

    return inst_arr.add (instr);
    }

//////////////////////////////////////////////////////
// Constant
//////////////////////////////////////////////////////
Constant::Constant (name_t name_param, const data_t value) :
    Value (ValueType::Constant, name_param),
    data  (value)   
    {}

ValueType Constant::get_type () const 
    {
    assert (type == ValueType::Constant); 
    return ValueType::Constant;
    }

data_t Constant::get_data () const {return data;}

//////////////////////////////////////////////////////
// Global var
//////////////////////////////////////////////////////
GlobalVar::GlobalVar (name_t name_param, VariableType var_type_param, const Constant* init_val_param) :
    Value    (ValueType::GlobalVar, name_param),
    var_type (var_type_param),
    init_val (init_val_param)  
    {}

ValueType GlobalVar::get_type () const 
    {
    assert (type == ValueType::GlobalVar); 
    return ValueType::GlobalVar;
    }

//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
Function::Function (name_t name_param, FunctionRetType ret_type_param) :
    Value    (ValueType::Function, name_param),
    ret_type (ret_type_param),    
    argv     (ValueType::Instruction),
    body     (ValueType::Instruction)  
    {}

Function::~Function ()
    {
    // printf ("\tFunction dtor\n");

    // printf ("\t\tDeleting argv\n");
    for (size_t i = 0; i < argv.get_size(); i++)
        delete argv.get_value(i);

    // printf ("\t\tDeleting function body\n");
    for (size_t i = 0; i < body.get_size(); i++)
        delete body.get_value(i);

    }

ValueArr* Function::get_body () {return &body;}
ValueArr* Function::get_argv () {return &argv;}

const ValueArr* Function::get_const_body () const {return &body;}
const ValueArr* Function::get_const_argv () const {return &argv;}

ValueType Function::get_type () const 
    {
    assert (type == ValueType::Function); 
    return ValueType::Function;
    }

FunctionRetType Function::get_ret_type () const {return ret_type;}