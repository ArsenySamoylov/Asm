#pragma once

#include "Module.h"
#include "ValueTable.h"

struct Builder
    {
    ValueNameTable global;
    ValueNameTable local;         // active when builder process function 

    Function*   current_function;
    ValueArr*   body_blocks;      // active when builder process function (actually, there is no need for it, cause points to BaseBlockArr in function)
    
    Module* mod;
    };

int BuilderCtor (Builder* buildog, Module* mod);
int BuilderDtor (Builder* buildog);

//////////////////////////////////////////////////////
int SetBuilderForFunction (Builder* buildog, Function* func, ValueLabel* label);
int AddFunctionToModule   (Builder* buildog);

//////////////////////////////////////////////////////
BaseBlock* GetCurrentBaseBlock (Builder* buildog);
BaseBlock* InsertNewBaseBlock  (Builder* buildog);

//////////////////////////////////////////////////////
int AddInstruction (Builder* buildog, Instruction* instruction);
int AddGlobalVar   (Builder* buildog, GlobalVar* var);

//////////////////////////////////////////////////////
Value* FindValue (Builder* buildog, int name_id);

//////////////////////////////////////////////////////
int AddNativeFunctions (Builder* buildog);

//////////////////////////////////////////////////////
CreateConstant (builder, const_val, const_name);
