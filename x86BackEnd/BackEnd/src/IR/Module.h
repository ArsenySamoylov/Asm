#pragma once

#include "Value.h"
// #include "Instructions.h"

class Module
    {
    private:
        ValueArr global_vars;
        ValueArr functions;  
    
    public:
         Module ();
        ~Module () = default;

        void dump (const char* out_file);
    };

// int ModuleCtor (Module* mod);
// int ModuleDtor (Module* mod);