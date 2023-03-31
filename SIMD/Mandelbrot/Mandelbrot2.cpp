#include <stdio.h>
#include <assert.h>

#include "Mandelbrot.hpp"
#include "common.hpp"

// x_(i+1) = 2*x_i*y_i + x_0
// y_(i+1) = x_i^2 - y_i^2 +y_0

struct __mm256
    {
    float arr[8];
    };

typedef unsigned int uint;

unsigned  NUMBER_OF_PACKED_FLOATS = sizeof(__mm256) / sizeof(float);

inline __mm256*  __mm256_mul_ps (__mm256* a, __mm256* b, __mm256* dest)
    {
    for (unsigned i = 0; i < NUMBER_OF_PACKED_FLOATS; i++)
        dest->arr[i] = a->arr[i] * b->arr[i];

    return dest;
    }

inline __mm256* __mm256_set1_ps (__mm256* dest, float a)
    {
    for (uint i = 0; i < NUMBER_OF_PACKED_FLOATS; i++)
        dest->arr[i] = a;

    return dest;
    }

inline __mm256* __mm256add_ps (__mm256* a, __mm256* b, __mm256* dest)
    {
    for (uint i = 0; i < NUMBER_OF_PACKED_FLOATS; i++)
        dest->arr[i] = a->arr[i] + b->arr[i];

    return dest;
    }

inline __mm256* __mm256sub_ps (__mm256* a, __mm256* b, __256* dest)
    {
    for (uint i = 0; i < NUMBER_OF_PACKED_FLOATS; i++)
        dest->arr[i] = a->arr[i] - b->arr[i];

    return dest;
    }

inline pixel_color* set_pixel_color_arr_4 (pixel_color* dest, pixel_color* src)
    {
    for (int i = 0; i < 4; i++)
        dest[i] = src[i];

    return dest;
    }
#pragma GCC diagnostic ignored "-Wstack-protector"

int CalculateMandalbrot (pixel_color* color_array, unsigned screen_width, unsigned screen_height)
    {
    assert(color_array);

    float x_delta = (X_MAX - X_MIN) / (float) screen_width;
    float y_delta = (Y_MAX - Y_MIN) / (float) screen_height;

    // printf("X_delta: %f, Y_delta: %f\n", x_delta, y_delta);
    // printf("Screen width %u, Height: %u\n", screen_width, screen_height);

    unsigned y_screen_coord = 0;
    unsigned x_screen_coord = 0;
    
    for (float y_coord = Y_MIN; y_screen_coord < screen_height; y_coord += y_delta, y_screen_coord++)
        {
        x_screen_coord = 0;
        
        float y_0[4] = {y_coord, y_coord, y_coord, y_coord};

        for (float  x_coord = X_MIN; x_screen_coord < screen_width; x_coord += NUMBER_OF_PACKED_FLOATS * x_delta, x_screen_coord += NUMBER_OF_PACKED_FLOATS)
            {
            pixel_color iteration[4] = {};

            float x_0[4] = {x_coord, x_coord + x_delta, x_coord + 2*x_delta, x_coord + 3*x_delta};
            
            float x[4] = {x_0[0], x_0[1], x_0[2], x_0[3]};
            float y[4] = {y_0[0], y_0[1], y_0[2], y_0[3]};

            for(int it = 0; it < MAX_ITERATION_TIMES; it++)
                {
                float x_sqr[4] {};
                mul_float_arr_4 (x, x, x_sqr);

                float y_sqr[4] {};
                mul_float_arr_4 (y, y, y_sqr);

                float xy_2[4] {};
                mul_float_arr_4_on_const (2.f, mul_float_arr_4(x, y, xy_2));

                // if (iteration == 0)
                //      break;

                for (int i = 0; i < 4; i++)
                    {
                    if (x_sqr[i] + y_sqr[i] < R_MAX_SQR)
                        iteration[i] += 1;
                    
                    // printf("Iteration: %u \n", iteration[i]);
                    }

                add_float_arr_4 (sub_float_arr_4(x_sqr, y_sqr, x), x_0, x);
                // x = x_sqr - y_sqr + x_0;

                add_float_arr_4 (xy_2, y_0, y);
                // y = 2_xy          + y_0;
                } 
            
                // printf("X screen coord = %u, Y screen coord = %u ||| ", x_screen_coord, DEF_HEIGHT - y_screen_coord);
                // printf("X math coord = %f, Y math coord = %f\n", x_coord, y_coord);

            set_pixel_color_arr_4 (color_array, iteration);
            color_array +=4;
            }
        }
    
    return SUCCESS;
    }