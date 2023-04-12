#pragma once

#include "TypeDef.hpp"

const int NUMBER_OF_LISTS_IN_HASH_TABLE = 20;
const int MAX_NUMBER_OF_WORD_IN_LIST_IN_DUMP = 10;

struct Node
    {
    Node* next;
    Node* prev;
    
    data* data_ptr;
    };

struct List 
    {
    Node* first_node;
    Node* last_node;

    size_t number_of_elements;
    };

struct HashTable
    {
    List list_array [NUMBER_OF_LISTS_IN_HASH_TABLE] = {};
    
    const size_t number_of_lists = NUMBER_OF_LISTS_IN_HASH_TABLE;
    };


int SetHashTable (HashTable* table, const processed_data* src_data, 
                  const hash_func_ptr hash_function);
int  AddElementToHashTable (HashTable* table, data* element, index_ table_index);
void DumpHashTable         (HashTable* table, const char* path_to_file);
int DeleteHashTable       (HashTable* table);

int    AddElementToList (List* list, data* element);
Node* FindElementInList (List* list, data* element);
int DeleteList (List* list);

