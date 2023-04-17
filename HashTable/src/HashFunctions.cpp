#include <string.h>
#include <assert.h>

#include "LogMacroses.h"

#include "HashFunctions.hpp"

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
    sin(key);
    return assert(key), (index_) strlen(key);
    }

index_ hash4_hash_sum (const data* key)
    {
    assert(key);
    index_ hash_sum = *key;

    for (size_t i = strlen(key) - 1; i > 0; i--)
        hash_sum += *(key + i);

    return hash_sum;
    }

index_ hash5_rol (const data* key)
    {
    assert(key);

//index_ hash6_ror      (const data* key);
//index_ hash7_custom   (const data* key);
