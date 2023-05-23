#include <assert.h>

#include "Module.h"

#include "CommonEnums.h"

Module::Module () :
    global_vars (ValueType::GlobalVar),
    functions   (ValueType::Function)
    {}