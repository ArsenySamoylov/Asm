#include "StandartAWP.h"

#include <stdio.h>
#include <stdarg.h>

#include "Grammar.h"
#include "DSL.h"
#include "LangUtils.h"

#include "LogMacroses.h"
#include "Utils.h"

static FILE*        STD_FILE     = NULL;
static const char** STRING_ARR   = NULL;

const char* STD_FUNCTION_RET_TYPE[] = { "TYPE", "VOID"};
const char* NATIVE_FUNCTIONS_STD[]  = { "OUT", "IN", "SIN", "COS", "POW" };

static void stdprint (const char* format, ... );

static int  PutToken (const Token *const token);

static int  PutInstruction    (const Token *const token);
static int  PutNativeFunction (const Token *const token);
static int  PutOperator       (const Token *const token);

static const char* MathOperatorToStd(const int operation); 


int PutProgramToStdAWP (const Program *const program, const char* file_name)
    {
    assertlog(program,      EFAULT, return LFAILURE);
    assertlog(file_name, EFAULT, return LFAILURE);

    STD_FILE = fopen (file_name, "w");
    if (!STD_FILE)
        {
        func_message("Couldn't open file %s\n", file_name);
        return FAILURE;
        }

    STRING_ARR = program->string_arr;
    
    if (PutToken(program->root) != SUCCESS)
        return FAILURE;

    fclose(STD_FILE);

    return SUCCESS;
    }

static int PutToken (const Token *const token)
    {
    // assertlog(token, EFAULT, return FAILURE);
    
    $LOG_TOKEN(token, STRING_ARR)

    if (!token)
        {
        stdprint("{ NIL } ");
        return SUCCESS;
        }

    switch (TYPE(token))
        {
        case CONSTANT:
           stdprint ("{ %lg } ", CONST(token));
           return SUCCESS;
        
        case NAME:
            stdprint ("{ \"%s\" } ", STRING_ARR[NAME_ID(token)]);
            return SUCCESS;

        case STATEMENT:
            stdprint ("{ ST ");

                PutToken( LEFT(token));
                PutToken(RIGHT(token));

            stdprint ("} ");

            return SUCCESS;

        case PARAMETR:
            stdprint("{ PARAM ");

                PutToken( LEFT(token));
                PutToken(RIGHT(token));

            stdprint ("} ");

            return SUCCESS;

        case CALL: 
            {
            stdprint ("{ CALL ");

                // name
                Token* name = LEFT(token);
                stdprint("{ \"%s\" ", STRING_ARR[NAME_ID(name)]);

                    // param
                    PutToken( LEFT(name));

                    // instead ret type
                    PutToken(RIGHT(name));

                stdprint("} ");

            PutToken(RIGHT(token));
            stdprint("} ");

            return SUCCESS;
            }

        case  FUNCTION: 
            {
            stdprint ("{ FUNC ");

                // name
                Token* name = LEFT(token);
                stdprint("{ \"%s\" ", STRING_ARR[NAME_ID(name)]);

                    // param
                    PutToken( LEFT(name));

                    // instead ret type
                    PutToken(RIGHT(name));

                stdprint("} ");

            PutToken(RIGHT(token));
            stdprint("} ");

            return SUCCESS; 
            }

        case FUNCTION_RET_TYPE:
            {
            stdprint ("{ %s ", STD_FUNCTION_RET_TYPE[RET_TYPE(token)]);
                
                // F*CK DANY
                /*
                PutToken( LEFT(token));
                PutToken(RIGHT(token));
                */

            stdprint("} ");

            return SUCCESS;
            }

        case INSTRUCTION:
            return PutInstruction(token);

        case NATIVE_FUNCTION:
            return PutNativeFunction(token);

        case INITIALIZATOR:
            stdprint("{ VAR ");

                // name
                PutToken(LEFT(token));

                // expression          
                PutToken(RIGHT(token));

            stdprint("} ");

            return SUCCESS;

        case OPERATOR:
            return PutOperator(token);

        case ASSIGMENT:
            {
            stdprint("{ EQ ");

                // On the left side have to be varible
                Token* var = LEFT(token);

                if (TYPE(var) != VARIABLE)
                    {
                    func_message("Ebat, assigment must have left token, as varible\n");
                    return FAILURE;
                    }
                
                PutToken(var);

                // var = <expression>
                Token* expression = RIGHT(token);

                PutToken(expression);

            stdprint("} ");

            return SUCCESS;
            }

        case VARIABLE:

            stdprint("{ \"%s\" } ", STRING_ARR[NAME_ID(token)]);

            return SUCCESS;

        default:
            func_message("Wrong type\n");

            PrintToken(token, STRING_ARR);

            return FAILURE;
        }

    YOU_SHALL_NOT_PASS

    return FAILURE;
    }

static int  PutInstruction (const Token *const token)
    {
    assertlog(token, EFAULT, return LFAILURE);

    if (TYPE(token) != INSTRUCTION)
        {
        func_message("Ebat, not a instruction token\n");
        PrintToken(token, STRING_ARR);
        return FAILURE;
        }

    switch(INSTR(token))
        {
        case WHILE:
        case IF:
            stdprint("{ IF ");

                // condition
                PutToken(LEFT(token));

                // body
                PutToken(RIGHT(token));

            stdprint("} ");

            return SUCCESS;

        case ELSE:
            stdprint("{ ELSE ");

                // <expr == true>
                PutToken( LEFT(token));

                // <expr == false>
                PutToken(RIGHT(token));

            stdprint("} ");

            return SUCCESS;

        case RETURN:
            stdprint("{ RET ");

                // expression
                PutToken(LEFT(token));

                // NIL
                stdprint("{ NIL } ");

            stdprint("} ");

            return SUCCESS;

        default:
            printf("Wrong type\n");

            PrintToken(token, STRING_ARR);

            return FAILURE;
        }

    YOU_SHALL_NOT_PASS

    return FAILURE;
    }

static int  PutNativeFunction (const Token *const token)
    {
    assertlog(token, EFAULT, return LFAILURE);

    if (TYPE(token) != NATIVE_FUNCTION)
        {
        func_message("Ebat, not a native function token\n");
        PrintToken(token, STRING_ARR);
        return FAILURE;
        }

    switch(NATIVE_FUNC(token))
        {
        case SIN:
        case COS:
        case POW:

            stdprint("{ %s ", NATIVE_FUNCTIONS_STD[NATIVE_FUNC(token)]);

                // { expr }
                PutToken( LEFT(token));
                PutToken(RIGHT(token));
                /*
                // { NIL "
                stdprint("{ NIL } ");
                */
            stdprint("} ");
            
            return SUCCESS;

        case FIN:
        case FOUT:
            stdprint("{ %s ", NATIVE_FUNCTIONS_STD[NATIVE_FUNC(token)]);

                // PARAM
                stdprint("{ PARAM ");

                PutToken( LEFT(token));
                PutToken(RIGHT(token));

                stdprint("} ");

            stdprint("{ NIL } ");

            stdprint("} ");

            return SUCCESS;

        default:
            func_message("Wrong type\n");

            PrintToken(token, STRING_ARR);

            return FAILURE;
        }

    YOU_SHALL_NOT_PASS

    return FAILURE;
    }

static int  PutOperator (const Token *const token)
    {
    assertlog(token, EFAULT, return BAD_ARGUMENT);

    if (TYPE(token) != OPERATOR)
        {
        func_message("Ebat, not a operator token\n");
        PrintToken(token, STRING_ARR);
        return FAILURE;
        }

    switch(OP(token))
        {
    case ADD:
    case SUB:
    case DIV:
    case MUL:
    case POW:
    case BIGGER:
    case LESS:
    
        stdprint("{ %s ", MathOperatorToStd(OP(token)));

            PutToken( LEFT(token));
            PutToken(RIGHT(token));

        stdprint("} ");

        return SUCCESS;

    default:
        printf("Wrong type\n");

        PrintToken(token, STRING_ARR);

        return FAILURE;
        }

    YOU_SHALL_NOT_PASS

    return FAILURE;
    }

static const char* MathOperatorToStd(const int operation)
    {
    switch (operation)
        {
        case ADD: return "ADD";
        case SUB: return "SUB";
        case DIV: return "DIV";
        case MUL: return "MUL";
        case POW: return "POW";
        
        case BIGGER: return "IS_GT";
        case LESS:   return "IS_BT";

        default: return "NOT SUPPORTED MATH OPERATOR";
        }

    YOU_SHALL_NOT_PASS

    return LNULL;
    }

static void stdprint (const char* format, ... )
    {
    assertlog(format, EFAULT, return);

    va_list ptr{};
    va_start(ptr, format);

    vfprintf(STD_FILE, format, ptr);

    va_end(ptr);

    return;
    }