#include <assert.h>
#include <stdio.h>
#include <string.h>

#include "Module.h"
#include "CommonEnums.h"


Module::~Module ()
    {
    // printf ("Module Dtor\n");

    // printf ("Deleting global vars\n");
    for (size_t i = 0; i < global_vars.get_size(); i++)
        delete &global_vars.get_value (i);

    // printf ("Deleting functions\n");
    for (size_t i = 0; i < functions.get_size(); i++)
        delete &functions.get_value (i);
    
    // printf ("Deleting constants\n");
    for (size_t i = 0; i < const_pool.get_size(); i++)
        delete &const_pool.get_value (i);
    }

void Module::add_func (Function&  func)
    {
    functions.add (func);
    }

void Module::add_var (GlobalVar& var)
    {
    global_vars.add (var);
    }

void Module::add_const (Constant& constant)
    {
    const_pool.add (constant);
    }

const Function* Module::find_main () const
    {
    for (size_t i = 0; i < functions.get_size(); i++)
        {
        const Function& func = functions.get_const_value (i);

        if (!strcmp (func.get_name(), "main"))
            return &func;
        }

    return NULL;
    }

//////////////////////////////////////////////////////
Function NativeFunctions[] = { 
    {"fin", FunctionRetType::Double},
    {"fout", FunctionRetType::Void },
    {"pow", FunctionRetType::Double},
    {"sin", FunctionRetType::Double},
    {"cos", FunctionRetType::Double},
};

const int N_NATIVE_FUNCTIONS = sizeof (NativeFunctions) / sizeof (NativeFunctions[0]);

Function*  GetNativeFunction (int func_num)
    {
    assert (func_num < N_NATIVE_FUNCTIONS);
    return NativeFunctions + func_num;
    }