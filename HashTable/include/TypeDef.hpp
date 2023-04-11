#pragma once
 
typedef char raw_data;
typedef char data;

typedef int index_;

typedef index_ (*hash_func_ptr) (const data*);

struct processed_data
    {
    data* data_array;
    int number_of_keys;
    };
