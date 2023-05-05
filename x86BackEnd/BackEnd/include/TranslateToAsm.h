#pragma once

#include "Program.h"

int TranslateToAsm (const Program *const root, const char *const name);

#define SHOW_VAR_NAME

#define PROGRAM(CTX)       ((CTX)->program)
#define STRING_ARR(CTX)    (PROGRAM(CTX)->string_arr) 

#define FREE_RAM_ADDRESS(CTX)  ((CTX)->free_ram_address)
#define GLOBAL_VARS(CTX)       ((CTX)->global_vars)

#define PUSH_CONST(val) assprint("push %d\n", (int) floor(val * SOFT_CPU_PRECISION))
#define PUSH_REG(reg)   assprint("push r%cx\n", reg + 'a' - 1)
#define PUSH_RAM(mem)   assprint("push [%d]\n", mem)

#define POP_REG(reg)    assprint("pop  r%cx\n", reg + 'a' - 1)

#define ASM_OP_CMD(token)     switch (OP(token))                        \
                                {                                       \
                                case ADD:  assprint("ADD\n");  break;   \
                                case SUB:  assprint("SUB\n");  break;   \
                                case DIV:  assprint("FDIV\n"); break;   \
                                case MUL:  assprint("FMUL\n"); break;   \
                                case POW:  assprint("POW\n");  break;   \
                                default: break;                         \
                                }
                                
#define ASM_SEPARATOR  assprint(";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n");