#pragma once

#include <cstddef>

#include "ValueArrTemplate.h"
#include "Storage.h"

enum class ValueType
    {
    Function,
    GlobalVar,
    BaseBlock,
    Constant,
    Instruction,

    Value
    };

class Value : public NoCopyable
    {
    protected:
        const enum ValueType type;
        const name_t name;

        mutable Storage storage;

    public:
                 Value (ValueType type_param, name_t name_param);
        virtual ~Value () = default;         // all realizations in file Value.cpp

        name_t get_name() const;
        
        virtual void      dump     () const = 0;              // in file DumpIR.cpp
        virtual ValueType get_type () const = 0;              // in file Value.cpp

        virtual void translate_x86  (Context* ctx) const = 0;  // in file TranslateIRTox86.cpp
        GPRegisterNumber put_to_reg (Context* ctx) const;            // in file TranslateIRTox86.cpp
        
        virtual void   set_storage () const = 0;              // in file Storage.cpp
        Storage*       get_storage () const;                
    };

//////////////////////////////////////////////////////
class Instruction;

class BaseBlock : public Value
    {
    private:
        ValueArr <Instruction> inst_arr;
    
    public:
        BaseBlock (name_t name_param);
       ~BaseBlock () override;

        void      dump     () const override;
        ValueType get_type () const override;
        
        void translate_x86 (Context* ctx) const override;
        void set_storage   ()             const override;

        Instruction* add_instr (Instruction* instr);
        void set_address (address_t address) const;
    };

//////////////////////////////////////////////////////
const int    PRECISION = 100;
const data_t BAD_VALUE = -666;

class Constant : public Value
    {
    public:
        // Constant keeps its 'data_t data_param' in 'storage' field
        Constant (name_t name_param, const data_t data_param);
       ~Constant () override = default;

       void      dump     () const override;
       ValueType get_type () const override;
       
       void translate_x86 (Context* ctx) const override;
       void set_storage   ()             const override;

       data_t get_data () const;
    };

//////////////////////////////////////////////////////
enum class VariableBaseType
    {
    Double,
    Int,
    Char,
    };

class GlobalVar : public Value
    {
    private:
        const enum VariableBaseType var_type;
        const Constant*             init_val;

    public:
        GlobalVar (name_t name_param, VariableBaseType var_type_param, const Constant* init_val_param);
       ~GlobalVar () override = default;

       void      dump     () const override;
       ValueType get_type () const override;

       void translate_x86 (Context* ctx) const override;
       void set_storage   ()             const override;
    };

//////////////////////////////////////////////////////
enum class FunctionRetType
    {
    Double,
    Void,
    };

class Function : public Value
    {
    private:
        const enum FunctionRetType ret_type;

        ValueArr<Value>     argv;    
        ValueArr<BaseBlock> body;

        size_t n_local_vars;

    public:
        Function (name_t name_param, FunctionRetType ret_type_param);
       ~Function () override;

       void      dump     () const override;
       ValueType get_type () const override;
       
       void translate_x86 (Context* ctx) const override;
       void set_storage   ()             const override;

       ValueArr<Value>*       get_argv ();
       ValueArr<BaseBlock>*   get_body ();

       FunctionRetType get_ret_type () const;
       void increase_n_local_vars ();

       void set_address (address_t address) const;
    };