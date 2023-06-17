#include <stdio.h>
#include <assert.h>

#include "Storage.h"
#include "Value.h"
#include "Instructions.h"

#include "Commands.h"

#include "LogMacroses.h"

Storage::Storage (StorageType type, VariableType var_type, name_t owner_name_param) :
    storage_type  (type),
    variable_type (var_type),
    storage_data  ({}),
    n_usage       (0),
    owner_name    (owner_name_param)
    {}

void Storage::set_storage_type (StorageType type)
    { storage_type = type; }

StorageType Storage::get_storage_type () const
    { return storage_type; }

void Storage::set_var_type (VariableType var_type)
    { variable_type = var_type; }

VariableType Storage::get_var_type () const
    { return variable_type; }

StorageData* Storage::set_storage_data ()
    { return &storage_data;}

void Storage::increase_usage ()
    { 
    if (variable_type == VariableType::NotVariable)
        {
        this->print ();
        assert (0);
        }

    n_usage++; 
    }

void Storage::decrease_usage ()
    { 
    assert (storage_type != StorageType::NoWhere);
  
    if (n_usage <= 1)
        {
        if (storage_type == StorageType::Register)
            FreeReg (storage_data.reg_num);

        storage_type = StorageType::NoWhere;
        }

    n_usage--; 
    }

size_t Storage::get_usage () const
    { 
    assert (variable_type != VariableType::NotVariable);
    return n_usage; 
    }

data_t Storage::get_data () const
    {
    assert (storage_type == StorageType::Constant);
    return storage_data.data;
    }

GPRegisterNumber Storage::get_reg_num () const
    {
    assert (storage_type == StorageType::Register);
    return storage_data.reg_num;
    }

size_t Storage::get_stack_offset () const 
    {
    assert (variable_type == VariableType::Local);
    return storage_data.offset;
    }

address_t Storage::get_address () const
    {
    assert (storage_type == StorageType::Memory);
    return storage_data.address;
    }

void Storage::set_with_reg (Reg& reg)
    {
    if (storage_type == StorageType::Register)
        FreeReg (storage_data.reg_num);

    storage_type         = StorageType::Register;
    storage_data.reg_num = reg.number;

    reg.status = BUSY;
    }
    
void Storage::print () const
    {
    printf ("storage %s: n_usage %lu", 
            owner_name ? owner_name : "NULL", n_usage);

    if (storage_type == StorageType::Stack)
        printf (", on stack (offset %lu)", storage_data.offset);

    if (storage_type == StorageType::Register)
        printf (", in reg %s", GetRegName (storage_data.reg_num));

    if (storage_type == StorageType::Memory)
        printf (", in memory");

    if (storage_type == StorageType::NoWhere)
        printf (", NoWhere");
    
    printf ("\n");
    }

//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
size_t STACK_OFFSET = 0;

void Function::set_storage () const
    {
    STACK_OFFSET = 0;

    for (size_t i = 0; i < argv.get_size(); i++)
        argv.get_const_value(i).set_storage();

    for (size_t i = 0; i < body.get_size(); i++)
        body.get_const_value(i).set_storage();
    
    if (STACK_OFFSET != n_local_vars)
        {
        report ("Error, n_local_vars(%lu) for '%s' doesn't match with STACK_OFFSET(%lu)\n", n_local_vars, name, STACK_OFFSET);
        assert (0);
        }
    }

//////////////////////////////////////////////////////
// BaseBlock
//////////////////////////////////////////////////////
void BaseBlock::set_storage () const
    {
    for (size_t i = 0; i < inst_arr.get_size(); i++)
        inst_arr.get_const_value(i).set_storage();
    }

//////////////////////////////////////////////////////
// Constant
//////////////////////////////////////////////////////
void Constant::set_storage () const
    {
    assert (storage.get_storage_type() == StorageType::Constant);
    }

//////////////////////////////////////////////////////
// GlobalVar
//////////////////////////////////////////////////////
void GlobalVar::set_storage () const
    {
    // TODO
    }

//////////////////////////////////////////////////////
// Instructions
//////////////////////////////////////////////////////
void Store::set_storage () const
    {
    storage.set_storage_type (StorageType::Stack);
    *(storage.set_storage_data()) = {.offset = ++STACK_OFFSET};

    // report ("%d - %s\n", STACK_OFFSET, name);

    if (val)
        (val->get_storage()).increase_usage ();
    }

void Load::set_storage () const
    {
    storage.set_var_type (VariableType::Temp);

    (dest.get_storage()).increase_usage ();  
    (src.get_storage()).increase_usage ();
    }

void Operator::set_storage () const
    {
    storage.set_var_type (VariableType::Temp);

    ( left_op.get_storage()).increase_usage ();
    (right_op.get_storage()).increase_usage ();
    }

void Branch::set_storage () const
    {
    if (condition)
        (condition->get_storage()).increase_usage ();
    }

void Call::set_storage () const 
    {
    storage.set_var_type (VariableType::Temp);

    for (size_t i = 0; i < argv.get_size(); i++)
        (argv.get_const_value(i).get_storage()).increase_usage ();
    }

void Return::set_storage () const 
    {
    storage.set_var_type (VariableType::Temp);

    if (ret_value)
        (ret_value->get_storage()).increase_usage ();
    }