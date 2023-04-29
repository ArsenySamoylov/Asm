#include <assert.h>
#include <stdio.h>

#include "CommonEnums.h"
#include "LogMacroses.h"

#include "Measurements.hpp"
#include "HashFunctions.hpp"

static int MesureHashFunction (HashTable* table, const processed_data* src_data, const hash_func_ptr func, const char* function_name, FILE* file);

#define MEASURE_FUNCTION(func)                                                           \
    do                                                                                   \
    {                                                                                    \
    if (MesureHashFunction (&table, src_data,  func, #func + 1, result_file) != SUCCESS) \
        report ("Couldn't measure '%s' function\n", #func + 1);                          \
    } while(0)

int MakeMeasurments (const processed_data* src_data, const char* path_to_result_file)
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
    
   /*
    MEASURE_FUNCTION(&hash1_always_1);
    MEASURE_FUNCTION(&hash2_ascii);
    MEASURE_FUNCTION(&hash3_strlen);
    MEASURE_FUNCTION(&hash4_hash_sum);
    */

    MEASURE_FUNCTION(&hash5_rol);
    
    //MEASURE_FUNCTION(&hash6_ror);
    
    MEASURE_FUNCTION(&hash7_djb2);
   
    MEASURE_FUNCTION(&hash8_crc32);  
   // MEASURE_FUNCTION(&GetCRCHash);

    return SUCCESS;
    }
 
static int MesureHashFunction (HashTable* table, const processed_data* src_data, const hash_func_ptr func, const char* function_name, FILE* file)
    {
    assert(table);
    assert(src_data);
    assert(func);
    assert(function_name);
    assert(file);
    
    if (SetHashTable (table, src_data, func) != SUCCESS)
        {
        report ("Couldn't set HashTable with function '%s'\n", function_name);
        return  FAILURE;
        }
    
    fprintf(file, "%s", function_name);

    for (size_t i = 0; i < table->number_of_lists; i++)
        {
        List* list = table->list_array + i;
        fprintf(file, " %c%lu", NUMBERS_SEPARATOR, list->number_of_elements);
        }

    fprintf(file, "\n");
    
    DumpHashTable( table, "DUMP.txt");
    DeleteHashTable (table);
    return SUCCESS;
    }

//////////////////////////////////////////////////////////:////////////////////////////////
//######################################################################################//
//////////////////////////////////////////////////////////////////////////////////////////
#include <sys/time.h>

const int NUMBER_OF_ITERATIONS_FOR_MEASURMENTS = 100;
const hash_func_ptr TESTING_HASH_FUNCTION = &hash7_djb2;

static int TestFindTime (const HashTable* table, const processed_data* test_data);

int MeasureFindingTime (const processed_data* src_data, const processed_data* test_data)
    {
    assert(src_data);
    assert(test_data);
    return 0;

    HashTable hash_table {};

    if (SetHashTable (&hash_table, src_data, TESTING_HASH_FUNCTION) != SUCCESS)
        {
        report ("Couldn't set HashTable\n");
        return  FAILURE;
        }
    
    timeval start {};
    timeval end   {};
    double used_time = 0; 

    gettimeofday(&start, nullptr);

    for (int i = 0; i < NUMBER_OF_ITERATIONS_FOR_MEASURMENTS; i++)                                        
       TestFindTime (&hash_table, test_data);
    
    gettimeofday (&end, nullptr);
    
    used_time = (double) ((end.tv_sec - start.tv_sec) * 1000000 + end.tv_usec - start.tv_usec) 
                            / 1000000.0;
   
    report ("'Function time for %d iterations = %lg sec\n", 
            NUMBER_OF_ITERATIONS_FOR_MEASURMENTS, used_time);
    
    return SUCCESS;
    }

#pragma GCC diagnostic ignored "-Wunused-variable"
static int TestFindTime (const HashTable* table, const processed_data* test_data)
    {
    assert(table);
    assert(test_data);

    size_t number_of_elements = test_data->number_of_keys;
    data* test_data_array     = test_data->data_array;

    for (size_t i = 0; i < number_of_elements; i++)
         {
         volatile const data* temp = 
             FindElementInHashTable (table,  test_data_array++, TESTING_HASH_FUNCTION);
       
        /*
        #pragma GCC diagnostic ignored "-Wcast-qual"
        report ("Testing result: '%s%s', was looking for '%s'\n",
                (temp == 0 ? "NOT FOUND" : "FOUND: "), 
                (temp == 0 ? ""          : (char*) temp),
                (char*) (test_data_array - 1));

        #pragma GCC diagnostic warning "-Wcast-qual"
        */
         }

    return SUCCESS;
    }
    

