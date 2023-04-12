#include <stdio.h>
  
#include "my_buffer.h"
#include "CommonEnums.h"
#include "LogMacroses.h"

#include "HashTable.hpp"
#include "ProcessData.hpp"
#include "HashFunctions.hpp"

void help();

int main(int argc, const char* argv[])
    {
    $log(RELEASE)

    if (argc < 2)
        {
        help ();
        return FAILURE;
        }

    HashTable table{};
    
    const char* path_to_src_data = argv[1];
    
    raw_data*       raw_src_data = NULL;
    processed_data* ready_data   = NULL; 

    if (!(raw_src_data = GetSrcFile (path_to_src_data)))
        {
        report ("Couldn't read source data from '%s'\n", path_to_src_data);
        return FAILURE;
        }
    
    if (!(ready_data = ProcessData (raw_src_data)))
        {
        report ("Couldn't process data from file '%s'\n", path_to_src_data);
        goto FAILURE_EXIT;
        }

    free (raw_src_data);
    raw_src_data = NULL;

    if (SetHashTable (&table, ready_data, &hash2_ascii) != SUCCESS)
        {
        report ("Couldn't set HashTable from file '%s']\n", path_to_src_data);
        goto FAILURE_EXIT;
        }
    
    DumpHashTable (&table, "logs/hash_table_dump.txt");
    
    DeleteHashTable (&table);
    free (ready_data->data_array);
    free (ready_data);

    return SUCCESS;

FAILURE_EXIT:
    if (raw_src_data)
        free (raw_src_data);
    
    if (ready_data)
        {
        if (!ready_data->data_array)
            free(data_array);

        free (ready_data->data_array);
        }

    return FAILURE;
    }

void help()
    {
    report ("Path file to set HashTable\n");
    return;
    }
