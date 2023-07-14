/*!
\file
\brief This file contains declaration of Module class
*/

#pragma once

#include "Value.h"
#include "Instructions.h"

struct Elf;

/**
 * @brief Class for representing program
 * 
 */
class Module
    {
    private:
        vector<GlobalVar*> global_vars;
        vector<Function*> functions;  

        vector<Constant*> const_pool;
    
    public:
         Module () = default;
        ~Module ();

        /**
         * @brief Write IR program in human-readable format
         * 
         * @param out_file 
         */
        void dump             (const char* out_file)    const;

        /**
         * @brief Translate Module to x86 op_codes (and also generate Assembler file)
         * 
         * @param elf 
         * @param path_to_assembler_dump 
         */
        void translate_x86    (Elf* elf, const char* path_to_assembler_dump) const;

        void add_func  (Function*  func);
        void add_var   (GlobalVar* var);
        void add_const (Constant*  constant);

        /**
         * @brief Convenient way to dump global vars
         * 
         */
        void dumpGlobalVars () const;

        /**
         * @brief Convenient way to dump functions
         * 
         */
        void dumpFunctions  () const;

        /**
         * @brief Find main function
         * 
         * Used in translate_x86 to make `call main`
         * @return const Function* 
         */
        const Function* find_main () const;
    };

//////////////////////////////////////////////////////
enum NativeFunction
    {
    Fin = 0,
    Fout,
    Pow,
    Sin,
    Cos,
    };

extern const int N_NATIVE_FUNCTIONS;

/**
 * @brief Get the Native Function 
 *  Native Functions a not part of Ast tree.
 *  So I store static massive of Function for native functions.
 *  Used in TranslateToAsm and TranslateTox86
 * @param func_num 
 * @return Function* 
 */
Function*  GetNativeFunction (int func_num);