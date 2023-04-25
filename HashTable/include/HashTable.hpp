#pragma once

#include "List.hpp"

const int NUMBER_OF_LISTS_IN_HASH_TABLE = 101;
const int MAX_NUMBER_OF_WORD_IN_LIST_IN_DUMP = 16;

struct HashTable
    {
    List list_array [NUMBER_OF_LISTS_IN_HASH_TABLE] = {};
    
    const size_t number_of_lists = NUMBER_OF_LISTS_IN_HASH_TABLE;
    };

int SetHashTable (HashTable* table, const processed_data* src_data, 
                  const hash_func_ptr hash_function);

int  AddElementToHashTable (HashTable* table, data* element, index_ table_index);
void DumpHashTable         (HashTable* table, const char* path_to_file);
int  DeleteHashTable       (HashTable* table);

data* FindElementInHashTable (const HashTable* table, const data* element, 
                              const hash_func_ptr func);
