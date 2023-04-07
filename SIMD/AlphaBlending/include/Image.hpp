#pragma once

typedef unsigned char byte;

struct RGBA
    {
    byte blue;
    byte red;
    byte green;
    byte alpha_mask;
    };

struct Image
  {
  RGBA* pixel_arr;

  unsigned width;
  unsigned height;
  };
