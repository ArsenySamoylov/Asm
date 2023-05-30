#pragma once

#include <cstddef>

#include "NoCopyable.h"
#include "TypeDefs.h"
#include "ValueArrTemplate.h"

enum class ValueType
    {
    Function,
    GlobalVar,
    BaseBlock,
    Constant,
    Instruction,

    Value
    };

struct LocationTable;
struct Context;

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

        virtual void count_location     (LocationTable* table) const = 0;
        virtual void add_location       (LocationTable* table) const;
        
        virtual void translate_x86      (Context* ctx)         const = 0;

        name_t get_name() const;


    };

/* virtual void dump() const  (Value* this) = 0; */

//////////////////////////////////////////////////////
class Instruction;

class BaseBlock : public Value
    {
    private:
        ValueArr <Instruction> inst_arr;
    
        __attribute__((__noreturn__)) 
        void add_location (LocationTable* table) const override;

    public:
        BaseBlock (name_t name_param);
       ~BaseBlock () override;

        void      dump     () const override;
        ValueType get_type () const override;

        void count_location     (LocationTable* table) const override;
        
        void translate_x86      (Context* ctx)         const override;

        Instruction* add_instr (Instruction* instr);

        // const ValueArr* get_const_inst_arr () const;
    };

//////////////////////////////////////////////////////
const int    PRECISION = 100;
const data_t BAD_VALUE = -666;

class Constant : public Value
    {
    private:
        const data_t data;
        
    public:
        Constant (name_t name_param, const data_t data_param);
       ~Constant () override = default;

       void      dump     () const override;
       ValueType get_type () const override;

       void count_location (LocationTable* table) const override;
       void add_location   (LocationTable* table) const override;
       
       void translate_x86 (Context* ctx) const override;

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

        __attribute__((__noreturn__))
        void count_location (LocationTable* table) const override;

    public:
        GlobalVar (name_t name_param, VariableType var_type_param, const Constant* init_val_param);
       ~GlobalVar () override = default;

       void      dump     () const override;
       ValueType get_type () const override;

       void add_location (LocationTable* table) const override;
       
       void translate_x86 (Context* ctx) const override;
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

        ValueArr<Value> argv;    
        ValueArr<BaseBlock>   body;

        __attribute__((__noreturn__))
        void add_location   (LocationTable* table) const override; 

    public:
        Function (name_t name_param, FunctionRetType ret_type_param);
       ~Function () override;

       void      dump     () const override;
       ValueType get_type () const override;
       
       void count_location (LocationTable* table) const override;

       void translate_x86 (Context* ctx) const override;

       ValueArr<Value>*       get_argv ();
       ValueArr<BaseBlock>*   get_body ();

       FunctionRetType get_ret_type () const;
    };