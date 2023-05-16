#pragma once
#include "LogMacroses.h"
//////////////////////////////////////////////////////////////////
#define TYPE(node)      node->type 
#define VALUE(node)     node->value

#define  LEFT(node)   node->left_child
#define RIGHT(node)   node->right_child

//////////////////////////////////////////////////////////////////
#define NewConstNode(value)                NewDefNode (CONSTANT, {.t_constant = value})
#define NewOpNode(op, left, right)         NewDefNode (OPERATOR, {.t_operator = op}, left, right)
#define NewFunctNode(functor, left, right) NewDefNode (FUNCTOR,  {.t_operator = functor}, left, right)
//////////////////////////////////////////////////////////////////
#define TYPE_IS(node, t_type) ((node) && (node->type == t_type) ? true : false) 

#define       CONST(node)  node->value.t_constant
#define  LEFT_CONST(node)  CONST( LEFT(node))
#define RIGHT_CONST(node)  CONST(RIGHT(node))

#define OP(node)  node->value.t_operator
#define VAR(node) node->value.t_variable

#define INSTR(node)        node->value.t_instruction
#define INSTR_STR(node)    (IS_INSTRUCTION(node) ? INSTRUCTIONS[INSTR(node)] : "NOT A INSTRUCTION")

#define NAME_PTR(node)     VALUE(node).t_name_ptr
#define NAME_ID(node)      VALUE(node).t_name_id
#define RET_TYPE(node)     VALUE(node).t_function_ret_type

#define INITIALIZATOR(node) VALUE(node).t_initializator
#define NATIVE_FUNC(node)   VALUE(node).t_native_function

#define NUM_OF_VARS(node)  VALUE(node).t_number_of_variables
#define VAR_NUMBER(node)   VALUE(node).t_varible_number

#define LABEL_PTR(node)    node->t_label_ptr

// #define STR(node)          node->value.t_string
/*
#define       FUNC(node)   node->value.t_functor
#define  LEFT_FUNC(node)   FUNC( LEFT(node))
#define RIGHT_FUNC(node)   FUNC(RIGHT(node))
*/

///////////////////////////////////////////////////////////////////
// #define OP_IS(op) ( ( (NODE) && (NODE->type == OPERATOR) && (NODE->value.t_operator == op)) ? true : false )

/*
#define       COPY(node)  ( (node) ? CopyBranch(node) : nullptr)
#define  COPY_LEFT(node)  ( (node) ? CopyBranch(node-> left_child) : nullptr)
#define COPY_RIGHT(node)  ( (node) ? CopyBranch(node->right_child) : nullptr)
*/

///////////////////////////////////////////////////////////////////
#define IS_OP(node)         ( (node) && (node->type == OPERATOR ) ? true : false )
#define IS_CONST(node)      ( (node) && (node->type == CONSTANT ) ? true : false )
#define IS_VAR(node)        ( (node) && (node->type == VARIABLE ) ? true : false )
#define IS_FUNC(node)       ( (node) && (node->type == FUNCTION ) ? true : false )
#define IS_STATEMENT(node)  ( (node) && (node->type == STATEMENT) ? true : false )
#define IS_ASSIGMENT(node)  ( (node) && (node->type == ASSIGMENT) ? true : false )
#define IS_INSTRUCTION(node) ((node) && (node->type == INSTRUCTION) ? true : false)
/*
#define IS_ZERO(node)  ( IS_CONST(node) && (node->value.t_constant == 0) ? true : false ) 
#define IS_ONE(node)   ( IS_CONST(node) && (node->value.t_constant == 1) ? true : false ) 
*/
///////////////////////////////////////////////////////////////////
/*
#define KILL_BRANCHES(node) do                      \
                        {                           \
                        DeleteBranch( LEFT(node));  \
                        DeleteBranch(RIGHT(node));  \
                        } while(0);     
*/

