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

ValueType Instruction::get_type () const {return ValueType::Instruction;}

//////////////////////////////////////////////////////
// Store
//////////////////////////////////////////////////////
Store::Store (name_t name_param, const Value* val_param) :
    Instruction (name_param, InstructionType::Store),
    val         (val_param) 
    {}

InstructionType Store::get_instr_type () const {return InstructionType::Store;}

//////////////////////////////////////////////////////
// Load
//////////////////////////////////////////////////////
Load::Load (name_t name_param, const Value* dest_param, const Value* src_param) :
    Instruction (name_param, InstructionType::Load),
    dest        (dest_param),
    src         (src_param) 
    {}

InstructionType Load::get_instr_type () const {return InstructionType::Load;}

//////////////////////////////////////////////////////
// Branch
//////////////////////////////////////////////////////
Branch::Branch (name_t name_param, const Value* condition_param, BaseBlock* true_block_param, BaseBlock* false_block_param) :
   Instruction (name_param, InstructionType::Branch),
   condition   (condition_param),
   true_block  (true_block_param),
   false_block (false_block_param) 
   {}

InstructionType Branch::get_instr_type () const {return InstructionType::Branch;}

BaseBlock* Branch::set_true_block  (BaseBlock* true_block_param) 
    {
    assert (true_block_param);
    assert (true_block == NULL);

    true_block = true_block_param;
    return true_block;
    }

BaseBlock* Branch::set_false_block (BaseBlock* false_block_param)
    {
    assert (false_block_param);
    assert (false_block == NULL);

    false_block = false_block_param;
    return false_block;
    }

//////////////////////////////////////////////////////
// Call
//////////////////////////////////////////////////////
Call::Call (name_t name_param, const Function* function_param) :
    Instruction (name_param, InstructionType::Call),
    argv        (ValueType::Instruction),
    function    (function_param)  
    {}

Call::~Call ()
    {
    printf ("Call dtor\n");
    }

InstructionType Call::get_instr_type () const {return InstructionType::Call;}

      ValueArr* Call::get_argv       ()       {return &argv;};
const ValueArr* Call::get_const_argv () const {return &argv;};

//////////////////////////////////////////////////////
// Return
//////////////////////////////////////////////////////
Return::Return (name_t name_param, const Value* ret_value_param) :
    Instruction (name_param, InstructionType::Return),
    ret_value   (ret_value_param) 
    {}

InstructionType Return::get_instr_type () const {return InstructionType::Return;}

//////////////////////////////////////////////////////
// Operator
//////////////////////////////////////////////////////
Operator::Operator (name_t name_param, enum OperatorType op_type_param, const Value* left_param, const Value* right_param) :
    Instruction (name_param, InstructionType::Operator),
    op_type  (op_type_param),
    left_op  (left_param),
    right_op (right_param) 
    {}

InstructionType Operator::get_instr_type () const {return InstructionType::Operator;}