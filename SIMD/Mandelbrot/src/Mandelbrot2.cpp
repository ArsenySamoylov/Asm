#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "Mandelbrot.hpp"
#include "common.hpp"

struct __mm256
    {
    float arr[8];
    };

struct __mm256i
    {
    int arr[8];
    };

const unsigned  NUMBER_OF_PACKED_FLOATS   = sizeof(__mm256)  / sizeof(float);
const unsigned  NUMBER_OF_PACKED_INTEGERS = sizeof(__mm256i) / sizeof(int);

static_assert(NUMBER_OF_PACKED_FLOATS == NUMBER_OF_PACKED_INTEGERS);
///////////////////////////////////////////////////////////////////////////////////////////////////
// x_(i+1) = 2*x_i*y_i + x_0
// y_(i+1) = x_i^2 - y_i^2 +y_0
#define __mm_256_cast_si256(value) (__mm256i*) &value  // cast for compilator

inline __mm256*  __mm256_mul_ps (__mm256* a, __mm256* b, __mm256* dest)
    {
    for (unsigned i = 0; i < NUMBER_OF_PACKED_FLOATS; i++)
        dest->arr[i] = a->arr[i] * b->arr[i];

    return dest;
    }


inline __mm256*  __mm256_set1_ps (__mm256* dest, float a)
    {
    for (uint i = 0; i < NUMBER_OF_PACKED_FLOATS; i++)
        dest->arr[i] = a;

    return dest;
    }

inline __mm256*  __mm256_set_ps (float e7, float e6, float e5, float e4, float e3, float e2, float e1, float  e0, __mm256* dest)
    {
    int i = 0;
    
    dest->arr[i++] = e0;
    dest->arr[i++] = e1;
    dest->arr[i++] = e2;
    dest->arr[i++] = e3;
    dest->arr[i++] = e4;
    dest->arr[i++] = e5;
    dest->arr[i++] = e6;
    dest->arr[i++] = e7;

    return dest;
    }
inline __mm256i* __mm256_set1_epi32 (__mm256i* dest, int a)
    {
    for (uint i = 0; i < NUMBER_OF_PACKED_INTEGERS; i++)
        dest->arr[i] = a;
        

    return dest;
    }


inline __mm256*  __mm256_add_ps (__mm256* a, __mm256* b, __mm256* dest)
    {
    for (uint i = 0; i < NUMBER_OF_PACKED_FLOATS; i++)
        dest->arr[i] = a->arr[i] + b->arr[i];

    return dest;
    }

inline __mm256*  __mm256_sub_ps (__mm256* a, __mm256* b, __mm256* dest)
    {
    for (uint i = 0; i < NUMBER_OF_PACKED_FLOATS; i++)
        dest->arr[i] = a->arr[i] - b->arr[i];

    return dest;
    }

inline __mm256i* __mm256_and_si256 (__mm256i* a, __mm256i* b, __mm256i* dest)
    {
    for (uint i = 0; i < NUMBER_OF_PACKED_INTEGERS; i++)
        dest->arr[i] = a->arr[i] & b->arr[i];

    return dest;
    }


inline __mm256i* __mm256_add_epi32 (__mm256i* a, __mm256i* b, __mm256i* dest)
    {
    for (uint i = 0; i < NUMBER_OF_PACKED_INTEGERS; i++)
        dest->arr[i] = a->arr[i] + b->arr[i];

    return dest;
    }


#pragma GCC diagnostic ignored "-Wstack-protector"

int CalculateMandalbrot_optimized (pixel_color* color_array, unsigned screen_width, unsigned screen_height)
    {
    assert(color_array);

    float x_delta = (X_MAX - X_MIN) / (float) screen_width;
    float y_delta = (Y_MAX - Y_MIN) / (float) screen_height;

    // printf("X_delta: %f, Y_delta: %f\n", x_delta, y_delta);
    // printf("Screen width %u, Height: %u\n", screen_width, screen_height);

    unsigned y_screen_coord = 0;
    unsigned x_screen_coord = 0;

    __mm256 r_max_sqr {};
    __mm256_set1_ps (&r_max_sqr, R_MAX_SQR);

    __mm256i iteration_step{};
    __mm256_set1_epi32 (&iteration_step, 1);

    for (float y_coord = Y_MIN; y_screen_coord < screen_height; y_coord += y_delta, y_screen_coord++)
        {
        x_screen_coord = 0;
        
        // float y_0[4] = {y_coord, y_coord, y_coord, y_coord};
        __mm256 y_0{};
        __mm256_set1_ps(&y_0, y_coord);

        for (float  x_coord = X_MIN; x_screen_coord < screen_width; x_coord += NUMBER_OF_PACKED_FLOATS * x_delta, x_screen_coord += NUMBER_OF_PACKED_FLOATS)
            {
            __mm256 x_0{};
            __mm256_set1_ps(&x_0, x_coord);
            
            __mm256 temp{};
            __mm256_set_ps (7*x_delta, 6*x_delta, 5*x_delta, 4*x_delta, 3*x_delta, 2*x_delta, 1*x_delta, 0, &temp);

            __mm256_add_ps (&temp, &x_0, &x_0);

            __mm256 x {};
            memcpy (&x, &x_0, sizeof(x));

            __mm256 y {};
            memcpy (&y, &y_0, sizeof(y));

            __mm256i iteration {};
            __mm256_set1_epi32 (&iteration, 0);

            for(int it = 0; it < MAX_ITERATION_TIMES; it++)
                {
                __mm256 x_sqr {};
                __mm256_mul_ps (&x, &x, &x_sqr);

                __mm256 y_sqr {};
                __mm256_mul_ps (&y, &y, &y_sqr);

                __mm256 xy_2 {};
                __mm256_mul_ps (&x, &y, &xy_2);
                __mm256_add_ps (&xy_2, &xy_2, &xy_2);

                __mm256 r_sqr{};
                __mm256_add_ps(&x_sqr, &y_sqr, &r_sqr);

                // __mm256_cmp_ps(&r_sqr, &r_max_sqr, &r_sqr);
                
                // int mask = __mm256_movemask_ps(&r_sqr)
                
                // if (!mask)
                    // break;

                __mm256_and_si256 (&iteration_step,  __mm_256_cast_si256(r_sqr), __mm_256_cast_si256(r_sqr));
                __mm256_add_epi32 (__mm_256_cast_si256(r_sqr), &iteration, &iteration);


                __mm256_add_ps (__mm256_sub_ps(&x_sqr, &y_sqr, &x), &x_0, &x);

                __mm256_add_ps (&xy_2, &y_0, &y);
                } 
            
                // printf("X screen coord = %u, Y screen coord = %u ||| ", x_screen_coord, DEF_HEIGHT - y_screen_coord);
                // printf("X math coord = %f, Y math coord = %f\n", x_coord, y_coord);

            uint* color = (uint*) &iteration;           // if base type for pixel color changes from byte
                                                       // to integer, to change this place to move
                                                      // colors value directly 

            for (uint i = 0; i < NUMBER_OF_PACKED_INTEGERS; i++)
                *(color_array++) = (pixel_color) *(color++);

            }
        }
    
    return SUCCESS;
    }
