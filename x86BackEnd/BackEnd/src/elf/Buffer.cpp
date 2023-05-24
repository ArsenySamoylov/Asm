#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include "Buffer.hpp"

const int START_SIZE  = 16;
const int GROWTH_RATE = 2;

int BufferCtor (Buffer* buf)
    {
    assert(buf);
    
    buf->buffer = (byte*) calloc (START_SIZE, sizeof(byte));
    assert(buf->buffer);

    buf->size = 0;
    buf->capacity = START_SIZE;
    
    return 0;
    }

int BufferDtor (Buffer* buf)
    {
    assert(buf);
    assert(buf->buffer);

    free (buf->buffer);
    return 0;
    }

static int ResizeBuffer (Buffer* buf, size_t min_size)
    {
    assert(buf);

    size_t new_size = buf->capacity;
    while (new_size < min_size)
        new_size *= GROWTH_RATE;

    byte* temp = (byte*) realloc (buf->buffer, new_size * sizeof(temp[0]));
    assert(temp);

    buf->buffer = temp;
    buf->capacity = new_size;

    return 0;
    }
    
int CopyToBuff (Buffer* buf, size_t offset, void* src, size_t size)
    {
    assert(buf);

    if (offset + size > buf->capacity)
        ResizeBuffer (buf, offset + size);

    memcpy (buf->buffer + offset, src, size);

    return 0;
    }