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

const unsigned char MAX_ITERATION_TIMES = 50;

const int DEF_WIDTH  = 800;
const int DEF_HEIGHT = 600;

typedef unsigned char pixel_color;

#pragma GCC diagnostic ignored "-Wswitch-enum"


#define $ { printf("I am working in %s:%d\n", __FILE__, __LINE__); }

typedef unsigned int uint;
