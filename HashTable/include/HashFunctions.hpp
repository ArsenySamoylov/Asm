#pragma once

#include "HashTable.hpp"

index_ hash1_always_1 (const data* key);
index_ hash2_ascii    (const data* key);
index_ hash3_strlen   (const data* key);
index_ hash4_hash_sum (const data* key);
index_ hash5_rol      (const data* key);
index_ hash6_ror      (const data* key);
index_ hash7_djb2   (const data* key);
