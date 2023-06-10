.global pow
.global sin
.global cos

.global fout
.global fin

pow:
    xor %rdx, %rdx
    mov %rdi, %rax
    mov $100, %rdi
    idiv %rdi

    push %rax

    fild (%rsp)
    fsqrt
    fisttp (%rsp)
    
    pop %rax

    xor %rdx, %rdx
    imul %rdi

    ret

sin: 
    ret

cos:
    ret

fout:
    push %r11

    mov %rdi, %rax
    
    cmp $0, %rax
    jge skip

    push %rax
    movb $'-', %al
    push %rax
    mov   %rsp, %rsi

    mov   $1, %rdx         #
    mov   $1, %rax         # write function code for syscall
    mov   $1, %rdi         # write (buffer = rsi, descriptor = rdi, rdx = count)
    syscall  
    pop %rax               #
    pop %rax

    # abs(x) = (x XOR y) - y; y = x >>> 31
    mov %eax, %edx      #  
    sarl $31, %edx      # %edx = y
    
    xor %edx, %eax      # %eax = x xor y

    sub %edx, %eax      # %eax = (x xor y) - %edx
    #
skip:    

    mov $100, %rdi

    xor %rdx, %rdx
    div %rdi

    push %rdx
    call put_decimal
    
    movb $'.', %al
    push %rax
    mov   %rsp, %rsi

    mov   $1, %rdx         #
    mov   $1, %rax         # write function code for syscall
    mov   $1, %rdi         # write (buffer = rsi, descriptor = rdi, rdx = count)
    syscall                #
    pop %rax

    pop %rax # from rdx after divison
    call put_decimal

    movb $'\n', %al
    push  %rax
    mov   %rsp, %rsi

    mov   $1, %rdx         #
    mov   $1, %rax         # write function code for syscall
    mov   $1, %rdi         # write (buffer = rsi, descriptor = rdi, rdx = count)
    syscall                #
    pop %rax

    pop %r11
    ret

put_decimal:
        mov %rsp, %r10 # buffer loc
        dec %r10
        sub $16, %rsp

        mov %r10, %rsi
        call put_abs_decimal_in_buffer

        mov %r10, %rax
        sub %rsi, %rax          # after call RSI points to 
        inc %rsi                # one byte ahead of start of buffer where decimal begins

        mov   %rax, %rdx       #
        mov   $1, %rax         # write function code for syscall
        mov   $1, %rdi         # write (buffer = rsi, descriptor = rdi, rdx = count)
        syscall                #

        add $16, %rsp
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


fin: 

 .intel_syntax noprefix 
        mov rdi, 0x0      
        lea rsi, [rsp+8]  
        mov rdx, 0xa      
        mov rax, 0x0      # SYSCALL number for reading from STDIN
        syscall          


# Ascii to decimal conversion
        xor rax, rax      # clear off rax
        mov rbx, 0x0      # 
        lea rsi, [rsp+8]  # Get the address on the stack where the first ASCII byte of the integer is stored.

rnext:
        mov rcx, [rsi]    
        cmp rcx, 0xa      
        je  return        
        cmp rbx, 0xa      
        jg  return        
        sub rcx, 0x30     
        and rcx, 0xff     
        mov rdx, rax      
        shl rax, 0x3      
        shl rdx, 0x1      
        add rax, rdx      
        add rax, rcx      
        add rsi, 1        
        inc rbx           
        jmp rnext         

return:
        # push rax          # Push the read number on to the stack
        #  xor rdx, rdx
        #  mov rdi, 100
        # mul rdi
        ret


