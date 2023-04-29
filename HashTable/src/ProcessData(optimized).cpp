#include <stdio.h>

#include <assert.h>
#include "LogMacroses.h"

#include "CommonEnums.h"
#include "ProcessData.hpp"
#include "my_buffer.h"

struct DataBuffer
    {
    data* data_array;
    
    size_t current_number_of_elements;
    size_t maximum_number_of_elements;
    };

static int AddWordToDataBuffer (DataBuffer* buffer, raw_data* src_ptr);
static int ResizeBuffer        (DataBuffer* buffer);

static raw_data* SkipUnnecessarySymbols (raw_data* data_ptr);

int ProcessData (processed_data* proc_data, raw_data* raw_src_data)
    {
    $log(RELEASE)
    assert(proc_data);
    assert(raw_src_data);
    
    DataBuffer buffer {
                        .data_array                 = NULL,
                        .current_number_of_elements = 0,
                        .maximum_number_of_elements = START_NUMBER_OF_ELEMENTS_IN_BUFFER,
                      };
    
    buffer.data_array = (data*) calloc (START_NUMBER_OF_ELEMENTS_IN_BUFFER, sizeof(data));
    assert (buffer.data_array);

    while (*raw_src_data != '\0')
        {
        int word_lenght  = AddWordToDataBuffer    (&buffer, raw_src_data);
            raw_src_data = SkipUnnecessarySymbols (raw_src_data + word_lenght);
        }
   
    if (buffer.current_number_of_elements < buffer.maximum_number_of_elements)
        ResizeBuffer(&buffer);
    
    proc_data->data_array     = buffer.data_array;
    proc_data->number_of_keys = buffer.current_number_of_elements;
    
    report ("Data array: %p\n", proc_data->data_array);
    return SUCCESS;
    }

static int AddWordToDataBuffer (DataBuffer* buffer, raw_data* src_raw_data_ptr)
    {
    $log(RELEASE)
    assert(buffer);
    assert(src_raw_data_ptr);

    if (buffer->current_number_of_elements >= buffer->maximum_number_of_elements)
            ResizeBuffer(buffer);

    int word_length = 0;
    sscanf(src_raw_data_ptr, "%[a-zA-Z]%n", 
           (char*) (buffer->data_array + buffer->current_number_of_elements), &word_length);
    
    if (word_length > MAX_WORD_LENGTH)
        report ("Warning: '%s' is longer than MAX_WORD_LENGHT (%d)\n", src_raw_data_ptr, MAX_WORD_LENGTH);

    buffer->current_number_of_elements++;
    return word_length;
    }

static int ResizeBuffer (DataBuffer* buffer)
    {
    $log(RELEASE)
    assert (buffer);
    
    size_t new_size = 0;

    if (buffer->current_number_of_elements >= buffer->maximum_number_of_elements)
        {
        buffer->maximum_number_of_elements *= BUFFER_GROWTH_RATE;
        new_size = buffer->maximum_number_of_elements;
        }
    else
        {
        buffer->maximum_number_of_elements = buffer->current_number_of_elements;
        new_size = buffer->current_number_of_elements;
        }

    data* temp = (data*) realloc (buffer->data_array, 
                                  new_size * sizeof(temp[0]));
    if (!temp)
        {
        report ("Pizdec\n");
        
        free (buffer->data_array);
        abort();
        }

    buffer->data_array = temp;
    return SUCCESS;
    }

static raw_data* SkipUnnecessarySymbols (raw_data* data_ptr)
    {
    $log(RELEASE)
    assert(data_ptr);

    //int temp = sscanf (data_ptr, " %*[\n\t\b^a-zA-Z]");
    while (*data_ptr && !isalpha(*data_ptr))
        data_ptr++;

    return data_ptr;
    }

int ProcessedDataDtor (processed_data* proc_data)
    {
    assert(proc_data);

    if  (proc_data->data_array)
        free (proc_data->data_array);
    else
        report ("Warning: NULL data array in proc_data '%p'\n", proc_data);

    return SUCCESS;
    }

int ProcessedDataCtor (processed_data* proc_data, const char* path_to_src_data)
    {
    assert(proc_data);
    assert(path_to_src_data);
    
    raw_data* raw_src_data = NULL;

    if (!(raw_src_data = GetSrcFile (path_to_src_data)))
        {
        report ("Couldn't read source data from '%s'\n", path_to_src_data);
        return FAILURE;
        }
    
    if (ProcessData(proc_data, raw_src_data) != SUCCESS)
        {
        report ("Couldn't process data from file '%s'\n", path_to_src_data);
        
        free(raw_src_data);
        return FAILURE;
        }

    free (raw_src_data);

    return SUCCESS;
    }
