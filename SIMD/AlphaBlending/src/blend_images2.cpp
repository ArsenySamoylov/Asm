#include <stdio.h>
#include <assert.h>
#include <stdint.h>

#include <immintrin.h>

#include "blend_images.hpp"
#include "common.hpp"

/**
  \brief This is optimized version of Blend function, that uses intrinsiks

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

          This is iteration of Blend function wich blends two pixels arrays on the back_ground image
          (pixels must have RGBA format and 32 bits per pixel)
          This iteration includes:
                    -) using intrinsics function
                    -) decresing number of memory accesses, by using local varibles and working with 8 pixel per cycle

          <b>Also this function is flawed. It takes 8 pixels and in case when widht not multiple of 8 it also blends from 1 to 7 pixels
          from next line. In case when it is last line, in can access and owerrite memory regin out pixel_array borders. <b>
*/

int Blend_optimized (Image* front_img, Image* back_img, unsigned x_start, unsigned y_start)
    {
    assert(front_img);
    assert(back_img);

    if (front_img->width > back_img->width || front_img->height > back_img->height)
        {
        printf("front width (%u) or height (%u) Can't be bigger than back's (w:%u, h:%u)\n", 
                front_img->width, front_img->height,         back_img->width, back_img->height);

        return FAILURE;
        }
    
    __m256i _zero_m256i = _mm256_setzero_si256 ();
    __m256i  _255_m256i = _mm256_set1_epi16 ( (short int)0xFF00);

    const unsigned front_width = front_img->width;
    const unsigned  back_width =  back_img->width;

    const unsigned front_height = front_img->height;

    uint32_t*  back_color_array = (uint32_t*)  back_img->pixel_arr + (y_start * back_img->width + x_start); 
    uint32_t* front_color_array = (uint32_t*) front_img->pixel_arr;
    

    setvbuf (stdout, NULL, _IONBF, 0);

    for (unsigned y_coord = 0; y_coord < front_height; y_coord++)
      {    
      
      uint32_t* back_arr  =  back_color_array + y_coord * back_width; 
      uint32_t* front_arr = front_color_array + y_coord * front_width; 
    
        for (unsigned x_coord = 0; x_coord < front_width; x_coord += 256/32)
            {
           // printf ("X: %u; Y: %u, (back_arr: %d, front_arr: %d)\n", x_coord, y_coord, back_arr, front_arr);
            
            // load from memory 
            // lddqu becase memory can be not alligned
            __m256i  back_color = _mm256_lddqu_si256 ((__m256i*)  back_arr); 
            __m256i front_color = _mm256_lddqu_si256 ((__m256i*) front_arr);
            
            // unpack 8-bit value to 16-bit 
            __m256i back_color_low  = _mm256_unpacklo_epi8 (_zero_m256i, back_color);
            __m256i back_color_high = _mm256_unpackhi_epi8 (_zero_m256i, back_color);

            __m256i front_color_low  = _mm256_unpacklo_epi8 (_zero_m256i, front_color);
            __m256i front_color_high = _mm256_unpackhi_epi8 (_zero_m256i, front_color);

           // get alfa values from front pixel
            __m256i alpha_front_low  = _mm256_shufflehi_epi16 (front_color_low,  _MM_SHUFFLE(3,3,3,3)); 
                    alpha_front_low  = _mm256_shufflelo_epi16 (alpha_front_low,  _MM_SHUFFLE(3,3,3,3));
            
            __m256i alpha_front_high = _mm256_shufflehi_epi16 (front_color_high, _MM_SHUFFLE(3,3,3,3));
                    alpha_front_high = _mm256_shufflelo_epi16 (alpha_front_high, _MM_SHUFFLE(3,3,3,3));
            
            // then multiply, storing only high 16-bits of intermediate 32-bit value
            front_color_low  = _mm256_mulhi_epu16 (front_color_low,  alpha_front_low);
            front_color_high = _mm256_mulhi_epu16 (front_color_high, alpha_front_high);

            __m256i anti_alpha_low  =  _mm256_sub_epi16 (_255_m256i, alpha_front_low);
            __m256i anti_alpha_high =  _mm256_sub_epi16 (_255_m256i, alpha_front_high);
            
            back_color_low  = _mm256_mulhi_epu16 (back_color_low,  anti_alpha_low);
            back_color_high = _mm256_mulhi_epu16 (back_color_high, anti_alpha_high);
            
            // sum and truncuate
            __m256i sum_low  = _mm256_add_epi16 (front_color_low,  back_color_low);
            __m256i sum_high = _mm256_add_epi16 (front_color_high, back_color_high);
            
            __m256i sum_low_trunc  = _mm256_srli_epi16 (sum_low, 8);
            __m256i sum_high_trunc = _mm256_srli_epi16 (sum_high, 8);

            // store result
            __m256i result_color = _mm256_packus_epi16 (sum_low_trunc, sum_high_trunc);
            _mm256_storeu_si256 ((__m256i*) back_arr, result_color);

            back_arr  += 8;
            front_arr += 8;
            }
        
        back_arr += back_width - front_width;
      }


    return SUCCESS;
    }
