#include <stdio.h>
#include <assert.h>
#include <stdint.h>

#include "blend_images.hpp"
#include "common.hpp"

int Blend(Image* front_img, Image* back_img, unsigned x_start, unsigned y_start)
    {
    assert(front_img);
    assert(back_img);

    if (front_img->width > back_img->width || front_img->height > back_img->height)
        {
        printf("front width (%u) or height (%u) Can't be bigger than back's (w:%u, h:%u)\n", 
                front_img->width, front_img->height,         back_img->width, back_img->height);

        return FAILURE;
        }

    uint32_t* back_arr  = (uint32_t*) back_img->pixel_arr + (y_start * back_img->width + x_start); 
    uint32_t* front_arr = (uint32_t*) front_img->pixel_arr; 

    for (unsigned y_coord = 0; y_coord < front_img->height; y_coord++)
        {
        for (unsigned x_coord = 0; x_coord < front_img->width; x_coord++)
            {
            //uint8_t alpha_back  =  back_arr->alpha_mask;
            
            uint64_t  back_color = (uint64_t)  *back_arr; 
            uint64_t front_color = (uint64_t) *front_arr;

            uint8_t alpha_front = (uint8_t) (front_color >> 24);
           
            uint64_t new_red_green = ((front_color & 0x00FF00FF) * (alpha_front) + (back_color & 0x00FF00FF) * (256 - alpha_front)) >> 8;
            uint64_t new_alph_blue = ((front_color & 0xFF00FF00) * (alpha_front) + (back_color & 0xFF00FF00) * (256 - alpha_front)) >> 8;
            
            new_red_green &= 0x00FF00FF;
            new_alph_blue &= 0xFF00FF00;

            /*
            RGBA back_pixel = {
                               .blue  = (byte) (back_arr->blue  * (255 - alpha_back) >> 8),
                               .red   = (byte) (back_arr->red   * (255 - alpha_back) >> 8),
                               .green = (byte) (back_arr->green * (255 - alpha_back) >> 8),
                               .alpha_mask = (byte) (back_arr->alpha_mask * (255 - alpha_back) >> 8), 
                              };

            RGBA front_pixel = {
                                .blue  = (byte) (front_arr->blue  * alpha_front >> 8),
                                .red   = (byte) (front_arr->red   * alpha_front >> 8),  
                                .green = (byte) (front_arr->green * alpha_front >> 8),
                                .alpha_mask = (byte) (front_arr->alpha_mask * alpha_front >> 8),  
                               };
            */


            //*back_arr = {.red = back_pixel.red + front_pixel.red};
            
            *back_arr = (uint32_t) (new_red_green | new_alph_blue); 

            back_arr++;
            front_arr++;
            }
        
        back_arr += back_img->width - front_img->width;
        }

    return SUCCESS;
    }
