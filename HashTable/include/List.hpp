#pragma once

#include "TypeDef.hpp"

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

int    AddElementToList (List* list, const data* element);

Node* FindElementInList_optimized     (const List* list, const data* element);
Node* FindElementInList_not_optimized (const List* list, const data* element);

int ClearList (List* list);
int CheckList  (const List* list);

#ifndef NDEBUG
    #define CHECK_LIST(list, what_to_do_on_failure)              \
        if (CheckList(list) != SUCCESS)                          \
            {                                                    \
            report("CheckList failed on %p list\n", list);       \
            what_to_do_on_failure ;                             \
            }


#else
    #define CHECK_LIST(list, what_to_do_on_failure) 
#endif
