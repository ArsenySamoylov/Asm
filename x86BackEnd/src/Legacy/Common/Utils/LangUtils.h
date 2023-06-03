#pragma once

#include "Program.h"

void PrintToken (const Token *const token, const char** string_arr = NULL);

void LogToken (const Token *const token, const char* name, const char** STRING_ARR = NULL);
#define $LOG_TOKEN(token, ...) LogToken(token, #token __VA_OPT__(,) __VA_ARGS__);