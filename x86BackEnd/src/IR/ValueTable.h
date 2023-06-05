#pragma once

#include "Value.h"


struct ValueLabel
    {
    int name_id;
    int type;

    Value*     val;
    BaseBlock* block;
    };

struct ValueNameTable
    {
    ValueLabel** arr;

    size_t size;
    size_t capacity;
    };

int ValueNameTableCtor (ValueNameTable* table);
int ValueNameTableDtor (ValueNameTable* table);

ValueLabel* CopyValueLabel (ValueNameTable* table, ValueLabel* label);
ValueLabel* FindValueLabel (ValueNameTable* table, int name_id);