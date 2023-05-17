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

struct Instruction : public Value
    {
    enum InstructionType type;
    };

//////////////////////////////////////////////////////
struct Store : public Instruction
    {
    Value* val;
    };

struct Load : public Instruction
    {
    Value* dest;
    Value* src;
    };

struct Branch : public Instruction
    {
    Value* condition;
    
    BaseBlock* true_branch;
    BaseBlock* false_branch;
    };

struct Call : public Instruction
    {
    ValueArr   argv;
    Function* function;
    };

struct Return : public Instruction 
    {
    Value* value;
    };