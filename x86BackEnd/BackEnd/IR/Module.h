#pragma once

#include "Value.h"
#include "Instructions.h"

struct Module : NoCopyable
    {
    ValueArr global_vars;
    ValueArr functions;  
    };

int ModuleCtor (Module* mod);
int ModuleDtor (Module* mod);