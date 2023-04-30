#include <sys/time.h>
#include <assert.h>
#include <stdio.h>

#include "CommonEnums.h"
#include "LogMacroses.h"

#include "Tests.hpp"
#include "ProcessData.hpp"

const int NUMBER_OF_ITERATIONS_FOR_MEASURMENTS = 1000;

int CompareInlineAssebler (const char* path_to_src_data)
    {
    assert(path_to_src_data); 

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

