#include <assert.h>
#include <stdio.h>
#include <string.h>

#include "Module.h"
#include "CommonEnums.h"


Module::~Module ()
    {
    // printf ("Module Dtor\n");

    // printf ("Deleting global vars\n");
    for (size_t i = 0; i < global_vars.size(); i++)
        delete global_vars[i];

    // printf ("Deleting functions\n");
    for (size_t i = 0; i < functions.size(); i++)
        delete functions[i];
    
    // printf ("Deleting constants\n");
    for (size_t i = 0; i < const_pool.size(); i++)
        delete const_pool[i];
    }

void Module::add_func (Function*  func)
    {
    assert(func);
    functions.push_back(func);
    }

void Module::add_var (GlobalVar* var)
    {
    assert(var);
    global_vars.push_back(var);
    }

void Module::add_const (Constant* constant)
    {
    assert(constant);
    const_pool.push_back(constant);
    }

const Function* Module::find_main () const
    {
    for (size_t i = 0; i < functions.size(); i++)
        {
        const Function* func = functions[i];
        assert        (func);

        if (!strcmp (func->get_name(), "main"))
            return func;
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