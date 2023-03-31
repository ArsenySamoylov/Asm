#pragma once

#include "common.hpp"

const float R_MAX_SQR = 2.f * 2.f; 

const float X_MIN = -2.f;
const float X_MAX =  1.f;

const float Y_MIN = -1.2f;
const float Y_MAX =  Y_MIN + 1.38f * (X_MAX - X_MIN) * ( (float) DEF_HEIGHT / (float) DEF_WIDTH);

int  CalculateMandalbrot (pixel_color* color_array, unsigned screen_width, unsigned screen_height);

struct __mm256
    {
    float arr[8];
    };

struct __mm256i
    {
    int arr[8];
    };

const unsigned  NUMBER_OF_PACKED_FLOATS   = sizeof(__mm256)  / sizeof(float);
const unsigned  NUMBER_OF_PACKED_INTEGERS = sizeof(__mm256i) / sizeof(int);

static_assert(NUMBER_OF_PACKED_FLOATS == NUMBER_OF_PACKED_INTEGERS);