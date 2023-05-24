#pragma once

#include "Value.h"
#include "Instructions.h"

class Module
    {
    private:
        ValueArr global_vars;
        ValueArr functions;  
    
    public:
         Module ();
        ~Module ();

        void dump (const char* out_file) const;
        
        void add_func (Function*  func);
        void add_var  (GlobalVar* var);

        void dumpGlobalVars () const;
        void dumpFunctions  () const;
    };
