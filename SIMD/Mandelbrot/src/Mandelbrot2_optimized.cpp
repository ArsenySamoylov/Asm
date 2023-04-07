#include <stdio.h>
#include <assert.h>

#include "Mandelbrot.hpp"
#include "common.hpp"

// x_(i+1) = 2*x_i*y_i + x_0
// y_(i+1) = x_i^2 - y_i^2 +y_0
int CalculateMandalbrot_not_optimized (pixel_color* color_array, unsigned screen_width, unsigned screen_height)
    {
    assert(color_array);

    float x_delta = (X_MAX - X_MIN) / (float) screen_width;
    float y_delta = (Y_MAX - Y_MIN) / (float) screen_height;

    //printf("X_delta: %f, Y_delta: %f\n", x_delta, y_delta);
    //printf("Screen width %u, Height: %u\n", screen_width, screen_height);

    unsigned y_screen_coord = 0;
    unsigned x_screen_coord = 0;
    
    for (float y_coord = Y_MIN; y_screen_coord < screen_height; y_coord += y_delta, y_screen_coord++)
        {
        x_screen_coord = 0;
        
        for (float  x_coord = X_MIN; x_screen_coord < screen_width; x_coord += x_delta, x_screen_coord++)
            {
            pixel_color iteration = 0;

            float x = x_coord;
            float y = y_coord; 

            for(; iteration < MAX_ITERATION_TIMES; iteration++)
                {
                if (x*x + y*y >= R_MAX_SQR)
                    break;

                float temp_x = x*x - y*y + x_coord;
                float temp_y = 2*x*y     + y_coord;

                x = temp_x;
                y = temp_y;
                } 
            
                // printf("X screen coord = %u, Y screen coord = %u |||", x_screen_coord, DEF_HEIGHT - y_screen_coord);
                // printf("X math   coord = %f, Y math coord = %f\n", x_coord, y_coord);

            color_array[y_screen_coord * screen_width + x_screen_coord] = iteration; 
            }
        }
    
    return SUCCESS;
    }
