#include "EasyDebug.h"
#undef assert
#include <assert.h>

#include "Builder.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "StringPool.h"
#include "Grammar.h"
#include "Program.h" // for creating string

Builder::Builder (Module& mod_param) :
    mod    (mod_param),
    global_vars (),
    local_vars  (),
    current_function (NULL)
    {}

void Builder::set_function (Function& func, FunctionLabel& func_label)
    {
    functions.copy (func_label);
    local_vars.reset ();

    current_function  = &func; 
    
    name_t  entry_block_name = CreateString("entry_%s", func.get_name());
    assert (entry_block_name);

    this->insert_new_base_block (entry_block_name);
    }

void Builder::reset_after_function ()
    {
    local_vars.reset ();
    current_function = NULL;
    }

BaseBlock* Builder::get_current_base_block ()
    {
    if (!current_function)
        return NULL;

    PtrArray<BaseBlock> blocks_arr = current_function->get_body();
    
    if (blocks_arr.get_size() == 0)
        {
        report("Error null size\n");
        return NULL;
        }

    return &blocks_arr.get_value(blocks_arr.get_size() - 1);
    }

/**
 * @brief Insert New base block to current Function
 * 
 * @param block_name  Can be Null
 * @return BaseBlock& 
 */
BaseBlock* Builder::insert_new_base_block (name_t block_name)
    {
    if (!current_function)
        {
        report("Error, Null current_function, can't insert new base block\n");
        return NULL;
        }

    BaseBlock*  new_block = new BaseBlock (block_name);
    assert     (new_block);

    PtrArray<BaseBlock> blocks_arr = current_function->get_body();

    blocks_arr.add (*new_block);
    return new_block;
    }   

//////////////////////////////////////////////////////
void Builder::add (Function& func)
    {
    mod.add_func(func);
    }

void Builder::add (Instruction& instruction)
    {

    BaseBlock* block = this->get_current_base_block ();
    assert    (block);

    block->add_instr(instruction);
    }

void Builder::add (GlobalVar& var)
    {
    mod.add_var(var);
    }

//////////////////////////////////////////////////////
template <class Value_T>
static Value_T* FindValueLabel (PtrArray<Value_T>* name_table, int name_id)
    {
    assert (name_table);

    for (size_t i = 0; i < name_table->get_size (); i++)
        {
        Value_T label = name_table->get_value (i);

        if (label.name_id == name_id)
            return &label;
        }
    
    return NULL;
    }

Value* Builder::find_value (int name_id)
    {
    ValueLabel* temp = FindValueLabel (&global_vars, name_id);

    if (temp)
        return &temp->val;

    if (current_function)
        {
        temp = FindValueLabel (&local_vars, name_id);

        if (temp)
            return &temp->val;
        }

    return NULL;
    }

Function* Builder::find_function (int name_id)
    {
    FunctionLabel* label = FindValueLabel (&functions, name_id);

    if (label)
        return &label->function;

    return NULL; 
    }

void Builder::add_native_functions ()
    {
    for (int i = 0; i < N_NATIVE_FUNCTIONS; i++)
        {
        Function* native_func = GetNativeFunction (i);
        assert   (native_func);

        int name_id = AddString (native_func->get_name());

        if (!strcmp(native_func->get_name(), "fin"))
            FIN_NAME_ID = name_id;

        FunctionLabel function_label (name_id, FUNCTION, *native_func);

        functions.copy (function_label);
        }
    }

//////////////////////////////////////////////////////
// Constant
//////////////////////////////////////////////////////
Constant& Builder::create_constant (name_t const_name, data_t const_val)
    {
    assert (const_name);

    Constant* constant = new Constant (const_name, const_val);

    return *constant;
    }

//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
static FunctionRetType GetRetType (int type);

Function& Builder::create_function (name_t func_name, int ret_type, int name_id)
    {
    assert (func_name);

    FunctionRetType type = GetRetType (ret_type);

    Function* func = new Function (func_name, type);

    FunctionLabel function_label (name_id, FUNCTION, *func);

    this->set_function (*func, function_label);

    return *func;
    }

static FunctionRetType GetRetType (int type)
    {
    return  (type == DOUBLE) ? FunctionRetType::Double : FunctionRetType::Void;
    }

//////////////////////////////////////////////////////
// Call
//////////////////////////////////////////////////////
Call& Builder::create_call (name_t call_name, const Function& func)
    {
    Call* call = new Call(call_name, func);    
    return *call;
    }

//////////////////////////////////////////////////////
// GlobalVar
//////////////////////////////////////////////////////
GlobalVar& Builder::create_global_var (name_t var_name, Constant* init_val)
    {
    assert (var_name);
    assert (init_val);

    GlobalVar* var = new GlobalVar (var_name, VariableBaseType::Double, init_val);
    
    this->add (*var);

    return *var;
    }

//////////////////////////////////////////////////////
// Store
//////////////////////////////////////////////////////
/**
 * @brief 
 * 
 * @param var_name 
 * @param store_val can be Null
 * @return Store& 
 */
Store& Builder::create_store (name_t var_name, Value* store_val)
    {
    assert (var_name);
    
    Store* store = new Store (var_name, store_val);

    if (store_val)
        this->add (*store);

    return *store;
    }

//////////////////////////////////////////////////////
// Operator
//////////////////////////////////////////////////////
Operator& Builder::create_operator (name_t op_name, OperatorType op_type, Value& left_op, Value& right_op)
    {
    assert (op_name);

    Operator* op = new Operator (op_name, op_type, left_op, right_op);

    this->add (*op);
    return *op;
    }

//////////////////////////////////////////////////////
// Load
//////////////////////////////////////////////////////
Load& Builder::create_load (name_t load_name, Value& dest, Value& src)
    {
    Load* load = new Load (load_name, dest, src);

    this->add (*load);
    return *load;
    }

//////////////////////////////////////////////////////
// Return
//////////////////////////////////////////////////////
/**
 * @brief Create return Value and add to current BaseBlock 
 * 
 * @param ret_name Can be Null
 * @param ret_val  Can be Null
 * @return Return& 
 */
Return& Builder::create_return (name_t ret_name, Value* ret_val)
    {
    Return* ret = new Return (ret_name, ret_val);

    this->add (*ret);
    return *ret;
    }

//////////////////////////////////////////////////////
// Branch
//////////////////////////////////////////////////////
/**
 * @brief Create Branch Instruction 
 * 
 * @param name              can be Null 
 * @param condition         can be Null
 * @param true_branch      
 * @param false_branch      can be Null
 * @return Branch& 
 */
Branch& Builder::create_branch (
                            name_t name,
                            Value* condition,
                            BaseBlock* true_branch,
                            BaseBlock* false_branch)
    {
    assert (true_branch);

    Branch* branch = new Branch (name, condition, true_branch, false_branch);

    this->add (*branch);
    return *branch;
    }