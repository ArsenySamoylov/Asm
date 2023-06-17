/*!
\file 
\brief Interface for storing Value labels. Used in translating Ast to IR 
*/
#pragma once

#include "Value.h"
/**
 * @brief Label for value
 * 
 * When translating Ast to IR I need temp struct to hold ptr to Value
 * and its name_id (for Legacy reasons I store index of string in token)
 * @todo add ValueLabel for Function
 */
struct ValueLabel
    {
    int name_id;
    int type;

    Value&     val;
    BaseBlock& block;

    ValueLabel ();
    ValueLabel (int name_id_param, int type_param, 
                Value& val_param, BaseBlock& block_param) : 
                name_id (name_id_param),
                type    (type_param),
                val     (val_param),
                block   (block_param)
                {}
    };

struct FunctionLabel
    {
    int name_id;
    int type;

    Function& function;

    FunctionLabel ();
    FunctionLabel (int name_id_param, int type_param, Function& function_param) : 
                    name_id  (name_id_param),
                    type     (type_param),
                    function (function_param)
                    {}
    };

ValueLabel* FindValueLabel (PtrArray<ValueLabel>& table, int name_id);