#include <stdio.h>

#include <assert.h>
#include "LogMacroses.h"

#include "CommonEnums.h"
#include "ProcessData.hpp"
#include "my_buffer.h"

struct DataBuffer
    {
    data* data_ptr;
    
    size_t current_temp_buf_size;
    size_t tem_buf_size;
    };


static int AddWordToDataBuffer (DataBuffer* buffer, raw_data* src_ptr);
static int ResizeBuffer        (DataBuffer* buffer);

static raw_data* SkipUnnecessarySymbols (raw_data* data_ptr);

processed_data* ProcessData (raw_data* raw_src_data)
    {
    $log(RELEASE)
    assert(raw_src_data);
    
    data* temp_buf   = NULL;
    temp_buf = (data*) calloc (START_TEMP_BUF_SIZE, sizeof(temp_buf[0]));
    assert (temp_buf);
    
    DataBuffer buffer {
                        .data_ptr              = temp_buf,
                        .current_temp_buf_size = 0,
                        .tem_buf_size          = START_TEMP_BUF_SIZE,
                      };
    temp_buf = NULL;

    size_t number_of_words = 0;
    while (*raw_src_data != '\0')
        {
        int word_lenght  = AddWordToDataBuffer    (&buffer, raw_src_data);
            raw_src_data = SkipUnnecessarySymbols (raw_src_data + word_lenght);

        number_of_words++;
        }
    
    processed_data* new_obj = (processed_data*) calloc (1, sizeof(new_obj[0]));
    assert(new_obj);

    new_obj->data_array     = buffer.data_ptr;
    new_obj->number_of_keys = number_of_words;
             
    return new_obj;
    }

static int AddWordToDataBuffer (DataBuffer* buffer, raw_data* src_ptr)
    {
    $log(RELEASE)
    assert(buffer);
    assert(src_ptr);

    if (buffer->current_temp_buf_size  + MAX_WORD_LENGTH >= buffer->tem_buf_size)
            ResizeBuffer(buffer);

    int word_length = 0;
    sscanf(src_ptr, "%[a-zA-Z]%n", buffer->data_ptr + buffer->current_temp_buf_size, &word_length);
        
    buffer->current_temp_buf_size += (size_t) ((word_length == 0) ? 0 : word_length + 1); 

    return word_length;
    }

static int ResizeBuffer (DataBuffer* buffer)
    {
    $log(RELEASE)
    assert (buffer);
    
    buffer->tem_buf_size *= BUFFER_GROWTH_RATE;
    data* temp = (data*) realloc (buffer->data_ptr, buffer->tem_buf_size * sizeof(temp[0]));
    if (!temp)
        {
        report ("Pizdec\n");
        
        free (buffer->data_ptr);
        abort();
        }

    buffer->data_ptr = temp;
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

void DeleteProcessedData (processed_data* proc_data)
    {
    if (proc_data)
        {
        if  (proc_data->data_array)
            free (proc_data->data_array);
        
        free (proc_data);
        }

    return;
    }

processed_data* GetProcessedData (const char* path_to_src_data)
    {
    assert(path_to_src_data);
    
    raw_data*       raw_src_data = NULL;
    processed_data* ready_data   = NULL; 

    if (!(raw_src_data = GetSrcFile (path_to_src_data)))
        {
        report ("Couldn't read source data from '%s'\n", path_to_src_data);
        return NULL;
        }
    
    if (!(ready_data = ProcessData (raw_src_data)))
        report ("Couldn't process data from file '%s'\n", path_to_src_data);

    free (raw_src_data);
    raw_src_data = NULL;

    return ready_data;
    }
