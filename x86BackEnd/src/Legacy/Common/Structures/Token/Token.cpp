#include "Token.h"

#include "LogMacroses.h"

Token* NewToken (int      type,    TokenValue value, 
                Token* left_child, Token*     right_child)
    {
    $log(DEBUG_ALL)

    Token* new_defnode = (Token*) CALLOC (1, sizeof(Token));
    CHECK (new_defnode, logf("Couldn't allocate memory for new node\n"), return LNULL);
    
    new_defnode-> left_child = left_child;
    new_defnode->right_child = right_child;

    new_defnode->type  = type;
    new_defnode->value = value;

    return new_defnode;
    }

int DeleteBranch (Token* def_node)
    {
    $log(DEBUG_ALL)

    if (!def_node) return SUCCESS;

    if (def_node->left_child != 0)
        CHECK (DeleteBranch (def_node->left_child)  == SUCCESS, return LFAILURE);

    if (def_node->right_child != 0)
        CHECK (DeleteBranch (def_node->right_child) == SUCCESS, return LFAILURE);

    KILL(def_node);

    return SUCCESS;
    }