#pragma once

#include "TypeDef.hpp"
#include "HashTable.hpp"

const char NUMBERS_SEPARATOR = ',';
int MakeMeasurments (HashTable* table, processed_data* src_data, const char* path_to_result_file);

