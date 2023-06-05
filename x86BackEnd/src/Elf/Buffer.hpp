/*!
\file
\brief This file contains simple interface for Buffer (originally to write op_codes)
*/
#pragma once

typedef unsigned char byte;

/**
 * @brief Simple Buffer Struct
 * 
 */
struct Buffer
    {
    byte* buffer;
    
    size_t size;
    size_t capacity;
    };

int BufferCtor (Buffer* buf);
int BufferDtor (Buffer* buf);

int CopyToBuff (Buffer* buf, size_t offset, void* src, size_t size);