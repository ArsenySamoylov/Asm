#include <assert.h>
#include <sys/time.h>
#include <stdio.h>

#include "Measure_time.hpp" 
#include "Mandelbrot.hpp"

typedef int (*ptr_to_mdlbrt_func) (pixel_color*, unsigned, unsigned);

static double Measure_function (ptr_to_mdlbrt_func func, pixel_color* color_array, unsigned width, unsigned height, const char* function_name);

static double Measure_function (ptr_to_mdlbrt_func func, pixel_color* color_array, unsigned width, unsigned height, const char* function_name)
    {
    assert(func);
    assert(color_array);

    timeval start {};
    timeval end   {};
    double used_time = 0; 

    gettimeofday(&start, nullptr);

    for (int i = 0; i < NUMBER_OF_ITERATIONS_FOR_MEASURMENT; i++)                                        
       (*func) (color_array, width, height);                                                                                        
                                                                                                                                   
    gettimeofday (&end, nullptr);                                                                                                  
    
    used_time = (double) ((end.tv_sec - start.tv_sec) * 1000000 + end.tv_usec - start.tv_usec) / 1000000.0;
    printf ("'%35.35s' function time for %d iterations = %lg sec\n", function_name, 
                                                                NUMBER_OF_ITERATIONS_FOR_MEASURMENT, used_time);

    return used_time;
    }
    

int Measure_perfomance_difference (pixel_color* color_array, unsigned width, unsigned height)
    {
     
    if (!color_array)
        {
        printf("Can't allocate memory for color array!!! (%s:%d)\n", __FILE__, __LINE__);
        
        return FAILURE;
        }

    double not_optimized_time = Measure_function (&CalculateMandalbrot_not_optimized, color_array, width, height, 
                                                  "CalculateMamdalbrot_not_optimized");

    double optimized_time     = Measure_function (&CalculateMandalbrot_optimized, color_array, width, height, 
                                                  "CalculateMamdalbrot_optimized");

    double optimized_time_avx = Measure_function (&CalculateMandalbrot_optimized_avx, color_array, width, height, 
                                                  "CalculateMamdalbrot_optimized_avx");


    printf ("\nSpeed up factor 1/2 = %lg\n", not_optimized_time / optimized_time);
    printf (  "Speed up factor 2/3 = %lg\n", optimized_time     / optimized_time_avx);
    printf (  "Speed up factor 1/3 = %lg\n", not_optimized_time / optimized_time_avx);
    
    return SUCCESS;
    }
