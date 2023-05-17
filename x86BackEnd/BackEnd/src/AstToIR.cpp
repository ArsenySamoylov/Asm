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
    ValueLabel** arr;

    size_t size;
    size_t capacity;
    };

int ValueNameTableCtor (ValueNameTable* table);
int ValueNameTableDtor (ValueNameTable* table);

int AddValueLabel (ValueNameTable* table, ValueLabel* label, size_t size = sizeof(ValueLabel));

ValueLabel* FindValueLabel (ValueNameTable* table, int name_id)
    {
    assert(table);
    assert(name_id);

    for (size_t i = 0; i < table->size; i++)
        {
        ValueLabel* label = table->arr[i];

        if (label->name_id == name_id)
            return label;
        }

    return NULL;
    }

#include "ArrayTemplate.h"
 
ARR_CTOR    (ValueNameTable, ValueLabel);
ARR_DTOR    (ValueNameTable, ValueLabel);
ARR_RESIZE  (ValueNameTable, ValueLabel);
ADD_TO_ARR  (ValueNameTable, ValueLabel);

#undef ARR_CTOR
#undef ARR_DTOR
#undef RESIZE
#undef ADD_TO_ARR
#undef FIND_IN_ARR

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
struct Builder
    {
    ValueNameTable global;
    ValueNameTable local;         // active when builder process function 

    Function*   current_function;
    BaseBlockArr*    body_blocks; // active when builder process function 
    
    Module* mod;
    };

int BuilderCtor (Builder* buildog, Module* mod);
int BuilderCtor (Builder* buildog, Module* mod)
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

//////////////////////////////////////////////////////
static Constant*  CreateConstant  (Builder* buildog, const Token* token);
static Constant*  CreateConstant  (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Constant* constant = (Constant*) calloc (1, sizeof(constant[0]));
    assert(constant);

    constant->name = NULL;
    constant->Value::type    = ValueType::Constant;
    constant->Constant::data = CONST(token);

    return constant;
    }

    // CreateBaseBlock() -> new, out into function, return ptr
    // InsertCurrentBlock() for CreateInstruction()

static GlobalVar* CreateGlobalVar (Builder* buildog, const Token* token);
static GlobalVar* CreateGlobalVar (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);
    
    Token* var_name = LEFT(token);

    GlobalVar* var = (GlobalVar*) calloc (1, sizeof(var[0]));
    assert(var);

    var->name            = GetString (NAME_ID(var_name));
    var->Value    ::type = ValueType::GlobalVar;
    var->GlobalVar::type = VariableType::Double;

    ValueLabel var_label = {.name_id = NAME_ID(var_name),
                            .type    = VARIABLE,
                            .val     = var,
                           };

    AddValueLabel (&buildog->global, &var_label);

    var->init_val  = dynamic_cast<Constant*> (AstVisitor(buildog, RIGHT(token)));

    return var;
    };

// static BaseBlock* CreateBaseBlock (Builder* buildog, const Token* token);

static int PutInstructionInCurrentBaseBloc (Builder* buildog, Instruction* instruction);
static int PutInstructionInCurrentBaseBloc (Builder* buildog, Instruction* instruction)
    {
    assert(buildog);
    assert(instruction);

    if (!buildog->current_function)
        {
        report ("Error, Null current_function\n");
        return FAILURE;
        }

    BaseBlockArray* blocks_arr = &buildog->current_function->body;

    return AddInstruction (blocks_arr, instruction);
    }

static Store* CreateStore (Builder* buildog, const Token* token);
static Store* CreateStore (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Token* name = LEFT(token);

    Store* store = (Store*) calloc (1, sizeof(store[0]));
    assert(store);

    ValueLabel label = { .name_id = NAME_ID(name),
                         .type    = VARIABLE,
                         .val     = store,
                       };
    
    AddValueLabel (&buildog->local, &label);

    store->      Value::name = GetString (NAME_ID(name));
    store->      Value::type = ValueType::Instruction;
    store->Instruction::type = InstructionType::Store;

    store->Store::val = dynamic_cast<Store*> (AstVisitor(buildog, RIGHT(token)));

    PutInstructionInCurrentBlock (buildog, store);
    return store;
    };

static Load*     CreateLoad      (Builder* buildog, const Token* token);
static Load* CreateLoad (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Load* load = (Load*) calloc (1, sizeof(load[0]));
    assert(load);

    load->     Value::type =       ValueType::Instruction;
    load->Instruction:type = InstructionType::Load;

    load->dest = AstVisitor( LEFT(token));
    load->src  = AStVisitor(RIGHT(token));

    PutInstructionInCurrentBlock (buildog, load);
    return load;
    }

static Branch*   CreateBranch    (Builder* buildog, const Token* token);
static Branch* CreateBranch (Builder* buildog, 
                            Value* condition        = NULL,
                            BaseBlock* true_branch  = NULL,
                            BaseBlock* false_branch = NULL, )
    {
    assert(buildog);
    assert(token);

    Branch* branch = (Branch*) calloc (1, sizeof(branch[0]));
    assert(branch);

    branch->      Value::type =       ValueType::Instruction;
    branch->Instruction::type = InstructionType::Branch;

    branch->condition    = condition;
    branch-> true_branch = true_branch;
    branch->false_branch = false_branch;

    PutInstructionInCurrentBlock (buildog, branch);
    return branch;
    }

static Operator* CreateOperator  (Builder* buildog, const Token* token);
static Call*     CreateCall      (Builder* buildog, const Token* token);
static Return*   CreateReturn    (Builder* buildog, const Token* token);


static Value* CreateInitializator (Builder* buildog, const Token* token);
static Value* CreateInitializator (Builder* buildog, const Token* token) // add to ValueNameTable and call Create Global Var or Store
    {
    assert(buildog);
    assert(token);

    // if Builder doesn't have current Function*, than it is GlobalVar,
    if (!buildog->current_function)
        return CreateGlobalVar (buildog, token);

    return CreateStore (buildog, token); // creating store 
    }
    
static Function* CreateFunction (Builder* buildog, const Token* token);
static Function* CreateFunction (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    Token* function_name     =  LEFT(token);
    Token* function_ret_type = RIGHT(function_name);

    auto func = (Function*) calloc (1, sizeof(func[0]));
    assert(func);
    
    func->   Value::type = ValueType::Function;
    func->Function::type = RET_TYPE(function_ret_type) == DOUBLE ? FunctionRetType::Double : FunctionRetType::Void;
    func->name           = GetString(NAME_ID(function_name));

    ValueLabel function_label = {.name_id = NAME_ID(function_name),
                                 .type    = FUNCTION,
                                 .val     = func
                                };

    AddValueLabel (&buildog->global, &function_label);

    // setting Builder for setting function
    buildog->body_blocks = &func->body;

    BaseBlockArrCtor (buildog->body_blocks);
    ValueNameTableCtor (&buildog->local); 

    buildog->current_function = func; 

    // get parameters 
    // func->argv = GetParametersDeclaration (LEFT(function_name));
    // get function body
    
    AstVisitor (buildog, RIGHT(token));

    buildog->body_blocks = NULL;
    return func;
    }

// actually in AST term instruction is: if/else, while and e.c.
static Instruction* CreateInstruction  (Builder* buildog, const Token* token);
// actually in AST term instruction is: if/else, while and e.c.
static Instruction* CreateInstruction  (Builder* buildog, const Token* token)
    {
    assert(buildog);
    assert(token);

    if (INSTR(token) != IF)
        {
        report("Instruction type must be 'IF'\n");
        return NULL;
        }

    // get condition
    Value* condition = AstVisitor(LEFT(token));
    assert(condition);

    //Create Branches, as last instruction in current BaseBlock
    Branch* branch = CreateBranch (buildog, condition);

    // Set 'than' and 'else' blocks
    Token* than_body = NULL;
    Token* else_body = NULL;
    
    if(IS_INST(RIGHT(token)) && INSTR(RIGHT(token) == ELSE)
        {
        than_body =  LEFT(RIGHT(token));
        else_body = RIGHT(RIGHT(token));
        }
    else
        than_body = RIGHT(token);
    
    BaseBlock* than_block = InsertNewBaseBlock (buildog);
    assert(than_block);

    Branch* than_branch = SetConditionalBloc(buildog, than_body);
    
    if (else_body)
        {
        BaseBlock* else_block = InsertNewBaseBlock (buildog);
        assert(than_block);

        Branch* else_branch = SetConditionalBloc(buildog, than_body);
        } 
    
    BaseBlock* merge_block = InsertNewBaseBlock (buildog);
    assert(merge_block); 

    } 

Branch* SetConditionalBlock (Builder* buildog, const Token* token)
    {
    assert(buildog);
    if (!token) return NULL;

    AstVisitor(token);

    Branch* merge_branch = CreateBranch ();
    assert(merge_branch);

    return merge_branch;
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
        case INSTRUCTION: return CreateInstruction (buildog, token);

        case CALL:        
        case NATIVE_FUNCTION:   return CreateCall (buildog, token);
        
        case INITIALIZATOR: return CreateInitializator (buildog, token);
        case FUNCTION:      return CreateFunction (buildog, token);
        
        case CONSTANT:   return CreateConstant (buildog, token);
        case OPERATOR:   return CreateOperator (buildog, token);
        case ASSIGMENT:  return CreateLoad     (buildog, token);

        default:
            report ("Wrong token type\n");
            PrintToken (token, GetStringPool());
            return NULL;

        }

    YOU_SHALL_NOT_PASS;

    PrintToken(token, NULL);

    return NULL;
    }

    