#pragma once

#include "NoCopyable.h"
#include "TypeDefs.h"
#include "RegistersUsage.h"

struct Context;

enum class StorageType
    {
    Stack,
    Register,
    Memory,
    Constant,

    NoWhere
    };

enum class VariableType
    {
    Local,
    Global,
    Temp,

    NotVariable,
    };

// TODO rename storage_data to storage_info
struct StorageData
    {
    address_t        address; // if it is GlobalVar, BaseBlock or Function
    data_t           data;    // if it is Constant
    GPRegisterNumber reg_num; // if in register
    size_t offset;            // if in stack
    };

class Storage : public NoCopyable 
    {
    private:
        enum   StorageType  storage_type;
        enum   VariableType variable_type;
        struct StorageData  storage_data;      // storage data interpretation depends on StorageType 
        
        size_t n_usage;

        const name_t owner_name; // for debug 
    
    public:
         Storage (StorageType type, VariableType var_type, name_t owner_name = NULL);
        ~Storage () = default;

        void         set_storage_type (StorageType type);
        StorageType  get_storage_type () const;

        void         set_var_type (VariableType var_type);
        VariableType get_var_type () const;

        StorageData* set_storage_data ();
         
        void increase_usage ();
        void decrease_usage ();
        size_t get_usage () const;
        
        data_t            get_data         () const;
        GPRegisterNumber  get_reg_num      () const;
        size_t            get_stack_offset () const;
        address_t         get_address      () const;
        
        void set_with_reg (Reg* reg);
        void print () const;

        void move_to_reg (Context* ctx, Reg* dest_reg, const char* comment = NULL);
    };