#pragma once
 
#include <immintrin.h>

typedef char raw_data;
typedef __m256i data;

typedef unsigned index_;

typedef index_ (*hash_func_ptr) (const data*);

