#pragma once

#include <stdint.h>

typedef unsigned char byte;

struct RGBA
    {
    byte alpha_mask;
    byte green;
    byte red;
    byte blue;
    };

const int BFTYPE_SIZE = 2;

const int BITMAP_HEADER_SIZE = 14;
const int DIB_HEADER_SIZE    = 24;

struct BITMAP_header
  { 
  char     bfType[BFTYPE_SIZE]; 
  uint32_t bfSize;
  uint32_t bfReserved;
  uint32_t bfOffbits;
  };

struct DIB_header
  {
  uint32_t header_size;
  uint32_t width;
  uint32_t height;
  
  uint16_t color_planes;
  uint16_t bits_per_pixel;
  
  uint32_t compression;
  uint32_t image_size;
  };                         

struct Bmp_image
  {
  BITMAP_header* header; 
  DIB_header*    dib_header;

  RGBA* pixel_array;
  };

int Bmp_image_ctor (Bmp_image* bmp, const char* file_path);
