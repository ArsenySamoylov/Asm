#pragma once

typedef unsigned char byte;

struct Buffer
    {
    byte* buffer;
    
    size_t size;
    size_t capacity;
    };

int BufferCtor (Buffer* buf);
int BufferDtor (Buffer* buf);

int CopyToBuff (Buffer* buf, size_t owffset, void* src, size_t size);