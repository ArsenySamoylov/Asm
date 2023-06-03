#include "SetTokenTree.h"

#include "DSL.h"
#include "Grammar.h"

#define NDEBUG
#include "SuperStack.h"
#undef NDEBUG

#include "LogMacroses.h"
#include "EasyDebug.h"

struct Ctx
    {
    const Program* program;

    NameTableArr* name_tables_arr;

    int var_counter;
    int locality;

    SuperStack* name_tables_stk;
    };

const int START_NUMBER_OF_NAME_TABELS_STK = 5;

static int CtxCtor     (Ctx* ctx, const Program* program);
static int CtxFailDtor (Ctx* ctx);
static int CtxDtor     (Ctx* ctx);

static int     SetToken    (Token* token, Ctx* ctx);
static Label*  GetLabel (int name_id, int type, SuperStack* name_tables_stk); 

#define PROGRAM(CTX)          ((CTX)->program)
#define TABLE_ARR(CTX)        ((CTX)->name_tables_arr->arr)
#define NAME_TABLES_STK(CTX)  ((CTX)->name_tables_stk)

#define TOP_TABLE(CTX)        (StackTop(NAME_TABLES_STK(CTX)))
#define GLOBAL_TABLE(CTX)     (TABLE_ARR(CTX)[0])
#define STRING_ARR(CTX)       (PROGRAM(CTX)->string_arr)

int SetTokenTree (Program* program)
    {
    assertlog(program, EFAULT, return LFAILURE);

    Ctx  ctx_{};
    Ctx* ctx = &ctx_;

    if (CtxCtor(ctx, program) != SUCCESS)
        return LFAILURE;

    if (SetToken(program->root, ctx) != SUCCESS)
        goto FAILURE_EXIT;
       
    // $p(ctx->name_tables_arr)
    

    // // $p(ctx->program)
    // $p(program)

    // $p(program->name_table_arr)
    
    program->name_table_arr        = ctx->name_tables_arr; 
    program->number_of_global_vars = ctx->var_counter;

    // $i(program->number_of_global_vars)
    
    CtxDtor(ctx);

    return SUCCESS;

    FAILURE_EXIT:

    CtxFailDtor(ctx);
    return LFAILURE;
    }
    
static int SetToken (Token* token, Ctx* ctx)
    {
    $log(1)
    assertlog(ctx, EFAULT, return BAD_ARGUMENT);

    if (!token)
        return SUCCESS;

    // CHANGE To:
    // first of all: look for Label, if you found one, than work with it
    //     secondly: if call have uncknown label. than make new one
    //                    an maybe look for declaration
    //      thirdly: turn on checking in Translate to Asm
    if (TYPE(token) == FUNCTION)
        {
        Label func_label{FUNCTION};

        Token* func_name = LEFT(token);
        Token* ret_type  = RIGHT(func_name);

        func_label.name_id  = NAME_ID(func_name);
        func_label.ret_type = RET_TYPE(ret_type);

        int  var_cnt_saver = ctx->var_counter;
        ctx->var_counter = 0;

        // NEW TABEL;
        NameTable* local_table = AddTable (ctx->name_tables_arr);
        if (!local_table)
            goto FAILURE_EXIT;

        StackPush (NAME_TABLES_STK(ctx), local_table);

        // CHANGE LOCALITY
        ctx->locality = LOCAL;

        // PUT CODE
        if (SetToken(LEFT(func_name), ctx) != SUCCESS)
            goto FAILURE_EXIT;

        if (SetToken(RIGHT(token), ctx) != SUCCESS)
            goto FAILURE_EXIT;

        // SET NUMBER OF ARGUMENT
        func_label.number_of_vars = ctx->var_counter;
        NUM_OF_VARS(token)        = ctx->var_counter;     

        ctx->var_counter = var_cnt_saver;

        // SET NAME TABLE BACK
        if (StackPop (NAME_TABLES_STK(ctx)) != local_table)
            {
            func_message("Stack Pop returned different name table ptr, than local table = %p\n", (void*) local_table);
            goto FAILURE_EXIT;
            }

        // RETURN LOCALITY
        ctx->locality = GLOBAL;

        LABEL_PTR(func_name) = CopyLabel(&func_label, GLOBAL_TABLE(ctx));
        if (!LABEL_PTR(func_name)) // COPY label checks for redeclaration
            goto FAILURE_EXIT;

        return SUCCESS;  

        FAILURE_EXIT:
        return LFAILURE;
        }

    if (TYPE(token) == INITIALIZATOR)
        {
        Label var_label{VARIABLE};
        
        Token* var_name = LEFT(token);

        if (TYPE(var_name) != NAME)
            {
            func_message("Not a name token\n")
            return LFAILURE;
            }

        var_label.name_id    = NAME_ID(var_name);
        var_label.var_number = ctx->var_counter++;
        var_label.local_type = ctx->locality;

        $lp(&var_label)
        $li(NAME_ID(var_name))
        $lp(var_name)
        $lp(STRING_ARR(ctx))

        if (!CopyLabel(&var_label, TOP_TABLE(ctx)))
            {
            func_message("Couldn't add label, ('%s') to TOP_TABLE\n", STRING_ARR(ctx)[var_label.name_id]);
            return LFAILURE;
            }
        }

    if (TYPE(token) == NAME)
        {
        Label* var_label = GetLabel(NAME_ID(token), VARIABLE, NAME_TABLES_STK(ctx));
        if (!var_label)
            {
            func_message("No label for '%s'\n", STRING_ARR(ctx)[NAME_ID(token)]);
            return LFAILURE;
            }

            //  TYPE(token) = VARIABLE;
        LABEL_PTR(token) = var_label; 
        }

    if (TYPE(token) == CALL)
        {
        Token* func_name = LEFT(token);

        if (TYPE(func_name) != NATIVE_FUNCTION)
            {
            if (TYPE(func_name) != NAME && TYPE(func_name))
                {
                func_message ("No func_name to call\n");
                return LFAILURE;
                }

            Label* func_label = IsLabel(NAME_ID(func_name), FUNCTION, GLOBAL_TABLE(ctx));  //GetLabel(NAME_ID(func_name), FUNCTION, NAME_TABLES_STK(ctx));
            /* BECAUSE PROTOTYPES !!! 
            if (!func_label)
                {
                func_message("No label for '%s'\n", STRING_ARR(ctx)[NAME_ID(token)]);
                return LFAILURE;
                }
            */
                // TYPE(token)  = FUNCTION;
            LABEL_PTR(token) = func_label; 

            return SetToken(LEFT(func_name), ctx); // remove it after dealing with prototypes
            }
        }


    if (SetToken( LEFT(token), ctx) != SUCCESS)
        return LFAILURE;

    if (SetToken(RIGHT(token), ctx) != SUCCESS)
        return LFAILURE;

    return SUCCESS; 
    }

// CHANGE OWNERSHIP OF TABLEARR TO PROGRAM
static int CtxCtor (Ctx* ctx, const Program* program)
    {
    assertlog(ctx,     EFAULT, return BAD_ARGUMENT);
    assertlog(program, EFAULT, return BAD_ARGUMENT);
    
    SuperStack*   name_tables_stk   = NULL;
    NameTableArr* table_arr         = NULL;
    NameTable*    global_name_table = NULL;

    // TABLES STK
    name_tables_stk = (SuperStack*) CALLOC (1, sizeof(name_tables_stk[0]));
    if (!name_tables_stk)
        goto FAILURE_EXIT;

    StackCtor(name_tables_stk, START_NUMBER_OF_NAME_TABELS_STK);

    // TABLES ARRAY
    table_arr = NewNameTableArr (START_NUMBER_OF_NAME_TABLES);
    if (!table_arr)
        goto FAILURE_EXIT; 

    // GLOBAL TABLE
    global_name_table = AddTable(table_arr);
    if (!global_name_table)
        goto FAILURE_EXIT;  // TABLES STK
    name_tables_stk = (SuperStack*) CALLOC (1, sizeof(name_tables_stk[0]));
    if (!name_tables_stk)
        goto FAILURE_EXIT;

    // SET EVERYTHING
    StackPush(name_tables_stk, global_name_table);
    
    if (!AddTable(table_arr))
        goto FAILURE_EXIT;

    ctx->program           = program;
    
    ctx->name_tables_arr   = table_arr;

    ctx->var_counter  = 0;
    ctx->locality     = GLOBAL;

    ctx->name_tables_stk   = name_tables_stk;

    return SUCCESS;

    FAILURE_EXIT:

    if  (name_tables_stk)
        KILL(name_tables_stk)

    if (table_arr)
        DeleteNameTableArr(table_arr);

    return LFAILURE;
    }

static int CtxDtor (Ctx* ctx)
    {
    assertlog(ctx, EFAULT, return BAD_ARGUMENT);

    StackDtor(ctx->name_tables_stk);
    KILL(ctx->name_tables_stk);

    return SUCCESS;
    }

static int CtxFailDtor (Ctx* ctx)
    {
    assertlog(ctx, EFAULT, return BAD_ARGUMENT);

    if (ctx->name_tables_stk)
        {
        StackDtor(ctx->name_tables_stk);
        KILL(ctx->name_tables_stk);
        }

    if (ctx->name_tables_arr)
        DeleteNameTableArr(ctx->name_tables_arr);

    return SUCCESS;
    }

static Label*  GetLabel (int name_id, int type, SuperStack* name_tables_stk)
    {
    assertlog(name_tables_stk, EFAULT, return LNULL);
  
    ssize_t stack_top = StackGetTop(name_tables_stk);
    if (stack_top < 0)
        func_message("Empty var tabels stk\n");
    
    for (ssize_t i = stack_top; i >= 0; i--)
        {
        NameTable* table = StackLook (name_tables_stk, i);
        
        Label* temp = IsLabel(name_id, type, table); 
        
        if (temp)
            return temp;
        }

    return NULL;
    }
