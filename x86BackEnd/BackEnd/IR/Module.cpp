#include <assert.h>

#include "Module.h"

#include "CommonEnums.h"

int ModuleCtor (Module* mod)
    {
    assert(mod);

    ValueArrCtor(&mod->global_vars);
    ValueArrCtor(&mod->functions);

    return SUCCESS;
    }

int ModuleDtor (Module* mod)
    {
    assert(mod);

    ValueArrDtor(&mod->global_vars);
    ValueArrDtor(&mod->functions);

    return SUCCESS;
    }