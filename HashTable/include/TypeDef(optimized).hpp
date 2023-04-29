#pragma once
 
#include <immintrin.h>

typedef char raw_data;
typedef __m256i data;

typedef unsigned index_;

typedef index_ (*hash_func_ptr) (const data*);

struct processed_data
    {
    data* data_array;
    size_t number_of_keys;
    };
