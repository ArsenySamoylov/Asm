#include <assert.h>

#include "Instructions.h"

#include "CommonEnums.h"
//////////////////////////////////////////////////////
// Instruction
int InstructionCtor (Instruction* inst, InstructionType type)
    {
    assert(inst);

    ValueCtor(inst, ValueType::Instruction);

    inst->Instruction::type = type;
    return SUCCESS;
    }

int InstructionDtor (Instruction* inst)
    {
    assert(inst);
    return SUCCESS;
    }

//////////////////////////////////////////////////////
// Store
int StoreCtor (Store* store, name_t name, Value* val)
    {
    assert(store);
    // assert(val);

    InstructionCtor (store, InstructionType::Store);
    
    store->Value::name = name;
    store->Store::val = val;

    return SUCCESS;
    }

int StoreDtor (Store* store)
    {
    assert(store);
    return SUCCESS;
    }

//////////////////////////////////////////////////////
// Load
int LoadCtor (Load* load, Value* dest, Value* src)
    {
    assert(load);
    assert(dest);
    assert(src);

    InstructionCtor (load, InstructionType::Load);

    load->dest = dest;
    load->src  = src;

    return SUCCESS;
    }

int LoadDtor (Load* load)
    {
    assert(load);
    return SUCCESS;
    }

//////////////////////////////////////////////////////
// Branch
int BranchCtor (Branch* branch)
   {
    assert(branch);

    InstructionCtor (branch, InstructionType::Branch);
    return SUCCESS;
    }

int BranchDtor (Branch* branch)
    {
    assert(branch);
    return SUCCESS;
    }

//////////////////////////////////////////////////////
// Call
int CallCtor (Call* call, const Function* func)
    {
    assert(call);
    assert(func);

    InstructionCtor (call, InstructionType::Call);
    call->function = func;

    ValueArrCtor (&call->argv, ValueType::Value);

    return SUCCESS;
    }

int CallDtor (Call* call)
    {
    assert(call);
    return SUCCESS;
    }

//////////////////////////////////////////////////////
// Return
int ReturnCtor (Return* ret)
   {
    assert(ret);

    InstructionCtor (ret, InstructionType::Return);
    return SUCCESS;
    }

int ReturnDtor (Return* ret)
    {
    assert(ret);
    return SUCCESS;
    }

//////////////////////////////////////////////////////
// Operator
int OperatorCtor (Operator* op, OperatorType type, Value* left, Value* right)
    {
    assert(op);

    InstructionCtor (op, InstructionType::Operator);

    op->Operator::type = type;
    op-> left_op = left;
    op->right_op = right;

    return SUCCESS;
    }

int OperatorDtor (Operator* op)
    {
    assert(op);
    return SUCCESS;
    }