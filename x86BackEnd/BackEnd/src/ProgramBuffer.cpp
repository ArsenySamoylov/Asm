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

    buf->current_size = 0;
    buf->max_size = BUFFER_START_SIZE;

    return SUCCESS;
    }

int BufferDtor (Buffer* buf)
    {
    assert(buf);

    if (buf->buffer)
        free (buf->buffer);

    buf->buffer = NULL;

    buf->current_size = 0;
    buf->max_size     = 0;

    return SUCCESS;
    }

int CopyToBuff (Buffer* buf, size_t offset, void* src, size_t size)
    {
    assert(buf);
    assert(src);

    if (buf->max_size < offset + size)
        ResizeBuffer (buf, offset + size);

    memcpy (buf->buffer  + offset, src, size);
    
    if (offset + size > buf->current_size)
        buf->current_size = offset + size;

    return SUCCESS;
    } 

static int ResizeBuffer (Buffer* buf, size_t min_size)
    {
    assert(buf);
    
    size_t new_size = buf->max_size * BUFFER_GROWTH_RATE;

    while (new_size < min_size)
        new_size *= BUFFER_GROWTH_RATE;

    byte* temp = (byte*) realloc (buf->buffer, new_size * sizeof(temp[0]));
    assert(temp);

    buf->buffer   = temp;
    buf->max_size = new_size;

    return SUCCESS;
    }
