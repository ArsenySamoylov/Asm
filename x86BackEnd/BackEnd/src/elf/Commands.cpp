#include <stdio.h>

#include "Commands.h"

#define print_raw(format, ...) fprintf(DUMP, format __VA_OPT__(,) __VA_ARGS__);   

#define print_comment(COMMENT) do {                                 \
                                  if (comment)                      \
                                    print_raw ("# %s", comment);   \
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
    print ("add $%lu, %%rsp ", num);
    print_comment (comment);

    return 0;
    }

size_t PutRet (Context* ctx, const char* comment)
    {
    assert(ctx);
    print ("ret ")
    print_comment (comment);

    return 0;
    }

size_t PutJump  (Context* ctx, name_t label, const char* comment)
    {
    assert (ctx);

    print ("jmp %s ", label);
    print_comment (comment);
    print_raw ("\n");

    return 0;
    }

size_t PutCJump (Context* ctx, GPRegisterNumber test, name_t label, const char* comment)
    {
    assert (ctx);

    print ("cmp $100, %s\n", GetRegName(test));
    print ("je %s ", label);
    print_comment (comment);

    return 0;
    }

size_t PutCall  (Context* ctx, name_t label, const char* comment)
    {
    assert (ctx);
    print ("call %s ", label);
    print_comment (comment);

    return 0;
    }

size_t PutPushR  (Context* ctx, GPRegisterNumber reg, const char* comment)
    {
    assert (ctx);
    int n = print ("push %s");
    printf ("%*s", GetRegName (reg), SpacesCol - n, " ");
    print_comment (comment);

    return 0;
    }

size_t PutPopR (Context* ctx, GPRegisterNumber reg, const char* comment)
    {
    assert (ctx);
    print ("pop %s              ", GetRegName (reg));
    print_comment (comment);

    return 0;
    }


size_t PutMovRR (Context* ctx, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print ("mov %s,   %s      ", GetRegName(src), GetRegName(dest));
    print_comment (comment);

    return 0;
    }

size_t PutMovConstant (Context* ctx, GPRegisterNumber dest, data_t data, const char* comment)
    {
    assert (ctx);
    print ("movq $%-4d, %s      ", data, GetRegName(dest));
    print_comment (comment);

    return 0;
    }

///////////////////////////////////////////////////////
size_t PutMoveToStack   (Context* ctx, GPRegisterNumber src, size_t offset, const char* comment)
    {
    assert (ctx);
    print ("movq %s, -%-2lu(%%rbp)  ",  GetRegName(src), offset * 8);
    print_comment (comment);
    
    return 0;
    }

size_t PutMoveFromStack (Context* ctx, size_t offset, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print ("movq -%-2lu(%%rbp), %s  ", offset * 8, GetRegName(dest));
    print_comment (comment);
    
    return 0;
    }

static const char* GetOperationName (OperatorType type)
    {
    switch(type)
        {
        case OperatorType::Add: return "add";
        case OperatorType::Sub: return "sub";
        case OperatorType::Mul: return "imul";
        case OperatorType::Div: return "idiv";

        case OperatorType::Bigger: return "setg";
        case OperatorType::Less:   return "setl"; 

        case OperatorType::Unknown: 
        default:
            return ("Unknown"); 
        }
    }

enum NormalizeResultEnum
    {
    MUL,
    DIV,
    };

// Value MUST be in RAX, it also uses RDX
static void NormalizeResult (Context* ctx, GPRegisterNumber result, int normalization_type);
static void NormalizeResult (Context* ctx, GPRegisterNumber result, int normalization_type)
    {
    assert (ctx);

    print ("xor %%rdx, %%rdx        # (normalize result)\n");
    print ("mov $100, %s\n", GetRegName (result));

    if (normalization_type == MUL)
        {
        print ("imul %s\n", GetRegName (result));
        }
    
    if (normalization_type == DIV)
        {
        print ("idiv %s\n", GetRegName (result));
        }

    PutMovRR (ctx, RAX, result, "(-> normalized result)");
    return;
    }

size_t PutLogicOp (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print ("# generating logic op #\n");

    PutPushR (ctx, RDX, "(save %rdx)");
    print_raw ("\n");

    print ("cmpq %s, %s\n", GetRegName(src), GetRegName(dest));
    print ("%s %%al\n", GetOperationName(operation));
    print ("movzbq %%al, %%rax\n\n");

    NormalizeResult (ctx, dest, MUL);

    print_comment (comment);

    PutPopR (ctx, RDX, "(restore %rdx)");
    
    return 0;
    }

size_t PutMathAddSub (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert(ctx);

    print ("# math op #\n");
    print ("%s %s, %s ", GetOperationName(operation), GetRegName(src), GetRegName(dest));
    print_comment (comment);
    
    return 0;
    }

size_t PutMulDiv (Context* ctx,  OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print ("# generating mul/div #\n");

    PutPushR (ctx, RDX, "(save %rdx)");

    print ("xor %%rdx, %%rdx\n");
    print ("mov %s, %%rax\n", GetRegName (dest));

    print ("%s %s\n", GetOperationName(operation), GetRegName(src));

    int how_to_normalize = operation == OperatorType::Div ? MUL : DIV;

    NormalizeResult (ctx, dest, how_to_normalize);

    
    print_comment (comment);
    PutPopR (ctx, RDX, "(restore %rdx)");

    return 0;
    }

