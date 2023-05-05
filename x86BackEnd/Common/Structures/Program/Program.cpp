#include "Program.h"

#include "LogMacroses.h"
#include "EasyDebug.h"

int ProgramCtor(Program* program, const char* path_to_src_file)
    {
    assertlog(program,           EFAULT, return BAD_ARGUMENT);
    assertlog(path_to_src_file,  EFAULT, return BAD_ARGUMENT);

    program->token_arr        = NULL;
    program->number_of_tokens = 0;

    program->string_arr        = NULL;
    program->number_of_strings = 0;

    program->path_to_src_file = path_to_src_file;

    return SUCCESS;
    }

int ProgramDtor(Program* program)
    {
    $log(1)
    assertlog(program, EFAULT, return BAD_ARGUMENT);
    
    if (program->string_arr)
        {
        int status = CleanStringArr(program->string_arr, program->number_of_strings);
        if (status != SUCCESS)
            return FAILURE;
        
        // $lp(program->string_arr)
        KILL(program->string_arr);
        }
    
    if (program->token_arr)
        {
        KILL(program->token_arr);
        }

    if (program->name_table_arr)
        {
        DeleteNameTableArr(program->name_table_arr);
        }

    return SUCCESS;
    }

#pragma GCC diagnostic ignored "-Wcast-qual"

int CleanStringArr(const char** string_arr, int number_of_strings)
    {
    assertlog(string_arr, EFAULT, return LFAILURE);

    for (int i = 0; i < number_of_strings; i++)
        {
        if (!(string_arr[i]))
            {
            func_message("Ebat, null pointer in string arr, position %d\n", i);
            return FAILURE;
            }

        KILL((void*) string_arr[i]);
        }

    return SUCCESS;
    }



