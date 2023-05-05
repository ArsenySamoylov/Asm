// define TOKEN befire implemanting
// TOKEN_TYPE(name, val,  specificator, ... - arguments)

TOKEN_TYPE(STATEMENT,             1, "%c", OP(TOKEN) == '{' ? '[' :  OP(TOKEN) == '}' ? ']' : OP(TOKEN))
TOKEN_TYPE(INSTRUCTION,           2, "%s", INSTRUCTIONS[INSTR(TOKEN)])
TOKEN_TYPE(INITIALIZATOR,         3, "%s", INITIALIZATORS[INITIALIZATOR(TOKEN)])
TOKEN_TYPE(FUNCTION_RET_TYPE,     4, "%s", FUNCTION_RET_TYPES[RET_TYPE(TOKEN)] )
TOKEN_TYPE(OPERATOR,              5, "%c", OP(TOKEN) == '<' ? 'L' : OP(TOKEN) == '>' ? 'B' : OP(TOKEN))
// string
TOKEN_TYPE(NAME,                  6, "%s", STRING_ARR[NAME_ID(TOKEN)])
TOKEN_TYPE(VARIABLE,              7, "%s", STRING_ARR[NAME_ID(TOKEN)])
TOKEN_TYPE(CONSTANT,              8, "%lg", CONST(TOKEN))
TOKEN_TYPE(FUNCTION,              9, "%c", OP(TOKEN) == '{' ? '[' :  OP(TOKEN) == '}' ? ']' : OP(TOKEN))
TOKEN_TYPE(CALL,                  10, "%c",OP(TOKEN))
TOKEN_TYPE(NATIVE_FUNCTION,       11, "%s", NATIVE_FUNCTIONS[NATIVE_FUNC(TOKEN)].str)
TOKEN_TYPE(PARAMETR,              12, "%c", OP(TOKEN) == '{' ? '[' :  OP(TOKEN) == '}' ? ']' : OP(TOKEN))

TOKEN_TYPE(ASSIGMENT,                  '=', "%c", OP(TOKEN))
TOKEN_TYPE(SEPARATOR,                  ',', "%c", OP(TOKEN))
TOKEN_TYPE(BLOCK_OPENING_BRACKET,      '{', "%c", OP(TOKEN))
TOKEN_TYPE(BLOCK_CLOSING_BRACKET,      '}', "%c", OP(TOKEN))
TOKEN_TYPE(EXPRESSION_OPENING_BRACKET, '(', "%c", OP(TOKEN))
TOKEN_TYPE(EXPRESSION_CLOSING_BRACKET, ')', "%c", OP(TOKEN))
TOKEN_TYPE(END_OF_STATEMENT,           ';', "%c", OP(TOKEN))