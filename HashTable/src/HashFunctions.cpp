#include <string.h>
#include <assert.h>

#include "LogMacroses.h"

#include "HashFunctions.hpp"

static inline index_t rol (index_t val);
static inline index_t ror (index_t val);

#pragma GCC diagnostic ignored "-Wunused-parameter"
index_t hash1_always_1 (const data* key)
    {
    assert(key);
    return 1;
    }
#pragma GCC diagnostic warning "-Wunused-parameter"

index_t hash2_ascii (const data* key)
    {
    assert(key);
    return (index_t) *( (const char *) key);
    }

index_t hash3_strlen   (const data* key)
    {
    assert(key);
    return assert(key), (index_t) strlen( (const char*) key);
    }

index_t hash4_hash_sum (const data* key)
    {
    assert(key);

    const char* temp = (const char*) key;
    index_t hash_sum = (index_t) *temp;

    while (*temp)
        hash_sum += (index_t) *temp++;

    return hash_sum;
    }

index_t hash5_rol (const data* key)
    {
    assert(key);
    
    index_t hash_value = 0;
    const char* temp = (const char*) key;

    while (*temp)
        hash_value = rol (hash_value) ^ (index_t) *(temp++);

    return hash_value;
    }

index_t hash6_ror (const data* key)
    {
    assert(key);
    
    index_t hash_value = 0;
    const char* temp = (const char*) key;

    while (*temp)
        hash_value = ror (hash_value) ^ (index_t) *(temp++);

    return hash_value;
    }

#pragma GCC diagnostic ignored "-Wparentheses"
index_t hash7_gnu (const data* key)
    {
    assert(key);

    index_t hash = 5381;
    char c = 0;
    
    const char* temp = (const char*) key;

    while (c = *(temp++))
        hash = ((hash << 5) + hash) + (index_t) c;

    return hash;
    }

index_t  hash8_crc32_not_optimized (const data* key)
  {
    if (!key) return 0;

    const index_t polynomial = 0x04C11DB7;
    const index_t polOldBit  = 1 << 26;

    index_t hash = 0;
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

index_t hash8_crc32_inline_as (const data* key)
    {
    int64_t res = 0;
    
    asm (
        R"(
         .intel_syntax noprefix
          cmp %1, 0x0
          je 1f
          
          xor %0, %0

          crc32 %0, qword ptr [%1 + 0x00 ]
          crc32 %0, qword ptr [%1 + 0x08 ]
          crc32 %0, qword ptr [%1 + 0x10 ]
          crc32 %0, qword ptr [%1 + 0x18 ]
        1:
       
        .att_syntax prefix
        )"
            : "=r"(res)
            : "r"(key), "r"(res) 
      );

    return (index_t) res;
    } 

#pragma GCC diagnostic ignored "-Wconversion"
index_t hash8_crc32_intrinsics (const data* key)
    {
    __m256i element = _mm256_load_si256 (key);
    
    index_t hash = _mm_crc32_u32(0, _mm256_extract_epi64 (element, 0));
    
    hash = _mm_crc32_u32(hash, _mm256_extract_epi64 (element, 1));
    hash = _mm_crc32_u32(hash, _mm256_extract_epi64 (element, 2));
    hash = _mm_crc32_u32(hash, _mm256_extract_epi64 (element, 3));
    
    return hash;
    }

static inline index_t rol (index_t val)
    {
    return ((val << 1) | (val >> 31));
    }

static inline index_t ror (index_t val)
    {
    return ((val >> 1) | (val << 31));
    }