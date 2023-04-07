#include <assert.h>
#include <stdio.h>

#include "common.hpp"
#include "gui.hpp"
#include "Mandelbrot.hpp"
#include "Measure_time.hpp"

int main()
    {

    unsigned width  = DEF_WIDTH;
    unsigned height = DEF_HEIGHT;
    
    pixel_color* color_array = (pixel_color*) calloc (width * height, sizeof(color_array[0]));
  
    if (Measure_perfomance_difference (color_array, width, height) != SUCCESS)
        goto FAILURE_EXIT;
    
    Display (color_array, width, height);
    free (color_array);

    return SUCCESS;    

    FAILURE_EXIT:
    
    free (color_array);

    return FAILURE;
    }

