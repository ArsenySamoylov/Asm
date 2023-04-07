#include <assert.h>
#include <sys/time.h>
#include <stdio.h>

#include "common.hpp"
#include "gui.hpp"
#include "Mandelbrot.hpp"

const int NUMBER_OF_ITERATIONS_FOR_MEASURMENT = 500;
int Measure_perfomance_difference (pixel_color* color_array, unsigned width, unsigned height);

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


int Measure_perfomance_difference (pixel_color* color_array, unsigned width, unsigned height)
    {
    timeval start {};
    timeval end   {};

   
    if (!color_array)
        {
        printf("Can't allocate memory for color array!!! (%s:%d)\n", __FILE__, __LINE__);
        
        return FAILURE;
        }

    double used_time_not_optimized = 0;
    double used_time_optimized     = 0;
  
    gettimeofday (&start, nullptr);

    for (int i = 0; i < NUMBER_OF_ITERATIONS_FOR_MEASURMENT; i++)
        CalculateMandalbrot_not_optimized (color_array, width, height);
    
    gettimeofday (&end, nullptr);
    used_time_not_optimized = (double) ((end.tv_sec - start.tv_sec) * 1000000 + end.tv_usec - start.tv_usec) / 1000000.0;
    
    printf ("Not optimized function time for %d iterations = %lg sec\n", NUMBER_OF_ITERATIONS_FOR_MEASURMENT, used_time_not_optimized);
   
    gettimeofday(&start, nullptr);

    for (int i = 0; i < NUMBER_OF_ITERATIONS_FOR_MEASURMENT; i++)
        CalculateMandalbrot_optimized_avx (color_array, width, height);
    
    gettimeofday (&end, nullptr);

    used_time_optimized = (double) ((end.tv_sec - start.tv_sec) * 1000000 + end.tv_usec - start.tv_usec) / 1000000.0;
    printf ("Optimized     function time for %d iterations = %lg sec\n", NUMBER_OF_ITERATIONS_FOR_MEASURMENT, used_time_optimized);
    
    printf ("\nSpeed up factor = %lg\n", used_time_not_optimized / used_time_optimized);

    return SUCCESS;
    }

