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


static Value* AstVisitor (Builder* buildog, const Token* token);

//////////////////////////////////////////////////////
static Value*     EmitName            (Builder* buildog, const Token* token);
static Value*     EmitInstruction     (Builder* buildog, const Token* token);
static Constant*  EmitConstant        (Builder* buildog, const Token* token);
static Function*  EmitFunction        (Builder* buildog, const Token* token);
static Call*      EmitCall            (Builder* buildog, const Token* token);
static Value*     EmitNativeFunction  (Builder* buildog, const Token* token);
static Value*     EmitInitializator   (Builder* buildog, const Token* token);
static Operator*  EmitOperator        (Builder* buildog, const Token* token);
static Value*     EmitAssigment       (Builder* buildog, const Token* token);
static Return*    EmitReturn          (Builder* buildog, const Token* token);

//////////////////////////////////////////////////////
int AstToIR (Program* program, Module* dest_mod)
    {
    assert(program);
    assert(dest_mod);

    Builder buildog = {};
    BuilderCtor (&buildog, dest_mod);

    StringPool pool = { program->string_arr, (size_t ) program->number_of_strings, (size_t) program->number_of_strings};
    SetStringPool (&pool); // size MUST be equal to capacity !

    AddNativeFunctions (&buildog);

    AstVisitor (&buildog, program->root);

    program->string_arr        = GetStringPool(); 
    program->number_of_strings = (int) GetStringPoolSize(); // warning!!! size != capacity from this point

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
        case INITIALIZATOR:     return CreateInitializator (buildog, token);
        case OPERATOR:          return EmitOperator        (buildog, token);
        case ASSIGMENT:         return EmitAssigment       (buildog, token);
        case FUNCTION_RET_TYPE: return AddReturn           (buildog, token);

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
static Instruction* AddIfAndElse  (Builder* buildog, const Token* token)

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

    if(IS_INSTRUCTION(RIGHT(token)) && INSTR(RIGHT(token)) == ELSE)
        return EmitIfAndElse (buildog, token);

    return EmitOnlyIf (buildog, token);
    } 

static Instruction* EmitOnlyIf (Builder* buildog, const Token* token)
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

static Instruction* EmitIfAndElse  (Builder* buildog, const Token* token)
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

//////////////////////////////////////////////////////
// Constant
//////////////////////////////////////////////////////
static unsigned N_CONSTANT = 0;

static Constant*  EmitConstant  (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    data   const_val  = (int) (CONST(token) * 100);
    name_t const_name = CreateString ("const_%d", N_CONSTANT++);
    
    Constant* constant = CreateConstant (builder, const_val, const_name);

    return constant;
    }

//////////////////////////////////////////////////////
// Function
//////////////////////////////////////////////////////
static FunctionRetType GetFunctionRetType (int type);

static Function* EmitFunction (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Token* function_name     =  LEFT(token);
    Token* function_ret_type = RIGHT(function_name);

    Function* func = CreateFunction (builder, NAME_ID(function_name), RET_TYPE(function_ret_type));


    return func;
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

    Call* call = CreateCall (
    // Call*     call = (Call*) calloc (1, sizeof(call[0]));
    // assert   (call);
    // CallCtor (call, func);

    // Token* param = LEFT (func_name);
    // while (param)
    //     {
    //     Value* param_val = AstVisitor (buildog, LEFT(param));
    //     assert(param_val);

    //     AddValue (&call->argv, param_val);

    //     param = RIGHT(param);
    //     }

    // call->name = CreateString ("%%c_%u", OPERATOR_NUMBER++);
    // AddInstruction (buildog, call);

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
        if (!strcmp(val->name, native_func))
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
//////////////////////////////////////////////////////
static GlobalVar* AddGlobalVar (Builder* buildog, const Token* token);
static Store*     AddStore     (Builder* buildog, const Token* token);

static Value* EmitInitializator (Builder* buildog, const Token* token) // add to ValueNameTable and call Create Global Var or Store
    {
    assert(buildog);
    assert(token);

    // if Builder doesn't have current Function*, than it is GlobalVar,
    if (!buildog->current_function)
        return AddGlobalVar (buildog, token);

    return AddStore (buildog, token); // creating store 
    }

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

//////////////////////////////////////////////////////
// Operator
//////////////////////////////////////////////////////
static unsigned OPERATOR_NUMBER = 0;

static OperatorType GetOperatorType (int type);

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
/////////////////////////////////////////////////////
static Value* EmitAssigment (Builder* buildog, const Token* token)
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

//////////////////////////////////////////////////////
// Return
//////////////////////////////////////////////////////
static Return*   EmitReturn    (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Return* ret = (Return*) calloc (1, sizeof(ret[0]));
    ReturnCtor(ret);

    ret->value = AstVisitor (buildog, LEFT(token));
    AddInstruction (buildog, ret);
    return ret;
    }

//////////////////////////////////////////////////////
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