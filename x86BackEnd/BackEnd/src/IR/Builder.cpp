
#include "Builder.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "EasyDebug.h"
#include "StringPool.h"

#undef assert
#include <assert.h>

#include "DebugIR.h"

#include "Program.h" // for create string

int BuilderCtor (Builder* buildog, Module* mod)
    {
    assert(buildog);
    assert(mod);
    
    ValueNameTableCtor(&buildog->global);
    buildog->local = {};

    buildog->current_function = NULL;
    buildog->body_blocks      = NULL;

    buildog->mod = mod;

    return SUCCESS;
    }

int BuilderDtor (Builder* buildog)
    {
    assert(buildog);

    ValueNameTableDtor(&buildog->global);
    
    if (buildog->local.arr)
        ValueNameTableDtor(&buildog->local);

    return SUCCESS;
    }

int SetFunction (Builder* buildog, Function* func, ValueLabel* func_label)
    {
    assert(buildog);
    assert(func);
    assert(func_label);

    CopyValueLabel (&buildog->global, func_label);
    ValueNameTableCtor (&buildog->local); 

    buildog->current_function = func; 
    buildog->body_blocks = &func->body;
    
    ValueArrCtor (buildog->body_blocks, ValueType::BaseBlock);
    BaseBlock* entry_block = InsertNewBaseBlock (buildog);
    assert(entry_block);
    
    entry_block->name = CreateString("entry_%s", func->name);

    return SUCCESS;
    }

int AddFunctionToModule (Builder* buildog)
    {
    assert(buildog);

    AddValue (&buildog->mod->functions, buildog->current_function);
    return SUCCESS;
    }

BaseBlock* GetCurrentBaseBlock (Builder* buildog)
    {
    assert(buildog);

    if (!buildog->current_function)
        return NULL;

    ValueArr* blocks_arr = &buildog->current_function->body;
    
    if (blocks_arr->size == 0)
        {
        report("Error null size\n");
        return NULL;
        }

    // printf ("Arr %p\n", blocks_arr);
    // printf ("Arr size %ld\n\t", blocks_arr->size);
    // for (size_t i = 0; i < blocks_arr->size + 2; i++)
    //     printf ("arr[%lu] = %p ,", i, blocks_arr->arr [i]);
    // printf("\n");

    return (BaseBlock*) (blocks_arr->arr [blocks_arr->size - 1]);
    }

BaseBlock* InsertNewBaseBlock (Builder* buildog)
    {
    assert(buildog);

    if (!buildog->current_function)
        {
        report("Error, Null current_function, can't insert new base block\n");
        return NULL;
        }

    BaseBlock* new_block = (BaseBlock*) calloc (1, sizeof(new_block[0]));
    BaseBlockCtor(new_block);

    ValueArr* blocks_arr = &buildog->current_function->body;
    assert(blocks_arr);

    AddValue (blocks_arr, new_block);
    return new_block;
    }   

int AddInstruction (Builder* buildog, Instruction* instruction)
    {
    assert(buildog);
    assert(instruction);

    BaseBlock* block = GetCurrentBaseBlock(buildog);
    assert(block);

    // PRINT_VALUE(block);

    AddValue (&block->inst_arr, instruction);
    return SUCCESS;
    }

int AddGlobalVar (Builder* buildog, GlobalVar* var)
    {
    assert(buildog);
    assert(var);

    AddValue (&buildog->mod->global_vars, var);
    
    return SUCCESS;
    }

Value* FindValue (Builder* buildog, int name_id)
    {
    assert (buildog);
    
    ValueLabel* temp = FindValueLabel (&buildog->global, name_id);

    if (temp)
        return temp->val;

    if (buildog->current_function)
        {
        temp = FindValueLabel (&buildog->local, name_id);

        if (temp)
            return temp->val;
        }

    return NULL;
    }

// int CopyInstruction (Builder* buildog, Instruction* instruction)
//     {
//     assert(buildog);
//     assert(instruction);

//     if (!buildog->current_function)
//         {
//         report ("Error, Null current_function\n");
//         return FAILURE;
//         }

//     BaseBlock* current_block = GetCurrentBaseBlock(buildog);

//     return MoveToInstructionArr (&current_block->inst_arr, instruction, size);
//     }