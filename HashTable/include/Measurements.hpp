#pragma once

#include "TypeDef.hpp"
#include "HashTable.hpp"

const char NUMBERS_SEPARATOR = ',';

int MakeMeasurments (const processed_data* src_data, const char* path_to_result_file);
int MeasureFindingTime (const processed_data* src_data, const processed_data* test_data); 
