#include <assert.h>

#include "AstToIR.h"

#include "Builder.h"
#include "StringPool.h"

#include "DSL.h"
#include "Grammar.h"
#include "LangUtils.h"

#include "CommonEnums.h"
#include "EasyDebug.h"

#include "Program.h" // for creating strings

static Value* AstVisitor (Builder* buildog, const Token* token);

//////////////////////////////////////////////////////
static Value*     EmitName            (Builder* buildog, const Token* token);
static Value*     EmitInstruction     (Builder* buildog, const Token* token);
static Constant*  EmitConstant        (Builder* buildog, const Token* token);
static Function*  EmitFunction        (Builder* buildog, const Token* token);
static Call*      EmitCall            (Builder* buildog, const Token* token);
static Value*     EmitNativeFunction  (Builder* buildog, const Token* token);
/// @todo Rename to Initializer
static Value*     EmitInitializator   (Builder* buildog, const Token* token);
static Operator*  EmitOperator        (Builder* buildog, const Token* token);
/// @todo Rename to Assignment
static Value*     EmitAssigment       (Builder* buildog, const Token* token);
static Return*    EmitReturn          (Builder* buildog, const Token* token);

//////////////////////////////////////////////////////
int AstToIR (Program* program, Module* dest_mod)
    {
    assert(program);
    assert(dest_mod);

    Builder buildog {};
    BuilderCtor (&buildog, dest_mod);

    StringPool pool { program->string_arr, (size_t ) program->number_of_strings, (size_t) program->number_of_strings};
    SetStringPool (&pool); // size MUST be equal to capacity !

    AddNativeFunctions (&buildog);

    AstVisitor (&buildog, program->root);

    program->string_arr        = GetStringPool(); 
    program->number_of_strings = (int) GetStringPoolSize(); // warning!!! size != capacity from this point

    BuilderDtor (&buildog);

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

        case NAME:              return EmitName            (buildog, token);
        case INSTRUCTION:       return EmitInstruction     (buildog, token); 
        case CONSTANT:          return EmitConstant        (buildog, token);
        case FUNCTION:          return EmitFunction        (buildog, token);
        case CALL:              return EmitCall            (buildog, token);
        case NATIVE_FUNCTION:   return EmitNativeFunction  (buildog, token);  
        case INITIALIZATOR:     return EmitInitializator   (buildog, token);
        case OPERATOR:          return EmitOperator        (buildog, token);
        case ASSIGMENT:         return EmitAssigment       (buildog, token);
        case FUNCTION_RET_TYPE: return EmitReturn          (buildog, token);

        default:
            report ("Wrong token type\n");
            PrintToken (token, GetStringPool());
            return NULL;

        }
    }

//////////////////////////////////////////////////////
// Name
//////////////////////////////////////////////////////
static Value* EmitName (Builder* buildog, const Token* token)
    { 
    assert (buildog);
    assert (token);

    Value* temp = FindValue (buildog, NAME_ID(token));
    
    if (!temp)
        report ("Warning: Can't find Value for Name: '%s'\n", GetString(NAME_ID(token)));
    
    return temp;
    }

//////////////////////////////////////////////////////
// Instructions, for example IF, IF ELSE and e.t.
//////////////////////////////////////////////////////
static unsigned NUMBER_OF_IF = 0;

static Instruction* EmitIf        (Builder* buildog, const Token* token);
static Instruction* EmitOnlyIf    (Builder* buildog, Branch* branch, BaseBlock* than_block, const Token* token, unsigned if_number);
static Instruction* EmitIfAndElse (Builder* buildog, Branch* branch, BaseBlock* than_block, const Token* token, unsigned if_number);

static Value* EmitInstruction (Builder* buildog, const Token* token)
    { 
    assert (buildog);
    assert (token);

    switch(INSTR(token))
                {
                case IF: return EmitIf (buildog, token);
                default: 
                    report("Wrong instruction\n");
                    return NULL;
                }
    }

static Instruction* EmitIf (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    if (INSTR(token) != IF)
        {
        report("Instruction type must be 'IF'\n");
        return NULL;
        }

    // get condition
    Value*  condition = AstVisitor(buildog, LEFT(token));
    assert (condition);

    //Create branch, as last instruction in current BaseBlock
    Branch* branch = CreateBranch (buildog, NULL, condition, NULL, NULL);

    // Set 'than' block
    unsigned if_number     = NUMBER_OF_IF++;
    name_t than_block_name = CreateString ("than_%u", if_number);

    BaseBlock* than_block = InsertNewBaseBlock (buildog, than_block_name); // insert block ant switch to it
        assert(than_block);

    if (IS_INSTRUCTION(RIGHT(token)) && INSTR(RIGHT(token)) == ELSE)
        return EmitIfAndElse (buildog, branch, than_block, token, if_number);

    return EmitOnlyIf (buildog, branch, than_block, token, if_number);
    } 

static Instruction* EmitOnlyIf (Builder* buildog, Branch* branch, BaseBlock* than_block, const Token* token, unsigned if_number)
    {
    assert (buildog);
    assert (branch);
    assert (token);

    Token* than_body = RIGHT(token);

    AstVisitor(buildog, than_body);  // get `than` body

    Branch* than_branch = CreateBranch (buildog, NULL, NULL, NULL, NULL); // add branch as last instruction to `than` body 
     assert(than_branch);

    name_t  merge_block_name = CreateString ("merge_%u", if_number);
    assert (merge_block_name);

    BaseBlock* merge_block = InsertNewBaseBlock (buildog, merge_block_name);
        assert(merge_block); 

    branch->set_true_block  (than_block);
    branch->set_false_block (merge_block);

    than_branch->set_true_block  (merge_block);

    return NULL;
    }

static Instruction* EmitIfAndElse  (Builder* buildog, Branch* branch, BaseBlock* than_block, const Token* token, unsigned if_number)
    {
    assert (buildog);
    assert (token);

    Token* than_body = LEFT (RIGHT(token));
    Token* else_body = RIGHT(RIGHT(token));

    AstVisitor(buildog, than_body);  // get `than` body
    
    Branch* than_branch = CreateBranch (buildog, NULL, NULL, NULL, NULL); // add branch as last instruction to `than` body 
    assert (than_branch);

    // Set 'else'
    name_t  else_block_name = CreateString ("else_%u", if_number);
    assert (else_block_name);

    BaseBlock* else_block = InsertNewBaseBlock (buildog, else_block_name); // insert block and switch to it
       assert (else_block);

    AstVisitor(buildog, else_body);  // get `else` body
    
    Branch* else_branch = CreateBranch (buildog, NULL, NULL, NULL, NULL); // add branch as last instruction to `than` body 
     assert(else_branch);

    // Set 'merge'
    name_t  merge_block_name = CreateString ("merge_%u", if_number);
    assert (merge_block_name);

    BaseBlock* merge_block = InsertNewBaseBlock (buildog, merge_block_name);
        assert(merge_block); 

    than_branch->set_true_block (merge_block);
    else_branch->set_true_block (merge_block);

    branch->set_true_block  (than_block);
    branch->set_false_block (else_block);

    return NULL;
    }

//////////////////////////////////////////////////////
// Constant
//////////////////////////////////////////////////////
static unsigned CONSTANT_NUMBER = 0;
static unsigned TEMP_VAR_NUMBER = 0;

static Constant*  EmitConstant  (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    data_t const_val  = (data_t) (CONST(token) * 100);
    name_t const_name = CreateString ("const_%d", CONSTANT_NUMBER++);

    Constant* constant = CreateConstant (buildog, const_name, const_val);

    buildog->mod->add_const (constant);
    return constant;
    }

//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
static int GetParametersDeclaration (Builder* buildog, ValueArr<Value>* argv, Token* token);

static Function* EmitFunction (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Token* function_name     =  LEFT(token);
    Token* function_ret_type = RIGHT(function_name);

    name_t  func_name = GetString (NAME_ID(function_name));
    assert (func_name);

    Function* func = CreateFunction (buildog, func_name, RET_TYPE(function_ret_type), NAME_ID(function_name));

    GetParametersDeclaration (buildog, func->get_argv(), LEFT(function_name));

    TEMP_VAR_NUMBER = 0;
    CONSTANT_NUMBER = 0;
    
    AstVisitor (buildog, RIGHT(token)); // adding function body

    AddFunctionToModule (buildog);
    
    ResetBuilderAfterFunction (buildog);

    return NULL;
    }

static int GetParametersDeclaration (Builder* buildog, ValueArr<Value>* argv,Token* token)
    {
    assert(buildog);
    assert(argv);

    if (!token) return SUCCESS;

    Token* param = token;
    while (param)
        {
        Value* param_val = AstVisitor (buildog, LEFT(param));
        assert(param_val);
                         
        argv->add (param_val);

        param = RIGHT(param);
        }

    return SUCCESS;
    }

//////////////////////////////////////////////////////
// Call
//////////////////////////////////////////////////////
const Function* FindNativeFunction (Builder* buildog, int native_func_num);

static Call* EmitCall (Builder* buildog, const Token* token)
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
        
        /// @todo make separate table for functions, to avoid cast
        func = (Function*) FindValue (buildog, NAME_ID(func_name));
        if (!func)
            {
            PrintToken (func_name, GetStringPool());
            report ("%s, %d\n\n", GetString(NAME_ID(func_name)), NAME_ID(func_name));
            }

        assert(func);
        }

    assert(func);

    name_t  call_name = CreateString ("%%c_%u", TEMP_VAR_NUMBER++);
    assert (call_name);

    Call*   call = CreateCall (buildog, call_name, func);
    assert (call);

    ValueArr<Value>* argv = call->get_argv();
    assert   (argv);

    Token* param = LEFT (func_name);
    while (param)
        {
        Value* param_val = AstVisitor (buildog, LEFT(param));
        assert(param_val);

        argv->add(param_val);

        param = RIGHT(param);
        }

    AddInstruction (buildog, call);
    return call;
    }

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
        if (!strcmp(val->get_name(), native_func))
            return (const Function*) val;
        }

    report ("Warning: can't find native function\n");
    assert(0);

    return NULL;
    }

//////////////////////////////////////////////////////
// Native Function
//////////////////////////////////////////////////////
static Value* RearrangeFinTokens (Builder* buildog, const Token* token);

static Value* EmitNativeFunction (Builder* buildog, const Token* token)
    {
    if (NATIVE_FUNC(token) == FIN)
                    return RearrangeFinTokens (buildog, token);

    return EmitCall (buildog, token);
    }

static Value* RearrangeFinTokens (Builder* buildog, const Token* token)
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

//////////////////////////////////////////////////////
// EmitInitializator
/// @todo I will rename, I swear !!!
//////////////////////////////////////////////////////
static GlobalVar* AddGlobalVar (Builder* buildog, const Token* token);
static Store*     AddLocalVar     (Builder* buildog, const Token* token);

static Value* EmitInitializator (Builder* buildog, const Token* token) // add to ValueNameTable and call Create Global Var or Store
    {
    assert(buildog);
    assert(token);

    // if Builder doesn't have current Function*, than it is GlobalVar,
    if (!buildog->current_function)
        return AddGlobalVar (buildog, token);

    return AddLocalVar (buildog, token); // create store 
    }

static GlobalVar* AddGlobalVar (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);
    
    Token* var_name_token = LEFT(token);

    Constant* init_val  = EmitConstant (buildog, RIGHT(token));
    assert (init_val->get_type() == ValueType::Constant);

    name_t  var_name = GetString(NAME_ID(var_name_token));
    assert (var_name);

    GlobalVar* var = CreateGlobalVar (buildog, var_name, init_val);
    assert    (var);

    ValueLabel var_label = {.name_id = NAME_ID(var_name_token),
                            .type    = VARIABLE,
                            .val     = var,
                           };
    
    CopyValueLabel (&buildog->global, &var_label);

    return var;
    };

static Store* AddLocalVar (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Token*  name      = LEFT(token);
    name_t  var_name  = GetString (NAME_ID(name));
    assert (var_name);

    Value* store_val = AstVisitor (buildog, RIGHT(token));
    
    Store* store = CreateStore (buildog, var_name, store_val);
    
    ValueLabel label = { .name_id = NAME_ID(name),
                         .type    = VARIABLE,
                         .val     = store,
                       };
    
    CopyValueLabel (&buildog->local, &label);
    
    buildog->current_function->increase_n_local_vars ();
    return store;
    };

//////////////////////////////////////////////////////
// Operator
//////////////////////////////////////////////////////
static OperatorType GetOperatorType (int type);

static Operator* EmitOperator (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Value* left  = AstVisitor (buildog,  LEFT(token));
    Value* right = AstVisitor (buildog, RIGHT(token));

    name_t  op_name = CreateString ("%%op_%u", TEMP_VAR_NUMBER++);
    assert (op_name);

    Operator* op = CreateOperator (buildog, op_name, GetOperatorType(OP(token)), left, right);
    assert   (op);

    return op;
    }

static OperatorType GetOperatorType (int type)
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

//////////////////////////////////////////////////////
// Assigment 
/// @todo I will rename, I swear !!!
/////////////////////////////////////////////////////
static Value* EmitAssigment (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Value* dest = AstVisitor(buildog,  LEFT(token));
    Value* src  = AstVisitor(buildog, RIGHT(token));

    Load*   load = CreateLoad (buildog, NULL, dest, src);
    assert (load);
    
    return load;
    }

//////////////////////////////////////////////////////
// Return
//////////////////////////////////////////////////////
static Return*   EmitReturn    (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Value* ret_val = AstVisitor (buildog, LEFT(token));

    Return* ret = CreateReturn (buildog, NULL, ret_val);
    assert (ret);

    return ret;
    }