#pragma once

#pragma GCC diagnostic ignored "-Wlarger-than=" // for lasan

#include "NameTable.h"

union TokenValue
    {
    int    t_instruction;
    char   t_operator;
    double t_constant;
    int    t_initializator;
    int    t_native_function;
    int    t_function_ret_type;
    // char*  t_string;
    char*  t_name_ptr;
    int    t_name_id;
    int    t_number_of_variables;
    int    t_varible_number;
    };

struct Token
    {
    Token*  left_child;
    Token* right_child;

    int type; 

    union TokenValue value;

    Label* t_label_ptr;
    
    #ifndef N_SRC_INFO
    const char* ptr_to_src_code;
    
    int line;
    int indent;
    #endif
    
    };

Token* NewToken (int type = 0,               TokenValue value = {0},
                Token* left_child = nullptr, Token*     right_child = nullptr);

int DeleteBranch (Token* def_node);