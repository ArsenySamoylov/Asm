#pragma once

enum RET_STATUS
    {
    SUCCESS = 0,
    FAILURE = 1,
    };

struct WindowCtx
    {
    void*    window;
    unsigned width;
    unsigned height;

    char* color_array;
    };
typedef unsigned char pixel_color;


#define $ { printf("I am working in %s:%d\n", __FILE__, __LINE__); }

typedef unsigned int uint;
