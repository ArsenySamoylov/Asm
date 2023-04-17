#include <stdio.h> 
#include <string.h>

#include <assert.h>
#include "LogMacroses.h"

#include "CommonEnums.h"
#include "HashTable.hpp"
      
int SetHashTable (HashTable* table, const processed_data* src_data, hash_func_ptr hash_function)
    {
    assert(table);
    assert(src_data);
    assert(hash_function);
    
    data* src_data_array = src_data->data_array;
    
    for (size_t i = 0; i < src_data->number_of_keys; i++)
        {
        index_ hash_index = (*hash_function) (src_data_array) % (index_) table->number_of_lists;
        // TODO check index
        AddElementToHashTable (table, src_data_array, hash_index);
        
        //report ("Adding element '%lu', '%.10s', hash index: %d\n", i, src_data_array, hash_index);
        
        src_data_array += strlen(src_data_array) + 1;
        }

    return SUCCESS;
    }

int AddElementToHashTable (HashTable* table, data* element, index_ table_index)
    { 
    assert(table);
    assert(element);
    
    if (table_index >= (index_) table->number_of_lists)
        {
        report ("Index '%u' out of range in HashTable (size: %lu) (Element '%s')\n", 
                table_index, table->number_of_lists, element);
        
        return FAILURE;
        }
    
    List* list = table->list_array + table_index;

    if (!FindElementInList (list, element))
        AddElementToList (list, element);
    
    return SUCCESS;
    }
 
int DeleteHashTable (HashTable* table)
    {
    assert(table);

    for (size_t i = 0; i < table->number_of_lists; i++)
        {
        List* list = table->list_array + i;

        if (DeleteList(list) != SUCCESS)
                return FAILURE;
        }

    return SUCCESS;
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

            fprintf (dump_file, "'%s' ", current_node->data_ptr);
            current_node = current_node->next;
            }

        fprintf (dump_file, "\n");
        }
    
    fclose(dump_file);
    return;
    }
