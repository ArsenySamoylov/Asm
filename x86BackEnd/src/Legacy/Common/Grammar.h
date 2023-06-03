#pragma once

enum TokenType
    {
    #define TOKEN_TYPE(name, val, specificator, ...)  name = val,

    #include "TokenTypes.h"
    #undef TOKEN_TYPE

    UNKNOWN_TYPE  = -999,
    };


enum             INSTUCTIONS_NUM   {  IF,  ELSE,   WHILE,   RETURN, NUMBER_OF_INSTUCTIONS };
const char *const INSTRUCTIONS[] = { "if", "else", "while", "return" };

// change to CPU functions or CPU commands

/*
const char *const NATIVE_FUNCTIONS[] = { "fout", "fin", "sin", "cos" };
*/


enum              FUNCTION_RET_TYPES_NUM { DOUBLE,   VOID,  NUMBER_OF_FUNCTION_RET_TYPES };
const char *const FUNCTION_RET_TYPES[] = {"double", "void"};

struct NativeFunctionStruct
    {
    const char* str; 
    int         function;
    int         number_of_parametres;

    // added on 19.5.2023
    int ret_type;
    };

// 19.2023 in AstToIr.cpp I use Function_NUM as index in functions array
// !!! BE accurate
enum NATIVE_FUNCTIONS_NUM   
    {  
    FOUT = 0,  
    FIN,   
    SIN,   
    COS,  
    POW,
    NUMBER_OF_NATIVE_FUNCTIONS, 
    };
// 19.2023 in AstToIr.cpp I use Function_NUM as index in functions array
// !!! BE accurate
const NativeFunctionStruct NATIVE_FUNCTIONS[] = {
            {"fout", FOUT, 1, VOID},
            {"fin",  FIN,  1, DOUBLE},
            {"sin",  SIN,  1, DOUBLE},
            {"cos",  COS,  1, DOUBLE},
            {"pow",  POW,  2, DOUBLE},
};

const int NUMBER_OF_NATIVE_FUNCTIONS_STRUCT = sizeof(NATIVE_FUNCTIONS) / sizeof(NATIVE_FUNCTIONS[0]);

static_assert(NUMBER_OF_NATIVE_FUNCTIONS_STRUCT == NUMBER_OF_NATIVE_FUNCTIONS);


enum              INITIALIZATORS_NUM { FUNCTION_INITIALIZATOR, VARIABLE_INITIALIZATOR, NUMBER_OF_INITIALIZATORS };
const char *const INITIALIZATORS[] = {"extern",                "var"};


const char OPERATORS[] = "+-/*<<>>"; // ^
enum OPERATOR_NUM 
    {
    ADD = '+',
    SUB = '-',
    DIV = '/',
    MUL = '*',
    // POW = '^',
    OUT = '<', // '<<'  // also for FIN
    IN  = '>', // '>>'  // TODO
    
    BIGGER = '>',
    LESS   = '<',
    };

const char COMMENT = '#';

const char *const MAIN_NAME = "main";

const int MAX_FUNCTION_NAME_LENGTH = 256;
const int MAX_WORD_LENGTH          = 256;
