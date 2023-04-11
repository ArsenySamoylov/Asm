#include "LogMacrose.h"

#include "Hashfunctions.cpp"

index hash1_always_1 (const data* key)
    {
    assert(key);
    return 1;
    }

index hash2_ascii    (const data* key)
    {
    assert(key);
    return *key;
    }

index hash3_strlen   (const data* key)
    {
    assert(key);
    return strlen(key);
    }

index hash4_hash_sum (const data* key)
    {
    index hash_sum = 0;

    for (int i = strlen(key) - 1; i >= 0; i--)
        hash_sum += *(key + i);

    return hash_sum;
    }

index hash5_rol      (const data* key);
index hash6_ror      (const data* key);
index hash7_custom   (const data* key);
