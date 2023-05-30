#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>

#include "Buffer.hpp"

#define SUCCESS 0
#define FAILURE -1
#define report(format, ...) printf (format __VA_OPT__(,) __VA_ARGS__)

size_t BUFFER_START_SIZE = 16;
size_t BUFFER_GROWTH_RATE = 2;

static int ResizeBuffer (Buffer* buf, size_t min_size = 0);

int BufferCtor (Buffer* buf)
    {
    assert(buf);

    if (buf->buffer)
        {
        report ("Error in, buffer has not NULL program ptr (%p)\n", buf->buffer);
        return FAILURE;
        }

    buf->buffer = (byte*) calloc (BUFFER_START_SIZE, sizeof(byte));
    assert(buf->buffer);

    buf->size = 0;
    buf->capacity = BUFFER_START_SIZE;

    return SUCCESS;
    }

int BufferDtor (Buffer* buf)
    {
    assert(buf);

    if (buf->buffer)
        free (buf->buffer);

    buf->buffer = NULL;

    buf->size = 0;
    buf->capacity     = 0;

    return SUCCESS;
    }

int CopyToBuff (Buffer* buf, size_t offset, void* src, size_t size)
    {
    assert(buf);
    assert(src);

    // printf ("size %lu\n", size);
    
    if (buf->capacity < offset + size)
        ResizeBuffer (buf, offset + size);

    memcpy (buf->buffer  + offset, src, size);
    
    if (offset + size > buf->size)
        buf->size = offset + size;

    return SUCCESS;
    } 

static int ResizeBuffer (Buffer* buf, size_t min_size)
    {
    assert(buf);
    
    size_t new_size = buf->capacity * BUFFER_GROWTH_RATE;

    while (new_size < min_size)
        new_size *= BUFFER_GROWTH_RATE;

    byte* temp = (byte*) realloc (buf->buffer, new_size * sizeof(temp[0]));
    assert(temp);

    buf->buffer   = temp;
    buf->capacity = new_size;

    return SUCCESS;
    }
