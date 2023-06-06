/*!
\file
\brief This file contains functions to write op_codes to ctx (and also print commend for Assembler file) 
*/
#pragma once

#include "Instructions.h"
#include "IRContext.h"

const size_t VAR_SIZE = 8;

/**
 * @brief Wrapper for Call command
 *  This wrapper sets storage field for Value and adds reference 
 *  so resulting address wil be written in ResolveReference function.
 * @param ctx 
 * @param callee 
 */
void PUT_CALL  (Context* ctx, const Function* callee);

/**
 * @brief Wrapper for Call command
 *  This wrapper sets storage field for Value and adds reference 
 *  so resulting address wil be written in ResolveReference function.
 * @param ctx 
 * @param jump_dest 
 */
void PUT_JUMP  (Context* ctx, const BaseBlock* jump_dest);

/**
 * @brief Wrapper for Call command
 *  This wrapper sets storage field for Value and adds reference 
 *  so resulting address wil be written in ResolveReference function.
 * @param ctx 
 * @param jump_dest 
 * @param reg_num 
 */
void PUT_CJUMP (Context* ctx, const BaseBlock* jump_dest, GPRegisterNumber reg_num);

size_t PutSubRsp      (Context* ctx, size_t num,                                  const char* comment = NULL);
size_t PutAddRsp      (Context* ctx, size_t num,                                  const char* comment = NULL);
size_t PutRet         (Context* ctx,                                              const char* comment = NULL);
size_t PutJump        (Context* ctx, name_t label,                                const char* comment = NULL);
size_t PutCJump       (Context* ctx, GPRegisterNumber test, name_t label,         const char* comment = NULL);
size_t PutCall        (Context* ctx, name_t label,                                const char* comment = NULL);    
size_t PutPushR       (Context* ctx, GPRegisterNumber reg,                        const char* comment = NULL);
size_t PutPopR        (Context* ctx, GPRegisterNumber reg,                        const char* comment = NULL);
size_t PutMovRR       (Context* ctx, GPRegisterNumber src, GPRegisterNumber dest, const char* comment = NULL); 
size_t PutMovConstant (Context* ctx, GPRegisterNumber dest, data_t data,                                   const char* comment = NULL); 
size_t PutMoveToStack    (Context* ctx, GPRegisterNumber src, size_t offset,                                  const char* comment = NULL);
size_t PutMoveFromStack  (Context* ctx, size_t offset, GPRegisterNumber dest,                                 const char* comment = NULL);

size_t PutLogicOp     (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest,  const char* comment = NULL);
size_t PutMathAddSub  (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest,  const char* comment = NULL);
size_t PutMulDiv      (Context* ctx,  OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest, const char* comment = NULL);

size_t PutSysCall (Context* ctx);