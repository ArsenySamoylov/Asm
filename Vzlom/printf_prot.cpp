#include <stdio.h>
#include <stdarg.h>

void my_printf (const char* format, ...);

int main(int argc, const char* argv[])
    {

    my_printf("%d", 10);
    
    return 0;
    }

void my_printf (const char* format, ...)
    {
    va_list ap{};
    va_start(ap, format);

    while(*format != '\0')
        {

        while(*format != '%')
            putchar(*format++);

        if (*format == '%')
            {
            format++;

            switch (*format)
                {
                case '%':
                    putchar('%');
                    break;

                case 'b':
                    {
                    int temp = va_arg(ap, int);
                    printf("%x(binary)", temp);
                    break;
                    }

                case 'c':
                    {
                    int temp = va_arg(ap, int);
                    putchar(temp);
                    break;
                    }

                case 'd':
                    {
                    int temp = va_arg(ap, int);
                    printf("%d", temp);
                    break;
                    }

                case 'o':
                    {
                    int temp = va_arg(ap, int);
                    printf("%o", temp);
                    break;
                    }

                case 's':
                    {
                    char* temp = va_arg(ap, char*);
                    printf("%s", temp);
                    break;
                    }

                case 'x':
                    {
                    int temp = va_arg(ap, int);
                    printf("%x", temp);
                    break;
                    }

                default:
                    putchar('%');
                    putchar(*format);
                    break;
                }
            
            format++;
            }
            
        }

    return;
    }
                