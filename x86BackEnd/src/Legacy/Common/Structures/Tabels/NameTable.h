#pragma once

#include <stddef.h>

enum LOCALITY_NUM
    {
    GLOBAL,
    LOCAL,
    };

struct Token;

struct Label
    {
    int type;
    int name_id;

    int number_of_vars;
    int ret_type;

    int var_number;
    int local_type;
    
    const Token* global_initialization; 
    };

struct NameTable
    {
    Label** label_arr;
    size_t arr_size;

    size_t number_of_labels;
    };

struct NameTableArr
    {
    NameTable** arr;

    int size_of_tables_arr;
    int number_of_tables;
    };

NameTable* NewNameTable();
int CloseNameTable (NameTable* table);

int    AddLabel (Label* label, NameTable* table); 
Label* CopyLabel    (Label* label, NameTable* table);

Label* IsLabel (int name_id, int type, NameTable* table);
int CompareLabels (Label* label1, Label* label2);


NameTableArr* NewNameTableArr (int start_size);
int DeleteNameTableArr (NameTableArr* table_arr);

// int AddTable (NameTable* table, NameTableArr* table_arr);
NameTable* AddTable (NameTableArr* table_arr);

