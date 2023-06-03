// this is program for testing time differnce
// between SoftCpu and Elf file

#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

void Measure (const char* system_arg, const char* program_name);

int main ()
    {
    Measure ("./SOFT_CPU.out soft_cpu_asm.txt.ars", "SoftCpu");
    Measure ("../ASM.out",                          "Elf    ");

    return 0;
    }

void Measure (const char* system_arg, const char* program_name)
	{
    assert (system_arg);
    assert (program_name);

	timeval start {};
    timeval end   {};
    double used_time = 0; 

    gettimeofday(&start, nullptr);
    system (system_arg);                                                                                              
    gettimeofday (&end, nullptr);                                                                                                  
    
    used_time = (double) ((end.tv_sec - start.tv_sec) * 1000000 + end.tv_usec - start.tv_usec) / 1000000.0;
    printf ("%s time = %lg sec\n", program_name, used_time);

    }
    
