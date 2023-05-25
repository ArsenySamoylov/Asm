#pragma once

#include "IRContext.h"

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
