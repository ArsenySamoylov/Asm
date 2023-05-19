#pragma once

#include "Value.h"
#include "Instructions.h"

struct Module
    {
    ValueArr global_vars;
    ValueArr functions;  
    };

int ModuleCtor (Module* mod);
int ModuleDtor (Module* mod);