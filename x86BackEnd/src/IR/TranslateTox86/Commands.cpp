#include <stdio.h>

#include "Commands.h"

#define print_comment(COMMENT) do {                                 \
                                  if (comment)                      \
                                    print_raw ("# %s", comment);    \
                                                                    \
                                 print_raw ("\n"); } while (0);

#pragma GCC diagnostic ignored "-Wconversion"

unsigned enum CommandsCodes
    {
    Sub = 0x83,
    Add = 0x83,
    Ret = 0xc3,
    Jmp = 0xe9,
    Je,
    Call = 0xe8,
    Push = 0x50,
    Pop  = 0x58,
    Mov  = 0x89,
    Bigger,
    Less,
    Imul,
    Idiv,

    RegReg           = 0x48,
    RegExtended      = 0x49,
    ExtendedReg      = 0x4c,
    ExtendedExtended = 0x4d,

    ArgsByte = 0xc0,
    };

static void SetOpCodesForRegs (char* op_codes,  GPRegisterNumber src, GPRegisterNumber dest);


void PUT_CALL (Context* ctx, const Function* callee)
    {
    assert (ctx);
    assert (callee);

    Reference* reference = (Reference*) calloc (1, sizeof(reference[0]));
    assert    (reference);

    reference->position  = PutCall (ctx, callee->get_name());
    reference->address   = reference->position + 4 + CODE_VIRTUAL_ADDRESS;
    reference->ref_value = callee;
    
    AddReference (&ctx->call_refs, reference);
    return;
    }

void PUT_JUMP (Context* ctx, const BaseBlock* jump_dest)
    {
    assert (ctx);
    assert (jump_dest);

    Reference* ref = (Reference*) calloc (1, sizeof(ref[0]));
        assert (ref);

    ref->position  = PutJump (ctx, jump_dest->get_name());
    ref->address   = ref->position + 4 +CODE_VIRTUAL_ADDRESS;
    ref->ref_value = jump_dest;

    AddReference (&ctx->jump_refs, ref);
    }

void PUT_CJUMP (Context* ctx, const BaseBlock* jump_dest, GPRegisterNumber reg_num)
    {
    assert (ctx);
    assert (jump_dest);

    Reference* ref = (Reference*) calloc (1, sizeof(ref[0]));
    assert (ref);

    ref->position  = PutCJump (ctx, reg_num, jump_dest->get_name());
    ref->address   = ref->position + 4 + CODE_VIRTUAL_ADDRESS;
    ref->ref_value = jump_dest;

    AddReference (&ctx->jump_refs, ref);
    }


size_t PutSubRsp (Context* ctx, size_t num, const char* comment)
    {
    assert (ctx);
    assert (num < 255);

    print_tab ("sub $%lu, %%rsp ", num);
    print_comment (comment);
    
    const unsigned        OP_CODES_SIZE = 4;
    static char op_codes [OP_CODES_SIZE] = {RegReg, Sub, 0, 0};
    
    const Reg* rsp = GetReg (RSP);

    op_codes [2] = rsp->op_code_number | 0xe8;
    op_codes [3] = (char) num;

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);

    return 0;
    }

size_t PutAddRsp (Context* ctx, size_t num, const char* comment)
    {
    assert (ctx);
    print_tab ("add $%lu, %%rsp ", num);
    print_comment (comment);

    const unsigned        OP_CODES_SIZE = 4;
    static char op_codes [OP_CODES_SIZE] = {RegReg, Add, 0, 0};

    const Reg* rsp = GetReg (RSP);

    op_codes [2] = rsp->op_code_number | 0xc0;
    op_codes [3] = (char) num;

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return 0;
    }

size_t PutRet (Context* ctx, const char* comment)
    {
    assert(ctx);
    print_tab ("ret ")
    print_comment (comment);

    const unsigned        OP_CODES_SIZE = 1;
    static char op_codes [OP_CODES_SIZE] = {Ret};

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return 0;
    }

size_t PutJump  (Context* ctx, name_t label, const char* comment)
    {
    assert (ctx);

    print_tab ("jmp %s ", label);
    print_comment (comment);
    print_raw ("\n");

    const unsigned        OP_CODES_SIZE = 5;
    static char op_codes [OP_CODES_SIZE] = {Jmp};

    size_t position = ctx->code->size + 1;
    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return position;
    }

size_t PutCJump (Context* ctx, GPRegisterNumber test, name_t label, const char* comment)
    {
    assert (ctx);

    print_tab ("cmp $100, %s\n", GetRegName(test));
    print_tab ("je %s ", label);
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
    print_tab ("call %s ", label);
    print_comment (comment);

    const unsigned        OP_CODES_SIZE = 5;
    static char op_codes [OP_CODES_SIZE] = {Call};

    size_t position = ctx->code->size + 1;
    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return position;
    }

size_t PutPushR  (Context* ctx, GPRegisterNumber reg, const char* comment)
    {
    assert (ctx);
    print_tab ("push %s     ", GetRegName (reg));

    print_comment (comment);

    const unsigned        OP_CODES_SIZE = 2;
    static char op_codes [OP_CODES_SIZE] = {};

    unsigned size = 0;
    Reg*    reg_ptr = GetReg (reg);
    assert (reg_ptr);
    if (reg_ptr->op_code_number < 8)
        {
        op_codes[0] = Push + reg_ptr->op_code_number; 
        size = 1; 
        }
    else
        {
        op_codes[0] = 0x41;
        op_codes[1] = Push + reg_ptr->op_code_number - 8; 
        size = 2;   
        }

    WriteOpCodes (ctx, op_codes, size);
    return 0;
    }

size_t PutPopR (Context* ctx, GPRegisterNumber reg, const char* comment)
    {
    assert (ctx);
    print_tab ("pop %s              ", GetRegName (reg));
    print_comment (comment);

    const unsigned        OP_CODES_SIZE = 2;
    static char op_codes [OP_CODES_SIZE] = {};

    unsigned size = 0;
    Reg*    reg_ptr = GetReg (reg);
    assert (reg_ptr);
    if (reg_ptr->op_code_number < 8)
        {
        op_codes[0] = Pop + reg_ptr->op_code_number; 
        size = 1; 
        }
    else
        {
        op_codes[0] = 0x41;
        op_codes[1] = Pop + reg_ptr->op_code_number - 8; 
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
        op_codes[0] = RegReg;

    if (src_reg ->op_code_number >= 8 && 
        dest_reg->op_code_number >= 8)
        op_codes[0] = ExtendedExtended;

    if (src_reg ->op_code_number < 8 && 
        dest_reg->op_code_number >= 8)
        op_codes[0] = RegExtended;

    if (src_reg ->op_code_number >= 8 && 
        dest_reg->op_code_number < 8)
        op_codes[0] = ExtendedReg;
    
    byte args_byte = ArgsByte;

    byte src_byte  =  (src_reg->op_code_number  % 8) << 3;
    byte dest_byte =  (dest_reg->op_code_number % 8);

    args_byte |= dest_byte;
    args_byte |= src_byte;

    op_codes [2] = args_byte;
    }

size_t PutMovRR (Context* ctx, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print_tab ("mov %s,   %s      ", GetRegName(src), GetRegName(dest));
    print_comment (comment);

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = Mov;
    SetOpCodesForRegs (op_codes, src, dest);

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return 0;
    }

size_t PutMovConstant (Context* ctx, GPRegisterNumber dest, data_t data, const char* comment)
    {
    assert (ctx);
    print_tab ("movq $%-4d, %s      ", data, GetRegName(dest));
    print_comment (comment);

    const unsigned OP_CODES_SIZE = 7;
    static char op_codes [OP_CODES_SIZE] = {};

    Reg*  dest_reg = GetReg (dest);

    if (dest_reg->op_code_number < 8)
        {
        op_codes[0] = RegReg;
        op_codes[2] = 0xc0 + dest_reg->op_code_number;
        }
    else
        {
        op_codes[0] = RegExtended;
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
    print_tab ("movq %s, -%-2lu(%%rbp)  ",  GetRegName(src), offset * 8);
    print_comment (comment);
    
    const unsigned OP_CODES_SIZE = 4;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = Mov;

    Reg* src_reg = GetReg (src);

    if (src_reg->op_code_number < 8)
        op_codes[0] = RegReg;
    else
        op_codes[0] = ExtendedReg;

    byte args_byte = 0x45;
    byte src_byte  =  src_reg->op_code_number << 3;

    args_byte |= src_byte;

    op_codes [2] = args_byte;
    op_codes [3] = -offset * 8;

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);
    return 0;
    }

size_t PutMoveFromStack (Context* ctx, size_t offset, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print_tab ("movq -%-2lu(%%rbp), %s  ", offset * 8, GetRegName(dest));
    print_comment (comment);
    
    const unsigned OP_CODES_SIZE = 4;
    static char op_codes [OP_CODES_SIZE] = {};

    if (dest < 8)
        op_codes[0] = RegReg;
    else
        op_codes[0] = ExtendedReg;

    op_codes[1] = 0x8b;

    Reg* dest_reg   = GetReg (dest);

    byte args_byte = 0x45;
    byte dest_byte = (dest_reg->op_code_number % 8) << 3;

    args_byte |= dest_byte;

    op_codes [2] = args_byte;
    op_codes [3] = -offset * 8;

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

    print_tab ("xor %%rdx, %%rdx\n");

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {0x48, 0x31, 0xd2};
    WriteOpCodes (ctx, op_codes, 3); // write xor %rdx, %rdx
    }

static void NormalizeResult (Context* ctx, GPRegisterNumber result, int normalization_type)
    {
    assert (ctx);

    print_tab ("# (normalize result) #\n");
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

    print_tab ("imul %s\n", GetRegName (reg));

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0xf7;

    Reg* reg_reg = GetReg (reg);
    if (reg_reg->op_code_number < 8)
        {
        op_codes[0] = RegReg;
        op_codes[2] = 0xe8 + reg_reg->op_code_number;
        }
    else
        {
        op_codes[0] = RegExtended;
        op_codes[2] = 0xe8 + reg_reg->op_code_number - 8;
        }

    WriteOpCodes (ctx, op_codes, 3); 
    }

static void PutIDiv (Context* ctx, GPRegisterNumber reg)
    {
    assert (ctx);

    print_tab ("idiv %s\n", GetRegName (reg));

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0xf7;

    Reg* reg_reg = GetReg (reg);
    if (reg_reg->op_code_number < 8)
        {
        op_codes[0] = RegReg;
        op_codes[2] = 0xf8 + reg_reg->op_code_number;
        }
    else
        {
        op_codes[0] = RegExtended;
        op_codes[2] = 0xf8 + reg_reg->op_code_number - 8;
        }

    WriteOpCodes (ctx, op_codes, 3); 

    }

static void PutAdd  (Context* ctx, GPRegisterNumber src, GPRegisterNumber dest)
    {
    assert (ctx);

    print_tab ("add %s, %s\n", GetRegName (src), GetRegName (dest));

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0x01;
    SetOpCodesForRegs (op_codes, src, dest);

    WriteOpCodes (ctx, op_codes, 3); 
    }

static void PutSub  (Context* ctx, GPRegisterNumber src, GPRegisterNumber dest)
    {
    assert (ctx);

    print_tab ("sub %s, %s\n", GetRegName (src), GetRegName (dest));

    const unsigned OP_CODES_SIZE = 3;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0x29;
    SetOpCodesForRegs (op_codes, src, dest);

    WriteOpCodes (ctx, op_codes, 3); 
    }

size_t PutLogicOp (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert (ctx);
    print_tab ("# generating logic op #\n");

    PutPushR (ctx, RDX, "(save %rdx)");
    print_raw ("\n");

    print_tab ("cmpq %s, %s\n", GetRegName(src), GetRegName(dest));
    print_tab ("%s %%al\n", GetOperationName(operation));
    print_tab ("movzbq %%al, %%rax\n\n");

    const unsigned OP_CODES_SIZE = 4;
    static char op_codes [OP_CODES_SIZE] = {};

    op_codes[1] = 0x39;
    SetOpCodesForRegs (op_codes, src, dest); 
    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE - 1);  // write cmpq

    op_codes[0] = 0x0f;
    op_codes[2] = 0xc0;

    if (operation == OperatorType::Bigger)
        op_codes[1] = 0x9f;
    else
        op_codes[1] = 0x9c;      

    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE - 1); // write setl or setg

    op_codes[0] = RegReg;
    op_codes[1] = 0x0f;
    op_codes[2] = 0xb6;
    op_codes[3] = 0xc0;
    
    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);    // write movzbq %al, %rax

    NormalizeResult (ctx, dest, MUL);

    print_comment (comment);

    PutPopR (ctx, RDX, "(restore %rdx)");
    
    return 0;
    }

size_t PutMathAddSub (Context* ctx, OperatorType operation, GPRegisterNumber src, GPRegisterNumber dest, const char* comment)
    {
    assert(ctx);

    print_tab ("# math op #\n");
    
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
    print_tab ("# generating mul/div #\n");

    PutPushR (ctx, RDX, "(save %rdx)");

    PutClearRdx (ctx);

    PutMovRR (ctx, dest, RAX);

    if (operation == OperatorType::Mul)
        PutIMul (ctx, src);
    else
        PutIDiv (ctx, src);

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
    
    print_tab ("syscall\n\n");
    WriteOpCodes (ctx, op_codes, OP_CODES_SIZE);

    return 0;
    }
