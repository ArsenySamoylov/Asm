#include <stdio.h>
#include <assert.h>

#include "Storage.h"
#include "Value.h"
#include "Instructions.h"

#include "Commands.h"

Storage::Storage (StorageType type) :
    storage_type  (type),
    storage_data  ({}),
    n_usage       (0)
    {}

void Storage::set_storage_type (StorageType type)
    { storage_type = type; }

StorageType Storage::get_storage_type () const
    { return storage_type; }

void Storage::set_storage_data (StorageData data)
    {
    storage_data = data;
    }

void Storage::increase_usage ()
    { 
    assert (storage_type != StorageType::NoWhere);
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
    assert (storage_type != StorageType::NoWhere);
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
    assert (storage_type == StorageType::Stack);
    return storage_data.offset;
    }

address_t Storage::get_address () const
    {
    assert (storage_type == StorageType::Memory);
    return storage_data.address;
    }

void Storage::set_with_reg (Reg* reg)
    {
    assert (reg);

    if (storage_type == StorageType::Register)
        FreeReg (storage_data.reg_num);

    storage_type         = StorageType::Register;
    storage_data.reg_num = reg->number;

    reg->status = BUSY;
    }
    
void Storage::print () const
    {
    printf ("storage: n_usage %lu", n_usage);

    if (storage_type == StorageType::Stack)
        printf (", on stack (offset %lu)", storage_data.offset);

    if (storage_type == StorageType::Register)
        printf (", in reg %s", GetRegName (storage_data.reg_num));

    if (storage_type == StorageType::Memory)
        printf (", in memory");

    if (storage_type == StorageType::NoWhere)
        printf (", NoWhere");
    }

void Storage::move_to_reg (Context* ctx, Reg* dest_reg, const char* comment)
    {
    assert (ctx);
    assert (dest_reg);

    switch (storage_type)
        {
        case StorageType::Register:
                PutMovRR (ctx, storage_data.reg_num, dest_reg->number, comment);
                break;

        case StorageType::Constant:
                break;

        case StorageType::NoWhere:  
                PutMovConstant (ctx, dest_reg->number, storage_data.data, comment);
                assert (0);
                break;

        case StorageType::Stack:
                PutMoveFromStack (ctx, storage_data.offset, dest_reg->number, comment);
                break;

        case StorageType::Memory:
                print_tab ("get from mem -> %s\n", GetRegName(dest_reg->number));
                assert (0);

        default:
                assert(0);
        }

    this->set_with_reg (dest_reg);
    }
    
//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
size_t STACK_OFFSET = 0;

void Function::set_storage () const
    {
    STACK_OFFSET = 0;

    for (size_t i = 0; i < argv.get_size(); i++)
        argv.get_const_value(i)->set_storage();

    for (size_t i = 0; i < body.get_size(); i++)
        body.get_const_value(i)->set_storage();
    
    assert (STACK_OFFSET != n_local_vars);
    }

//////////////////////////////////////////////////////
// BaseBlock
//////////////////////////////////////////////////////
void BaseBlock::set_storage () const
    {
    for (size_t i = 0; i < inst_arr.get_size(); i++)
        inst_arr.get_const_value(i)->set_storage();
    }

//////////////////////////////////////////////////////
// Constant
//////////////////////////////////////////////////////
void Constant::set_storage () const
    {
    assert (storage.get_storage_type() == StorageType::Constant);
    }

//////////////////////////////////////////////////////
// Instructions
//////////////////////////////////////////////////////
void Store::set_storage () const
    {
    storage.set_storage_type (StorageType::Stack);
    storage.set_storage_data ({.offset = ++STACK_OFFSET});

    if (val)
        (val->get_storage())->increase_usage ();
    }

void Load::set_storage () const
    {
    (dest->get_storage())->increase_usage ();  
    (src ->get_storage())->increase_usage ();
    }

void Operator::set_storage () const
    {
    ( left_op->get_storage())->increase_usage ();
    (right_op->get_storage())->increase_usage ();
    }

void Branch::set_storage () const
    {
    if (condition)
        (condition->get_storage())->increase_usage ();
    }

void Call::set_storage () const 
    {
    for (size_t i = 0; i < argv.get_size(); i++)
        (argv.get_const_value(i)->get_storage())->increase_usage ();
    }

void Return::set_storage () const 
    {
    if (ret_value)
        (ret_value->get_storage())->increase_usage ();
    }