#pragma once

#include <cstddef>

#include "NoCopyable.h"
#include "TypeDefs.h"

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
        name_t name;

        Value (ValueType type_param, name_t name_param);
    
    public:

        virtual ~Value ()          = default;

        virtual void      dump     () const = 0;
        virtual ValueType get_type () const = 0;

        name_t get_name() const;
    };

/* virtual void dump() const  (Value* this) = 0; */
//////////////////////////////////////////////////////
class ValueArr
    {
    private:
        const enum ValueType base_type;
        Value** arr;
    
        size_t size;
        size_t capacity;

        const size_t START_ARR_SIZE = 16;
        const size_t GROWTH_RATE    = 2;

    void resize ();

    public:
        ValueArr (ValueType base_type_param);
       ~ValueArr ();

        Value* add       (Value* val);
        Value* get_value (size_t index);
        size_t get_size  () const;

        const Value* get_const_value (size_t index) const;
    };

//////////////////////////////////////////////////////
class BaseBlock : public Value
    {
    private:
        ValueArr inst_arr;
    
    public:
        BaseBlock (name_t name_param);
       ~BaseBlock () override;

        void      dump     () const override;
        ValueType get_type () const override;

        Value* add_instr (Value* instr);
    };

//////////////////////////////////////////////////////
const int PRECISION = 100;

class Constant : public Value
    {
    private:
        const data_t data;

    public:
        Constant (name_t name_param, const data_t data_param);
       ~Constant () override = default;

       void      dump     () const override;
       ValueType get_type () const override;

       data_t get_data () const;
    };

//////////////////////////////////////////////////////
enum class VariableType
    {
    Double,
    };

class GlobalVar : public Value
    {
    private:
        const enum VariableType var_type;
        const Constant*         init_val;

    public:
        GlobalVar (name_t name_param, VariableType var_type_param, const Constant* init_val_param);
       ~GlobalVar () override = default;

       void      dump     () const override;
       ValueType get_type () const override;
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

        ValueArr argv;    
        ValueArr body;

    public:
        Function (name_t name_param, FunctionRetType ret_type_param);
       ~Function () override;

       void      dump     () const override;
       ValueType get_type () const override;

       ValueArr* get_body ();
       ValueArr* get_argv ();

       const ValueArr* get_const_body () const;
       const ValueArr* get_const_argv () const;

       FunctionRetType get_ret_type () const;
    };