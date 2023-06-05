/*!
\file
\brief This file contains simple interface for StringPool

*/
#pragma once

#include <stddef.h>

/**
 * @brief Array of pointers to strings
 * It wasn't implemented in Legacy version, but I needed it to adding 
 * some name to already existing array of pointers to strings  
 */
struct StringPool
    {
    const char** string_arr;

    size_t size;
    size_t capacity;
    };

/**
 * @brief Set string array
 * Sets STRING_POOL   
 */
int SetStringPool (StringPool* pool);

const char** GetStringPool ();
size_t       GetStringPoolSize ();

const char*  GetString (int id);
int          AddString (const char* string);

char* CreateString (const char* format, ...);
