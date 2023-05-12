#pragma once

#include "TypeDef.hpp"

const int MAX_WORD_LENGTH = sizeof(data) - 1;

const int ALIGMENT  = 256;
const int START_NUMBER_OF_ELEMENTS_IN_BUFFER = ALIGMENT;
const int BUFFER_GROWTH_RATE  = 2;

struct processed_data
    {
    data* data_array;
    size_t number_of_keys;
    };

int ProcessData (processed_data* proc_data, raw_data* raw_src_data);

int ProcessedDataCtor (processed_data* proc_data, const char* path_to_src_data);
int ProcessedDataDtor (processed_data* proc_data);
