#pragma once

#include "Module.h"

int DumpIR (const Module* mod, const char* out_file);

#define PRINT_VALUE(val)                      \
    printf ("(%s:%d) ", __FILE__, __LINE__);  \
    PrintValue(val);

int PrintValue (const Value* val);