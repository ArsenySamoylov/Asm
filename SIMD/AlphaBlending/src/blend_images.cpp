#include <stdio.h>
#include <assert.h>
#include <stdint.h>

#include "blend_images.hpp"
#include "common.hpp"

/**
  \brief This is first version of Blend function, thas serves as prototype

  @param [in] front_img ptr to Image structure that contans ptr to array with pixels
                        and width, height
                        This image will be blended on the back image
  
  @param [in] back_img prt to back_img ptr

  @param [in] x_start x coordinate for position of blending front image to back image
                      (coordinate relative to back_image)
  
  @param [in] y_start y coordinate for position of blending front image to back image
                      (coordinate relative to back_image)

  \return 0 - SUCCESS
          1 - FAILURE (for more coorect info look in "common.hpp")

       <b> Note: this function fails when front image out of boders of background image
       Add checking borders, to avoid it.<b>
*/

int Blend_not_optimized (Image* front_img, Image* back_img, unsigned x_start, unsigned y_start)
    {
    assert(front_img);
    assert(back_img);

    if (front_img->width > back_img->width || front_img->height > back_img->height)
        {
        printf("front width (%u) or height (%u) Can't be bigger than back's (w:%u, h:%u)\n", 
                front_img->width, front_img->height,         back_img->width, back_img->height);

        return FAILURE;
        }

    const unsigned front_width = front_img->width;
    const unsigned  back_width =  back_img->width;

    const unsigned front_height = front_img->height;

    uint32_t*  back_color_array = (uint32_t*)  back_img->pixel_arr + (y_start * back_img->width + x_start); 
    uint32_t* front_color_array = (uint32_t*) front_img->pixel_arr;


    for (unsigned y_coord = 0; y_coord < front_height; y_coord++)
        {

        uint32_t* back_arr  =  back_color_array + y_coord * back_width; 
        uint32_t* front_arr = front_color_array + y_coord * front_width; 

        for (unsigned x_coord = 0; x_coord < front_width; x_coord++)
            {
            uint64_t  back_color = (uint64_t)  *back_arr; 
            uint64_t front_color = (uint64_t) *front_arr;

            uint8_t alpha_front = (uint8_t) (front_color >> 24);
           
            uint64_t new_red_green = ((front_color & 0x00FF00FF) * (alpha_front) + 
                                       (back_color & 0x00FF00FF) * (256 - alpha_front)) 
                                     >> 8;

            uint64_t new_alph_blue = ((front_color & 0xFF00FF00) * (alpha_front) + 
                                       (back_color & 0xFF00FF00) * (256 - alpha_front)) 
                                     >> 8;
            
            new_red_green &= 0x00FF00FF;
            new_alph_blue &= 0xFF00FF00;
           
            *back_arr = (uint32_t) (new_red_green + new_alph_blue); 

            back_arr++;
            front_arr++;
            }
        
        back_arr += back_img->width - front_img->width;
        }

    return SUCCESS;
    }
