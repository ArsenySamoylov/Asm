/*!
\file
\brief This file contains interface for translating Ast tree to IR
\todo add 
*/
#pragma once

#include "Module.h"
#include "Program.h"

int AstToIR (Program* program, Module* dest_mod);