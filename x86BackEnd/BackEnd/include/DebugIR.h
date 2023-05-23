#pragma once

#include <stdio.h>

#include "Module.h"

int DumpIR (const Module* mod, const char* out_file);

#define PRINT_VALUE(val)                      \
    do {                                      \
    printf ("(%s:%d) ", __FILE__, __LINE__);  \
    PrintValue(val); } while(0)

int PrintValue (const Value* val);

int WriteToFile (FILE* out, const Instruction* instr);

