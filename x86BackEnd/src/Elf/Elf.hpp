/*!
\file
\brief This file contains simple interface for writing Elf files
*/
#pragma once

#include <elf.h>
#include "Buffer.hpp"
 
/**
 * @brief Headers that will be placed in Elf
 *
 * Loader gets information from this headers to make segments 
 */
struct ElfHeaders
    {
    Elf64_Ehdr elf_header;
    
    Elf64_Phdr code_phdr;
    
    Elf64_Phdr stack_phdr;
    };

/**
 * @brief Structure to represent Elf file
 * 
 */
class Elf final : NoCopyable
    {
    private:
        ElfHeaders headers;
    
        Buffer code_buf;
        Buffer program_buf; // this is final buffer for all program  

        void SetElfHeaders (ElfHeaders* elf);
    
    public:
         Elf ();
        ~Elf ();

        /**
        * @brief Make Elf file and write to out_file
        * 
        * @param elf 
        * @param output_file 
        * @return int status
        */
        int write (const char* output_file);
    };


const Elf64_Addr ENTRY_POINT        = 0x401000 + sizeof(ElfHeaders);
const uint16_t   NUMBER_OF_SEGMENTS = 2;

const Elf64_Addr PHDR_TABLE_OFFSET  = sizeof(Elf64_Ehdr);

const Elf64_Addr CODE_VIRTUAL_ADDRESS   = ENTRY_POINT; 



