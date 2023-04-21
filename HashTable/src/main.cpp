#include <stdio.h>
  
#include "CommonEnums.h"
#include "LogMacroses.h"
#include "CommonEnums.h"

#include "HashTable.hpp"
#include "ProcessData.hpp"
#include "HashFunctions.hpp"
#include "Measurements.hpp"

void help();

int main(int argc, const char* argv[])
    {
    $log(RELEASE)

    if (argc < 3)
        {
        help ();
        return FAILURE;
        }
    
    const char* path_to_src_data = argv[1];
    processed_data ready_data {};

    if (ProcessedDataCtor (&ready_data, path_to_src_data) != SUCCESS)
        {
        report ("Couldn't get data from '%s'\n", path_to_src_data);
        return FAILURE;
        }

    MakeMeasurments (&ready_data, "resources/temp.csv");  
    
    const char* path_to_test_data = argv[2];
    processed_data test_data {};

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


void help()
    {
    report ("Path file to set HashTable\n");
    return;
    }
