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


inline index_ hash8_crc32 (const data* key);
inline index_ hash8_crc32 (const data* key)
    {
    int64_t res = 0;
    
    asm (
        R"(
         .intel_syntax noprefix
          cmp %1, 0x0
          je .end
          
          xor %0, %0

          crc32 %0, qword ptr [%1 + 0x00 ]
          crc32 %0, qword ptr [%1 + 0x08 ]
          crc32 %0, qword ptr [%1 + 0x10 ]
          crc32 %0, qword ptr [%1 + 0x18 ]
        .end:
       
        .att_syntax prefix
        )"
            : "=r"(res)
            : "r"(key), "r"(res) 
      );

    return (index_) res;
    }


index_ GetCRCHash(const data* key);
