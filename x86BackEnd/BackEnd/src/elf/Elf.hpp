#pragma once

#include <elf.h>

#include "Buffer.hpp"
 
//////////////////////////////////////////////////////////////////////////////////////////
struct ElfHeaders
    {
    Elf64_Ehdr elf_header;
    
    Elf64_Phdr code_phdr;
    
    // Elf64_Phdr data_phdr;
    // Elf64_Phdr stdlib_phdr;

    Elf64_Phdr stack_phdr;
    };

int SetElfHeaders (ElfHeaders* elf);
///////////////////////////////////////////////////////////////////////////////////////////
struct Elf
    {
    ElfHeaders headers;
    
    Buffer code_buf;
    // Buffer data_buf;
    // Buffer stdlib_buf;

    Buffer program_buf; // this is final buffer for all program  
    };


const Elf64_Addr ENTRY_POINT        = 0x401000 + sizeof(ElfHeaders);
const uint16_t   NUMBER_OF_SEGMENTS = 2;


const Elf64_Addr PHDR_TABLE_OFFSET  = sizeof(Elf64_Ehdr);

const Elf64_Addr CODE_VIRTUAL_ADDRESS   = ENTRY_POINT; 
// const Elf64_Addr RODATA_VIRTUAL_ADDRESS = 0;

// const Elf64_Addr STDLIB_VIRTUAL_ADDRESS = 0x403000;


int ElfCtor  (Elf* elf);
int ElfDtor  (Elf* elf);
int WriteElf (Elf* elf, const char* output_file);

