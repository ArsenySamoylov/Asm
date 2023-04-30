#include <stdio.h> 
#include <string.h>
#include <assert.h>

#include "immintrin.h"

#include "LogMacroses.h"
#include "CommonEnums.h"

#include "List.hpp"

static inline int cmp_vectors (__m256i a, __m256i b);

int CheckList (const List* list)
    {
    if (!list)
        {
        report("Null list\n");
        return FAILURE;
        }

    if (list->number_of_elements == 0 && (list->last_node || list->first_node))
        {
        report("List number_of_elements == %lu, "
               "but last_node(%p) or first_node(%p) is not NULL",
                list->number_of_elements, list->last_node, list->first_node);
        return FAILURE;
        }

     if (list->number_of_elements != 0 && (!list->last_node || !list->first_node))
        {
        report ("In list last(%p) or first(%p) element is NULL, "
                "but number_of_elements = %lu, not 0\n", 
                    list->last_node, list->first_node, list->number_of_elements);   
        return FAILURE;
        }

    return SUCCESS;
    }

int AddElementToList (List* list, const data* element)
    {
    assert(element);
    CHECK_LIST(list, return FAILURE);
    //report ("Adding to list %p '%.10s'\n", list, element);

    Node* new_node = (Node*) calloc (1, sizeof(new_node[0]));
    assert(new_node);
    
    Node* last_element = list->last_node;

       if (!last_element)
        {
        list->number_of_elements++;
        list->last_node  = new_node;
        list->first_node = new_node;

        #pragma GCC diagnostic ignored "-Wcast-qual"
        new_node->data_ptr = (data*) element;
        #pragma GCC diagnostic warning "-Wcast-qual"

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
    
    #pragma GCC diagnostic ignored "-Wcast-qual"
    new_node->data_ptr = (data*) element;
    #pragma GCC diagnostic warning "-Wcast-qual"

    return SUCCESS;
    }

Node* FindElementInList (const List* list, const data* element)
    {
    assert(element); 
    CHECK_LIST(list, return NULL);
    
    if (list->number_of_elements == 0)
        return NULL;
    
    //report ("Element: %p\n", element);
    __m256i element_data = _mm256_loadu_si256 (element);
    Node* current_node = list->first_node;
    
    while (current_node)
        {
        __m256i current_node_data = _mm256_loadu_si256 (current_node->data_ptr); 
        
        if (cmp_vectors(current_node_data, element_data))
                {
                //report ("Found match: '%s' '%s'\n", current_node->data_ptr, element);
                return current_node;
                }

        current_node = current_node->next;
        }
    
    return NULL;
    }

Node* FindElementInList_not_optimized (const List* list, const data* element)
    {
    assert(element); 
    CHECK_LIST(list, return NULL);
    
    if (list->number_of_elements == 0)
        return NULL;

    Node* current_node = list->first_node;
     
    while (current_node)
        {
        if (!strcmp( (const char*) current_node->data_ptr, (const char*) element))
                {
               // report ("Found match: '%s' '%s'\n", current_node->data_ptr, element);
                return current_node;
                }

        current_node = current_node->next;
        }
    
    return NULL;
    }

#pragma GCC diagnostic ignored "-Wcast-qual"
#pragma GCC diagnostic warning "-Wcast-qual"


int ClearList (List* list)
    { 
    CHECK_LIST(list, return FAILURE);

    Node* current_node = list->first_node;
    Node* last_node    = list->last_node;

    for (size_t i = 0; i + 1 < list->number_of_elements; i++)
         {
         if (!current_node)
            {
            report ("EBAT!!! NULL node, "
                    "(number_of_elements in list: %lu, element number: %lu\n",
                                            list->number_of_elements,  i);
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

    list->number_of_elements = 0;
    list->first_node = NULL;
    list->last_node  = NULL;

    return SUCCESS;
    }

static inline int cmp_vectors (__m256i a, __m256i b)
    {
    __m256i pcmp = _mm256_cmpeq_epi8(a, b); 
    unsigned bitmask = (unsigned) _mm256_movemask_epi8(pcmp);
    
    return (bitmask == 0xffffffffU);
    }


