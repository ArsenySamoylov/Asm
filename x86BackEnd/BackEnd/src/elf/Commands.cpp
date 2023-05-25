#include <stdio.h>

#include "Commands.h"

#define print_comment(COMMENT) do {                                 \
                                  if (comment)                      \
                                    print_raw ("# %s\n", comment);   \
                                                                    \
                                 print_raw ("\n"); } while (0);

size_t PutSubRsp (Context* ctx, size_t num, const char* comment)
    {
    assert (ctx);

    print ("sub $%lu, %%rsp ", num);
    print_comment (comment);
    
    return 0;
    }

size_t PutAddRsp (Context* ctx, size_t num, const char* comment)
    {
    assert (ctx);
    print ("add $%lu, %%rsp", num);
    print_comment (comment);

    return 0;
    }

size_t PutRet (Context* ctx, const char* comment)
    {
    assert(ctx);
    print ("ret")
    print_comment (comment);

    return 0;
    }

size_t PutJump  (Context* ctx, name_t label, const char* comment)
    {
    assert (ctx);

    print ("jmp %s", label);
    print_comment (comment);
    print_raw ("\n");

    return 0;
    }

size_t PutCJump (Context* ctx, GPRegisterNumber test, name_t label, const char* comment)
    {
    assert (ctx);

    print ("cmp $100, %s\n", GetRegName(test));
    print ("je %s", label);
    print_comment (comment);

    return 0;
    }

size_t PutCall  (Context* ctx, name_t label, const char* comment)
    {
    assert (ctx);
    print ("call %s", label);
    print_comment (comment);

    return 0;
    }

size_t PutPushR  (Context* ctx, GPRegisterNumber reg, const char* comment)
    {
    assert (ctx);
    print ("push %s", GetRegName (reg));
    print_comment (comment);

    return 0;
    }

size_t PutPopR (Context* ctx, GPRegisterNumber reg, const char* comment)
    {
    assert (ctx);
    print ("pop %s", GetRegName (reg));
    print_comment (comment);

    return 0;
    }


size_t PutMovRR (Context* ctx, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print ("mov %s, %s", GetRegName(src), GetRegName(dest));
    print_comment (comment);

    return 0;
    }

size_t PutMovConstant (Context* ctx, GPRegisterNumber dest, data_t data, const char* comment)
    {
    assert (ctx);
    print ("movq $%d, %s", data, GetRegName(dest));
    print_comment (comment);

    return 0;
    }

///////////////////////////////////////////////////////
size_t PutMoveToStack   (Context* ctx, GPRegisterNumber src, size_t offset, const char* comment)
    {
    assert (ctx);
    print ("movq %s, -%lu(%%rbp)",  GetRegName(src), offset * 8);
    print_comment (comment);
    
    return 0;
    }

size_t PutMoveFromStack (Context* ctx, size_t offset, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print ("movq -%lu(%%rbp), %s", offset * 8, GetRegName(dest));
    print_comment (comment);
    
    return 0;
    }

size_t PutLogicOp (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);

    // Reg* rax = GetReg (RAX);

    print ("cmpq %s, %s\n", GetRegName(src), GetRegName(dest));
    print ("%s %%al\n", GetOperationName(operation));
    print ("movzbq %%al, %%rax\n\n");
    
    print ("xor %%rdx, %%rdx # normalize result\n");
    print ("mov $100, %s\n", GetRegName (dest));
    print ("mul %s\n", GetRegName (dest));

    PutMovRR (ctx, RAX, dest);
    print_comment (comment);

    print_raw ("\n");
    return 0;
    }

size_t PutMathAddSub (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert(ctx);

    print ("%s %s, %s", GetOperationName(operation), GetRegName(src), GetRegName(dest));
    print_comment (comment);
    
    return 0;
    }

size_t PutMulDiv (Context* ctx,  OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print ("# generating mul/div\n");

    print ("xor %%rdx, %%rdx\n");
    print ("mov %s, %%rax\n", GetRegName (dest));
    // print ("mov %s, %%rdi\n", GetRegName (src));

    print ("%s %s\n", GetOperationName(operation), GetRegName(src));

    print ("# normalize result\n");
    print ("xor %%rdx, %%rdx\n");    
    print ("movq $100, %%rdi\n");

    if (operation == OperatorType::Div)
        {
        print ("imul %%rdi\n");
        }
    else
        {
        print ("idiv %%rdi\n");
        }

    PutMovRR (ctx, RAX, dest);
    print_comment (comment);
    
    return 0;
    }