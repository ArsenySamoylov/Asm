#pragma once
 
#include <immintrin.h>

typedef char raw_data;
typedef __m256i data;

typedef unsigned index_t;

typedef index_t (*hash_func_ptr) (const data*);

