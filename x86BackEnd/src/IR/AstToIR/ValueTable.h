/*!
\file 
\brief Interface for storing Value labels. Used in translating Ast to IR 
*/
#pragma once

#include <vector>

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

    Value*     val;
    BaseBlock* block;
    };

/** 
 * @brief Array of ValueLabels
 * @todo add ValueTable for Function
 */
using ValueNameTable = std::vector<ValueLabel>;

// int ValueNameTableCtor (ValueNameTable* table);
// int ValueNameTableDtor (ValueNameTable* table);

void CopyValueLabel (ValueNameTable& table, ValueLabel label);
Value* FindValue (ValueNameTable& table, int name_id);