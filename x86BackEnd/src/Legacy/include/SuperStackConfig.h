#ifndef STACK_CONFIG
#define STACK_CONGIG

#include "Tabels.h"
#include "NameTable.h"

#define NDEBUG
//! @note if you want to change type of elements, than change this typefef
typedef NameTable* element_t; 

//! @note define NDEBUG if you want to release project
#ifndef NDEBUG

//! @note if this macros defined then dump will dump all
//!          all elements from stack
#define SSDUMP_ALL
#endif

#define GZHA_UNDERSTOOD true //thx Ded

#endif