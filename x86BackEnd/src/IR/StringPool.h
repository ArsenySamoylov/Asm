#pragma once

#include <stddef.h>

struct StringPool
    {
    const char** string_arr;

    size_t size;
    size_t capacity;
    };

int SetStringPool (StringPool* pool);
const char** GetStringPool ();
size_t       GetStringPoolSize ();

const char*  GetString (int id);
int          AddString (const char* string);

char* CreateString (const char* format, ...);
