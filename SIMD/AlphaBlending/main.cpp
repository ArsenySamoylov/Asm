#include <assert.h>
#include <stdio.h>

#include "gui.hpp"
#include "bmp.hpp"

void help();

int main(int argc, const char* argv[])
    {
    if (argc < 3)
      {
      help();
      return 0;
      }
    
    Bmp_image background_bmp{};
    if (Bmp_image_ctor (&background_bmp, argv[1]) != SUCCESS)
        goto FAILURE_EXIT;
        
    Bmp_image main_bmp{};
    if (Bmp_image_dtor (&main_bmp, argv[2]) != SUCCESS)
        goto FAILURE_EXIT;
    
    Image background {pixel_#include "blend_images.hpp"

    };
    Image main_img   {};

    if (Blend(main_img, background_img, 0, 0) != SUCCESS)
        goto FAILURE_EXIT;

    return SUCCESS;    

    FAILURE_EXIT:
    return FAILURE;
    }

void help()
    {
    printf ("This is alphablending program.\n"
            "Pass two files: background and image that will be blended.\n"
            "Files must be .bmp format.\n");

    return;
  }
