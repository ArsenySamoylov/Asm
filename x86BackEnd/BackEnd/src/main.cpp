#include "TranslateToAsm.h"

#include "Program.h"

#include "StandartAWP.h"
#include "SetTokenTree.h"

#include "DefGraphVis.h"

#include "my_buffer.h"
#include "LogMacroses.h"
#include "EasyDebug.h"

#define GOTO_FAILURE_EXIT(exit_name) goto fail_exit_label_##exit_name;

#define SET_FAILURE_EXIT(exit_name)  fail_exit_label_##exit_name:

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
  const char* path_to_asm_file = argv[2];

  Program program{};
  ProgramCtor(&program, path_to_awp_file);
  
  /////////////////////////////////////////////////////////////////////
  int run_time_status = GetProgramFromStdAwp(&program, path_to_awp_file);
  if (run_time_status != SUCCESS)
    GOTO_FAILURE_EXIT (BAD_SRC_FILE);

  MakeImg("kek_back_End", &program); 
  
  /////////////////////////////////////////////////////////////////////
  // don't kill name tables, store pointer to label in token
  run_time_status = SetTokenTree(&program);
  if (run_time_status != SUCCESS)
      GOTO_FAILURE_EXIT(BAD_TOKEN_TREE); 
  
  /////////////////////////////////////////////////////////////////////
  //run_time_status = 
  
  /////////////////////////////////////////////////////////////////////
  //run_time_status |= TranslateToAsm (&program, path_to_asm_file);
  if (run_time_status != SUCCESS)
      GOTO_FAILURE_EXIT(TRANSLATOR_ERROR);
  
  ProgramDtor(&program);

  return 0;

///////////////////////////////////////////////////////////////////////
SET_FAILURE_EXIT(BAD_SRC_FILE)

  report ("Bad src file '%s'\n", path_to_awp_file);
  ProgramDtor(&program);
  return FAILURE;

SET_FAILURE_EXIT(BAD_TOKEN_TREE)

  report ("Error, while seting token tree (from '%s' file)\n", path_to_awp_file);
  ProgramDtor(&program);
  return FAILURE;

SET_FAILURE_EXIT(TRANSLATOR_ERROR)

  report ("Couldn't translate file '%s'\n", path_to_awp_file);
  ProgramDtor(&program);
  return FAILURE;
  }

void help()
    {
    printf("Ebat, enter AWP file to compile, and output file\n");
    };
