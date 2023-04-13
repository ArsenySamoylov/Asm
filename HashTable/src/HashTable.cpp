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
        report ("Index '%d' out of range in HashTable (size: %lu) (Element '%s')\n", 
                table_index, table->number_of_lists, element);
        
        return FAILURE;
        }
    
    List* list = table->list_array + table_index;

    if (!FindElementInList (list, element))
        AddElementToList (list, element);
    
    return SUCCESS;
    }
 
int AddElementToList (List* list, data* element)
    {
    assert(list);
    assert(element);
    
    //report ("Adding to list %p '%.10s'\n", list, element);

    Node* new_node = (Node*) calloc (1, sizeof(new_node[0]));
    assert(new_node);
    
    Node* last_element = list->last_node;
    if (!last_element)
        {
        if (list->number_of_elements != 0)
            report ("In list last element is NULL, but number_of_elements = %lu\n", 
                    list->number_of_elements);   
        
        if (list->first_node)
            report ("In list last element NULL, but first_node is not (%p)\n", 
                    list->first_node);

        list->number_of_elements++;
        list->last_node  = new_node;
        list->first_node = new_node;

        new_node->data_ptr = element;

        return SUCCESS;
        }

    if (last_element->next)
        {   
        report ("Ebat`, %p node supposed to be last node in list '%p', " 
                "but it has not NULL ptrt to next node '%p'\n", 
                last_element, list, last_element->next);
        }

    last_element->next = new_node;
    
    list->number_of_elements++;
    list->last_node = new_node;

    new_node->prev = last_element;
    new_node->data_ptr = element;

    return SUCCESS;
    }

Node* FindElementInList (List* list, data* element)
    {
    assert(list);
    assert(element);
    
    if (list->number_of_elements == 0)
        return NULL;

    Node* current_node = list->first_node;
    
    while (current_node->next)
        {
        if (!strcmp(current_node->data_ptr, element))
                {
               // report ("Found match: '%s' '%s'\n", current_node->data_ptr, element);
                return current_node;
                }

        current_node = current_node->next;
        }
    
    if (!current_node->next && current_node != list->last_node)
        report ("Ebat`, %p node supposed to be last node in list '%p', " 
                "but it doesn't match with last_node ptr in list '%p'\n", 
                current_node, list, list->last_node);
        
    return NULL;
    }

int DeleteList (List* list)
    {
    assert(list);
    
    Node* current_node = list->first_node;
    Node* last_node    = list->last_node;

    for (size_t i = 0; i < list->number_of_elements - 1; i++)
         {
         if (!current_node)
            {
            report ("EBAT!!! NULL node\n");
            return FAILURE;
            }

         Node* temp = current_node->next;
         free (current_node);
         
         current_node = temp;
         }
    
    if (current_node != last_node)
        report ("Error mismatch for last node (%p != %p) in list %p\n",
                current_node, last_node, list);

    free (current_node);
    return SUCCESS;
    }

int DeleteHashTable (HashTable* table)
    {
    assert(table);

    for (size_t i = 0; i < table->number_of_lists; i++)
        {
        if (DeleteList(table->list_array + i) != SUCCESS)
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
