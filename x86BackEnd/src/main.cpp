#include "TranslateToAsm.h"

#include "AstToIR.h"

#include "StandartAWP.h"
#include "SetTokenTree.h"

#include "DefGraphVis.h"

#include "LogMacroses.h"
#include "EasyDebug.h"
#include "Elf.hpp"


#define GOTO_FAILURE_EXIT(exit_name)        goto fail_exit_label_##exit_name;
#define SET_FAILURE_EXIT(exit_name)              fail_exit_label_##exit_name:
#define CHECK_SUCCESS(condition, exit_name) if ((condition) != SUCCESS)  { GOTO_FAILURE_EXIT(exit_name)}

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
  
  Module program_module {};

  Elf elf = {};
  ElfCtor (&elf);

  CHECK_SUCCESS (GetProgramFromStdAwp(&program, path_to_awp_file), BAD_SRC_FILE);
  CHECK_SUCCESS (AstToIR (&program, &program_module), IR_ERROR); 
  
  program_module.dump          (IR_DUMP_FILE);
  program_module.translate_x86 (&elf, ASSEMBLER_DUMP_FILE);

  WriteElf (&elf, result_elf_name);

  SYSTEM ("chmod +x ASM.out\n");

  ProgramDtor (&program);
  ElfDtor     (&elf);
  
  return SUCCESS;

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
SET_FAILURE_EXIT(BAD_SRC_FILE)

  report ("Bad src file '%s'\n", path_to_awp_file);
  goto CLEAR_RESOURCES;

SET_FAILURE_EXIT(IR_ERROR)

  report ("Couldn't translate AST to IR\n");
  goto CLEAR_RESOURCES;

CLEAR_RESOURCES:

  ProgramDtor (&program);
  ElfDtor     (&elf);

  return FAILURE;
  }

void help()
    {
    printf("Enter AWP file to compile, and output executable file name\n");
    };
