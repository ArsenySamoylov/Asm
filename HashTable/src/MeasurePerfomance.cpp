#include <sys/time.h>
#include <assert.h>
#include <stdio.h>

#include "LinuxColors.h"
#include "CommonEnums.h"
#include "LogMacroses.h"

#include "Tests.hpp"
#include "ProcessData.hpp"

#define TO_STRING(name) #name

const int           NUMBER_OF_ITERATIONS_FOR_MEASURMENTS = 10000;
const hash_func_ptr TESTING_HASH_FUNCTION                = NULL;
const char          TESTING_HASH_FUNCTION_NAME[]         = TO_STRING(NULL);

static int TestFindTime (const HashTable* table, const processed_data* test_data);

static int MeasureFindingTime (const processed_data* src_data, 
                               const processed_data* test_data); 

int TestHashTablePerfomance (const char* path_to_src_data, const char* path_to_test_data)
    {
    assert(path_to_src_data); 
    assert(path_to_test_data);

    processed_data ready_data {};
    processed_data test_data  {};

    report ("Getting hash_table data\n");
    if (ProcessedDataCtor (&ready_data, path_to_src_data) != SUCCESS)
        {   
        report ("Couldn't get data from '%s'\n", path_to_src_data);
        return FAILURE;
        }

    report ("Getting testing data\n");
    if (ProcessedDataCtor (&test_data, path_to_test_data) != SUCCESS)
        {
        report ("Couldn't get data from '%s'\n", path_to_test_data);
        goto FAILURE_EXIT;
        }

    report ("Initiate FindingTime test =)\n");
    MeasureFindingTime (&ready_data, &test_data);
        
    ProcessedDataDtor (&ready_data);
    ProcessedDataDtor (&test_data);

    return SUCCESS;

FAILURE_EXIT:

    ProcessedDataDtor(&ready_data);
    return FAILURE;
    }

#pragma GCC diagnostic ignored "-Wlarger-than="
int MeasureFindingTime (const processed_data* src_data, const processed_data* test_data)
    {
    assert(src_data);
    assert(test_data);

    HashTable hash_table {};

    report ("Setting hash table with function: " yellowcolor "'%s'\n" resetconsole, TESTING_HASH_FUNCTION_NAME);

    if (SetHashTable_crc32 (&hash_table, src_data) != SUCCESS)
        {
        report ("Couldn't set HashTable\n");
        return  FAILURE;
        }
    report ("Setting finished\n");

    report ("Starting count down!\n");
    timeval start {};
    timeval end   {};
    double used_time = 0; 

    gettimeofday(&start, nullptr);

    for (int i = 0; i < NUMBER_OF_ITERATIONS_FOR_MEASURMENTS; i++)                                        
       TestFindTime (&hash_table, test_data);
    
    gettimeofday (&end, nullptr);
    
    used_time = (double) ((end.tv_sec - start.tv_sec) * 1000000 + end.tv_usec - start.tv_usec) 
                            / 1000000.0;
   
    report ("\tFunction time for " bluecolor "%d " resetconsole "iterations = " yellowcolor "%lg sec\n" resetconsole, 
            NUMBER_OF_ITERATIONS_FOR_MEASURMENTS, used_time);
    
    ResetHashTable (&hash_table);
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
            FindElementInHashTable_crc32_optimized (table,  test_data_array++);

        // if (!temp)
        //     {
        //     report ("Pizdec!\n");

        //     #pragma GCC diagnostic ignored "-Wcast-qual"
        //     report ("Testing result: '%s%s', was looking for '%s'\n",
        //             (temp == 0 ? "NOT FOUND" : "FOUND: "), 
        //             (temp == 0 ? ""          : (char*) temp),
        //              (char*) (test_data_array - 1));

        //     #pragma GCC diagnostic warning "-Wcast-qual"

        //     report  ("(%lu/%lu)\n", i, number_of_elements);
        //     exit(FAILURE);
        //     }

         }

    return SUCCESS;
    }
    

