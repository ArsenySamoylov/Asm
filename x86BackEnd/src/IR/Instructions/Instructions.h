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

    public:
       Instruction (name_t name_param, InstructionType type_param);
      ~Instruction () = default;

       virtual void            dump           () const override  = 0;
       virtual InstructionType get_instr_type () const           = 0;

       virtual void translate_x86 (Context* ctx) const override  = 0;
       virtual void set_storage   ()             const override  = 0;

       ValueType get_type  () const override final;
    };

//////////////////////////////////////////////////////
class Store : public Instruction
    {
    private:
        const Value* val;

    public:

         Store (name_t name_param, const Value* val_param);
        ~Store () = default; 

       void            dump           () const override;
       InstructionType get_instr_type () const override;

       void translate_x86 (Context* ctx) const override;
       void set_storage   ()             const override;
    };

//////////////////////////////////////////////////////
class Load : public Instruction
    {
    private:
        const Value* dest;
        const Value* src;

    public:
        Load (name_t name_param, const Value* dest_param, const Value* src_param);
       ~Load () = default;

       void            dump           () const override;
       InstructionType get_instr_type () const override;

       void translate_x86  (Context* ctx) const override;
       void set_storage    ()             const override;
    };

//////////////////////////////////////////////////////
class Branch : public Instruction
    {
    private:
        const Value* condition;
    
        const BaseBlock* true_block;
        const BaseBlock* false_block;

    public:
        Branch (name_t name_param, 
                const Value*     condition_param, 
                const BaseBlock* true_block_param, 
                const BaseBlock* false_block_param);
       ~Branch () = default;

       void            dump           () const override;
       InstructionType get_instr_type () const override;
       
       void translate_x86 (Context* ctx) const override;
       void set_storage   ()             const override;

       void set_true_block  (const BaseBlock* true_block_param);
       void set_false_block (const BaseBlock* false_block_param);
    };

//////////////////////////////////////////////////////
class Call : public Instruction
    {
    private:
        const Function*   function;
        ValueArr<Value>   argv;

    public:
        Call (name_t name_param, const Function* function_param);
       ~Call () = default;

       void            dump           () const override;
       InstructionType get_instr_type () const override;

       void translate_x86 (Context* ctx) const override;
       void set_storage   ()             const override;

       ValueArr<Value>* get_argv ();
    };

//////////////////////////////////////////////////////
struct Return : public Instruction 
    {
    private:
        const Value* ret_value;
    
    public:
        Return (name_t name_param, const Value* ret_value_param);
       ~Return () = default;

       void            dump           () const override;
       InstructionType get_instr_type () const override;

       void translate_x86 (Context* ctx) const override;
       void set_storage   ()             const override;
    };

//////////////////////////////////////////////////////
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
        Operator (name_t name_param, enum OperatorType op_type_param, 
                 const Value* left_param, 
                 const Value* right_param);
       ~Operator () = default;

       void            dump           () const override;
       InstructionType get_instr_type () const override;
       
       void translate_x86 (Context* ctx) const override;
       void set_storage   ()             const override;
    };