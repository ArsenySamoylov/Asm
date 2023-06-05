#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "StringPool.h"

#include "CommonEnums.h"
#include "LogMacroses.h"

static StringPool* STRING_POOL = NULL;

int AddString (const char* string)
    {
    assert(STRING_POOL);
    assert(string);

    if (STRING_POOL->size >=  STRING_POOL->capacity)
        {
        STRING_POOL->capacity *=2;

        const char** xyu = (const char**) realloc (STRING_POOL->string_arr, STRING_POOL->capacity * sizeof(xyu[0]));
        if (!xyu) 
            return FAILURE;

        STRING_POOL->string_arr = xyu;
        }

    *(STRING_POOL->string_arr + STRING_POOL->size) = strdup(string);

    // report ("ID %d, name %s\n", STRING_POOL->size, string);

    return (int) STRING_POOL->size++;
    }

int SetStringPool (StringPool* pool)
    {
    STRING_POOL = pool;
    return SUCCESS;
    }

const char** GetStringPool ()
    {
    return STRING_POOL->string_arr;
    }

size_t       GetStringPoolSize ()
    {
    return STRING_POOL->size;
    }

const char* GetString (int id)
    {
    return STRING_POOL->string_arr[id];
    }

static int Resize ()
    {
    assert(STRING_POOL);

    STRING_POOL->capacity *=2;

    const char** xyu = (const char**) realloc (STRING_POOL->string_arr, STRING_POOL->capacity * sizeof(xyu[0]));
        if (!xyu) 
            return FAILURE;

    STRING_POOL->string_arr = xyu;
    return SUCCESS;
    }

const int MAX_LENGTH = 256;
char* CreateString (const char* format, ...)
    {
    assert(format);

    if (STRING_POOL->size >=  STRING_POOL->capacity)
        Resize();      

    va_list ptr;
    va_start(ptr, format);

    size_t length = strlen(format) + 32;
    assert(length < MAX_LENGTH);

    char* string = (char*) calloc (length, sizeof(string[0]));
    assert(string);

    vsnprintf (string, MAX_LENGTH, format, ptr);
    // $s(system_command)

    va_end(ptr);
    
    STRING_POOL->string_arr[STRING_POOL->size++] = string;

    return string;
    }