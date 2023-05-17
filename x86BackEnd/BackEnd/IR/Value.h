#pragma once

#include <stddef.h>

#include "NoCopyable.h"
#include "TypeDefs.h"

struct Instruction;

struct InstructionArr
    {
    Instruction** arr;

    size_t size;
    size_t capacity;
    };

int InstructionArrCtor  (InstructionArr* arr);
int InstructionArrDtor  (InstructionArr* arr);
int AddToInstructionArr (InstructionArr* arr, Instruction* inst, size_t instr_size);

enum class ValueType
    {
    Instruction, // -> Call, Ret, MathOp
    Function,
    GlobalVar,   // type
    Constant,
    };

struct Value : public NoCopyable
    {
    enum ValueType type;
    name_t         name;
    };

struct BaseBlock : public Value
    {
    unsigned       n_instr;
    InstructionArr inst_arr;
    };

int BaseBlockCtor (BaseBlock* block);
int BaseBlockDtor (BaseBlock* block);

//////////////////////////////////////////////////////
struct ValueArr
    {
    Value** arr;
    
    size_t size;
    size_t capacity;
    };

int ValueArrCtor   (ValueArr* arr);
int ValueArrDtor   (ValueArr* arr);
int AddToValueArr  (ValueArr* arr, Value* val, size_t val_size);

struct BaseBlockArr
    {
    BaseBlock** arr;

    size_t size;
    size_t capacity;
    };

int BaseBlockArrCtor   (BaseBlockArr* arr);
int BaseBlockArrDtor   (BaseBlockArr* arr);
int AddToBaseBlockArr  (BaseBlockArr* arr, BaseBlock* block, size_t block_size = sizeof(BaseBlock));

//////////////////////////////////////////////////////
// Higher level sh*t
//////////////////////////////////////////////////////
enum class VariableType
    {
    Double,
    Int, // just kidding 
    };

struct Constant : public Value
    {
    data_t data;
    };
    
struct GlobalVar : public Value
    {
    enum VariableType type;
    Constant*        init_val;
    };

enum class FunctionRetType
    {
    Double,
    Void,
    };

struct Function : public Value
    {
    enum FunctionRetType type;

    ValueArr     argv;    
    BaseBlockArr body;
    };

int FunctionCtor (Function* func);
int FunctionDtor (Function* func);


enum class OperatorType
    {
    Add,
    Sub,
    Mul,
    Div,
    };

struct Operator : public Value
    {
    enum OperatorType type;
    
    Value* left_op;
    Value* right_op;
    };