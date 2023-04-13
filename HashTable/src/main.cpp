#include <stdio.h>
  
#include "CommonEnums.h"
#include "LogMacroses.h"
#include "CommonEnums.h"

#include "HashTable.hpp"
#include "ProcessData.hpp"
#include "HashFunctions.hpp"
#include "Measure_time.hpp"

void help();

int main(int argc, const char* argv[])
    {
    $log(RELEASE)

    if (argc < 2)
        {
        help ();
        return FAILURE;
        }
    
    const char* path_to_src_data = argv[1];

    processed_data* ready_data = GetProcessedData (path_to_src_data);
    if (!ready_data)
        {
        report ("Couldn't get data from '%s'\n", path_to_src_data);
        return FAILURE;
        }

    HashTable table{};
    
    DumpHashTable (&table, "logs/hash_table_dump.txt");
    MakeMeasurments (&table, ready_data, "resources/temp.csv");  
//    DeleteHashTable (&table);
    DeleteProcessedData (ready_data);

    return SUCCESS;
/*
FAILURE_EXIT:
    DeleteHashTable(&table);
    DeleteProcessedData(ready_data);
*/
    return FAILURE;
    }


void help()
    {
    report ("Path file to set HashTable\n");
    return;
    }
