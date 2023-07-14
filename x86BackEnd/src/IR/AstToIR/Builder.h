/*!
\file
\brief This file contains Builder for transforming Ast tree to IR

*/
#pragma once

#include "Module.h"
#include "ValueTable.h"

/**
 * @brief It is interface for making Module from Ast tree
 * 
 */
struct Builder
    {
    ValueNameTable global;
    ValueNameTable local; // active when builder process function 

    Function* current_function;
    
    Module* mod;
    };

int BuilderCtor (Builder* buildog, Module* mod);
int BuilderDtor (Builder* buildog);

//////////////////////////////////////////////////////

/**
 * @brief Set the Builder for Function 
 * 
 * @param buildog 
 * @param func 
 * @param label 
 * @return int 
 */
int SetBuilderForFunction (Builder* buildog, Function* func, ValueLabel label);

/**
 * @brief Resets Builder after emitting Function
 * 
 * @param buildog 
 * @return int 
 */
int ResetBuilderAfterFunction (Builder* buildog);

/**
 * @brief Add function to Module
 * 
 * @param buildog 
 * @return int 
 */
int AddFunctionToModule       (Builder* buildog);

//////////////////////////////////////////////////////
BaseBlock* GetCurrentBaseBlock (Builder* buildog);
BaseBlock* InsertNewBaseBlock  (Builder* buildog, name_t block_name);

//////////////////////////////////////////////////////
int AddInstruction (Builder* buildog, Instruction* instruction);
int AddGlobalVar   (Builder* buildog, GlobalVar* var);

//////////////////////////////////////////////////////
Value* FindValue (Builder* buildog, int name_id);

//////////////////////////////////////////////////////
/// Ast tree has inconvenient way of representing `fin` function.
/// For this reason I Rearrange tokens when find FIN Native Function token (see RearrangeFinTokens)
/// For this reason I need to have access to FIN_NAME_ID.
extern int FIN_NAME_ID; 

/**
 * @brief Add Native Function
 * 
 * Ast tree doesn't provide code for std functions, therefore
 * they should be added before parsing Ast tree
 * @param buildog 
 * @return int 
 */
int AddNativeFunctions    (Builder* buildog);

//////////////////////////////////////////////////////
// Creators
//////////////////////////////////////////////////////
Constant*  CreateConstant  (Builder* builder, name_t const_name, data_t const_val);
Function*  CreateFunction  (Builder* buildog, name_t func_name,  int    ret_type, int name_id);
Call*      CreateCall      (Builder* buildog, name_t call_name,  const  Function* func);
GlobalVar* CreateGlobalVar (Builder* buildog, name_t var_name,   Constant* init_val);
Store*     CreateStore     (Builder* buildog, name_t var_name,   Value* store_val);
Operator*  CreateOperator  (Builder* buildog, name_t op_name,    OperatorType op_type, Value* left_op, Value* right_op);
Load*      CreateLoad      (Builder* buildog, name_t load_name,  Value* dest,    Value* src);
Return*    CreateReturn    (Builder* buildog, name_t ret_name,   Value* ret_val);
 Branch*   CreateBranch    (Builder* buildog, name_t name,       Value* condition, BaseBlock* true_branch, BaseBlock* false_branch);