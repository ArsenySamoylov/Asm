#pragma once

#include "TypeDef.hpp"


const int NUMBER_OF_LISTS_IN_HASH_TABLE = 20;

struct List
    {
    List* next;
    List* prev;

    data* data_ptr;
    };

struct HashTable
    {
    List list_arry [NUMBER_OF_LISTS_IN_HASH_TABLE] = {};
    
    const int list_arry_size = NUMBER_OF_LISTS_IN_HASH_TABLE;
    };


int SetHashTable (HashTable* table, const processed_data* src_data, hash_func_ptr hash_function);
