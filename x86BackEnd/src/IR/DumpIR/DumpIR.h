#pragma once

#include <stdio.h>

#include "Module.h"

#define PRINT_VALUE(val)                      \
    do {                                      \
    printf ("(%s:%d) ", __FILE__, __LINE__);  \
    PrintValue(val); } while(0)

int PrintValue (const Value* val);

int WriteToFile (FILE* out, const Instruction* instr);
