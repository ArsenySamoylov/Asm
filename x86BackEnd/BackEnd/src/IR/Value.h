#pragma once

#include <stddef.h>

#include "NoCopyable.h"
#include "TypeDefs.h"

enum class ValueType
    {
    Function,
    GlobalVar,
    BaseBlock,
    Constant,
    Instruction,

    Value
    };

struct Value : public NoCopyable
    {
    enum ValueType type;
    name_t         name;
    };

int ValueCtor (Value* val, ValueType type, name_t name = NULL);
int ValueDtor (Value* val);

struct ValueArr
    {
    enum ValueType base_type;
    Value** arr;
    
    size_t size;
    size_t capacity;
    };

int ValueArrCtor   (ValueArr* arr, ValueType base_type);
int ValueArrDtor   (ValueArr* arr);

Value* AddValue   (ValueArr* arr, Value* val);
Value* AllocValue (ValueArr* arr, size_t val_size);

//////////////////////////////////////////////////////
struct BaseBlock : public Value
    {
    ValueArr inst_arr;
    };

int BaseBlockCtor (BaseBlock* block);
int BaseBlockDtor (BaseBlock* block);

//////////////////////////////////////////////////////
// Higher level sh*t
//////////////////////////////////////////////////////
const int PRECISION = 100;

struct Constant : public Value
    {
    data_t data;
    };
    
int ConstantCtor (Constant* constant, data_t value);
int ConstantDtor (Constant* constant);

enum class VariableType
    {
    Double,
    Int, // just kidding 
    };

struct GlobalVar : public Value
    {
    enum VariableType type;
    Constant*      init_val;
    };

int GlobalVarCtor (GlobalVar* var, name_t name, Constant* init_val);
int GlobalVarDtor (GlobalVar* var);

enum class FunctionRetType
    {
    Double,
    Void,
    };

struct Function : public Value
    {
    enum FunctionRetType type;

    ValueArr argv;    
    ValueArr body;
    };

int FunctionCtor (Function* func, name_t name);
int FunctionDtor (Function* func);