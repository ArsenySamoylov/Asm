#include "LexicalCtx.h"

#include "LogMacroses.h"
#include "Program.h" // for CleanStringArr
#include "DSL.h"

#include "EasyDebug.h"

int LexicalCtxCtor(LexicalCtx* ctx, const char* buffer, int allow_recalloc, size_t start_number_of_tokens)
    {
    assertlog(ctx,    EFAULT, return BAD_ARGUMENT);
    assertlog(buffer, EFAULT, return BAD_ARGUMENT);

    ctx->token_arr_size = start_number_of_tokens;
    // $i(ctx->token_arr_size)

    Token* arr = (Token*) CALLOC (ctx->token_arr_size, sizeof(arr[0]));
    if (!arr) 
        return FAILURE;

    ctx->string_arr_size = start_number_of_tokens;

    const char** string_arr = (const char**) CALLOC (ctx->string_arr_size, sizeof(string_arr[0])); 
    if (!string_arr)
        goto FAILURE_EXIT;

    {
    ctx->buf = (Buffer*) CALLOC(1, sizeof(ctx->buf[0]));
    if (!ctx->buf)
        goto FAILURE_EXIT;

    CHECK (BufferCtor(ctx->buf, buffer) == SUCCESS, goto FAILURE_EXIT);

    ctx->number_of_tokens  = 0;
    ctx->number_of_strings = 0;

    ctx->token_arr         = arr;
    ctx->number_of_tokens  = 0;
    
    ctx->string_arr        = string_arr;
    ctx->number_of_strings = 0;

    ctx->allow_recalloc = allow_recalloc;
    }

    return SUCCESS;
    
    FAILURE_EXIT:

     if (arr)
        KILL(arr);

    if (string_arr)
        KILL(string_arr);

    if (ctx->buf)
        KILL(ctx->buf);

    return FAILURE;
    }
   
int LexicalCtxFailDtor(LexicalCtx* ctx)
    {
    assertlog(ctx, EFAULT, return BAD_ARGUMENT);

    if (ctx->token_arr)
        KILL(ctx->token_arr);

    if (ctx->string_arr)
        {
        CleanStringArr(ctx->string_arr, (int) ctx->number_of_strings);
        KILL(ctx->string_arr);
        }
        
    if (ctx->buf)
        KILL(ctx->buf);

    return SUCCESS;
    }

int LexicalCtxRealloc(LexicalCtx* ctx)
    {
    assertlog(ctx, EFAULT, return BAD_ARGUMENT);

    if (ctx->allow_recalloc != true)
        {
        func_message("Recalloc not allowed for LexicalCtx %p\n", ctx);
        return FAILURE;
        }

    Token* token_arr = (Token*) RECALLOC (ctx->token_arr, ctx->number_of_tokens * sizeof(token_arr[0]));
    if (!token_arr)
        return FAILURE;

    ctx->token_arr = token_arr;

    $lzu(ctx->number_of_strings)

    if (!ctx->number_of_strings)
        {
        printf("Warnig: 0 number of strings!!!\n");

        return SUCCESS;
        }
    
    const char** string_arr = (const char**) RECALLOC (ctx->string_arr, ctx->number_of_strings * sizeof(string_arr[0]));
    if (!string_arr)
        return FAILURE;

    ctx->string_arr = string_arr;

    return SUCCESS;
    }

Token* GetToken(LexicalCtx* ctx)
    {
    assertlog(ctx, EFAULT, return NULL);

    // check for resize
    if (ctx->number_of_tokens == ctx->token_arr_size)
        {

        if (ctx->allow_recalloc != true)
            {
            func_message("No free tokens, realloc isn't allowed (number of tokens = %zu)\n", ctx->number_of_tokens);
            return NULL;
            }

        ctx->token_arr_size *= 2;
        Token* fuck = (Token*) RECALLOC(ctx->token_arr, ctx->token_arr_size * sizeof(fuck[0]));  
        if (!fuck) 
            return NULL;

        ctx->token_arr = fuck;
        }

    return ctx->token_arr + ctx->number_of_tokens++;
    }

int UnGetToken (LexicalCtx* ctx)
    {
    assertlog(ctx, EFAULT, return BAD_ARGUMENT);

    if (ctx->number_of_tokens > 1)
        ctx->number_of_tokens--;
    else
        return FAILURE;

    return SUCCESS;
    }
    
int IsName (const char* str, LexicalCtx* ctx)
    {
    assertlog(str, EFAULT, return NOT_A_NAME);
    assertlog(ctx, EFAULT, return NOT_A_NAME);

    for (size_t i = 0; i < ctx->number_of_strings; i++)
        if (!strcmp(str, *(ctx->string_arr + i)))
            return (int) i;

    return NOT_A_NAME;
    }

int AddString(LexicalCtx* ctx, Token* token)
    {
    assertlog(ctx, EFAULT, return BAD_ARGUMENT);
    assertlog(ctx, EFAULT, return BAD_ARGUMENT);

    if (ctx->number_of_strings == ctx->string_arr_size)
        {
        ctx->string_arr_size *=2;
        const char** xyu = (const char**) RECALLOC(ctx->string_arr, ctx->string_arr_size * sizeof(xyu[0]));
        if (!xyu) 
            return FAILURE;

        ctx->string_arr = xyu;
        }

    // *(string_arr + number_of_strings)
    *(ctx->string_arr + ctx->number_of_strings) = strdup(NAME_PTR(token));

    // printf("Lexical test: %s\n test 2: %s\n test 3: %p\n", current_str, NAME_PTR(token), (void*) NAME_PTR(token));
    
    $lzu(ctx->number_of_strings)

    NAME_ID(token) = (int) ctx->number_of_strings++;

    return SUCCESS;
    }
