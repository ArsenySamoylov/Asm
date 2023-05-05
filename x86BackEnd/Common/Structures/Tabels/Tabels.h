#pragma once

#include "Token.h"

#include <stddef.h>


// TODO tablE

const int NOT_DECLARED = - 111;
const int NOT_A_LABEL = -9;

enum VarStorageType
    {
    REGISTER,
    RAM,
    };

enum FuncType
    {
    DECLARED,
    DEFINED,
    };

struct VarLabel
    {
    int name_id;
    int position;
    };

// maybe add special elemet to control end od label_arr instead arr_size
struct VarTabel
    {
    VarLabel** label_arr;
    size_t arr_size;

    size_t number_of_labels;
    };

struct FuncLabel
    {
    int name;
    int ret_type;
    int body_status;

    int number_of_return;

    size_t number_of_local_variables;
    int number_of_parametrs;
    };

struct FuncTabel
    {
    FuncLabel** label_arr;
    size_t arr_size;
    
    size_t number_of_labels;  
    };


FuncTabel*  NewFuncTabel();
int CloseFuncTabel (FuncTabel* tabel);

// int FuncTabelCtor (FuncTabel* tabel);
// All Func Labels must be Calloced
// int FuncTabelDtor (FuncTabel* tabel);

int IsFuncLabel (int name_id, FuncTabel* func_tabel);

int AddFuncLabel (FuncLabel* label, FuncTabel* tabel);
int AddFuncLabel (int name_id, int return_type, int body_status, FuncTabel* func_tabel); 

FuncLabel* NewFuncLabel (int name_id, int return_type);

// Compares only name, ret type and body status  (number_of_argumetns in future)
int CompareFuncLabels (FuncLabel* label1, FuncLabel* label2);

//////////////////////////////////////////////////////////////////////
VarTabel* NewVarTabel();
int CloseVarTabel (VarTabel* tabel);

// int VarTabelCtor (VarTabel* tabel);
// int VarTabelDtor (VarTabel* tabel);

VarLabel* IsVarLabel (int name_id, VarTabel* tabel);

int AddVarLabel (VarLabel* label, VarTabel* tabel);
int AddVarLabel (int name_id,     VarTabel* tabel);