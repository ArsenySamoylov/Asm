#include <assert.h>
#include <stdio.h>
#include <sys/time.h>

#include "Measure_time.hpp"
#include "blend_images.hpp"
#include "common.hpp"

typedef int (*ptr_to_alphblnd_func) (Image*, Image*, unsigned, unsigned);

static double Measure_function (ptr_to_alphblnd_func func, Image* front_img, Image* back_img, unsigned width, unsigned height, const char* function_name);

static double Measure_function (ptr_to_alphblnd_func func, Image* front_img, Image* back_img, unsigned width, unsigned height, const char* function_name)
    {
    assert(func);
    assert(front_img);
    assert(back_img);

    timeval start {};
    timeval end   {};
    double used_time = 0; 

    gettimeofday(&start, nullptr);

    for (int i = 0; i < NUMBER_OF_ITERATIONS_FOR_MEASURMENT; i++)                                        
       (*func) (front_img, back_img, width, height);                                                                                        
                                                                                                                                   
    gettimeofday (&end, nullptr);                                                                                                  
    
    used_time = (double) ((end.tv_sec - start.tv_sec) * 1000000 + end.tv_usec - start.tv_usec) / 1000000.0;
    printf ("'%20.20s' function time for %d iterations = %lg sec\n", function_name, 
                                                                NUMBER_OF_ITERATIONS_FOR_MEASURMENT, used_time);

    return used_time;
    }
 
int Measure_perfomance_difference (Image* front_img, Image* back_img, unsigned x_start, unsigned y_start)
    {
    assert(front_img);
    assert( back_img);

    double not_optimized_time = Measure_function (&Blend_not_optimized, front_img, back_img, x_start, y_start,
                                         "Blend_not_optimized");
    
    double optimized_avx_time = Measure_function (&Blend_optimized, front_img, back_img, x_start, y_start,
                                         "Blend_optimized");
    
    
    printf ("\nSpeed up factor = %lg\n", not_optimized_time / optimized_avx_time);

    return SUCCESS;
    }

