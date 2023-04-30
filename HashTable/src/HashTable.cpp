#include <stdio.h> 
#include <string.h>

#include <assert.h>
#include "LogMacroses.h"

#include "CommonEnums.h"
#include "HashTable.hpp"
#include "HashFunctions.hpp"

int SetHashTable (HashTable* table, const processed_data* src_data, hash_func_ptr hash_function)
    {
    assert(table);
    assert(src_data);
    assert(hash_function);
    
    data* src_data_array      = src_data->data_array;
    size_t number_of_elements = src_data->number_of_keys;

    for (size_t i = 0; i < number_of_elements; i++)
        {
        
            index_ hash_index = (*hash_function) (src_data_array) % (index_) table->number_of_lists;
        AddElementToHashTable (table, src_data_array, hash_index);
        
       //  report ("Adding element number '%lu', %p, '%.10s', hash index: %u\n", i, src_data_array, (char*) src_data_array, hash_index);

        ++src_data_array;
        }

    return SUCCESS;
    }

int AddElementToHashTable (HashTable* table, data* element, index_ table_index)
    { 
    assert(table);
    assert(element);
    
    if (table_index >= (index_) table->number_of_lists)
        {
       // report ("Index '%u' out of range in HashTable (size: %lu) (Element '%s')\n", 
        //        table_index, table->number_of_lists, (char*) element);
        
        return FAILURE;
        }
    
    List* list = table->list_array + table_index;

    if (!FindElementInList (list, element))
        AddElementToList (list, element);
    
    return SUCCESS;
    }
 
int ClearHashTable (HashTable* table)
    {
    assert(table);

    for (size_t i = 0; i < table->number_of_lists; i++)
        {
        List* list = table->list_array + i;

        if (ClearList(list) != SUCCESS)
                return FAILURE;
        }

    return SUCCESS;
    }
 
data* FindElementInHashTable (const HashTable* table, const data* element, 
                              const hash_func_ptr func)
    {
    assert(table);
    assert(element);
    assert(func);
    
    index_ hash_index = ((*func) (element)) % ((index_) table->number_of_lists);
        
    Node* result = FindElementInList (table->list_array + hash_index, element);
    
    if (!result)
        return NULL;

    return result->data_ptr;
    }     

  

void DumpHashTable (HashTable* table, const char* path_to_file)
    {
    assert(table);
    assert(path_to_file);

    FILE* dump_file = fopen(path_to_file, "wa");
    if (!dump_file)
        {
        report ("couldn't open file '%s'\n", path_to_file);
        return;
        }
    
    //report ("%lu\n", table->number_of_lists);
    for (size_t i = 0; i < table->number_of_lists; i++)
        {
        List* list         = table->list_array + i;
        Node* current_node = list->first_node;

        fprintf (dump_file, "List[%.3lu] (add: %p, number_of_elements: %.4lu) : ", 
                              i, list, list->number_of_elements);
        
        for (size_t j = 0; j < list->number_of_elements; j++)
            {
            //report ("%s ", current_node->data_ptr);
            if (j > MAX_NUMBER_OF_WORD_IN_LIST_IN_DUMP)
                {
                fprintf (dump_file, "...");
                break;
                }

            fprintf (dump_file, "'%s' ", (char*) current_node->data_ptr);
            current_node = current_node->next;
            }

        fprintf (dump_file, "\n");
        }
    
    fclose(dump_file);
    return;
    }


// this is version with hardcored crc32 hash function
int SetHashTable (HashTable* table, const processed_data* src_data)
    {
    assert(table);
    assert(src_data);
    
    data* src_data_array      = src_data->data_array;
    size_t number_of_elements = src_data->number_of_keys;

    for (size_t i = 0; i < number_of_elements; i++)
        {
        
            index_ hash_index = hash8_crc32_inline_as (src_data_array) % (index_) table->number_of_lists;
        AddElementToHashTable (table, src_data_array, hash_index);
        
       //  report ("Adding element number '%lu', %p, '%.10s', hash index: %u\n", i, src_data_array, (char*) src_data_array, hash_index);

        ++src_data_array;
        }

    return SUCCESS;
    }

// this is version with hardcored crc32 hash function
data* FindElementInHashTable (const HashTable* table, const data* element)
    {
    assert(table);
    assert(element);
    
    index_ hash_index = (hash8_crc32_inline_as(element)) % ((index_) table->number_of_lists);
        
    Node* result = FindElementInList (table->list_array + hash_index, element);
    
    if (!result)
        return NULL;

    return result->data_ptr;
    }   
