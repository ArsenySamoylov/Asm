#########################################################################
# C logic of this function                                              #
#########################################################################
# #include <stdio.h>                                                    #
# #include <stdarg.h>                                                   #
#                                                                       #
# void putn (const char* buffer, int cnt);                              #
#                                                                       #
# void putn (const char* buffer, int cnt)                               #
#     {                                                                 #
#     int temp = 0;                                                     #
#                                                                       #
#     while(temp < cnt)                                                 #
#         putchar(*(buffer + temp++));                                  #
#                                                                       #
#     return;                                                           #
#     }                                                                 #
#                                                                       #
# #define PRINT_ARGUMENT(translating_function)                      \   #
#                 int temp = va_arg(ap, int);                       \   #
#                                                                   \   # 
#                 ptr = buffer + buffer_size - 1;                   \   #
#                 translating_function(temp, &ptr)                  \   #
#                 putn (ptr + 1, (buffer + buffer_size - 1 - ptr);      #
#                                                                       #
#                                                                       #
# void my_printf (const char* format, ...);                             #
#                                                                       #
# void my_printf (const char* format, ...)                              #
#     {                                                                 #
#     va_list ap{};                                                     #
#     va_start(ap, format);                                             #
#                                                                       #
#     while(*format != '\0')                                            #
#         {                                                             #
#         int cnt = 0;                                                  #
#                                                                       #
#         while(*(format + cnt) != '%' && *(format + cnt) != '\0')      #
#             cnt++;                                                    #
#                                                                       #
#         putn(format, cnt); // display cnt symbols                     #
# 		format += cnt;                                                  #
#		                                                                #
#         if (*format != '%')                                           #
#             break;                                                    #
#                                                                       #
#         format++;                                                     #
#                                                                       #
#         switch (*format)                                              #
#             {                                                         #
#             case '%':                                                 #
#                 putchar('%');                                         #
#                 break;                                                #
#                                                                       #
#             case 'b':                                                 #
#                 {                                                     #
#                 PRINT_ARGUMENT(put_binary_in_buffer);                 #
#                                                                       #
#                 break;                                                #
#                 }                                                     #
#                                                                       #
#             case 'c':                                                 #
#                 {                                                     #
#                 int temp = va_arg(ap, int);                           #
#                 putchar(temp);                                        #
#                 break;                                                #
#                 }                                                     #
#                                                                       #
#             case 'd':                                                 #
#                 {                                                     #
#                 PRINT_ARGUMENT(put_decimal_in_buffer);                #
#                                                                       #
#                 break;                                                #
#                 }                                                     #
#                                                                       #
#             case 'o':                                                 #
#                 {                                                     #
#                 PRINT_ARGUMENT(put_oct_in_buffer);                    #
#                                                                       #
#                 break;                                                #
#                 }                                                     #
#                                                                       #
#             case 's':                                                 #
#                 {                                                     #
#                 char* temp = va_arg(ap, char*);                       #
#                 printf("%s", temp);                                   #
#                 break;                                                #
#                 }                                                     #
#                                                                       #
#             case 'x':                                                 #
#                 {                                                     #
#                 PRINT_ARGUMENT(put_hex_in_buffer);                    #
#                                                                       #
#                 break;                                                #
#                 }                                                     #
#                                                                       #
#             default:                                                  #
#                 putchar('%');                                         #
#                 putchar(*format);                                     #
#                 break;                                                #
#             }                                                         #
#                                                                       #
#         format++;                                                     #
#                                                                       #
#         }                                                             #
#                                                                       #
#     return;                                                           #
#     }                                                                 #
#########################################################################

######################################################
# Put N symbols from buffer to screen                #
######################################################
# Entry:  %rsi - end of buffer addres                #
#         %rax - value                               #
# Exit: %rsi - one symbol ahead of start             #
#              of string containing decimal          #
# Overwrites: RAX, RDI, RSI, RDX                     #
#            (and everything related to syscall)     #
# NOTE: RACE BETWEEN RDX and RSI !                   #
######################################################
.macro PUTN buffer:req, cnt:req
    nop

    mov \cnt,    %rdx    #
    mov \buffer, %rsi    #
    mov $1, %rax         # write function code for syscall
    mov $1, %rdi         # write (buffer = rsi, descriptor = rdi, rdx = count)
    syscall              #
    
    nop
.endm

######################################################
# This macro used in %d,%o,%h,%b cases               #
#   when value needed to be translated in buffer     #
#   and be displayed on the screen                   #
######################################################
.macro PRINT_ARGUMENT translating_function:req
    nop

    mov (%rbp), %rax
    add $0x8, %rbp

    mov $(buffer + buffer_size - 1), %rsi

    call \translating_function
   
    mov $(buffer + buffer_size - 1), %rax
    sub %rsi, %rax          # after call RSI points to 
    inc %rsi                # one byte ahead of start of buffer where decimal begins

    PUTN buffer = %rsi, cnt = %rax

    nop
.endm

.extern printf
.global MY_PRINTF

.section .text
######################################################
# This is wrapper for my_printf function             #
# that pushes arguments on stack and also calls      #
# standart printf function                           #
######################################################
# Check that proper registers saved                  #
######################################################
MY_PRINTF:
    # %rbp saved by my_printf
    mov (%rsp), %r14  # save return address
    mov %rbx, %r12    # save %rbx
    add $0x8, %rsp

    push %r9    # arg 6
    push %r8    # arg 5
    push %rcx   # arg 4
    push %rdx   # arg 3
    push %rsi   # arg 2
    push %rdi   # arg 1

    call my_printf

    pop %rdi    # restore argument
    pop %rsi    # for printf
    pop %rdx
    pop %rcx
    pop %r8
    pop %r9

    call printf

    mov %r14, %rbx
    push %rbx       # restore return value
    mov %r12, %rbx  # restore rbx (not sure)
    
    ret

#######################################################
# Analog of printf function                           #
#######################################################
# Note: check that rbp, rbx, r12, r13, r14, r15 saved #
#######################################################
my_printf:         
    push %rbp             # save rbp
    mov %rsp, %rbp        # use rpb for addressing to arguments

    mov 0x10(%rbp), %rbx   # rbx - format 
    add $0x18, %rbp        # set rbp for addrsing to arguments from stk

.while_not_null:
    cmpb $0, (%rbx)
    je .end_of_while_not_null

    xor %rcx, %rcx         # rcx - counter

        .while_not_null_and_not_percent:
            movb (%rbx, %rcx), %al
            
            cmp $0x0, %al
            je .end_of_while_not_null_and_not_percent

            cmp $'%', %al
            je .end_of_while_not_null_and_not_percent

            inc %rcx
            jmp .while_not_null_and_not_percent

    .end_of_while_not_null_and_not_percent:

    ### putn
    push %rcx

    PUTN buffer = %rbx, cnt = %rcx

    pop %rcx
    # CHECK THAT REGISER rbx safe !!!!!!!!!
    ###

    add %rcx, %rbx               # rbx += rcx 
    
    cmpb $'%', (%rbx)            # if (ax != '%') 
    jne .end_of_while_not_null   #     break;

    inc %rbx

    movzxb (%rbx), %eax         # eax = format char
    cmp $'%', %eax
    je .percent_spec_case

    cmp $'x', %eax              #
    jg .default_case            #
                                # check before jump
    cmp $'b', %eax              # that value in borders
    jl .default_case            #

    jmp *(jump_table - 'b' * 8)(,%rax,8)

jump_table:
    .quad   .binary_spec_case   #
    .quad   .char_spec_case     # [0;2]
    .quad   .decimal_spec_case  #

.rept 10
    .quad   .default_case       # [3, 12]
.endr    

    .quad   .oct_spec_case      # [13]

.rept 3
    .quad   .default_case       # [14:16]
.endr

    .quad   .string_spec_case   # [17]
    
.rept 4
    .quad   .default_case       # [18:21]
.endr    

    .quad   .hex_spec_case      # [22]


.percent_spec_case:
    movb $'%', buffer 
    PUTN buffer = $buffer, cnt = $0x1
    
    jmp .end_of_switch      #break;

.binary_spec_case:
    PRINT_ARGUMENT translating_function = put_binary_in_buffer
    jmp .end_of_switch       #break;

.char_spec_case:
    PUTN buffer = %rbp, cnt = $1

    add $0x8,%rbp
    jmp .end_of_switch       #break;

.decimal_spec_case:
    PRINT_ARGUMENT translating_function = put_decimal_in_buffer
    jmp .end_of_switch       #break;

.oct_spec_case:
    PRINT_ARGUMENT translating_function = put_oct_in_buffer
    jmp .end_of_switch       #break;

.string_spec_case:
    mov (%rbp), %rdi 
    mov $0x0, %al
    call str_len

    PUTN buffer = (%rbp), cnt = %rcx
    add $0x8, %rbp 
    jmp .end_of_switch       #break;

.hex_spec_case:
    push %rbx
    PRINT_ARGUMENT translating_function = put_hex_in_buffer
    pop %rbx

    jmp .end_of_switch       #break;

.default_case:
    dec %rbx                 # to print '%'
    PUTN buffer = %rbx, cnt = $0x2
    inc %rbx

    jmp .end_of_switch       #break;

.end_of_switch:
    inc %rbx
    jmp .while_not_null

.end_of_while_not_null:
    pop %rbp
    
    ret

########################################################
# str_len - length of string except terminatimg symbol #
########################################################
# Entry:  %rdi - buffer addres                         #
#          %al - terminatin symbol                     #
# Exit: %rcx - number of symbols                       #
########################################################
str_len: 

    mov $-1, %rcx

1:
    inc %rcx
    cmpb %al, (%rdi, %rcx, 1)
    jne 1b
    
    ret

######################################################
# Put_decimal in buffer                              #
######################################################
# Entry:  %rsi - end of buffer addres                #
#         %rax - value                               #
# Exit: %rsi - one symbol ahead of start             #
#              of string containing decimal          #
# Overwrites: %rdi, %rdx, ....                       #
######################################################
put_decimal_in_buffer:
    mov %eax, %ecx
    call put_abs_decimal_in_buffer

    cmp $0, %ecx
    jl 1f
    ret
1:
    movb $'-', (%rsi)
    dec %rsi

    ret

put_abs_decimal_in_buffer:
    mov $0xA, %rdi   # set rdi as divisor
    
    cmp $0, %eax
    jl 2f

1:
    xor %rdx, %rdx
    div %rdi    #RDX:RAX div 
    
    add $'0', %rdx
    mov %dl, (%rsi)
    dec %rsi

    cmpq $0x0, %rax
    jne 1b

    ret

2:  # abs(x) = (x XOR y) - y; y = x >>> 31
    mov %eax, %edx      #  
    sarl $31, %edx      # %edx = y
    
    xor %edx, %eax      # %eax = x xor y

    sub %edx, %eax      # %eax = (x xor y) - %edx

    jmp 1b

######################################################
# Put binary in buffer                               #
######################################################
# Entry:  %rsi - end of buffer addres                #
#         %rax - value                               #
# Exit: %rsi - one symbol ahead of start             #
#              of string containing decimal          #
# Overwrites: %rdi, %rdx, ....                       #
######################################################
put_binary_in_buffer:
  1:
    mov $1, %rdx
    and %rax, %rdx
    
    add $'0', %rdx
    mov %dl, (%rsi)

    dec %rsi
    shr $1, %rax 

    cmp $0, %rax
    jne 1b

    ret

######################################################
# Put oct in buffer                                  #
######################################################
# Entry:  %rsi - end of buffer addres                #
#         %rax - value                               #
# Exit: %rsi - one symbol ahead of start             #
#              of string containing decimal          #
# Overwrites: %rdi, %rdx, ....                       #
######################################################
put_oct_in_buffer:
  1:
    mov $7, %rdx
    and %rax, %rdx
    
    add $'0', %rdx
    mov %dl, (%rsi)

    dec %rsi
    shr $3, %rax 

    cmp $0, %rax
    jne 1b

    ret

######################################################
# Put hex in buffer                                  #
######################################################
# Entry:  %rsi - end of buffer addres                #
#         %rax - value                               #
# Exit: %rsi - one symbol ahead of start             #
#              of string containing decimal          #
# Overwrites: %rdi, %rdx, ....                       #
#             RBX, RSI                               #
# Note: XLAT Uses ds                                 #
######################################################
put_hex_in_buffer:
    mov $hex_table, %rbx
    xchg %rax, %rdx
  
  1:
    mov $0xF, %rax
    and %rdx, %rax
    
    xlat             # AL := (RBX + ZeroExtend(AL))
    mov %al, (%rsi)

    dec %rsi
    shr $4, %rdx 

    cmp $0, %rdx
    jne 1b

    ret

.section .data
hex_table: .ascii "0123456789ABCDEF"

buffer_size = 64
.section    .bss
    .local buffer
    .comm buffer, buffer_size
