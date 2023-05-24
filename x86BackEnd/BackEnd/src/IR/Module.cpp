#include <assert.h>

#include "Module.h"
#include "CommonEnums.h"

#include <stdio.h>

Module::Module () :
    global_vars (ValueType::GlobalVar),
    functions   (ValueType::Function)
    {}

Module::~Module ()
    {
    printf ("Module Dtor\n");

    printf ("Deleting global vars\n");
    for (size_t i = 0; i < global_vars.get_size(); i++)
        delete global_vars.get_value (i);

    printf ("Deleting functions\n");
    for (size_t i = 0; i < functions.get_size(); i++)
        {
        printf ("\t\tdelete %lu\n", i);
        delete functions.get_value (i);
        }
        
    }

void Module::add_func (Function*  func)
    {
    assert (func);
    functions.add (func);
    }

void Module::add_var (GlobalVar* var)
    {
    assert (var);
    global_vars.add (var);
    }