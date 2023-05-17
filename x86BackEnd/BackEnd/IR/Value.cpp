#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "Value.h"
#include "Instructions.h"

#include "CommonEnums.h"
#include "LogMacroses.h"

int BaseBlockCtor (BaseBlock* block)
    {
    assert(block);

    InstructionArrCtor (&block->inst_arr);
    return SUCCESS;
    }

int BaseBlockDtor (BaseBlock* block)
    {
    assert(block);

    InstructionArrDtor (&block->inst_arr);
    return SUCCESS;
    }

int FunctionCtor (Function* func)
    {
    assert(func);

    ValueArrCtor     (&func->argv);
    BaseBlockArrCtor (&func->body);

    return SUCCESS;
    }

int FunctionDtor (Function* func)
    {
    assert(func);

    ValueArrDtor     (&func->argv);
    BaseBlockArrDtor (&func->body);

    return SUCCESS;
    }


#include "ArrayTemplate.h"

ARR_CTOR (ValueArr,       Value)
ARR_CTOR (InstructionArr, Instruction)
ARR_CTOR (BaseBlockArr,   BaseBlock)

ARR_DTOR (ValueArr,       Value)
ARR_DTOR (InstructionArr, Instruction)
ARR_DTOR (BaseBlockArr,   BaseBlock)

ARR_RESIZE (ValueArr,       Value)
ARR_RESIZE (InstructionArr, Instruction)
ARR_RESIZE (BaseBlockArr,   BaseBlock)

ADD_TO_ARR (ValueArr,       Value)
ADD_TO_ARR (InstructionArr, Instruction)
ADD_TO_ARR (BaseBlockArr,   BaseBlock)

#undef ARR_CTOR
#undef ARR_DTOR
#undef RESIZE
#undef ADD_TO_ARR