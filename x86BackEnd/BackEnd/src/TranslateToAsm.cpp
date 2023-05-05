#include "TranslateToAsm.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <math.h>
#include <time.h>

#include "BackEndConfig.h"
#include "AsmCtx.h"

#include "DSL.h"
#include "Grammar.h"
#include "LangUtils.h"

#include "LogMacroses.h"
#include "EasyDebug.h"
#include "SomeStuff.h"

static FILE* ASM_FILE = NULL;

int STACK_FRAME_OFFSET = 0;

static int  OpenAsmFile  (const char *const name);
static void CloseAsmFile ();

static int SetAsmFile      (AsmCtx* ctx);
static int AddToAsm        (AsmCtx* ctx, const Token* token);

static int InitGlobalVars  (const AsmCtx* ctx);

#include "../src/TranslatorUtils_.ars"
#include "../src/Handlers_.ars"

int TranslateToAsm (const Program *const program, const char *const name)
    {
    $log(1)
    assertlog(program,      EFAULT, return LFAILURE);
    assertlog(name,         EFAULT, return LFAILURE);
    // assertlog(global_table, EFAULT, return LFAILURE);

    // CHECK 
    if (!program->root)
        {
        func_message("Program root can't be NULL, %p\n", (void*) program->root);
        return LFAILURE;
        }

    if (!program->string_arr)
        {
        func_message("Program must have string arr to work properly\n");
        return LFAILURE;
        }

    if (OpenAsmFile(name) != SUCCESS)
        {
        func_message("Couldn't open %s for ASM file\n", name);
        return LFAILURE;
        }

    AsmCtx  ctx_{};
    AsmCtx* ctx = &ctx_;

    if (AsmCtxCtor(ctx, program) != SUCCESS)
        return FAILURE;

    // PROGRAM(ctx) = program;

    // ADD TO ASM
    if (SetAsmFile(ctx) != SUCCESS)
        goto FAILURE_EXIT;

    if (AddToAsm(ctx, program->root) != SUCCESS)
        goto FAILURE_EXIT;

    if (ctx->number_of_global_vars != NUMBER_OF_GLOBAL_VARS(program))
        {
        func_message("Number of global variables from program and from ctx differs (ctx: %d, program: %d)\n", ctx->number_of_global_vars, NUMBER_OF_GLOBAL_VARS(program))
        goto FAILURE_EXIT;
        }

    if (InitGlobalVars(ctx) != SUCCESS)
        goto FAILURE_EXIT;

    CloseAsmFile();
    AsmCtxDtor(ctx);

    return LSUCCESS;

    FAILURE_EXIT:

    CloseAsmFile();
    AsmCtxDtor(ctx);

    return LFAILURE;
    }

static int AddToAsm (AsmCtx* ctx, const Token *const token)
    {
    $log(3)
    assertlog(ctx, EFAULT, return LFAILURE);

    if (!token)
        return SUCCESS;
    
    $LOG_TOKEN(token, STRING_ARR(ctx))

    // think about allowed handlers
    switch (TYPE(token))
        {
        case NAME:              return NameHandler           (ctx, token);
        case INITIALIZATOR:     return VarInitialization     (ctx, token);
        case FUNCTION:          return FunctionHandler       (ctx, token);
        case CALL:              return CallHandler           (ctx, token);
        case CONSTANT:          return ConstantHandler       (ctx, token);
        case INSTRUCTION:       return InstructionHandler    (ctx, token);
        case OPERATOR:          return MathOperationsHandler (ctx, token);       
        case NATIVE_FUNCTION:   return NativeFunctionHandler (ctx, token);
        case FUNCTION_RET_TYPE: return FunctionReturnHandler (ctx, token);
        case PARAMETR:          return ParametrHandler       (ctx, token);
        case ASSIGMENT:         return AssigmentHandler      (ctx, token);

        case STATEMENT:
            {
            CHECK(AddToAsm(ctx, LEFT(token)) == SUCCESS, return FAILURE);

            if (RIGHT(token))
                 CHECK(AddToAsm(ctx, RIGHT(token)) == SUCCESS, return FAILURE);

            return SUCCESS;
            }
            
        default:
            report_translator_error("Wrong token type\n");
            return LFAILURE;
        }

    YOU_SHALL_NOT_PASS
    PrintToken(token, STRING_ARR(ctx));

    return LFAILURE;
    }

static int InitGlobalVars  (const AsmCtx* ctx)
    {
    $log(1)
    assertlog(ctx, EFAULT, return BAD_ARGUMENT);
    // assertlog(global_table,               EFAULT, return BAD_ARGUMENT);
    // assertlog(number_of_global_vars >= 0, EFAULT, return BAD_ARGUMENT);
    
    STACK_FRAME_OFFSET = ctx->number_of_global_vars; 

    ASM_SEPARATOR
    assprint("\t\t: InitGlobalVars\n\n");
    
    int var_init_cnt = 0;
    while(var_init_cnt < ctx->number_of_global_vars)
        {
        Label* global_var = ctx->global_vars->label_arr[var_init_cnt];

        #pragma GCC diagnostic ignored "-Wcast-qual"
        // $p(global_var->global_initialization)

        CHECK(VarInitialization((AsmCtx*) ctx, global_var->global_initialization, true) == SUCCESS, return FAILURE);

        var_init_cnt++;           
        }

    if (var_init_cnt != ctx->number_of_global_vars)
        {
        func_message("Number of initialized global var doesn't match with number of ctx number of global vars (var_cnt: %d, ctx: %d)\n",
                        var_init_cnt, ctx->number_of_global_vars);
        return LFAILURE;
        }
    
    assprint("ret\n\n");

    ASM_SEPARATOR

    return SUCCESS;
    }

/// ASM FILE///////////////////////////////////////////////////////
static int OpenAsmFile (const char *const name)
    {
    if (!name)  return NULL;

    ASM_FILE = fopen (name, "wb"); 
    if (!ASM_FILE) 
        {
          logf("Couldn't create ASM_FILE %s", name);
        printf("Couldn't create ASM_FILE %s", name);
        return  LFAILURE;
        }
    
    setvbuf(ASM_FILE, NULL, _IONBF, 0);

    time_t NewYorkTime = time(NULL);
    assprint (";%s\n", ctime(&NewYorkTime));
    
    return LSUCCESS; 
    }

void CloseAsmFile()
    {
    if (!ASM_FILE)
        return;

    assprint("\n;end {document}\n");
    fflush (ASM_FILE);    
   
    fclose (ASM_FILE);

    ASM_FILE = NULL;
    
    return;
    }

static int SetAsmFile (AsmCtx* ctx)
    {
    assertlog(ctx, EFAULT, return BAD_ARGUMENT);

    assprint("call : InitGlobalVars\n");
    
    STACK_FRAME_OFFSET = NUMBER_OF_GLOBAL_VARS(PROGRAM(ctx));

    assprint("\n;Setting Stack Frame\n");
    assprint("push %d\n", STACK_FRAME_OFFSET + START_RAM_ADDRESS_FOR_GLOBAL_VARS);
    assprint("pop r%cx\n", VARIABLES_ADDRESS_REG + 'a' - 1); 

    assprint("\ncall : main\n");
    assprint("\nhlt\n\n");

    ASM_SEPARATOR

    return SUCCESS;
    }