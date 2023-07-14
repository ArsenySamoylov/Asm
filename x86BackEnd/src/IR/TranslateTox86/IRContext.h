/*!
\file
\brief This file contains interface for translating Module to Elf program (Context and Reference)
*/
#pragma once

#include <stdlib.h>
#include <vector>

#include "Elf.hpp"
#include "Value.h"

/**
 * @brief Struct to hold reference for call or jump ro resolve it later
 * 
 */
struct Reference 
    {
    size_t    position;
    address_t address;

    const Value*  ref_value;
    };

/**
 * @brief Array of references
 * 
 */
#include <vector>
using ReferenceArr = std::vector<Reference>;

void ResetReferenceArr (ReferenceArr& arr);
void AddReference      (ReferenceArr& arr, Reference ref);

/**
 * @brief Resolves references for jum an call
 * 
 * Computes relative address and writes to buffer using position from Reference struct
 * @param buf 
 * @param refs 
 * @return int status
 */
int ResolveReferences (Buffer* buf, ReferenceArr& refs);

////////////////////////////////////////////////////// 

/**
 * @brief Interface for translating Module to Elf
 * 
 */
struct Context
    {
    ReferenceArr call_refs;
    ReferenceArr jump_refs;

    Buffer* code;
    Buffer* data;

    Buffer* stdlib;

    size_t n_locals;
    FILE* dump;
    };

int ContextCtor (Context* ctx, Elf* elf);
int ContextDtor (Context* ctx);

int SetCtxForFunction     (Context* ctx, const Function* func);
int ClearCtxAfterFunction (Context* ctx);

void WriteOpCodes (Context* ctx, const char* src, unsigned size);

//////////////////////////////////////////////////////
/// File for Assembler dump
extern FILE* DUMP;
extern const int TAB_SIZE;

/**
 * @brief Print to Assembler file
 * 
 * @param format 
 * @param ... 
 */
void print_raw     (const char* format, ...);

/**
 * @brief Print comment using COMMENT_ALIGNMENT
 * 
 * @param comment 
 */
void print_comment (const char* comment);         

/**
 * @brief Inset new line
 * Move carrige to new line and reset CURRENT_LINE_LENGTH
 */
void new_line      ();

/**
 * @brief print with tab
 * @note TAB_SIZE specifies how many spaces inserted instead tab
 */
#define print_tab(format, ...) do {                                             \
                                print_raw ("%*c", TAB_SIZE, ' ');               \
                                print_raw (format __VA_OPT__(,) __VA_ARGS__);   \
                                  } while (0);

#define print_label(VALUE)      do {                                        \
                                    print_raw  ("%s:", (VALUE)->name);      \
                                    new_line();                             \
                                    } while (0);

/**
 * @brief Print Instruction dump to Assembler File as comment
 * 
 * @param instr 
 */
void PrintIRInstruction (const Instruction* instr);

const char* MakeComment (const char* format, ...);