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

        virtual void      dump     () const;
        virtual ValueType get_type () const = 0;
    };

/* virtual void dump() const  (Value* this) = 0; */

// int ValueCtor (Value* val, ValueType type, name_t name = NULL);
// int ValueDtor (Value* val);

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

        Value* add (Value* val);
        // Value* AddValue   (Value* val);
   
    };

// int ValueArrCtor   (ValueArr* arr, ValueType base_type);
// int ValueArrDtor   (ValueArr* arr);


//////////////////////////////////////////////////////
class BaseBlock : public Value
    {
    private:
        ValueArr inst_arr;
    
    public:
        BaseBlock (name_t name_param);
       ~BaseBlock () override = default;

        void      dump     () const override;
        ValueType get_type () const override;
    };

// int BaseBlockCtor (BaseBlock* block);
// int BaseBlockDtor (BaseBlock* block);

//////////////////////////////////////////////////////
// Higher level sh*t
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
    };
    
// int ConstantCtor (Constant* constant, data_t value);
// int ConstantDtor (Constant* constant);

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

// int GlobalVarCtor (GlobalVar* var, name_t name, Constant* init_val);
// int GlobalVarDtor (GlobalVar* var);

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
       ~Function () override = default;

       void      dump     () const override;
       ValueType get_type () const override;
    };

// int FunctionCtor (Function* func, name_t name);
// int FunctionDtor (Function* func);