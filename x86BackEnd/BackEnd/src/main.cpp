#include "TranslateToAsm.h"

#include "Program.h"

#include "Module.h"
#include "AstToIR.h"
#include "DebugIR.h"

#include "StandartAWP.h"
#include "SetTokenTree.h"

#include "DefGraphVis.h"

#include "my_buffer.h"
#include "LogMacroses.h"
#include "EasyDebug.h"

#define GOTO_FAILURE_EXIT(exit_name)        goto fail_exit_label_##exit_name;
#define SET_FAILURE_EXIT(exit_name)              fail_exit_label_##exit_name:
#define CHECK_SUCCESS(condition, exit_name) if ((condition) != SUCCESS)  { GOTO_FAILURE_EXIT(exit_name)}

void help();

int main(int argc, const char* argv[])
  {
  $log(RELEASE)
  
  if (argc < 3)
    {
    help();
    return -1;
    }

  const char* path_to_awp_file = argv[1];
  // const char* path_to_asm_file = argv[2];

  Program program{};
  ProgramCtor(&program, path_to_awp_file);
  
  Module program_module;
  ModuleCtor (&program_module);

  CHECK_SUCCESS(GetProgramFromStdAwp(&program, path_to_awp_file), BAD_SRC_FILE);

  MakeImg("kek_back_End", &program); 

  // CHECK_SUCCESS (SetTokenTree(&program), BAD_TOKEN_TREE);   // don't kill name tables, store pointer to label in token

  CHECK_SUCCESS (AstToIR (&program, &program_module), IR_ERROR); 
  DumpIR (&program_module, "test.ir");
  
  ProgramDtor(&program);
  ModuleDtor(&program_module);
  
  return SUCCESS;

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
SET_FAILURE_EXIT(BAD_SRC_FILE)

  report ("Bad src file '%s'\n", path_to_awp_file);
  goto CLEAR_RESOURCES;

// SET_FAILURE_EXIT(BAD_TOKEN_TREE)

//   report ("Error, while setting token tree (from '%s' file)\n", path_to_awp_file);
//   goto CLEAR_RESOURCES;

SET_FAILURE_EXIT(IR_ERROR)

  report ("Couldn't translate AST to IR\n");
  goto CLEAR_RESOURCES;

CLEAR_RESOURCES:

  $$
  ProgramDtor(&program);
  ModuleDtor(&program_module);

  return FAILURE;
  }

void help()
    {
    printf("Ebat, enter AWP file to compile, and output file name\n");
    };
