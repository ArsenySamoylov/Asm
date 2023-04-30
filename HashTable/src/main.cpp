#include <stdio.h>
#include <assert.h>

#include "CommonEnums.h"
#include "LogMacroses.h"

#include "HashTable.hpp"
#include "ProcessData.hpp"
#include "HashFunctions.hpp"
#include "Tests.hpp"

void help();

int main(const int argc, const char* argv[])
    {
    $log(RELEASE)

    if (argc < 2 || argc > 3)
        {
        help ();
        return FAILURE;
        }

    if (argc == 2)
        {
        const char* path_to_src_data = argv[1];
        
        report ("Startig Hash functions distribution testing\n");
        return TestHashFunctionsDistribution (path_to_src_data, "resources/temp.csv");
        }

    if (argc == 3)
        {
        const char* path_to_src_data = argv[1];
        const char* path_to_test_data = argv[2];
        
        report ("Starting HashTable perfomance testing\n");
        return TestHashTablePerfomance (path_to_src_data, path_to_test_data);
        }
    
    report ("Error, you shouldn't reach here =/\n");
    return FAILURE;
    }

void help()
    {
    report ("This app specializes in testing HashTable model.\n"
            
            "To test hash functions ditribution pass one argument: "
            "file with text, to set HashTable.\n"
            
            "To test HashTable perfomance pass two arguments: "
            "files with text to set HasTAble and text with data for searching.\n");

    return;
    }
