#include <stdio.h>
#include <assert.h>
#include <stdint.h>

#include <immintrin.h>

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
    
    __m256i _zero_m256i = _mm256_setzero_si256 ();
    __m256i  _255_m256i = _mm256_set1_epi16 (0xFF00);

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
            printf ("X: %u; Y: %u, (back_arr: %d, front_arr: %d)\n", x_coord, y_coord, back_arr, front_arr);

            __m256i  back_color = _mm256_lddqu_si256 ((__m256i*)  back_arr); 
            __m256i front_color = _mm256_lddqu_si256 ((__m256i*) front_arr);
            
            __m256i back_color_low  = _mm256_unpacklo_epi8 (_zero_m256i, back_color);
            __m256i back_color_high = _mm256_unpackhi_epi8 (_zero_m256i, back_color);

            __m256i front_color_low  = _mm256_unpacklo_epi8 (_zero_m256i, front_color);
            __m256i front_color_high = _mm256_unpackhi_epi8 (_zero_m256i, front_color);

            /*
            static const __m256i Alpha_shuffle_mask = _mm256_set_epi8 
                ( 
                zero_shuffle, 12, zero, 12, zero, 12,
                zero_shuffle, 14, zero_shuffle, 14, zero_shuffle, 14, zero_shuffle, 14
                zero_shuffle,  6, zero_shuffle,  6, zero_shuffle,  6, zero_shuffle, 6
                
                12,12,12,12, 
                9,9,9,9,
                6,6,6,6, 
                3,3,3,3
                );
            */
                   
            // shuffle
            __m256i alpha_front_low  = _mm256_shufflehi_epi16 (front_color_low,  _MM_SHUFFLE(3,3,3,3)); 
                    alpha_front_low  = _mm256_shufflelo_epi16 (alpha_front_low,  _MM_SHUFFLE(3,3,3,3));
            
            __m256i alpha_front_high = _mm256_shufflehi_epi16 (front_color_high, _MM_SHUFFLE(3,3,3,3));
                    alpha_front_high = _mm256_shufflelo_epi16 (alpha_front_high, _MM_SHUFFLE(3,3,3,3));
            
            // then multiply
            //

            front_color_low  = _mm256_mulhi_epu16 (front_color_low,  alpha_front_low);
            front_color_high = _mm256_mulhi_epu16 (front_color_high, alpha_front_high);

            __m256i anti_alpha_low  =  _mm256_sub_epi16 (_255_m256i, alpha_front_low);
            __m256i anti_alpha_high =  _mm256_sub_epi16 (_255_m256i, alpha_front_high);
            
            back_color_low  = _mm256_mulhi_epu16 (back_color_low, anti_alpha_low);
            back_color_high = _mm256_mulhi_epu16 (back_color_high, anti_alpha_high);
            
            __m256i sum_low  = _mm256_add_epi16 (front_color_low,  back_color_low);
            __m256i sum_high = _mm256_add_epi16 (front_color_high, back_color_high);
            
            __m256i sum_low_trunc = _mm256_srli_epi16 (sum_low, 8);
            __m256i sum_high_trunc = _mm256_srli_epi16 (sum_high, 8);

            __m256i result_color = _mm256_packus_epi16 (sum_low_trunc, sum_high_trunc);

            
           // *back_arr = (uint32_t) (new_red_green | new_alph_blue); 
            _mm256_storeu_si256 ((__m256i*) back_arr, result_color);

            back_arr  += 8;
            front_arr += 8;
            }
        
        back_arr += back_img->width - front_img->width;
      }
    return SUCCESS;
    }
