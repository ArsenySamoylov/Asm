#pragma once

#include <stdint.h>

#include "HashTable.hpp"

index_ hash1_always_1 (const data* key);
index_ hash2_ascii    (const data* key);
index_ hash3_strlen   (const data* key);
index_ hash4_hash_sum (const data* key);
index_ hash5_rol      (const data* key);
index_ hash6_ror      (const data* key);

index_ hash7_djb2  (const data* key);



index_ hash8_crc32_not_optimized (const data* key);

           index_ hash8_crc32_intrinsics (const data* key);
    inline index_ hash8_crc32_inline_as  (const data* key);
extern "C" index_ hash8_crc32_assembler  (const data* key);

inline index_ hash8_crc32_inline_as (const data* key)
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
            : 
            : "r"(key), "r"(res) 
      );

    return (index_) res;
    }

