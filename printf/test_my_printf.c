#include <limits.h>

extern void MY_PRINTF (const char* format, ...);

// (I %s %x %%%c %b\n", "love", 0xEDA, '!', 127)
int main()
    {
    MY_PRINTF("I %s %x %%%c %b, %c %c %c %c %c %c %d %d %d\n", "love", 0xEDA, '!', 127, 'a', 'b', 'c', 'd', 'e', 'f', INT_MIN, 0, INT_MAX);

    return 0;
    }