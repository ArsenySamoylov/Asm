#include <string.h>
#include <assert.h>

#include "LogMacroses.h"

#include "HashFunctions.hpp"

static inline index_ rol (index_ val, unsigned shift);
static inline index_ ror (index_ val, unsigned shift);

const int NUMBER_OF_BITS_IN_INDEX = sizeof(index_) * 8;

index_ hash1_always_1 (const data* key)
    {
    assert(key);
    return 1;
    }

index_ hash2_ascii    (const data* key)
    {
    assert(key);
    return (index_) *key;
    }

index_ hash3_strlen   (const data* key)
    {
    assert(key);
    return assert(key), (index_) strlen(key);
    }

index_ hash4_hash_sum (const data* key)
    {
    assert(key);
    index_ hash_sum = (index_) *key;

    for (size_t i = strlen(key) - 1; i > 0; i--)
        hash_sum += (index_) *(key + i);

    return hash_sum;
    }

index_ hash5_rol (const data* key)
    {
    assert(key);
    
    index_ hash_value = 0;

    while (*key)
        hash_value = rol (hash_value, 1) ^ (index_) *(key++);

    return hash_value;
    }

index_ hash6_ror (const data* key)
    {
    assert(key);
    
    index_ hash_value = 0;

    while (*key)
        hash_value = ror (hash_value, 1) ^ (index_) *(key++);

    return hash_value;
    }

//index_ hash7_custom   (const data* key);
    



static inline index_ rol (index_ val, unsigned shift)
    {
    return ((val << shift) | (val >> (NUMBER_OF_BITS_IN_INDEX - shift)));
    }

static inline index_ ror (index_ val, unsigned shift)
    {
    return ((val >> shift) | (val << (NUMBER_OF_BITS_IN_INDEX - shift)));
    }

