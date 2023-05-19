#include <assert.h>

#include "Module.h"
#include "Program.h"

#include "Builder.h"

#include "DSL.h"
#include "Grammar.h"
#include "LangUtils.h"

#include "CommonEnums.h"
#include "EasyDebug.h"

#pragma GCC diagnostic ignored "-Wunused-function"
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wmissing-declarations"

//////////////////////////////////////////////////////
static const char** STRING_POOL = NULL;

int          SetStringPool (const char** string_arr);
const char** GetStringPool ();
const char*  GetString     (int id);

int SetStringPool (const char** string_arr)
    {
    STRING_POOL = string_arr;
    return SUCCESS;
    }

const char** GetStringPool ()
    {
    return STRING_POOL;
    }

const char* GetString (int id)
    {
    return STRING_POOL[id];
    }

//////////////////////////////////////////////////////
static Value* AstVisitor (Builder* buildog, const Token* token);

//////////////////////////////////////////////////////
static Constant*  EmitConstant  (Builder* buildog, const Token* token);
static Constant*  EmitConstant  (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Constant* constant = (Constant*) calloc (1, sizeof(constant[0]));
    ConstantCtor (constant, CONST(token));

    return constant;
    }

static GlobalVar* AddGlobalVar (Builder* buildog, const Token* token);
static GlobalVar* AddGlobalVar (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);
    
    Token* var_name = LEFT(token);

    Constant* init_val  = dynamic_cast <Constant*> (AstVisitor(buildog, RIGHT(token)));
    
    GlobalVar* var = (GlobalVar*) calloc (1, sizeof(var[0]));
    GlobalVarCtor (var, GetString(NAME_ID(var_name)), init_val); 

    ValueLabel var_label = {.name_id = NAME_ID(var_name),
                            .type    = VARIABLE,
                            .val     = var,
                           };
    
    CopyValueLabel (&buildog->global, &var_label);
    AddGlobalVar (buildog, var);

    return var;
    };

static Store* AddStore (Builder* buildog, const Token* token);
static Store* AddStore (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Token* name = LEFT(token);

    Value* store_val = AstVisitor (buildog, RIGHT(token));

    Store* store = (Store*) calloc (1, sizeof(store[0]));
    StoreCtor (store, GetString (NAME_ID(name)), store_val); 

    ValueLabel label = { .name_id = NAME_ID(name),
                         .type    = VARIABLE,
                         .val     = store,
                       };
    
    CopyValueLabel (&buildog->local, &label);


    AddInstruction (buildog, store);
    return store;
    };

static Load*     AddLoad      (Builder* buildog, const Token* token);
static Load* AddLoad (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Value* dest = AstVisitor(buildog,  LEFT(token));
    Value* src  = AstVisitor(buildog, RIGHT(token));

    Load* load = (Load*) calloc (1, sizeof(load[0]));
    LoadCtor (load, dest, src);


    AddInstruction (buildog, load);
    return load;
    }

static Branch* AddBranch (Builder* buildog, 
                            Value* condition        = NULL,
                            BaseBlock* true_branch  = NULL,
                            BaseBlock* false_branch = NULL);


static Branch* AddBranch (Builder* buildog, 
                            Value* condition,
                            BaseBlock* true_branch,
                            BaseBlock* false_branch)
    {
    assert(buildog);

    Branch* branch = (Branch*) calloc (1, sizeof(branch[0]));
    BranchCtor (branch); 
    
    branch->condition   = condition;
    branch-> true_block = true_branch;
    branch->false_block = false_branch;

    AddInstruction (buildog, branch);
    return branch;
    }

OperatorType GetOperatorType (int type)
    {
    switch(type)
        {
        case ADD: return OperatorType::Add;
        case SUB: return OperatorType::Sub;
        case MUL: return OperatorType::Mul;
        case DIV: return OperatorType::Div;
        case BIGGER:
        case LESS:

        default:
            report("Unknow operator type (%d)\n", type);
            return OperatorType::Unknown;
        }
    }

static Operator* AddOperator  (Builder* buildog, const Token* token);
static Operator* AddOperator (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Value* left  = AstVisitor (buildog,  LEFT(token));
    Value* right = AstVisitor (buildog, RIGHT(token));

    Operator* op = (Operator*) calloc (1, sizeof(op[0]));
    OperatorCtor (op, GetOperatorType (OP(token)), left, right);
    
    AddInstruction (buildog, op);
    return op;
    }

static Call*     AddCall      (Builder* buildog, const Token* token);
static Call* AddCall (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    report("Not ready\n");

    return NULL;
    }

static Return*   AddReturn    (Builder* buildog, const Token* token);
static Return*   AddReturn    (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Return* ret = (Return*) calloc (1, sizeof(ret[0]));
    ReturnCtor(ret);

    AddInstruction (buildog, ret);
    return ret;
    }

static Value* CreateInitializator (Builder* buildog, const Token* token);
static Value* CreateInitializator (Builder* buildog, const Token* token) // add to ValueNameTable and call Create Global Var or Store
    {
    assert(buildog);
    assert(token);

    // if Builder doesn't have current Function*, than it is GlobalVar,
    if (!buildog->current_function)
        return AddGlobalVar (buildog, token);

    return AddStore (buildog, token); // creating store 
    }

static int GetParametersDeclaration (Builder* buildog, ValueArr* argv, Token* token);
static int GetParametersDeclaration (Builder* buildog, ValueArr* argv,Token* token)
    {
    assert(buildog);
    assert(argv);

    if (!token) return SUCCESS;

    // add them to local name Table
    report("Not ready\n");
    return SUCCESS;
    }

static Function* AddFunction (Builder* buildog, const Token* token);
static Function* AddFunction (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Token* function_name     =  LEFT(token);
    Token* function_ret_type = RIGHT(function_name);

    Function* func = (Function*) calloc (1, sizeof(func[0]));
    FunctionCtor(func, GetString(NAME_ID(function_name)));

    func->Function::type = RET_TYPE(function_ret_type) == DOUBLE ? FunctionRetType::Double : FunctionRetType::Void;

    ValueLabel function_label = {.name_id = NAME_ID(function_name),
                                 .type    = FUNCTION,
                                 .val     = func
                                };

    SetFunction              (buildog, func, &function_label);
    GetParametersDeclaration (buildog, &func->argv, LEFT(function_name));
    
    // adding function body
    AstVisitor (buildog, RIGHT(token));

    AddFunctionToModule(buildog);
    return func;
    }

static Instruction* AddIf  (Builder* buildog, const Token* token);
static Instruction* AddIf (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    if (INSTR(token) != IF)
        {
        report("Instruction type must be 'IF'\n");
        return NULL;
        }

    // get condition
    Value* condition = AstVisitor(buildog, LEFT(token));
    assert(condition);

    //Create branch, as last instruction in current BaseBlock
    Branch* branch = AddBranch (buildog, condition);

    // Set 'than' and 'else' blocks
    Token* than_body = NULL;
    Token* else_body = NULL;
    
    if(IS_INSTRUCTION(RIGHT(token)) && INSTR(RIGHT(token)) == ELSE)
        {
        than_body =  LEFT(RIGHT(token));
        else_body = RIGHT(RIGHT(token));
        }
    else
        than_body = RIGHT(token);
    
    BaseBlock* than_block = InsertNewBaseBlock (buildog); // insert block ant switch to it
    assert(than_block);

    branch->true_block = than_block;

    AstVisitor(buildog, than_body);  // get `than` body

    Branch* than_branch = AddBranch (buildog, NULL); // add branch as last instruction to `than` body 
    assert(than_branch);

    if (else_body)
        {
        BaseBlock* else_block = InsertNewBaseBlock (buildog);
        assert(than_block);

        branch->false_block = else_block;
        AstVisitor(buildog, else_body);
        } 

    Branch* else_branch = AddBranch (buildog, NULL); // If there is no 'else' block, than this branch will be out of range 
    assert(else_branch);
    
    BaseBlock* merge_block = InsertNewBaseBlock (buildog);
    assert(merge_block); 

    than_branch->true_block = merge_block;
    else_branch->true_block = merge_block;

    return NULL;
    } 

int AstToIR (Program* program, Module* dest_mod)
    {
    assert(program);
    assert(dest_mod);

    Builder buildog = {};
    BuilderCtor (&buildog, dest_mod);

    SetStringPool(program->string_arr);

    AstVisitor (&buildog, program->root);

    return SUCCESS;
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

        case NAME: 
                { 
                ValueLabel* temp = FindValueLabel (&buildog->global, NAME_ID(token));

                if (temp)
                    return temp->val;

                if (buildog->current_function)
                    {
                    temp = FindValueLabel (&buildog->local, NAME_ID(token));

                    if (temp)
                        return temp->val;

                    }

                report ("Warning: Can't find Value for Name: '%s'\n", GetString(NAME_ID(token)));
                return NULL;
                }
        
        // actually in AST term instruction is: if/else, while and e.c.
        case INSTRUCTION: 
            switch(INSTR(token))
                {
                case IF: return AddIf (buildog, token);
                default: 
                    report("Wrong instruction\n");
                    return NULL;
                }

        case CONSTANT:   return EmitConstant (buildog, token);

        case FUNCTION:      return AddFunction (buildog, token);
        
        case CALL:        
        case NATIVE_FUNCTION:   return AddCall (buildog, token);
        
        case INITIALIZATOR: return CreateInitializator (buildog, token);
        case OPERATOR:      return AddOperator (buildog, token);
        case ASSIGMENT:     return AddLoad     (buildog, token);
        case FUNCTION_RET_TYPE: return AddReturn (buildog, token);

        default:
            report ("Wrong token type\n");
            PrintToken (token, GetStringPool());
            return NULL;

        }

    YOU_SHALL_NOT_PASS;

    PrintToken(token, NULL);

    return NULL;
    }