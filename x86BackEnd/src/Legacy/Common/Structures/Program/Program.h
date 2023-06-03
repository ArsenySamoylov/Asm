#pragma once

#include "Token.h"
#include "Tabels.h"
#include "NameTable.h"

struct Program
    {
    Token* token_arr;
    int number_of_tokens;

    Token* root;
     
    const char** string_arr;
    int number_of_strings;

    const char* path_to_src_file;

    NameTableArr* name_table_arr;
    int number_of_global_vars;
    };
    
int  ProgramCtor(Program* program, const char* path_to_src_file);    
int  ProgramDtor(Program* program);

int CleanStringArr(const char** string_arr, int number_of_strings);


#define GLOBAL_VAR_TABLE(PROGRAM)       ((PROGRAM)->name_table_arr->arr[0])
#define NUMBER_OF_GLOBAL_VARS(PROGRAM)  ((PROGRAM)->number_of_global_vars)
