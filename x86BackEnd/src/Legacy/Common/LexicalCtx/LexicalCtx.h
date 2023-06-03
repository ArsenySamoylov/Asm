#pragma once

#include <stddef.h>

#include "Token.h"
#include "my_buffer.h"


// !!! move ALocating token arr to program
// or use MOVE FUNCTION for Ctx and Program
struct LexicalCtx
    {
    Buffer* buf;

    Token* token_arr;
    size_t token_arr_size;
    size_t number_of_tokens;

    const char** string_arr;
    size_t string_arr_size;
    size_t number_of_strings;

    int allow_recalloc;
    };

const int NOT_A_NAME          = -555;
const int NOT_A_INSTRUCTION   = -666;
const int NOT_A_INITIALIZATOR = -111;
const int NOT_A_RET_TYPE      = -333;
const int NOT_A_NATIVE_FUNCTION = -222;

const int START_NUMBER_OF_TOKENS  = 20;
const int START_NUMBER_OF_STRINGS = 16;

int LexicalCtxCtor(LexicalCtx* ctx, const char* buffer, 
                   int allow_recalloc = true, size_t start_number_of_tokens = START_NUMBER_OF_TOKENS);
int LexicalCtxFailDtor(LexicalCtx* ctx);

int LexicalCtxRealloc(LexicalCtx* ctx);

Token* GetToken(LexicalCtx* ctx);
int UnGetToken (LexicalCtx* ctx);

int AddString(LexicalCtx* ctx, Token* token);

int IsName (const char* str, LexicalCtx* ctx);

