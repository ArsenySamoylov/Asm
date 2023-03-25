#include <limits.h>
#include <stdio.h>

extern void MY_PRINTF (const char* format, ...);

int main()
    {
    printf("STDPrintf for dummies!\n");

    // MY_PRINTF(, );
    MY_PRINTF("-Hello world <%d>, not '%s', %x\n" 
            "%d %s %x %d%%%c%b, "
             "%c%c%c %c%c%c %d %d %d\n", INT_MIN, "ABOBA", INT_MIN, 
                                                         -1, "love", 3802, 100, 33, 127, 
                                                         'a', 'b', 'c', 'd', 'e', 'f', INT_MIN, 0, INT_MAX);

    printf("I am still working!\n");

    return 0;
    }