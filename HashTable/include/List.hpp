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
Node* FindElementInList (const List* list, const data* element);

int DeleteList (List* list);
int CheckList  (const List* list);

#define CHECK_LIST(list, what_to_do_on_failure)              \
    if (CheckList(list) != SUCCESS)                          \
        {                                                    \
        report("CheckList failed on %p list\n", list);       \
        what_to_do_on_failure ;                             \
        }
