#pragma once

#include "TypeDef.hpp"
#include "HashTable.hpp"
#include "HashFunctions.hpp"

const char NUMBERS_SEPARATOR = ',';


int TestHashFunctionsDistribution (const char* path_to_src_data, 
                                   const char* path_to_file_where_store_results);

int TestHashTablePerfomance       (const char* path_to_src_data, const char* path_to_test_data);

