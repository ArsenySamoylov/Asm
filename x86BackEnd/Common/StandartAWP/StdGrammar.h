// define TOKEN befire implemanting
// STD_GRAMMAR(name, code)

STD_GRAMMAR(CONSTANT,              8, "%lg", CONST(TOKEN))
STD_GRAMMAR(STATEMENT, 
    {
    stdprint ("{ ST ");
    PutToken(RIGHT(TOKEN));
    PutToken( LEFT(TOKEN));
    stdprint (" } ");

    return SUCCESS; 
    })

STD_GRAMMAR(INITIALIZATOR,
    {
    })

STD_GRAMMAR(FUNCTION_RET_TYPE,  
    {
    })

STD_GRAMMAR(NAME,                   )

STD_GRAMMAR(VARIABLE,              7, "%s", STRING_ARR[NAME_ID(TOKEN)])


STD_GRAMMAR(FUNCTION,              9, "%c", OP(TOKEN) == '{' ? '[' :  OP(TOKEN) == '}' ? ']' : OP(TOKEN))
STD_GRAMMAR(CALL,                  10, "%s", " ")


STD_INSTRUCTION
STD_OPERATOR
