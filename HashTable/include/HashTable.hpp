#pragma once

#include "List.hpp"
#include "ProcessData.hpp"

const int NUMBER_OF_LISTS_IN_HASH_TABLE = 10007;
const int MAX_NUMBER_OF_WORD_IN_LIST_IN_DUMP = 16;

struct HashTable
    {
    List list_array [NUMBER_OF_LISTS_IN_HASH_TABLE];
    
    const size_t number_of_lists = NUMBER_OF_LISTS_IN_HASH_TABLE;
    };

int SetHashTable_crc32  (HashTable* table, const processed_data* src_data);
int SetHashTable        (HashTable* table, const processed_data* src_data, 
                        const hash_func_ptr hash_function);
 
data* FindElementInHashTable_crc32           (const HashTable* table, const data* element);
data* FindElementInHashTable_crc32_optimized (const HashTable* table, const data* element);
data* FindElementInHashTable                 (const HashTable* table, const data* element, 
                                              const hash_func_ptr func);

int  AddElementToHashTable (HashTable* table, data* element, index_t table_index);
void DumpHashTable         (HashTable* table, const char* path_to_file);
int  ResetHashTable        (HashTable* table);