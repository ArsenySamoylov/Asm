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
    name (param_name), 
    storage (StorageType::NoWhere, VariableType::NotVariable, param_name)
    {}

name_t   Value::get_name    () const {return name;}
Storage& Value::get_storage () const {return storage;}

//////////////////////////////////////////////////////
// BaseBlock
//////////////////////////////////////////////////////
BaseBlock::BaseBlock (name_t name_param) :
    Value    (ValueType::BaseBlock, name_param)
    {}

BaseBlock::~BaseBlock ()
    {
    for (size_t i = 0; i < inst_arr.get_size(); i++)
        delete &inst_arr.get_value (i);
    }

ValueType BaseBlock::get_type () const 
    {
    assert (type == ValueType::BaseBlock); 
    return ValueType::BaseBlock;
    }

Instruction& BaseBlock::add_instr (Instruction& instr)
    {
    return inst_arr.add (instr);
    }

void BaseBlock::set_address (address_t address) const
    {
    storage.set_storage_type (StorageType::Memory);
    (storage.set_storage_data())->address = address;
    }

//////////////////////////////////////////////////////
// Constant
//////////////////////////////////////////////////////
Constant::Constant (name_t name_param, const data_t value) :
    Value (ValueType::Constant, name_param)
    {
    storage.set_storage_type  (StorageType::Constant);
    storage.set_var_type      (VariableType::Temp);

    *(storage.set_storage_data()) = {.data = value};
    }

ValueType Constant::get_type () const 
    {
    assert (type == ValueType::Constant); 
    return ValueType::Constant;
    }

data_t Constant::get_data () const {return storage.get_data();}

//////////////////////////////////////////////////////
// Global var
//////////////////////////////////////////////////////
GlobalVar::GlobalVar (name_t name_param, VariableBaseType var_type_param, const Constant* init_val_param) :
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
    ret_type (ret_type_param)    
    {}

Function::~Function ()
    {
    // printf ("\tFunction dtor\n");

    // printf ("\t\tDeleting argv\n");
    for (size_t i = 0; i < argv.get_size(); i++)
        delete &argv.get_value(i);

    // printf ("\t\tDeleting function body\n");
    for (size_t i = 0; i < body.get_size(); i++)
        delete &body.get_value(i);

    }

PtrArray<Value>&      Function::get_argv () {return argv;}
PtrArray<BaseBlock>&  Function::get_body () {return body;}

ValueType Function::get_type () const 
    {
    assert (type == ValueType::Function); 
    return ValueType::Function;
    }

FunctionRetType Function::get_ret_type () const {return ret_type;}

void   Function::increase_n_local_vars ()       {++n_local_vars;}
size_t Function::get_n_local_vars      () const {return n_local_vars;}

void Function::set_address (address_t address) const
    {
    storage.set_storage_type (StorageType::Memory);
    (storage.set_storage_data())->address = address;
    }
