#pragma once

#include "Value.h"
#include "Instructions.h"

class Module
    {
    private:
        ValueArr global_vars;
        ValueArr functions;  

        ValueArr const_pool;
    
    public:
         Module ();
        ~Module ();

        void dump             (const char* out_file) const;
        void translate_to_x86 (Context* ctx)         const;

        void add_func  (Function*  func);
        void add_var   (GlobalVar* var);
        void add_const (Constant*  constant);

        void dumpGlobalVars () const;
        void dumpFunctions  () const;
    };
