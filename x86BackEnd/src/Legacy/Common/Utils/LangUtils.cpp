#include "LangUtils.h"

#include <stdio.h>

#include "Grammar.h"
#include "DSL.h"
#include "LogMacroses.h"

#pragma GCC diagnostic ignored "-Wformat="
void PrintToken (const Token *const token, const char** STRING_ARR)
    {
    if (!token) return;

    printf("Token address %p\n", token);
    printf("type: (%d) ", TYPE(token));    

    switch (TYPE(token))                                                        
    {
    #define TOKEN token
        #define TOKEN_TYPE(name, val, specificator, ...)                   \
            case name:                                                     \
                printf (#name " | {'" specificator "'}\n", __VA_ARGS__);   \
                break;

        #include "TokenTypes.h"

        #undef TOKEN
        #undef TOKEN_TYPE

    default: printf("UNCKNOWN TYPE\n"); break;                             
    }                                                                      

    #ifndef N_SRC_INFO
    
    printf("Line: %d, Indent: %d\n", token->line, token->indent);
    printf("Source ptr to code in buffer: %p\n", token->ptr_to_src_code);
    
    #endif

    return;
    }

void LogToken (const Token *const token, const char* name, const char** STRING_ARR)
    {
    if (!token) return;

    logf("Token %s\n", name);                                                
    logf("(%p)::::::::::::::::\n", token);                                       
    logf("\t\t  left_child: %p\n",  LEFT(token));                                
    logf("\t\t right_child: %p\n", RIGHT(token));                                
    logf("\t\t        type: ");     

    switch (TYPE(token))                                                        
        {
        #define TOKEN token
        #define TOKEN_TYPE(name, val, specificator, ...)                    \
            case name:                                                      \
                logf_ni (#name " | {'" specificator "'}\n", __VA_ARGS__);   \
                break;

        #include "TokenTypes.h"

        #undef TOKEN
        #undef TOKEN_TYPE

        default: logf_ni("UNCKNOWN TYPE\n");
                 break;                             
        }

    #ifndef N_SRC_INFO
    
    logf("\t\t\t  Line: %d\n",  token->line);
    logf("\t\t\tIndent: %d\n", token->indent);
    // logf("Source ptr to code in buffer: %p\n", token->ptr_to_src_code);
    
    #endif

    logf("\n");

    return;
    }