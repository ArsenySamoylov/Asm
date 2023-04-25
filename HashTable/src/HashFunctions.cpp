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

index_ hash2_ascii (const data* key)
    {
    assert(key);
    return (index_) *( (const char *) key);
    }

index_ hash3_strlen   (const data* key)
    {
    assert(key);
    return assert(key), (index_) strlen( (const char*) key);
    }

index_ hash4_hash_sum (const data* key)
    {
    assert(key);

    const char* temp = (const char*) key;
    index_ hash_sum = (index_) *temp;

    for (size_t i = strlen(temp) - 1; i > 0; i--)
        hash_sum += (index_) *(temp + i);

    return hash_sum;
    }

index_ hash5_rol (const data* key)
    {
    assert(key);
    
    index_ hash_value = 0;
    const char* temp = (const char*) key;

    while (*temp)
        hash_value = rol (hash_value, 1) ^ (index_) *(temp++);

    return hash_value;
    }

index_ hash6_ror (const data* key)
    {
    assert(key);
    
    index_ hash_value = 0;
    const char* temp = (const char*) key;

    while (*temp)
        hash_value = ror (hash_value, 1) ^ (index_) *(temp++);

    return hash_value;
    }

#pragma GCC diagnostic ignored "-Wparentheses"
index_ hash7_djb2 (const data* key)
    {
    assert(key);

    index_ hash = 5381;
    char c = 0;
    
    const char* temp = (const char*) key;

    while (c = *(temp++))
        hash = ((hash << 5) + hash) + (index_) c;

    return hash;
    }

static inline index_ rol (index_ val, unsigned shift)
    {
    return ((val << shift) | (val >> (NUMBER_OF_BITS_IN_INDEX - shift)));
    }

static inline index_ ror (index_ val, unsigned shift)
    {
    return ((val >> shift) | (val << (NUMBER_OF_BITS_IN_INDEX - shift)));
    }

index_ GetCRCHash(const data* key)
  {
    if (!key) return 0;

    const index_ polynomial = 0x04C11DB7;
    const index_ polOldBit  = 1 << 26;

    index_ hash = 0;
    const char* reference = (const char*) key;

    while (*reference)
      {
        for (int i = 7; i >= 0; i--)
          {
            hash = (hash << 1) + ((*reference >> i) & 1);
            if (hash & polOldBit)
              hash ^= polynomial;
          }
        ++reference;
      }

    return hash;
  }

