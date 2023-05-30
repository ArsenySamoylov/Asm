#pragma once

#include "Value.h"
#include "Instructions.h"

struct Elf;

class Module
    {
    private:
        ValueArr<GlobalVar> global_vars;
        ValueArr<Function> functions;  

        ValueArr<Constant> const_pool;
    
    public:
         Module () = default;
        ~Module ();

        void dump             (const char* out_file) const;
        void translate_x86    (Elf* elf)             const;

        void add_func  (Function*  func);
        void add_var   (GlobalVar* var);
        void add_const (Constant*  constant);

        void dumpGlobalVars () const;
        void dumpFunctions  () const;
    };
