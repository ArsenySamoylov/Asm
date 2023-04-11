#pragma once

#include "TypeDef.hpp"

const int MAX_WORD_LENGTH = 30;
static_assert(MAX_WORD_LENGTH == 30); // becase of sscanf in AddWordToDataBuffer 

const int START_TEMP_BUF_SIZE = 256;
const int BUFFER_GROWTH_RATE  = 2;

processed_data* ProcessData (raw_data* raw_src_data);
