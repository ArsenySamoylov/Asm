#include <stdio.h>
#include <string.h>
#include <assert.h>

#include <immintrin.h>

#include "Mandelbrot.hpp"
#include "common.hpp"

// x_(i+1) = 2*x_i*y_i + x_0
// y_(i+1) = x_i^2 - y_i^2 +y_0

// #pragma GCC diagnostic ignored "-Wstack-protector"
const int NUMBER_OF_PACKED_INTEGERS = 8;
const int NUMBER_OF_PACKED_FLOATS   = 8;

int CalculateMandalbrot_optimized_avx (pixel_color* color_array, unsigned screen_width, unsigned screen_height)
    {
    assert(color_array);

    float x_delta = (X_MAX - X_MIN) / (float) screen_width;
    float y_delta = (Y_MAX - Y_MIN) / (float) screen_height;

    // printf("X_delta: %f, Y_delta: %f\n", x_delta, y_delta);
    // printf("Screen width %u, Height: %u\n", screen_width, screen_height);
    __m256 temp = _mm256_set_ps (7*x_delta, 6*x_delta, 5*x_delta, 4*x_delta, 3*x_delta, 2*x_delta, 1*x_delta, 0);

    unsigned y_screen_coord = 0;
    unsigned x_screen_coord = 0;    

    __m256  r_max_sqr      = _mm256_set1_ps    (R_MAX_SQR);
    __m256i iteration_step = _mm256_set1_epi32 (1);

    for (float y_coord = Y_MIN; y_screen_coord < screen_height; y_coord += y_delta, y_screen_coord++)
        {
        x_screen_coord = 0;
        
        __m256 y_0 = _mm256_set1_ps(y_coord);

        for (float  x_coord = X_MIN; x_screen_coord < screen_width; x_coord += NUMBER_OF_PACKED_FLOATS * x_delta, x_screen_coord += NUMBER_OF_PACKED_FLOATS)
            {
            __m256 x_0  = _mm256_set1_ps(x_coord);
                   x_0  = _mm256_add_ps (temp, x_0);

            __m256 x = x_0;
            __m256 y = y_0;

            __m256i iteration = _mm256_set1_epi32 (0);

            for(int it = 0; it < MAX_ITERATION_TIMES; it++)
                {
                __m256 x_sqr = _mm256_mul_ps (x, x);
                __m256 y_sqr = _mm256_mul_ps (y, y);

                __m256 xy_2  = _mm256_mul_ps (x, y);
                       xy_2  = _mm256_add_ps (xy_2, xy_2);

                __m256i cmp = _mm256_castps_si256 (_mm256_cmp_ps (_mm256_add_ps (x_sqr, y_sqr), r_max_sqr, _CMP_LE_OQ));
                
                if (!_mm256_movemask_ps (_mm256_castsi256_ps(cmp)))
                    break;

                cmp       = _mm256_and_si256 (iteration_step, cmp);
                iteration = _mm256_add_epi32 (cmp, iteration);

                x = _mm256_add_ps (_mm256_sub_ps(x_sqr, y_sqr), x_0);
                y = _mm256_add_ps (xy_2, y_0);
                } 
            
                // printf("X screen coord = %u, Y screen coord = %u ||| ", x_screen_coord, DEF_HEIGHT - y_screen_coord);
                // printf("X math coord = %f, Y math coord = %f\n", x_coord, y_coord);
          
            uint* color = (uint*) &iteration;           // if base type for pixel color changes from byte
                                                       // to integer, to change this place to move
                                                      // colors value directly 

            for (uint i = 0; i < NUMBER_OF_PACKED_INTEGERS; i++)
                *(color_array++) = (pixel_color) *(color++);
//               _mm256_storeu_si256 ((__m256i*)color_array, iteration);

            }
        }
    
    return SUCCESS;
    }
