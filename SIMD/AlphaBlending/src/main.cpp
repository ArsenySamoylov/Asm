#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <sys/time.h>

#include "gui.hpp"
#include "bmp.hpp"
#include "blend_images.hpp"

void help();

const int NUMBER_OF_ITERATIONS_FOR_MEASURMENT = 300;
int Measure_perfomance_difference(Image* front_img, Image* back_img, unsigned x_start, unsigned y_start);

int main(int argc, const char* argv[])
    {
    if (argc < 5)
      {
      help();
      return 0;
      }
    
    Bmp_image background_bmp {};
    Bmp_image main_bmp       {};
    
    Image background_img {};
    Image main_img       {};
    
    int status = 0;

    if (Bmp_image_ctor (&background_bmp, argv[1]) != SUCCESS)
        goto FAILURE_EXIT;
    if (Bmp_image_ctor (&main_bmp, argv[2]) != SUCCESS)
        goto FAILURE_EXIT;
     
    if (CheckBmpFormat(&main_bmp) != SUCCESS)
       goto FAILURE_EXIT;
    if (CheckBmpFormat(&background_bmp) != SUCCESS)
       goto FAILURE_EXIT;

    background_img = {.pixel_arr = background_bmp.pixel_array, 
                      .width     = background_bmp.dib_header->width, 
                      .height    = background_bmp.dib_header->height };
    
    main_img       = {.pixel_arr = main_bmp.pixel_array,
                      .width     = main_bmp.dib_header->width,
                      .height    = main_bmp.dib_header->height };
    {
    unsigned x_start = (unsigned) atoi(argv[3]);
    unsigned y_start =  background_img.height - main_img.height - (unsigned) atoi(argv[4]);
    
    status = Measure_perfomance_difference (&main_img, &background_img, x_start, y_start);
    }

    if (status != SUCCESS)
        goto FAILURE_EXIT;
    
    //DisplayImage(&background_img);

    return SUCCESS;    

    FAILURE_EXIT:
    
    return FAILURE;
    }

void help()
    {
    printf ("This is alphablending program, that test efficiency of intrinsiks function.\n"
            "Pass two files: background and image that will be blended.\n"
            "Files must be .bmp format.\n");

    return;
  }

int Measure_perfomance_difference (Image* front_img, Image* back_img, unsigned x_start, unsigned y_start)
    {
    assert(front_img);
    assert( back_img);

    timeval start {};
    timeval end   {};

    double used_time_not_optimized = 0;
    double used_time_optimized     = 0;
    
    gettimeofday (&start, nullptr);

    for (int i = 0; i < NUMBER_OF_ITERATIONS_FOR_MEASURMENT; i++)
        Blend_not_optimized (front_img, back_img, x_start, y_start);
    
    gettimeofday (&end, nullptr);
    used_time_not_optimized = (double) ((end.tv_sec - start.tv_sec) * 1000000 + end.tv_usec - start.tv_usec);
    
    printf ("Not optimized function time for %d iterations = %lg\n", NUMBER_OF_ITERATIONS_FOR_MEASURMENT, used_time_not_optimized);
   
    gettimeofday(&start, nullptr);

    for (int i = 0; i < NUMBER_OF_ITERATIONS_FOR_MEASURMENT; i++)
        Blend_optimized (front_img, back_img, x_start, y_start);
    
    gettimeofday (&end, nullptr);

    used_time_optimized = (double) ((end.tv_sec - start.tv_sec) * 1000000 + end.tv_usec - start.tv_usec);
    printf ("Optimized function time for %d iterations     = %lg\n", NUMBER_OF_ITERATIONS_FOR_MEASURMENT, used_time_optimized);
    
    printf ("\nSpeed up factor = %lg\n", used_time_not_optimized / used_time_optimized);

    return SUCCESS;
    }

