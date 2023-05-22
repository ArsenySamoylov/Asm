#include <assert.h>

#include "Module.h"
#include "Program.h"

#include "Builder.h"
#include "StringPool.h"

#include "DSL.h"
#include "Grammar.h"
#include "LangUtils.h"

#include "CommonEnums.h"
#include "EasyDebug.h"

#include "Program.h" // for create string

#pragma GCC diagnostic ignored "-Wunused-function"
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wmissing-declarations"

//////////////////////////////////////////////////////


//////////////////////////////////////////////////////
static Value* AstVisitor (Builder* buildog, const Token* token);

static FunctionRetType GetRetType (int type);
static FunctionRetType GetRetType (int type)
    {
    return  (type == DOUBLE) ? FunctionRetType::Double : FunctionRetType::Void;
    }

static int AddNativeFunctions (Builder* buildog);
static int AddNativeFunction  (ValueNameTable* name_table, const NativeFunctionStruct* func);

static int AddNativeFunctions (Builder* buildog)
    {
    assert(buildog);

    for (size_t i = 0; i < NUMBER_OF_NATIVE_FUNCTIONS_STRUCT; i++)
        AddNativeFunction (&buildog->global, NATIVE_FUNCTIONS + i);

    return SUCCESS;
    }

static int FIN_NAME_ID = 0;

static int AddNativeFunction (ValueNameTable* name_table, const NativeFunctionStruct* native_func)
    {
    assert(name_table);
    assert(native_func);

    Function*     func = (Function*) calloc (1, sizeof(func[0]));
           assert(func);
    FunctionCtor (func, native_func->str);
                  func->Function::type = GetRetType (native_func->ret_type);

    int name_id = AddString (native_func->str);

    if (!strcmp(native_func->str, "fin"))
        FIN_NAME_ID = name_id;

    ValueLabel function_label = {.name_id = name_id,
                                 .type    = FUNCTION,
                                 .val     = func
                                };

    CopyValueLabel (name_table, &function_label);
    return SUCCESS;
    }

const Function* FindNativeFunction (Builder* buildog, int native_func_num);
const Function* FindNativeFunction (Builder* buildog, int native_func_num)
    {
    ValueNameTable* table = &buildog->global;
    assert(table);

    const char* native_func = NATIVE_FUNCTIONS[native_func_num].str;
    assert(native_func);

    for (size_t i = 0; i < table->size; i++)
        {
        const ValueLabel* label = table->arr[i];
        assert(label);

        const Value* val =  label->val;
        if (!strcmp(val->name, native_func))
            return (const Function*) val;
        }

    report ("Warning: can't find native function\n");
    assert(0);

    return NULL;
    }
        
//////////////////////////////////////////////////////
unsigned N_CONSTANT = 0;

static Constant*  EmitConstant  (Builder* buildog, const Token* token);
static Constant*  EmitConstant  (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Constant* constant = (Constant*) calloc (1, sizeof(constant[0]));
    ConstantCtor (constant, (int) (CONST(token) * 100));

    constant->name = CreateString ("const_%d", N_CONSTANT++);
    return constant;
    }

static GlobalVar* AddGlobalVar (Builder* buildog, const Token* token);
static GlobalVar* AddGlobalVar (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);
    
    Token* var_name = LEFT(token);

    Constant* init_val  = (Constant*) (AstVisitor(buildog, RIGHT(token)));
    
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


    if (store_val)
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
        
        case BIGGER: return OperatorType::Bigger;
        case LESS:   return OperatorType::Less; 

        default:
            report("Unknow operator type (%d)\n", type);
            return OperatorType::Unknown;
        }
    }

static Operator* AddOperator  (Builder* buildog, const Token* token);

static unsigned OPERATOR_NUMBER = 0;
static Operator* AddOperator (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Value* left  = AstVisitor (buildog,  LEFT(token));
    Value* right = AstVisitor (buildog, RIGHT(token));

    Operator* op = (Operator*) calloc (1, sizeof(op[0]));
    OperatorCtor (op, GetOperatorType (OP(token)), left, right);
    
    op->name = CreateString ("%%op_%u", OPERATOR_NUMBER++);
    AddInstruction (buildog, op);
    return op;
    }

static Call*     AddCall      (Builder* buildog, const Token* token);
static Call* AddCall (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    const Token* func_name = NULL;
    const Function* func   = NULL;
    
    if (TYPE(token) == NATIVE_FUNCTION) 
        {    
        func_name = token;
       
        func = FindNativeFunction (buildog, NATIVE_FUNC(token));
        assert(func);
        }
    else
        {
        func_name = LEFT(token);
        assert(func_name);
        
        func = (Function*) FindValue (buildog, NAME_ID(func_name));
        if (!func)
            {
            PrintToken (func_name, GetStringPool());
            report ("%s, %d\n\n", GetString(NAME_ID(func_name)), NAME_ID(func_name));
            }

        assert(func);
        }

    // PrintToken (func_name, GetStringPool());
    // report ("%s, %d\n\n", GetString(NAME_ID(func_name)), NAME_ID(func_name));

    Call*     call = (Call*) calloc (1, sizeof(call[0]));
    assert   (call);
    CallCtor (call, func);

    Token* param = LEFT (func_name);
    while (param)
        {
        Value* param_val = AstVisitor (buildog, LEFT(param));
        assert(param_val);

        AddValue (&call->argv, param_val);

        param = RIGHT(param);
        }

    call->name = CreateString ("%%c_%u", OPERATOR_NUMBER++);
    AddInstruction (buildog, call);

    return call;
    }

static Return*   AddReturn    (Builder* buildog, const Token* token);
static Return*   AddReturn    (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Return* ret = (Return*) calloc (1, sizeof(ret[0]));
    ReturnCtor(ret);

    ret->value = AstVisitor (buildog, LEFT(token));
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

    Token* param = token;
    while (param)
        {
        Value* param_val = AstVisitor (buildog, LEFT(param));
        assert(param_val);
                         
        AddValue (argv, param_val);

        param = RIGHT(param);
        }

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
static Instruction* AddOnlyIf     (Builder* buildog, const Token* token);
static Instruction* AddIfAndElse  (Builder* buildog, const Token* token);

static unsigned NUMBER_OF_IF = 0;

static Instruction* AddOnlyIf (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    // get condition
    Value* condition = AstVisitor(buildog, LEFT(token));
    assert(condition);

    //Create branch, as last instruction in current BaseBlock
    Branch* branch = AddBranch (buildog, condition);

    Token* than_body = RIGHT(token);

    // Set 'than' block
    unsigned if_number = NUMBER_OF_IF++;

    BaseBlock* than_block       = InsertNewBaseBlock (buildog); // insert block ant switch to it
        assert(than_block);
               than_block->name = CreateString ("than_%u", if_number);

    AstVisitor(buildog, than_body);  // get `than` body

    Branch* than_branch = AddBranch (buildog, NULL); // add branch as last instruction to `than` body 
     assert(than_branch);

    BaseBlock* merge_block      = InsertNewBaseBlock (buildog);
        assert(merge_block); 
              merge_block->name = CreateString ("merge_%u", if_number);

    branch->true_block = than_block;
    branch->false_block = merge_block;

    than_branch->true_block = merge_block;

    return NULL;
    }

static Instruction* AddIfAndElse  (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    // get condition
    Value* condition = AstVisitor(buildog, LEFT(token));
    assert(condition);

    //Create branch, as last instruction in current BaseBlock
    Branch* branch = AddBranch (buildog, condition);
    assert(branch);
    
    Token* than_body = LEFT (RIGHT(token));
    Token* else_body = RIGHT(RIGHT(token));

    unsigned if_number = NUMBER_OF_IF++;

    // Set 'than'
    BaseBlock* than_block       = InsertNewBaseBlock (buildog); // insert block and switch to it
        assert(than_block);
               than_block->name = CreateString ("than_%u", if_number);

    AstVisitor(buildog, than_body);  // get `than` body
    
    Branch* than_branch = AddBranch (buildog, NULL); // add branch as last instruction to `than` body 
     assert(than_branch);

    // Set 'else'
    BaseBlock* else_block       = InsertNewBaseBlock (buildog); // insert block and switch to it
        assert(else_block);
               else_block->name = CreateString ("else_%u", if_number);

    AstVisitor(buildog, else_body);  // get `else` body
    
    Branch* else_branch = AddBranch (buildog, NULL); // add branch as last instruction to `than` body 
     assert(else_branch);

    // Set 'merge'
    BaseBlock* merge_block       = InsertNewBaseBlock (buildog);
        assert(merge_block); 
               merge_block->name = CreateString ("merge_%u", if_number);


    than_branch->true_block = merge_block;
    else_branch->true_block = merge_block;

    branch->true_block = than_block;
    branch->false_block = else_block;

    return NULL;
    }

static Instruction* AddIf (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    if (INSTR(token) != IF)
        {
        report("Instruction type must be 'IF'\n");
        return NULL;
        }

    if(IS_INSTRUCTION(RIGHT(token)) && INSTR(RIGHT(token)) == ELSE)
        return AddIfAndElse (buildog, token);

    return AddOnlyIf (buildog, token);
    } 

int AstToIR (Program* program, Module* dest_mod)
    {
    assert(program);
    assert(dest_mod);

    Builder buildog = {};
    BuilderCtor (&buildog, dest_mod);

    StringPool pool = { program->string_arr, (size_t ) program->number_of_strings, (size_t) program->number_of_strings};
    SetStringPool (&pool);

    AddNativeFunctions (&buildog);
    AstVisitor (&buildog, program->root);

    program->string_arr        = GetStringPool(); 
    program->number_of_strings = (int) GetStringPoolSize(); // warning!!! size != capacity from this point

    return SUCCESS;
    };

static Value* AddFin (Builder* buildog, const Token* token);
static Value* AddFin (Builder* buildog, const Token* token)
    {
    assert (buildog);
    assert (token);

    Token*  param_token = LEFT(token);
    assert (param_token);

    Token*  param_name  = LEFT(param_token);
    assert (param_name);

    static Token fin_name = {NULL,      NULL, NAME, {.t_name_id = FIN_NAME_ID}};
    static Token call     = {&fin_name, NULL, CALL, };
     
     TYPE(param_token) = ASSIGMENT;
     LEFT(param_token) = param_name;
    RIGHT(param_token) = &call;

    return AstVisitor (buildog, param_token);
    }

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
                Value* temp = FindValue (buildog, NAME_ID(token));
                
                if (!temp)
                    report ("Warning: Can't find Value for Name: '%s'\n", GetString(NAME_ID(token)));
               
                return temp;
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
        
        case CALL:              return AddCall (buildog, token);
        case NATIVE_FUNCTION:  
                if (NATIVE_FUNC(token) == FIN)
                    return AddFin (buildog, token);

                return AddCall (buildog, token);
        
        case INITIALIZATOR:     return CreateInitializator (buildog, token);
        case OPERATOR:          return AddOperator (buildog, token);
        case ASSIGMENT:         return AddLoad     (buildog, token);
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