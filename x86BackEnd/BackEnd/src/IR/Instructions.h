#pragma once

#include "Value.h"

enum class InstructionType 
    {
    Store,
    Load, 

    Operator,
    Branch, 
    Call,
    Return,
    };

class Instruction : public Value
    {
    protected:
        const enum InstructionType type;

        Instruction (name_t name_param, InstructionType type_param);

    public:

      ~Instruction () = default;

       virtual void      dump      () const = 0;
               ValueType get_type  () const override;
    };

/*
int InstructionCtor (Instruction* inst, InstructionType type);
int InstructionDtor (Instruction* inst);
*/

//////////////////////////////////////////////////////
class Store : public Instruction
    {
    private:
        const Value* val;

    public:

         Store (name_t name_param, const Value* val_param);
        ~Store ();

       void      dump     () const override;
       ValueType get_type () const override;

    };

// int StoreCtor (Store* store, name_t name, Value* val);
// int StoreDtor (Store* store);

// GetType возвращать тип override
// проверка первого поля 

class Load : public Instruction
    {
    private:
        const Value* dest;
        const Value* src;

    public:
        Load (name_t name_param, const Value* dest_param, const Value* src_param);
       ~Load () = default;

       void      dump     () const override;
       ValueType get_type () const override;
    };

// int LoadCtor (Load* load, Value* dest, Value* src);
// int LoadDtor (Load* load);

class Branch : public Instruction
    {
    private:
        const Value* condition;
    
        const BaseBlock* true_block;
        const BaseBlock* false_block;

    public:
        Branch (name_t name_param, const Value* condition_param, const BaseBlock* true_block_param, const BaseBlock* false_block_param);
       ~Branch () = default;

       void      dump     () const override;
       ValueType get_type () const override;
    };

// int BranchCtor (Branch* branch);
// int BranchDtor (Branch* branch);

class Call : public Instruction
    {
    private:
        const ValueArr   argv;
        const Function* function;

    public:
        Call (name_t name_param, const Function* function_param);
       ~Call () = default;

       void      dump     () const override;
       ValueType get_type () const override;
    };

// int CallCtor (Call* call, const Function* func);
// int CallDtor (Call* call);

struct Return : public Instruction 
    {
    private:
        const Value* ret_value;
    
    public:
        Return (name_t name_param, const Value* ret_value_param);
       ~Return () = default;

       void      dump     () const override;
       ValueType get_type () const override; 
    };

// int ReturnCtor (Return* ret);
// int ReturnDtor (Return* ret);


enum class OperatorType
    {
    Add,
    Sub,
    Mul,
    Div,

    Bigger,
    Less,

    Unknown
    };

struct Operator : public Instruction
    {
    public:
        const enum OperatorType op_type;
    
        const Value* left_op;
        const Value* right_op;

    public:
        Operator (name_t name_param, enum OperatorType op_type_param, const Value* left_param, const Value* right_param);
       ~Operator () = default;

       void      dump     () const override;
       ValueType get_type () const override; 
    };

// int OperatorCtor (Operator* op, OperatorType type, Value* left, Value* right);
// int OperatorDtor (Operator* op);
