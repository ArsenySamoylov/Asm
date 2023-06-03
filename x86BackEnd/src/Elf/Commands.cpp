#include <stdio.h>

#include "Commands.h"

#define print_raw(format, ...) fprintf(DUMP, format __VA_OPT__(,) __VA_ARGS__);   

#define print_comment(COMMENT) do {                                 \
                                  if (comment)                      \
                                    print_raw ("# %s", comment);   \
                                                                    \
                                 print_raw ("\n"); } while (0);

#pragma GCC diagnostic ignored "-Wconversion"

static void SetOpCodesForRegs (char* op_codes,  GPRegisterNumber src, GPRegisterNumber dest);

size_t PutSubRsp (Context* ctx, size_t num, const char* comment)
    {
    assert (ctx);
    assert (num < 255);

    print ("sub $%lu, %%rsp ", num);
    print_comment (comment);
    
    const unsigned        OP_CODES_SIZE = 4;
    static char op_codes [OP_CODES_SIZE] = {0x48, 0x83, 0xec, 0};
    op_codes [3] = (char) num;

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);

    return 0;
    }

size_t PutAddRsp (Context* ctx, size_t num, const char* comment)
    {
    assert (ctx);
    print ("add $%lu, %%rsp ", num);
    print_comment (comment);

    const unsigned        OP_CODES_SIZE = 4;
    static char op_codes [OP_CODES_SIZE] = {0x48, 0x83, 0xc4, 0};
    op_codes [3] = (char) num;

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return 0;
    }

size_t PutRet (Context* ctx, const char* comment)
    {
    assert(ctx);
    print ("ret ")
    print_comment (comment);

    const unsigned        OP_CODES_SIZE = 1;
    static char op_codes [OP_CODES_SIZE] = {0xc3};

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return 0;
    }

size_t PutJump  (Context* ctx, name_t label, const char* comment)
    {
    assert (ctx);

    print ("jmp %s ", label);
    print_comment (comment);
    print_raw ("\n");


    const unsigned        OP_CODES_SIZE = 5;
    static char op_codes [OP_CODES_SIZE] = {};
    op_codes [0] = 0xe9;

    size_t position = ctx->code->size + 1;
    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return position;
    }

size_t PutCJump (Context* ctx, GPRegisterNumber test, name_t label, const char* comment)
    {
    assert (ctx);

    print ("cmp $100, %s\n", GetRegName(test));
    print ("je %s ", label);
    print_comment (comment);

    const unsigned        OP_CODES_SIZE = 6 + 4;
    static char op_codes [OP_CODES_SIZE] = {};

    // cmp
    SetOpCodesForRegs (op_codes, test, test);
    op_codes [1] = 0x83;
    op_codes [3] = 0x64;
    
    // je
    op_codes [4] = 0x0f;
    op_codes [5] = 0x84;

    size_t position = ctx->code->size + OP_CODES_SIZE - 4;
    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return position;
    }

size_t PutCall  (Context* ctx, name_t label, const char* comment)
    {
    assert (ctx);
    print ("call %s ", label);
    print_comment (comment);

    const unsigned        OP_CODES_SIZE = 5;
    static char op_codes [OP_CODES_SIZE] = {};
    op_codes [0] = 0xe8;


    size_t position = ctx->code->size + 1;
    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return position;
    }

size_t PutPushR  (Context* ctx, GPRegisterNumber reg, const char* comment)
    {
    assert (ctx);
    print ("push %s     ", GetRegName (reg));

    print_comment (comment);

    const unsigned        OP_CODES_SIZE = 2;
    static char op_codes [OP_CODES_SIZE] = {};

    unsigned size = 0;
    Reg*    reg_ptr = GetReg (reg);
    assert (reg_ptr);
    if (reg_ptr->op_code_number < 8)
        {
        op_codes[0] = 0x50 + reg_ptr->op_code_number; 
        size = 1; 
        }
    else
        {
        op_codes[0] = 0x41;
        op_codes[1] = 0x50 + reg_ptr->op_code_number - 8; 
        size = 2;   
        }

    WriteOpCodes (ctx, op_codes, size);
    return 0;
    }

size_t PutPopR (Context* ctx, GPRegisterNumber reg, const char* comment)
    {
    assert (ctx);
    print ("pop %s              ", GetRegName (reg));
    print_comment (comment);

    const unsigned        OP_CODES_SIZE = 2;
    static char op_codes [OP_CODES_SIZE] = {};

    unsigned size = 0;
    Reg*    reg_ptr = GetReg (reg);
    assert (reg_ptr);
    if (reg_ptr->op_code_number < 8)
        {
        op_codes[0] = 0x58 + reg_ptr->op_code_number; 
        size = 1; 
        }
    else
        {
        op_codes[0] = 0x41;
        op_codes[1] = 0x58 + reg_ptr->op_code_number - 8; 
        size = 2; 
        }

    WriteOpCodes (ctx, op_codes, size);

    return 0;
    }

#pragma GCC diagnostic ignored "-Wsign-conversion"
static void SetOpCodesForRegs (char* op_codes,  GPRegisterNumber src, GPRegisterNumber dest)
    {
    Reg*  src_reg = GetReg (src);
    Reg* dest_reg = GetReg (dest);

    if (src_reg ->op_code_number < 8 && 
        dest_reg->op_code_number < 8)
        op_codes[0] = 0x48;

    if (src_reg ->op_code_number >= 8 && 
        dest_reg->op_code_number >= 8)
        op_codes[0] = 0x4d;

    if (src_reg ->op_code_number < 8 && 
        dest_reg->op_code_number >= 8)
        op_codes[0] = 0x49;

    if (src_reg ->op_code_number >= 8 && 
        dest_reg->op_code_number < 8)
        op_codes[0] = 0x4c;
    
    byte args_byte = 0xc0;
    byte src_byte  =  (src_reg->op_code_number  % 8) << 3;
    byte dest_byte =  (dest_reg->op_code_number % 8);

    args_byte |= dest_byte;
    args_byte |= src_byte;

    op_codes [2] = args_byte;
    }

size_t PutMovRR (Context* ctx, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print ("mov %s,   %s      ", GetRegName(src), GetRegName(dest));
    print_comment (comment);

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0x89;
    SetOpCodesForRegs (op_codes, src, dest);

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return 0;
    }

size_t PutMovConstant (Context* ctx, GPRegisterNumber dest, data_t data, const char* comment)
    {
    assert (ctx);
    print ("movq $%-4d, %s      ", data, GetRegName(dest));
    print_comment (comment);

    const unsigned OP_CODES_SIZE = 7;
    static char op_codes [OP_CODES_SIZE] = {};

    Reg*  dest_reg = GetReg (dest);

    if (dest_reg->op_code_number < 8)
        {
        op_codes[0] = 0x48;
        op_codes[2] = 0xc0 + dest_reg->op_code_number;
        }
    else
        {
        op_codes[0] = 0x49;
        op_codes[2] = 0xc0 + dest_reg->op_code_number - 8;
        }

    op_codes[1] = 0xc7;

    * ((int *) (op_codes + 3)) = data;

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return 0;
    }

///////////////////////////////////////////////////////
size_t PutMoveToStack   (Context* ctx, GPRegisterNumber src, size_t offset, const char* comment)
    {
    assert (ctx);
    print ("movq %s, -%-2lu(%%rbp)  ",  GetRegName(src), offset * 8);
    print_comment (comment);
    
    const unsigned OP_CODES_SIZE = 4;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0x89;

    Reg* src_reg = GetReg (src);

    if (src_reg->op_code_number < 8)
        op_codes[0] = 0x48;
    else
        op_codes[0] = 0x4c;

    byte args_byte = 0x45;
    byte src_byte  =  src_reg->op_code_number << 3;

    args_byte |= src_byte;

    op_codes [2] = args_byte;

    op_codes [3] = 0 - offset * 8;

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return 0;
    }

size_t PutMoveFromStack (Context* ctx, size_t offset, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print ("movq -%-2lu(%%rbp), %s  ", offset * 8, GetRegName(dest));
    print_comment (comment);
    
    const unsigned OP_CODES_SIZE = 4;
    static char op_codes [OP_CODES_SIZE] = {};

    if (dest < 8)
        op_codes[0] = 0x48;
    else
        op_codes[0] = 0x4c;

    op_codes[1] = 0x8b;

    Reg* dest_reg   = GetReg (dest);

    byte args_byte = 0x45;
    byte dest_byte = (dest_reg->op_code_number % 8) << 3;

    args_byte |= dest_byte;

    op_codes [2] = args_byte;
    op_codes [3] = - offset * 8;

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);

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
static void PutClearRdx (Context* ctx);
static void NormalizeResult (Context* ctx, GPRegisterNumber result, int normalization_type);
static void PutIMul (Context* ctx, GPRegisterNumber reg);
static void PutIDiv (Context* ctx, GPRegisterNumber reg);
static void PutAdd  (Context* ctx, GPRegisterNumber src, GPRegisterNumber dest);
static void PutSub  (Context* ctx, GPRegisterNumber src, GPRegisterNumber dest);

static void PutClearRdx (Context* ctx)
    {
    assert (ctx);

    print ("xor %%rdx, %%rdx\n");

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {0x48, 0x31, 0xd2};
    WriteOpCodes (ctx, op_codes, 3); // write xor %rdx, %rdx
    }

static void NormalizeResult (Context* ctx, GPRegisterNumber result, int normalization_type)
    {
    assert (ctx);

    print ("# (normalize result) #\n");
    PutClearRdx (ctx);

    PutMovConstant (ctx, result, 100);

    if (normalization_type == MUL)
        PutIMul (ctx, result);

    if (normalization_type == DIV)
        PutIDiv (ctx, result);

    PutMovRR (ctx, RAX, result, "(-> normalized result)");
    return;
    }

static void PutIMul (Context* ctx, GPRegisterNumber reg)
    {
    assert (ctx);

    print ("imul %s\n", GetRegName (reg));

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0xf7;

    Reg* reg_reg = GetReg (reg);
    if (reg_reg->op_code_number < 8)
        {
        op_codes[0] = 0x48;
        op_codes[2] = 0xe8 + reg_reg->op_code_number;
        }
    else
        {
        op_codes[0] = 0x49;
        op_codes[2] = 0xe8 + reg_reg->op_code_number - 8;
        }

    WriteOpCodes (ctx, op_codes, 3); 
    }

static void PutIDiv (Context* ctx, GPRegisterNumber reg)
    {
    assert (ctx);

    print ("idiv %s\n", GetRegName (reg));

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0xf7;

    Reg* reg_reg = GetReg (reg);
    if (reg_reg->op_code_number < 8)
        {
        op_codes[0] = 0x48;
        op_codes[2] = 0xf8 + reg_reg->op_code_number;
        }
    else
        {
        op_codes[0] = 0x49;
        op_codes[2] = 0xf8 + reg_reg->op_code_number - 8;
        }

    WriteOpCodes (ctx, op_codes, 3); 

    }

static void PutAdd  (Context* ctx, GPRegisterNumber src, GPRegisterNumber dest)
    {
    assert (ctx);

    print ("add %s, %s\n", GetRegName (src), GetRegName (dest));

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0x01;
    SetOpCodesForRegs (op_codes, src, dest);

    WriteOpCodes (ctx, op_codes, 3); 
    }

static void PutSub  (Context* ctx, GPRegisterNumber src, GPRegisterNumber dest)
    {
    assert (ctx);

    print ("sub %s, %s\n", GetRegName (src), GetRegName (dest));

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0x29;
    SetOpCodesForRegs (op_codes, src, dest);

    WriteOpCodes (ctx, op_codes, 3); 
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

    const unsigned OP_CODES_SIZE = 4;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0x39;
    SetOpCodesForRegs (op_codes, src, dest); 
    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE - 1); // write cmpq

    op_codes[0] = 0x0f;
    op_codes[2] = 0xc0;

    if (operation == OperatorType::Bigger)
        op_codes[1] = 0x9f;
    else
        op_codes[1] = 0x9c;      

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE - 1); // write setl or setg

    op_codes[0] = 0x48;
    op_codes[1] = 0x0f;
    op_codes[2] = 0xb6;
    op_codes[3] = 0xc0;
    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE); // write movzbq %al, %rax

    NormalizeResult (ctx, dest, MUL);

    print_comment (comment);

    PutPopR (ctx, RDX, "(restore %rdx)");
    
    return 0;
    }

size_t PutMathAddSub (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert(ctx);

    print ("# math op #\n");
    
    if (operation == OperatorType::Add)
        PutAdd (ctx, src, dest);
    else
        PutSub (ctx, src, dest);
    
    print_comment (comment);

    return 0;
    }

size_t PutMulDiv (Context* ctx,  OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print ("# generating mul/div #\n");

    PutPushR (ctx, RDX, "(save %rdx)");

    PutClearRdx (ctx);

    // print ("mov %s, %%rax\n", GetRegName (dest));
    PutMovRR (ctx, dest, RAX);

    if (operation == OperatorType::Mul)
        PutIMul (ctx, src);
    else
        PutIDiv (ctx, src);

    // print ("%s %s\n", GetOperationName(operation), GetRegName(src));

    int how_to_normalize = operation == OperatorType::Div ? MUL : DIV;
    NormalizeResult (ctx, dest, how_to_normalize);
    
    print_comment (comment);
    PutPopR (ctx, RDX, "(restore %rdx)");

    return 0;
    }

size_t PutSysCall (Context* ctx)
    {
    assert (ctx);
    
    const unsigned       OP_CODES_SIZE = 2;
    static char op_codes[OP_CODES_SIZE] = {0x0f, 0x05};
    
    print ("syscall\n\n");
    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);

    return 0;
    }
