#pragma once

#include <stdint.h>

#include "HashTable.hpp"

index_t hash1_always_1 (const data* key);
index_t hash2_ascii    (const data* key);
index_t hash3_strlen   (const data* key);
index_t hash4_hash_sum (const data* key);
index_t hash5_rol      (const data* key);
index_t hash6_ror      (const data* key);

index_t hash7_gnu  (const data* key);

index_t hash8_crc32_not_optimized (const data* key);

extern "C" inline index_t hash8_crc32_assembler  (const data* key);
           index_t hash8_crc32_intrinsics (const data* key);
           index_t hash8_crc32_inline_as  (const data* key);

    inline index_t hash8_crc32_intrinsics_inline (const data* key);
    inline index_t hash8_crc32_inline_as_inline  (const data* key);


#pragma GCC diagnostic ignored "-Wconversion"

inline index_t hash8_crc32_intrinsics_inline (const data* key)
    {
    __m256i element = _mm256_load_si256 (key);
    
    index_t hash = _mm_crc32_u32(0, _mm256_extract_epi64 (element, 0));
    
    hash = _mm_crc32_u32(hash, _mm256_extract_epi64 (element, 1));
    hash = _mm_crc32_u32(hash, _mm256_extract_epi64 (element, 2));
    hash = _mm_crc32_u32(hash, _mm256_extract_epi64 (element, 3));
    
    return hash;
    }
#pragma GCC diagnostic warning "-Wconversion"

inline index_t hash8_crc32_inline_as_inline (const data* key)
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