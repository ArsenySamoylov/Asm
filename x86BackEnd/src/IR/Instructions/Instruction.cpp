#include <cassert>
#include <stdio.h>

#include "Instructions.h"

//////////////////////////////////////////////////////
// Instruction
//////////////////////////////////////////////////////
Instruction::Instruction (name_t name_param, InstructionType type_param) :
    Value (ValueType::Instruction, name_param),
    type  (type_param) 
    {}

ValueType Instruction::get_type () const 
    {
    assert (Value::type == ValueType::Instruction); 
    return ValueType::Instruction;
    }

//////////////////////////////////////////////////////
// Store
//////////////////////////////////////////////////////
Store::Store (name_t name_param, const Value* val_param) :
    Instruction (name_param, InstructionType::Store),
    val         (val_param) 
    {
    storage.set_var_type (VariableType::Local);
    }

InstructionType Store::get_instr_type () const 
    {
    assert (Value::      type == ValueType::Instruction); 
    assert (Instruction::type == InstructionType::Store);
    return InstructionType::Store;
    }

//////////////////////////////////////////////////////
// Load
//////////////////////////////////////////////////////
Load::Load (name_t name_param, const Value* dest_param, const Value* src_param) :
    Instruction (name_param, InstructionType::Load),
    dest        (dest_param),
    src         (src_param) 
    {}

InstructionType Load::get_instr_type () const 
    {
    assert (Value::      type == ValueType::Instruction); 
    assert (Instruction::type == InstructionType::Load);
    return InstructionType::Load;
    }

//////////////////////////////////////////////////////
// Branch
//////////////////////////////////////////////////////
Branch::Branch (name_t name_param, 
                const Value* condition_param, 
                const BaseBlock* true_block_param, 
                const BaseBlock* false_block_param) :

   Instruction (name_param, InstructionType::Branch),
   condition   (condition_param),
   true_block  (true_block_param),
   false_block (false_block_param) 
   {}

InstructionType Branch::get_instr_type () const 
    {
    assert (Value::type       == ValueType::Instruction); 
    assert (Instruction::type == InstructionType::Branch);
    return InstructionType::Branch;
    }

void Branch::set_true_block  (const BaseBlock* true_block_param) 
    {
    assert (true_block_param);
    assert (true_block == NULL);

    true_block = true_block_param;
    }

void Branch::set_false_block (const BaseBlock* false_block_param)
    {
    assert (false_block_param);
    assert (false_block == NULL);

    false_block = false_block_param;
    }

//////////////////////////////////////////////////////
// Call
//////////////////////////////////////////////////////
Call::Call (name_t name_param, const Function* function_param) :
    Instruction (name_param, InstructionType::Call),
    function    (function_param)  
    {}

InstructionType Call::get_instr_type () const 
    {
    assert (Value::type       == ValueType::Instruction); 
    assert (Instruction::type == InstructionType::Call);
    return InstructionType::Call;
    }

      ValueArr<Value>* Call::get_argv       ()       {return &argv;};
// const ValueArr<Instruction*> Call::get_const_argv () const {return &argv;};

//////////////////////////////////////////////////////
// Return
//////////////////////////////////////////////////////
Return::Return (name_t name_param, const Value* ret_value_param) :
    Instruction (name_param, InstructionType::Return),
    ret_value   (ret_value_param) 
    {}

InstructionType Return::get_instr_type () const 
    {
    assert (Value::type       == ValueType::Instruction); 
    assert (Instruction::type == InstructionType::Return);
    return InstructionType::Return;
    }

//////////////////////////////////////////////////////
// Operator
//////////////////////////////////////////////////////
Operator::Operator (name_t name_param, enum OperatorType op_type_param, 
                    const Value* left_param, 
                    const Value* right_param) :

    Instruction (name_param, InstructionType::Operator),
    op_type  (op_type_param),
    left_op  (left_param),
    right_op (right_param) 
    {}

InstructionType Operator::get_instr_type () const 
    {
    assert (Value::      type == ValueType::Instruction); 
    assert (Instruction::type == InstructionType::Operator);
    return InstructionType::Operator;
    }