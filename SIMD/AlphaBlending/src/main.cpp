#include <assert.h>
#include <stdio.h>
#include <string.h>

#include "gui.hpp"
#include "bmp.hpp"
#include "blend_images.hpp"
#include "Measure_time.hpp"

void help();

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
    
    DisplayImage(&background_img);

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
