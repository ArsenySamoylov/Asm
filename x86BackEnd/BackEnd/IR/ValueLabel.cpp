#include <assert.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>

#include "ValueTable.h"

#include "CommonEnums.h"
#include "LogMacroses.h"

#include "ArrayTemplate.h"
 
ARR_CTOR    (ValueNameTable, ValueLabel);
ARR_DTOR    (ValueNameTable, ValueLabel);
ARR_RESIZE  (ValueNameTable, ValueLabel);

#undef ARR_CTOR
#undef ARR_DTOR
#undef RESIZE
#undef ADD_TO_ARR
#undef COPY_TO_ARR
#undef FIND_IN_ARR

ValueLabel* FindValueLabel (ValueNameTable* table, int name_id)
    {
    assert(table);
    assert(name_id);

    for (size_t i = 0; i < table->size; i++)
        {
        ValueLabel* label = table->arr[i];

        if (label->name_id == name_id)
            return label;
        }

    return NULL;
    }

ValueLabel* CopyValueLabel (ValueNameTable* arr, ValueLabel* val) 
    {                                                       
    assert(arr);                                            
    assert(val);                                            
                                                            
    if (arr->size >= arr->capacity)                         
        ValueNameTableResize (arr);                          
                                                            
    ValueLabel* temp = (ValueLabel*) calloc (1, sizeof(temp[0]));  
    assert(temp);                                           
                                                            
    memcpy (temp, val, sizeof(val[0]));                     
                                                            
    arr->arr[arr->size++] = temp;                           
    return temp;                                            
    }