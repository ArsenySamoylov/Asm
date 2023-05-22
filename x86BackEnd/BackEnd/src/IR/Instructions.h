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

int InstructionCtor (Instruction* inst, InstructionType type);
int InstructionDtor (Instruction* inst);

//////////////////////////////////////////////////////
struct Store : public Instruction
    {
    Value* val;
    };

int StoreCtor (Store* store, name_t name, Value* val);
int StoreDtor (Store* store);

struct Load : public Instruction
    {
    Value* dest;
    Value* src;
    };

int LoadCtor (Load* load, Value* dest, Value* src);
int LoadDtor (Load* load);

struct Branch : public Instruction
    {
    Value* condition;
    
    BaseBlock* true_block;
    BaseBlock* false_block;
    };

int BranchCtor (Branch* branch);
int BranchDtor (Branch* branch);

struct Call : public Instruction
    {
    ValueArr   argv;
    const Function* function;
    };

int CallCtor (Call* call, const Function* func);
int CallDtor (Call* call);

struct Return : public Instruction 
    {
    Value* value;
    };

int ReturnCtor (Return* ret);
int ReturnDtor (Return* ret);


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
    enum OperatorType type;
    
    Value* left_op;
    Value* right_op;
    };

int OperatorCtor (Operator* op, OperatorType type, Value* left, Value* right);
int OperatorDtor (Operator* op);