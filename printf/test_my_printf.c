extern void MY_PRINTF (const char* format, ...);

int main()
    {
    MY_PRINTF("Hello world, %c\0", 'f');

    return 0;
    }