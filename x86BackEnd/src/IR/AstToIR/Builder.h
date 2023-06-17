/*!
\file
\brief This file contains Builder for transforming Ast tree to IR

*/
#pragma once

#include "Module.h"
#include "ValueLabel.h"

/**
 * @brief It is interface for making Module from Ast tree
 * 
 */
class Builder : NoCopyable
    {
    private:
        Module& mod;

        // Name tables for storing Value& while translating from AST 
        PtrArray<ValueLabel>    global_vars;
        PtrArray<FunctionLabel> functions;
        PtrArray<ValueLabel>    local_vars;
        
        Function* current_function;

        /// Ast tree has inconvenient way of representing `fin` function.
        /// For this reason I Rearrange tokens when find FIN Native Function token (see RearrangeFinTokens)
        /// For this reason I need to have access to FIN_NAME_ID.
        int FIN_NAME_ID = 0;

    public:
         Builder (Module& mod_param);
        ~Builder ();

        /**
        * @brief Set the Builder for Function 
        * 
        * @param func 
        * @param label 
        * @return void 
        */
        void set_function (Function& func, FunctionLabel& label);

        /**
        * @brief Resets Builder after emitting Function
        * 
        * @param buildog 
        * @return void
        */
        void reset_after_function ();

        /**
         * @brief Get the Current Base Block object
         * 
         * @param buildog 
         * @return BaseBlock* 
         */
        BaseBlock* get_current_base_block ();

        /**
         * @brief Inset new BaseBlock to current function
         * 
         * @param block_name 
         * @return BaseBlock& 
         */
        BaseBlock* insert_new_base_block  (name_t block_name);

        /**
        * @brief Add function to Module
        * 
        * @return void
        */
        void add (Function& func);

        /**
         * @brief Add instruction to current BaseBlock
         * 
         * @param buildog 
         * @param instruction 
         */
        void add (Instruction& instruction);
        
        /**
         * @brief Add globalVar to Module
         * 
         * @param var 
         */
        void add (GlobalVar& var);

        /**
         * @brief Find Value in ValueTable
         * 
         * @param name_id 
         * @return Value* 
         */
        Value* find_value (int name_id);

        /**
         * @brief Find Function* 
         * 
         * @param name_id 
         * @return Function* 
         */
        Function* find_function (int name_id);

        /**
        * @brief Add Native Functions to NameTables
        * 
        * Ast tree doesn't provide code for std functions, therefore
        * they should be added before parsing Ast tree
        */
        void add_native_functions ();

        Constant&  create_constant   (name_t const_name, data_t const_val);
        Function&  create_function   (name_t func_name,  int    ret_type, int name_id);
        Call&      create_call       (name_t call_name,  const  Function& func);
        GlobalVar& create_global_var (name_t var_name,   Constant* init_val);
        Store&     create_store      (name_t var_name,   Value* store_val);
        Operator&  create_operator   (name_t op_name,    OperatorType op_type, Value& left_op, Value& right_op);
        Load&      create_load       (name_t load_name,  Value& dest, Value& src);
        Return&    create_return     (name_t ret_name,   Value* ret_val);
        Branch&    create_branch     (name_t name,       Value* condition, BaseBlock* true_branch, BaseBlock* false_branch);
    };