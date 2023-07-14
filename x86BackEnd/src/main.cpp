#include "StandartAWP.h"
#include "AstToIR.h"

#include "DefGraphVis.h"

#include "LogMacroses.h"
#include "EasyDebug.h"
#include "Elf.hpp"

void help();
 
const char* IR_DUMP_FILE        = "tests/dump.ir";
const char* ASSEMBLER_DUMP_FILE = "tests/dump.s";

int main(int argc, const char* argv[])
  {
  if (argc < 3)
    {
    help();
    return FAILURE;
    }

  const char* path_to_awp_file = argv[1];
  const char* result_elf_name  = argv[2];

  Program program{};
  ProgramCtor(&program, path_to_awp_file);
  

  if (GetProgramFromStdAwp(&program, path_to_awp_file) != SUCCESS)
    {
    report ("Bad src file '%s'\n", path_to_awp_file);
    return FAILURE;
    }

  Module program_module {};
  
  if (AstToIR (program, program_module) != SUCCESS)
    {
    report ("Couldn't translate AST to IR\n");
    return FAILURE;
    }

  program_module.dump (IR_DUMP_FILE);

  Elf elf {};
  program_module.translate_x86 (elf, ASSEMBLER_DUMP_FILE);

  elf.write (result_elf_name);
  SYSTEM ("chmod +x ASM.out\n");

  return SUCCESS;
  }
  
void help()
    {
    printf("Enter AWP file to compile, and output executable file name\n");
    };
