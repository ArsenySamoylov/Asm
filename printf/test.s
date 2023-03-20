.text

    .globl __start

.data
Msg: .ascii "012345678\n"

    len = . - Msg


.text

__start:
    mov $0x1, %rax 
    mov $0x1, %rdi
    mov $Msg, %rsi
    mov $len, %rdx

    syscall

    mov $0x3c, %rax
    xor %rdi, %rdi

    syscall


// .global my_printf

my_printf:          // save rbp, rbx, r12, r13, r14, r15
    push %rbp
    mov %rsp, %rbp

    mov 8(%rbp), %rbx   # rbx - format 

.while_not_null:
    cmpb $0, (%rbx)
    je .end_of_while

    xor %rcx, %rcx    # rcx - counter

    .while_not_null_and_not_percent:
        movb (%rbx, %rcx), %al
        
        cmp %al, '\0'
        jne .while_not_null_and_not_percent

        cmp %al, '%'
        jne .while_not_null_and_not_percent

    ### putn
    mov $1, %rax    # write (buffer = rdi, descriptor = rdi, rdx = count
    mov $1, %rdi    #
    mov %rbx, %rsi  #
    mov %rdx, %rcx  #
    syscall         #

    # CHECK THAT REGISERS rcx and rbx safe !!!!!!!!!
    ###

    add %rcx, %rbx  # rbx += rcx 
    
    cmpb $'%', (%rbx)            # if (ax != '%') 
    jne .enf_of_while_not_null   #     .string 'break;'

    
    inc %rbx

    movzxb %eax, (%rbx) # eax = format char
    cmp %eax, '%'
    je percent_spec

    cmp %eax, 'x'
    jg .default_case

    cmp %eax, 'b'
    jl .default_case

    sub 22, %eax 
    mov jump_table(0,%rax,8), %rax
    jmp rax


jump_table:
    .quad   .binary_spec
    .quad   .char_spec
    .quad   .dfecimal_spec
    .quad   .default_case
    .quad   .default_case
    .quad   .default_case
    .quad   .default_case
    .quad   .default_case
    .quad   .default_case
    .quad   .default_case
    .quad   .default_case
    .quad   .default_case
    .quad   .default_case
    .quad   .oct_spec
    .quad   .default_case
    .quad   .default_case
    .quad   .default_case
    .quad   .string_spec
    .quad   .default_case
    .quad   .default_case
    .quad   .default_case
    .quad   .default_case
    .quad   .hex_spec









.end_of_switch:
    inc %rbx
    jmp .while_not_null

.end_of_while_not_null:
    ret

