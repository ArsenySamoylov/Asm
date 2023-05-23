#include "Instructions.h"

//////////////////////////////////////////////////////
// Instruction
//////////////////////////////////////////////////////
Instruction::Instruction (name_t name_param, InstructionType type_param) :
    Value (ValueType::Instruction, name_param),
    type  (type_param) 
    {}


//////////////////////////////////////////////////////
// Store
//////////////////////////////////////////////////////
Store::Store (name_t name_param, const Value* val_param) :
    Instruction (name_param, InstructionType::Store),
    val         (val_param) 
    {}

//////////////////////////////////////////////////////
// Load
//////////////////////////////////////////////////////
Load::Load (name_t name_param, const Value* dest_param, const Value* src_param) :
    Instruction (name_param, InstructionType::Load),
    dest        (dest_param),
    src         (src_param) 
    {}

//////////////////////////////////////////////////////
// Branch
//////////////////////////////////////////////////////
Branch::Branch (name_t name_param, const Value* condition_param, const BaseBlock* true_block_param, const BaseBlock* false_block_param) :
   Instruction (name_param, InstructionType::Branch),
   condition   (condition_param),
   true_block  (true_block_param),
   false_block (false_block_param) 
   {}

//////////////////////////////////////////////////////
// Call
//////////////////////////////////////////////////////
Call::Call (name_t name_param, const Function* function_param) :
    Instruction (name_param, InstructionType::Call),
    argv        (ValueType::Instruction),
    function    (function_param)  
    {}


//////////////////////////////////////////////////////
// Return
//////////////////////////////////////////////////////
Return::Return (name_t name_param, const Value* ret_value_param) :
    Instruction (name_param, InstructionType::Return),
    ret_value   (ret_value_param) 
    {}

//////////////////////////////////////////////////////
// Operator
//////////////////////////////////////////////////////
Operator::Operator (name_t name_param, enum OperatorType op_type_param, const Value* left_param, const Value* right_param) :
    Instruction (name_param, InstructionType::Operator),
    op_type  (op_type_param),
    left_op  (left_param),
    right_op (right_param) 
    {}