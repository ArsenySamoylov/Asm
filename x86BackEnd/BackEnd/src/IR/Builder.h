#pragma once

#include "Module.h"
#include "ValueTable.h"

struct Builder
    {
    ValueNameTable global;
    ValueNameTable local;         // active when builder process function 

    Function* current_function;
    ValueArr* body_blocks;      // active when builder process function (actually, there is no need for it, cause points to BaseBlockArr in function)
    
    Module* mod;
    };

int BuilderCtor (Builder* buildog, Module* mod);
int BuilderDtor (Builder* buildog);

//////////////////////////////////////////////////////
int SetBuilderForFunction     (Builder* buildog, Function* func, ValueLabel* label);
int ResetBuilderAfterFunction (Builder* buildog);
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
static int FIN_NAME_ID = 0; 

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