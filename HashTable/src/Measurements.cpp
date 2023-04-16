#include <assert.h>
#include <stdio.h>

#include "Measurements.hpp"
#include "HashFunctions.hpp"
#include "CommonEnums.h"

#include "LogMacroses.h"

static int MesureHashFunction (HashTable* table, processed_data* src_data, hash_func_ptr func, const char* function_name, FILE* file);

#define MEASURE_FUNCTION(func)                                                      \
    do                                                                              \
    {                                                                               \
    if (MesureHashFunction (&table, src_data,  func, #func + 1, result_file) != SUCCESS) \
        printf("Couldn't measure '%s' function\n", #func);                          \
    } while(0)

int MakeMeasurments (processed_data* src_data, const char* path_to_result_file)
    {
    assert(src_data);
    assert(path_to_result_file);

    FILE* result_file = fopen (path_to_result_file, "wb");
    if (!result_file)
        {
        report ("Couldn't open file '%s'\n", path_to_result_file);
        return FAILURE;
        }
    
    HashTable table{};
    
    MEASURE_FUNCTION(&hash1_always_1);
    MEASURE_FUNCTION(&hash2_ascii);
    
    return SUCCESS;
    }
 
static int MesureHashFunction (HashTable* table, processed_data* src_data, hash_func_ptr func, const char* function_name, FILE* file)
    {
    assert(table);
    assert(src_data);
    assert(func);
    assert(function_name);
    assert(file);

    if (SetHashTable (table, src_data, func) != SUCCESS)
        {
        report ("Couldn't set HashTable with function '%s']\n", function_name);
        return  FAILURE;
        }
    
    fprintf(file, "%s ", function_name);

    for (size_t i = 0; i < table->number_of_lists; i++)
        {
        List* list = table->list_array + i;
        fprintf(file, " ,%lu%c", list->number_of_elements, NUMBERS_SEPARATOR);
        }

    fprintf(file, "\n");
    
    DeleteHashTable (table);
    return SUCCESS;
    }

