#include <stdio.h>

#include <assert.h>
#include "Logger.h"

#include "CommonEnums.h"
#include "HashTable.hpp"

int SetHashTable (HashTable* table, const processed_data* src_data, hash_func_ptr hash_function)
    {
    assert(table);
    assert(src_data);
    assert(hash_function);
    
    return SUCCESS;
    }

