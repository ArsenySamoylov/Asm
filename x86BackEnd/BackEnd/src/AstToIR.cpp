#include <assert.h>

#include "Module.h"
#include "Program.h"

#include "CommonEnums.h"
#include "DSL.h"
#include "Grammar.h"
#include "LangUtils.h"

#pragma GCC diagnostic ignored "-Wunused-function"
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wmissing-declarations"

struct ValueLabel
    {
    int name_id;
    int type;
    Value* val;
    };

struct ValueNameTable
    {
    ValueLabel* arr;

    size_t size;
    size_t capacity;
    };

int ValueNameTableCtor (ValueNameTable* table);
int ValueNameTableDtor (ValueNameTable* table);

int    AddValueLabel  (ValueNameTable* table, int name_id, Value* val);
ValueLabel* FindValueLabel (ValueNameTable* table);

static ValueLabel* cmp_labels (ValueLabel* a, ValueLabel* b);

#include "ArrayTemplate.h"
 
ARR_CTOR    (ValueNameTable, ValueLabel);
ARR_DTOR    (ValueNameTable, ValueLabel);
ARR_RESIZE  (ValueNameTable, ValueLabel);
ADD_TO_ARR  (ValueNameTable, ValueLabel);
FIND_IN_ARR (ValueNameTable, ValueLabel, cmp_labels);

#undef ARR_CTOR
#undef ARR_DTOR
#undef RESIZE
#undef ADD_TO_ARR
#undef FIND_IN_ARR

//////////////////////////////////////////////////////
static const char** STRING_POOL = NULL;

int         SetStringPool (const char** string_arr);
const char* GetString     (int id);

int SetStringPool (const char** string_arr)
    {
    STRING_POOL = string_arr;
    return SUCCESS;
    }

const char* GetString (int id)
    {
    return STRING_POOL[id];
    }

//////////////////////////////////////////////////////
struct Builder
    {
    ValueNameTable global;
    ValueNameTable local;         // active when builder process function 

    Function*   current_function;
    BaseBlockArr*     body_blocks; // active when builder process function 
    
    Module* mod;
    };

int BuilderCtor (Builder* buildog, Module* mod, Program* program);
int BuilderCtor (Builder* buildog, Module* mod, Program* program)
    {
    assert(buildog);
    assert(mod);
    
    ValueNameTableCtor(&buildog->global);
    buildog->local = {};

    buildog->current_function = NULL;
    buildog->body_blocks      = NULL;

    buildog->mod = mod;

    return SUCCESS;
    }

int BuilderDtor (Builder* buildog);
int BuilderDtor (Builder* buildog)
    {
    assert(buildog);

    ValueNameTableDtor(&buildog->global);
    
    if (buildog->local.arr)
        ValueNameTableDtor(&buildog->local);

    return SUCCESS;
    }

static Value* AstVisitor (Builder* buildog, const Token* token);

//SetInsertBaseBlock (Builder* buildog, Token* token);
static GlobalVar* CreateGlobalVar (Builder* buildog, const Token* token);
static GlobalVar* CreateGlobalVar (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);
    
    Token* var_name = LEFT(token);
    ValueLabel var_label = {.type = VARIABLE,
                       .name_id = NAME_ID(var_name)
                      };

    AddValueLabel (&buildog->global);
    //? Value* init_val = VisitAst(RIGHT(token));

    GlobalVar* var = (GlobalVar*) calloc (1, sizeof(var[0]));
    assert(var);

    var->Value    ::type = ValueType::GlobalVarr;
    var->GlobalVar::type = VariableType::Double;


    };
// static BaseBlock* CreateBaseBlock (Builder* buildog, const Token* token);
// static Function*  CreateFunction    (Builder* buildog, const Token* token);

// static Instruction* CreateInstruction  (Builder* buildog, const Token* token);
static Store*    CreateStore     (Builder* buildog, const Token* token);
static Load*     CreateLoad      (Builder* buildog, const Token* token);
static Operator* CreateOperator  (Builder* buildog, const Token* token);
static Branch*   CreateBranch    (Builder* buildog, const Token* token);
static Call*     CreateCall      (Builder* buildog, const Token* token);
static Return*   CreateReturn    (Builder* buildog, const Token* token);

static Value* EmitInitializator (Builder* buildog, const Token* token); // add to ValueNameTable and call Create Global Var or Store
static Value* EmitFunction      (Builder* buildog, const Token* token);

static Value* EmitFunction (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Token* function_name     =  LEFT(token);
    Token* function_ret_type = RIGHT(function_name);

    Function* func = (Function*) calloc (1, sizeof(func[0]));
    assert(func);
    
    func->   Value::type = ValueType::Function;
    func->Function::type = RET_TYPE(function_ret_type) == DOUBLE ? FunctionRetType::Double : FunctionRetType::Void;
    func->name           = GetString(NAME_ID(function_name));

    ValueLabel function_label = {.name_id = NAME_ID(function_name),
                                 .type    = FUNCTION,
                                 .val     = func};

    AddValueLabel (buildog->global, &function_label);

    // setting Builder for emitting function
    buildog->body_blocks = &func->body;

    BaseBlockArrayCtor (&buildog->body_blocks);
    ValueNameTableCtor (buildog->local); 

    buildog->current_function = func; 

    // get parameters 
    func->argv = EmitParametersDeclaration (LEFT(function_name));
    // get function body
    AstVisitor (RIGHT(token));

    buildog->body_block = NULL;
    return func;
    }


int AstToIR (Program* program, Module* dest_mod)
    {
    assert(program);
    assert(dest_mod);

    Builder buildog = {};
    BuilderCtor (&buildog, dest_mod, program->root;

    SetStringPool(program->string_arr);

    AstVisitor (&buildog, program->root);
    };

static Value* AstVisitor (Builder* buildog, const Token* token)
    {
    assert(buildog);
    
    if (!token) return NULL;

    switch(TYPE(token))
        {
        case STATEMENT: 
                    AstVisitor (buildog,  LEFT(token));
                    AstVisitor (buildog, RIGHT(token));

                    return NULL;

        case INITIALIZATOR: return EmitInitializator (buildog, token);

        case NAME:  
                //lookup in name table
                // return Value

        case CALL:        
        case NATIVE_FUNCTION:   return CreateCall (buildog, token);
        
        case FUNCTION:   return EmitFunction (buildog, token);
        
        case CONSTANT:   return CreateConstant (buildog, token);
        case OPERATOR:   return CreateOperator (buildog, token);
        case ASSIGMENT:  return CreateLoad     (buildog, token);

        // case PARAMETR:   return EmitParametrs  (buildog, token);

        default:
            report ("Wrong token type\n");
            PrintToken (Token, NULL);
            return NULL;

        }

    YOU_SHALL_NOT_PASS
    PrintToken(token, NULL);

    return NULL;
    }

    