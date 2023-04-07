#pragma once

#include "Image.hpp"

const int NUMBER_OF_ITERATIONS_FOR_MEASURMENT = 10000;

int Measure_perfomance_difference(Image* front_img, Image* back_img, unsigned x_start, unsigned y_start);
