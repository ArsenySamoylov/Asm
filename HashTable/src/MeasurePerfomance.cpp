#include <sys/time.h>
#include <assert.h>
#include <stdio.h>

#include "CommonEnums.h"
#include "LogMacroses.h"

#include "Tests.hpp"
#include "ProcessData.hpp"

const int NUMBER_OF_ITERATIONS_FOR_MEASURMENTS = 1000;
const hash_func_ptr TESTING_HASH_FUNCTION = hash8_crc32_not_optimized;

static int TestFindTime (const HashTable* table, const processed_data* test_data);

static int MeasureFindingTime (const processed_data* src_data, 
                               const processed_data* test_data); 

int TestHashTablePerfomance (const char* path_to_src_data, const char* path_to_test_data)
    {
    assert(path_to_src_data); 
    assert(path_to_test_data);

    processed_data ready_data {};
    processed_data test_data  {};

    if (ProcessedDataCtor (&ready_data, path_to_src_data) != SUCCESS)
        {
        report ("Couldn't get data from '%s'\n", path_to_src_data);
        return FAILURE;
        }

    if (ProcessedDataCtor (&test_data, path_to_test_data) != SUCCESS)
        {
        report ("Couldn't get data from '%s'\n", path_to_test_data);
        goto FAILURE_EXIT;
        }

    MeasureFindingTime (&ready_data, &test_data);
        
    ProcessedDataDtor (&ready_data);
    ProcessedDataDtor (&test_data);

    return SUCCESS;

FAILURE_EXIT:

    ProcessedDataDtor(&ready_data);
    return FAILURE;
    }

int MeasureFindingTime (const processed_data* src_data, const processed_data* test_data)
    {
    assert(src_data);
    assert(test_data);

    HashTable hash_table {};

    if (SetHashTable (&hash_table, src_data) != SUCCESS)
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
             FindElementInHashTable (table,  test_data_array++);
       
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
    

