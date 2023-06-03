#include "StandartAWP.h"

#include <stdio.h>
#include <stdlib.h>

#include <math.h> // NAN only

#include "Grammar.h"

#include "LexicalCtx.h"
#include "DSL.h"
#include "LogMacroses.h"
#include "my_buffer.h"
#include "EasyDebug.h"

enum STD_NUM
    {
    NIL,
    };

struct StdAwp
    {
    const char* STD_NAME;
    TokenValue  token_value;
    int         type;
    };

const StdAwp STD_LEXEMS[] =  
{   
    {"NIL",  {}, NIL},
    
    {"PARAM", {.t_operator = '$'}, PARAMETR},

    {"ST",   {.t_operator = '$'}, STATEMENT},
    {"FUNC", {.t_operator = '$'}, FUNCTION},
    {"RET",  {}, FUNCTION_RET_TYPE},
    {"CALL", {.t_operator = '$'}, CALL},
    {"VAR",  {.t_initializator = VARIABLE_INITIALIZATOR}, INITIALIZATOR},
    
    // INSTRUCTIONS
    {"IF",   {.t_instruction = IF},   INSTRUCTION},
    {"ELSE", {.t_instruction = ELSE}, INSTRUCTION},

    // FUNCTION RET TYPE
    {"TYPE", {.t_function_ret_type = DOUBLE}, FUNCTION_RET_TYPE},
    {"VOID", {.t_function_ret_type = VOID},   FUNCTION_RET_TYPE},
    
    // NATIVE FUNCTIONS
    {"IN",   {.t_native_function = FIN},  NATIVE_FUNCTION},
    {"OUT",  {.t_native_function = FOUT}, NATIVE_FUNCTION},
    {"SIN",  {.t_native_function = SIN},  NATIVE_FUNCTION},
    {"COS",  {.t_native_function = COS},  NATIVE_FUNCTION},
    {"POW",  {.t_native_function = POW},  NATIVE_FUNCTION},
    
    // MATH  OPERATORS
    {"EQ",  {.t_operator = '='}, ASSIGMENT},

    {"ADD", {.t_operator = '+'}, OPERATOR},
    {"SUB", {.t_operator = '-'}, OPERATOR},
    {"MUL", {.t_operator = '*'}, OPERATOR},
    {"DIV", {.t_operator = '/'}, OPERATOR},

    // LOGICAL OPERATORS
    {"IS_GT", {.t_operator = '>'}, OPERATOR},
    {"IS_BT", {.t_operator = '<'}, OPERATOR},
};

const int NUMBER_OF_STD_LEXEMS = sizeof(STD_LEXEMS) / sizeof(STD_LEXEMS[0]);

static Token* GetTokenFromStd (LexicalCtx* ctx);
static int SetToken (Token* token, const char* word_buffer);
// #define LEX_CTX(CTX) ((CTX)->lex_ctx)

#define BUF(CTX)               ((CTX)->buf)
#define TOKEN_ARR(CTX)         ((CTX)->token_arr)
#define NUMBER_OF_TOKENS(CTX)  ((CTX)->number_of_tokens)
#define STRING_ARR(CTX)        ((CTX)->string_arr)
#define NUMBER_OF_STRINGS(CTX) ((CTX)->number_of_strings)

#pragma GCC diagnostic ignored "-Wcast-qual"


Token *const ERROR_1 = (Token*) 0x1;
Token *const ERROR_2 = (Token*) 0x2;
Token *const ERROR_3 = (Token*) 0x3;
Token *const ERROR_4 = (Token*) 0x4;
Token *const ERROR_5 = (Token*) 0x5;
Token *const ERROR_6 = (Token*) 0x6;

Token *const PREV_ERROR = (Token*) 0x13;

Token *const ERROR_TRASHOLD = (Token*)  0x99;

int GetProgramFromStdAwp (Program* program, const char* path_to_file)
    {
    //$log(1)
    assertlog(program,      EFAULT, return BAD_ARGUMENT);
    assertlog(path_to_file, EFAULT, return BAD_ARGUMENT);

    const char* std_buffer = GetSrcFile(path_to_file);
     if (!std_buffer)
       return FAILURE;

    LexicalCtx  ctx_{};
    LexicalCtx* ctx = &ctx_;

    size_t number_of_tokens = CountLines (std_buffer, '{');
    // $i(number_of_tokens)
    

    if (LexicalCtxCtor(ctx, std_buffer, false, number_of_tokens) != SUCCESS)
        return FAILURE;
    
    Token* root = GetTokenFromStd(ctx);
    if (root < ERROR_TRASHOLD)
        goto FAILURE_EXIT;
    
    program->token_arr        = TOKEN_ARR(ctx); 
    program->number_of_tokens = (int) NUMBER_OF_TOKENS(ctx);
    program->root             = root;
    
    // printf("string arr: %p\n", (void*) STRING_ARR(ctx));

    program->string_arr        = STRING_ARR(ctx);
    program->number_of_strings = (int) NUMBER_OF_STRINGS(ctx);

    program->path_to_src_file = path_to_file;

    KILL(BUF(ctx));
    KILL((void*) std_buffer);

    return SUCCESS;

    FAILURE_EXIT:

    LexicalCtxFailDtor(ctx);
    KILL((void*) std_buffer);
    
    return FAILURE;
    }

// 3 попытки считать команду, число, и имя
// массив 

#define CHECK_PTR(PTR, ERROR_HANDLER)    \
    do                                   \
    {                                    \
    if (PTR < ERROR_TRASHOLD && PTR)     \
        {                                \
        ERROR_HANDLER ;                  \
        }                                \
                                         \
    }while(0);

Token *const END_OF_TOKEN = (Token*) 0x999;

static Token* GetTokenFromStd (LexicalCtx* ctx)
    {
    //$log(1)
    assertlog(ctx, EFAULT, return NULL);
    
    int bracket = BufferGetCh(BUF(ctx));

    if (bracket == '}')
        return END_OF_TOKEN;

    if (bracket != '{')
        {
        func_message("Missing '{' in <%.*s>\n", (int) strcspn(BUF(ctx)->str, " \n\t"), BUF(ctx)->str);
        return ERROR_1;
        }

    static char word_buffer [MAX_WORD_LENGTH] = "";
    memset (word_buffer, '\0', MAX_WORD_LENGTH);

    int n = 0;

    Token* token = GetToken(ctx);
    if (!token)
        return ERROR_2;

    //  cmd
    if (sscanf (BUF(ctx)->str, " %[a-zA-Z_]%n", word_buffer, &n) > 0)
        {
        if (SetToken(token, word_buffer) < 0)
            {
            printf("<%s> not a std cmd\n", word_buffer);
            return ERROR_3;
            }

        if (TYPE(token) == NIL)
            {
            UnGetToken(ctx);
            BUF(ctx)->str += n;

            if (BufferGetCh(BUF(ctx)) != '}')
                {
                func_message("Missing '}' in <%.*s>\n", (int) strcspn(BUF(ctx)->str, " \n\t"), BUF(ctx)->str);
                return ERROR_4;
                }

            return NULL;
            }
        }
    else /* constant */
    {
    double value = NAN;
    if (sscanf (BUF(ctx)->str, " %lg%n", &value, &n) > 0)
        {
        TYPE(token)  = CONSTANT;
        CONST(token) = value;
        }
    else /* name */
        {
        if (sscanf (BUF(ctx)->str, " \"%[^\"]%n", word_buffer, &n) > 0)
            {
            TYPE(token)     = NAME;
            NAME_PTR(token) = word_buffer;

            $ls(word_buffer)
            $li(n)

            int temp = IsName(word_buffer, ctx); //string_arr, number_of_strings);

            // add new name
            if (temp == NOT_A_NAME)
                {
                if (AddString(ctx, token) == FAILURE)
                    return ERROR_5;
                }
            else
                NAME_ID(token) = temp;

            if (BufferGetCh(BUF(ctx)) == '}')
                {
                BUF(ctx)->str += n;
                return token;
                }
            }
        }
    }
    //
    BUF(ctx)->str += n;
    
    $li(n)
    $ls(BUF(ctx)->str)

     LEFT(token) = GetTokenFromStd(ctx);
    CHECK_PTR(LEFT(token), return PREV_ERROR);

    if (LEFT(token) == END_OF_TOKEN)
        {
        LEFT(token) = NULL;
        return token;
        }

    $ls("Got left")    
    $li(n)
    $ls(BUF(ctx)->str)

    RIGHT(token) = GetTokenFromStd(ctx);
    CHECK_PTR(RIGHT(token), return PREV_ERROR);

    $ls("Got right")    
    $li(n)
    $ls(BUF(ctx)->str)

    if (BufferGetCh(BUF(ctx)) != '}')
                {
                func_message("Missing '}' in <%.*s>\n", (int) strcspn(BUF(ctx)->str, " \n\t"), BUF(ctx)->str);
                return ERROR_6;
                }

    // func_message("Unknow string in '%.*s'\n", (int) strcspn(BUF(ctx)->str, " \n\t"), BUF(ctx)->str); 
    
    return token;
    }

static int SetToken (Token* token, const char* word_buffer)
    {
    //$log(1)
    assertlog(token,       EFAULT, return BAD_ARGUMENT);
    assertlog(word_buffer, EFAULT, return BAD_ARGUMENT); 

    for (int i = 0; i < NUMBER_OF_STD_LEXEMS; i++)
        {
        if (!stricmp(word_buffer, STD_LEXEMS[i].STD_NAME))
            {
             TYPE(token) = STD_LEXEMS[i].type;
            VALUE(token) = STD_LEXEMS[i].token_value;

            return i;
            }
        }

    return NOT_A_NAME;
    }

