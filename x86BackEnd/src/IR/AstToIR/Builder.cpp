#include "EasyDebug.h"
#undef assert
#include <assert.h>

#include "Builder.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "StringPool.h"
#include "Grammar.h"
#include "Program.h" // for creating string

int BuilderCtor (Builder* buildog, Module* mod)
    {
    assert(buildog);
    assert(mod);
    
    ValueNameTableCtor(&buildog->global);
    buildog->local = {};

    buildog->current_function = NULL;

    buildog->mod = mod;

    return SUCCESS;
    }

int BuilderDtor (Builder* buildog)
    {
    assert(buildog);

    ValueNameTableDtor(&buildog->global);

    return SUCCESS;
    }

//////////////////////////////////////////////////////
int SetBuilderForFunction (Builder* buildog, Function* func, ValueLabel* func_label)
    {
    assert(buildog);
    assert(func);
    assert(func_label);

    CopyValueLabel (&buildog->global, func_label);
    ValueNameTableCtor (&buildog->local); 

    buildog->current_function  = func; 
    
    name_t entry_block_name = CreateString("entry_%s", func->get_name());
    assert (entry_block_name);

    BaseBlock* entry_block = InsertNewBaseBlock (buildog, entry_block_name);
    assert    (entry_block);

    return SUCCESS;
    }

int ResetBuilderAfterFunction (Builder* buildog)
    {
    assert (buildog);

    ValueNameTableDtor(&buildog->local);

    buildog -> current_function = NULL;

    return 0;
    }

int AddFunctionToModule (Builder* buildog)
    {
    assert(buildog);

    buildog->mod-> add_func(buildog->current_function);
    return SUCCESS;
    }

//////////////////////////////////////////////////////
BaseBlock* GetCurrentBaseBlock (Builder* buildog)
    {
    assert(buildog);

    if (!buildog->current_function)
        return NULL;

    ValueArr<BaseBlock>* blocks_arr = buildog->current_function->get_body();
    
    if (blocks_arr->get_size() == 0)
        {
        report("Error null size\n");
        return NULL;
        }

    return blocks_arr->get_value (blocks_arr->get_size() - 1);
    }

BaseBlock* InsertNewBaseBlock (Builder* buildog, name_t block_name)
    {
    assert(buildog);
    // name can be NULL

    if (!buildog->current_function)
        {
        report("Error, Null current_function, can't insert new base block\n");
        return NULL;
        }

    BaseBlock*  new_block = new BaseBlock (block_name);
    assert     (new_block);

    ValueArr<BaseBlock>* blocks_arr = buildog->current_function->get_body();
    assert   (blocks_arr);

    blocks_arr->add(new_block);
    return new_block;
    }   

//////////////////////////////////////////////////////
int AddInstruction (Builder* buildog, Instruction* instruction)
    {
    assert(buildog);
    assert(instruction);

    BaseBlock* block = GetCurrentBaseBlock(buildog);
    assert(block);

    block->add_instr(instruction);
    return SUCCESS;
    }

int AddGlobalVar (Builder* buildog, GlobalVar* var)
    {
    assert(buildog);
    assert(var);

    buildog->mod->add_var(var);
    
    return SUCCESS;
    }

//////////////////////////////////////////////////////
Value* FindValue (Builder* buildog, int name_id)
    {
    assert (buildog);
    
    ValueLabel* temp = FindValueLabel (&buildog->global, name_id);

    if (temp)
        return temp->val;

    if (buildog->current_function)
        {
        temp = FindValueLabel (&buildog->local, name_id);

        if (temp)
            return temp->val;
        }

    return NULL;
    }

//////////////////////////////////////////////////////
int FIN_NAME_ID = 0;

int AddNativeFunctions (Builder* buildog)
    {
    assert(buildog);

    for (int i = 0; i < N_NATIVE_FUNCTIONS; i++)
        {
        Function* native_func = GetNativeFunction (i);
        assert         (native_func);

        int name_id = AddString (native_func->get_name());

        if (!strcmp(native_func->get_name(), "fin"))
            FIN_NAME_ID = name_id;

        ValueLabel function_label = {.name_id = name_id,
                                    .type    = FUNCTION,
                                    .val     = native_func
                                    };

        CopyValueLabel (&buildog->global, &function_label);
        }

    return SUCCESS;
    }

//////////////////////////////////////////////////////
// Constant
//////////////////////////////////////////////////////
Constant* CreateConstant (Builder* buildog, name_t const_name, data_t const_val)
    {
    assert (buildog);
    assert (const_name);

    Constant* constant = new Constant (const_name, const_val);

    return constant;
    }

//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
static FunctionRetType GetRetType (int type);

Function* CreateFunction (Builder* buildog, name_t func_name, int ret_type, int name_id)
    {
    assert (buildog);
    assert (func_name);

    FunctionRetType type = GetRetType (ret_type);

    Function* func = new Function (func_name, type);

    ValueLabel function_label = {.name_id = name_id,
                                 .type    = FUNCTION,
                                 .val     = func
                                };

    SetBuilderForFunction (buildog, func, &function_label);

    return func;
    }

static FunctionRetType GetRetType (int type)
    {
    return  (type == DOUBLE) ? FunctionRetType::Double : FunctionRetType::Void;
    }

//////////////////////////////////////////////////////
// Call
//////////////////////////////////////////////////////
Call* CreateCall (Builder* buildog, name_t call_name, const Function* func)
    {
    assert(buildog);

    Call* call = new Call(call_name, func);    
    return call;
    }

//////////////////////////////////////////////////////
// GlobalVar
//////////////////////////////////////////////////////
GlobalVar* CreateGlobalVar (Builder* buildog, name_t var_name, Constant* init_val)
    {
    assert (buildog);
    assert (var_name);
    assert (init_val);

    GlobalVar* var = new GlobalVar (var_name, VariableBaseType::Double, init_val);

    AddGlobalVar   (buildog, var);

    return var;
    }

//////////////////////////////////////////////////////
// Store
//////////////////////////////////////////////////////
Store* CreateStore (Builder* buildog, name_t var_name, Value* store_val)
    {
    assert (buildog);
    assert (var_name);

    Store* store = new Store (var_name, store_val);

    if (store_val)
        AddInstruction (buildog, store);

    return store;
    }

//////////////////////////////////////////////////////
// Operator
//////////////////////////////////////////////////////
Operator* CreateOperator (Builder* buildog, name_t op_name, OperatorType op_type, Value* left_op, Value* right_op)
    {
    assert (buildog);
    assert (op_name);
    assert (left_op);
    assert (right_op);

    Operator* op = new Operator (op_name, op_type, left_op, right_op);

    AddInstruction (buildog, op);
    return op;
    }

//////////////////////////////////////////////////////
// Load
//////////////////////////////////////////////////////
Load* CreateLoad (Builder* buildog, name_t load_name, Value* dest, Value* src)
    {
    assert (buildog);
    // name can be NULL
    assert (dest);
    assert (src);

    Load* load = new Load (load_name, dest, src);

    AddInstruction (buildog, load);
    return load;
    }

//////////////////////////////////////////////////////
// Return
//////////////////////////////////////////////////////
Return* CreateReturn (Builder* buildog, name_t ret_name, Value* ret_val)
    {
    assert (buildog);
    // name    can be NULL
    // ret_val can ve NULL

    Return* ret = new Return (ret_name, ret_val);

    AddInstruction (buildog, ret);
    return ret;
    }

//////////////////////////////////////////////////////
// Branch
//////////////////////////////////////////////////////
Branch* CreateBranch (Builder* buildog, 
                            name_t name,
                            Value* condition,
                            BaseBlock* true_branch,
                            BaseBlock* false_branch)
    {
    assert(buildog);
    // name      can be NULL
    // condition can be NULL
    // assert (true_branch);
    // assert (false_branch || (false_branch == NULL && condition == NULL));

    Branch* branch = new Branch (name, condition, true_branch, false_branch);

    AddInstruction (buildog, branch);
    return branch;
    }