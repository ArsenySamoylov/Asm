
#NOTE: RACE BETWEEN RDX and RSI !
#OVerwrites: RAX, RDI, RSI, RDX (and everything related to syscall)
.macro PUTN buffer:req, cnt:req
    nop

    mov \cnt,    %rdx    #
    mov \buffer, %rsi    #
    mov $1, %rax         # write code
    mov $1, %rdi         # write (buffer = rsi, descriptor = rdi, rdx = count)
    syscall              #
    
    nop
.endm

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

.global MY_PRINTF

.text
MY_PRINTF:
    mov (%rsp), %r11  # save return address
    mov %rbx, %r12    # save %rbx
        # %rbp save by my_printf
    add $0x8, %rsp

    push %r9    # arg 6
    push %r8    # arg 5
    push %rcx   # arg 4
    push %rdx   # arg 3
    push %rsi   # arg 2
    push %rdi   # arg 1

    call my_printf

    add $(8 * 6), %rsp

    mov %r11, %rbx
    push %rbx # restore return value
    mov %r12, %rbx
    ret

my_printf:          // save rbp, rbx, r12, r13, r14, r15
    push %rbp
    mov %rsp, %rbp


    mov 0x10(%rbp), %rbx   # rbx - format 
    add $0x18, %rbp        # set rbp for addrsing to arguments from stk

.while_not_null:
    cmpb $0, (%rbx)
    je .end_of_while_not_null

    xor %rcx, %rcx    # rcx - counter

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
    push %rbx

    PUTN buffer = %rbx, cnt = %rcx

    pop %rbx
    pop %rcx
    # CHECK THAT REGISERS rcx and rbx safe !!!!!!!!!
    ###

    add %rcx, %rbx  # rbx += rcx 
    
    cmpb $'%', (%rbx)            # if (ax != '%') 
    jne .end_of_while_not_null   #     .string 'break;'

    inc %rbx

    movzxb (%rbx), %eax # eax = format char
    cmp $'%', %eax
    je .percent_spec_case

    cmp $'x', %eax
    jg .default_case

    cmp $'b', %eax
    jl .default_case

    sub $'b', %eax 
    mov jump_table(,%rax,8), %rax
    jmp *%rax


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
    
    jmp .end_of_switch  #break;

.binary_spec_case:
    PRINT_ARGUMENT translating_function = put_binary_in_buffer
    jmp .end_of_switch      #break;

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
    jmp .end_of_switch #break;

.hex_spec_case:
    push %rbx
    PRINT_ARGUMENT translating_function = put_hex_in_buffer
    pop %rbx

    jmp .end_of_switch #break;

.default_case:
    dec %rbx # to print '%'
    PUTN buffer = %rbx, cnt = $0x2
    inc %rbx

    jmp .end_of_switch #break;

.end_of_switch:
    inc %rbx
    jmp .while_not_null

.end_of_while_not_null:
    pop %rbp
    ret


######################################################
# str_len - length of string except terminatimg symbol
######################################################
# Entry:  %rdi - buffer addres
#          %al - terminatin symbol
# Exit: %rcx - number of symbols        
######################################################
str_len: 

    mov $-1, %rcx

1:
    inc %rcx
    cmpb %al, (%rdi, %rcx, 1)
    jne 1f
    
    ret

#%rax - value
#%rsi - end of buffer buffer
# Overwrites: %rdi. %rdx. 
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

#%rax - value
#%rsi - end of buffer buffer
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

#Overwrites: RBX, RSI
#Note: XLAT Uses ds
put_hex_in_buffer:
    mov $hex_table, %rbx
    xchg %rax, %rdx
  
  1:
    mov $0xF, %rax
    and %rdx, %rax
    
    xlat        # AL := (RBX + ZeroExtend(AL))
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
