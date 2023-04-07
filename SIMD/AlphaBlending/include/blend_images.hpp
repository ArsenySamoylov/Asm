#pragma once

#include "Image.hpp"

const int NUMBER_OF_CYCLES = 1000;
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
int Blend_not_optimized (Image* front, Image* background, unsigned x_coord, unsigned y_coord);

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
int Blend_optimized (Image* front, Image* background, unsigned x_coord, unsigned y_coord);
