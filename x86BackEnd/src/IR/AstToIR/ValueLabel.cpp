#include <assert.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>

#include "ValueTable.h"

#include "CommonEnums.h"
#include "LogMacroses.h"

Value* FindValue (ValueNameTable& table, int name_id)
    {
    for (size_t i = 0; i < table.size(); i++)
        {
        ValueLabel label = table[i];

        if (label.name_id == name_id)
            return label.val;
        }

    return NULL;
    }

void CopyValueLabel (ValueNameTable& arr, ValueLabel val) 
    {                                                       
    arr.push_back (val);
    }