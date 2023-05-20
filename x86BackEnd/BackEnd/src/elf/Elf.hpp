#pragma once

#include <elf.h>

#include "Buffer.hpp"
 
//////////////////////////////////////////////////////////////////////////////////////////
struct ElfHeaders
    {
    Elf64_Ehdr elf_header;
    
    Elf64_Phdr code_phdr;
    Elf64_Phdr data_phdr;
    };

int SetElfHeaders (ElfHeaders* elf);
///////////////////////////////////////////////////////////////////////////////////////////
struct Elf
    {
    ElfHeaders headers;
    
    Buffer code_buf;
    Buffer data_buf;

    Buffer program_buf; 
    };


const Elf64_Addr ENTRY_POINT        = 0x41000 + sizeof(ElfHeaders);
const uint16_t   NUMBER_OF_SEGMENTS = 2; 
const Elf64_Addr PHDR_TABLE_OFFSET  = sizeof(Elf64_Ehdr);

const Elf64_Addr CODE_VIRTUAL_ADDRESS   = ENTRY_POINT; 
const Elf64_Addr RODATA_VIRTUAL_ADDRESS = 0x0;

int ElfCtor  (Elf* elf);
int ElfDtor  (Elf* elf);
int WriteElf (Elf* elf, const char* output_file);

