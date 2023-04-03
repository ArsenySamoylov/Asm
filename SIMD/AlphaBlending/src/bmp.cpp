#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#include "bmp.hpp"
#include "common.hpp"

const int TEMP_BUFFER_SIZE = 128; // must be big enough to hold both headers info from file
static_assert (TEMP_BUFFER_SIZE > BITMAP_HEADER_SIZE + DIB_HEADER_SIZE);

#pragma GCC diagnostic ignored "-Wpointer-arith"

int Bmp_image_ctor (Bmp_image* bmp, const char* file_path)
  {
  assert(file_path);

  FILE*          temp        = NULL;
  BITMAP_header* header      = NULL;
  DIB_header*    dib_header  = NULL;
  RGBA*          pixel_array = NULL;
  
  byte temp_buffer[TEMP_BUFFER_SIZE] {};
  void* temp_buffer_ptr = (void*) temp_buffer;

  temp = fopen(file_path, "rb");
  if (!temp)
    {
    printf ("Couldn't find file '%s'\n", file_path);
    goto FAILURE_EXIT;
    }

  header = (BITMAP_header*) calloc (1, sizeof(header[0]));
  assert(header);

  if (fread(temp_buffer, sizeof(temp_buffer[0]), BITMAP_HEADER_SIZE + DIB_HEADER_SIZE + 16, temp) == 0)
      {
      printf ("Couldn't read headers from '%s'n\n", file_path);
      goto FAILURE_EXIT;
      }
  
//  printf ("%u - sizeof, uint32 = %u\n", sizeof(BITMAP_header), sizeof(uint32_t));
  header->bfType[0]  = * ((char*) temp_buffer_ptr + 0);
  header->bfType[1]  = * ((char*) temp_buffer_ptr + 1);
  temp_buffer_ptr += 2;

  header->bfSize     = * ((uint32_t*) temp_buffer_ptr);  temp_buffer_ptr += sizeof(uint32_t);
  header->bfReserved = * ((uint32_t*) temp_buffer_ptr);  temp_buffer_ptr += sizeof(uint32_t);
  header->bfOffbits  = * ((uint32_t*) temp_buffer_ptr);  temp_buffer_ptr += sizeof(uint32_t);

  if (header->bfType[0] != 'B' && header->bfType[1] != 'M')
      {
      printf ("Wrong signature for file '%s'\n", file_path);
      printf ("'%.1s' instead of 'BM'\n", (char*) header->bfType);

      goto FAILURE_EXIT;
      }

  dib_header = (DIB_header*) calloc(1, sizeof(dib_header[0]));
  assert(dib_header);

  dib_header->header_size = * ((uint32_t*) temp_buffer_ptr);  temp_buffer_ptr += sizeof(uint32_t);
  dib_header->width       = * ((uint32_t*) temp_buffer_ptr);  temp_buffer_ptr += sizeof(uint32_t);
  dib_header->height      = * ((uint32_t*) temp_buffer_ptr);  temp_buffer_ptr += sizeof(uint32_t);
  
  dib_header->color_planes   = * ((uint16_t*) temp_buffer_ptr);  temp_buffer_ptr += sizeof(uint16_t);
  dib_header->bits_per_pixel = * ((uint16_t*) temp_buffer_ptr);  temp_buffer_ptr += sizeof(uint16_t);

  dib_header->compression = * ((uint32_t*) temp_buffer_ptr); temp_buffer_ptr += sizeof(uint32_t);
  dib_header->image_size  = * ((uint32_t*) temp_buffer_ptr); temp_buffer_ptr += sizeof(uint32_t);

//  assert(dib_header->image_size / (dib_header->bits_per_pixel / 8) == dib_header->width * dib_header->height);

  pixel_array = (RGBA*) calloc (dib_header->width * dib_header->height, sizeof(pixel_array[0]));
  assert(pixel_array);
  
  printf("pixel_array: \t image_size: %u\n\t\twidth:%u height:%u\n\t\tbits_per_pixel: %u\n", 
          dib_header->image_size, dib_header->width, dib_header->height, dib_header->bits_per_pixel);

  fseek (temp, header->bfOffbits, SEEK_SET);

  if (fread(pixel_array, dib_header->width * dib_header->height, sizeof(pixel_array[0]), temp) == 0)
      {
      printf ("Couldn't read pixel array from '%s'n\n", file_path);
      goto FAILURE_EXIT;
      }

  bmp->header      = header;
  bmp->dib_header  = dib_header;
  bmp->pixel_array = pixel_array;

  fclose(temp);

  return SUCCESS;

  FAILURE_EXIT:
  
  if (temp)
     fclose(temp);

  if (header)
     free(header);

  if (dib_header)
     free(dib_header);

  if (pixel_array)
     free(pixel_array);

  return FAILURE;
  }

int CheckBmpFormat (Bmp_image* bmp)
    {
    assert(bmp);
    
    if (!bmp->header)
      {
      printf("Empty header\n");
      return FAILURE;
      }

    if (!bmp->dib_header)
      {
      printf ("Empty dib header\n");
      return FAILURE;
      }

    if (bmp->header->bfType[0] != 'B' && bmp->header->bfType[1] != 'M')
      {
      printf ("Wrong signature for bmp (%p)\n", bmp);
      printf ("'%.1s' instead of 'BM'\n", (char*) bmp->header->bfType);

      return FAILURE;
      }

  
  if (bmp->dib_header->compression != 0 &&
      bmp->dib_header->compression != 3)
      {
      printf("For correct work bmp file MUST have ZERO compression, (not %u)\n", bmp->dib_header->compression);
      
      return FAILURE;
      }

  if (bmp->dib_header->bits_per_pixel != 32)
      {
      printf ("Image must be 32 bits per pixel (RGBA format) (not %u)\n",bmp->dib_header->bits_per_pixel);
      
      return FAILURE;
      }
  
  if (bmp->dib_header->width * bmp->dib_header->height != bmp->dib_header->image_size / sizeof(RGBA))
      {
      printf ("Error, image: width * height != image_size / sizeof(RGBA) (%u * %u != %u / %lu)\n",
      bmp->dib_header->width, bmp->dib_header->height, bmp->dib_header->image_size, sizeof(RGBA));

     // return FAILURE;
      }

    return SUCCESS;
    }
