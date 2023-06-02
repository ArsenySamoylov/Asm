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
    
    mov %rdi, %rax
    
    cmp $0, %rax
    jge skip

    movb $'-', %al
    push %rax
    mov   %rsp, %rsi

    mov   $1, %rdx         #
    mov   $1, %rax         # write function code for syscall
    mov   $1, %rdi         # write (buffer = rsi, descriptor = rdi, rdx = count)
    syscall                #
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
        mov rdi, 0x0      # file descriptor = stdin = 0
        lea rsi, [rsp+8]  # buffer = address to store the bytes read
        mov rdx, 0xa      # number of bytes to read
        mov rax, 0x0      # SYSCALL number for reading from STDIN
        syscall           # make the syscall


# Ascii to decimal conversion
        xor rax, rax      # clear off rax
        mov rbx, 0x0      # initialize the counter which stores the number of bytes in the string representation of the integer
        lea rsi, [rsp+8]  # Get the address on the stack where the first ASCII byte of the integer is stored.

rnext:
        mov rcx, [rsi]    # Read the byte on the stack at the address represented by rsi
        cmp rcx, 0xa      # Check if it is a newline character
        je  return        # If so we are done
        cmp rbx, 0xa      # OR check if we have read 10 bytes (the largest 32 bit number contains 10 digits, so we will have to process at most 10 bytes
        jg  return        # If so we are done
        sub rcx, 0x30     # For the byte read, subtract by 0x30/48 to get the value from the ASCII code. 0 == 0x30 in ASCII, 1 == 0x31 in ASCII and so on.
        and rcx, 0xff     # Clear off the higher order bytes to ensure there is no interference
        mov rdx, rax      # We need to multiple this by 10 to get the next byte which goes to the unit's place and this byte becomes the ten's value. So make a copy
        shl rax, 0x3      # Multiply the original by 8 (Shift left by 3 is multiply by 8)
        shl rdx, 0x1      # Multiply the copy by 2 (Shift left by 1 is multiply by 2)
        add rax, rdx      # Add these a * 8 + a * 2 to get a * 10.
        add rax, rcx      # Add the digit to be at the units place to the original number
        add rsi, 1        # Advance the memory address by 1 to read the next byte
        inc rbx           # Increment the digit counter
        jmp rnext         # Loop until we have read all the digits or max is reached.

return:
        # push rax          # Push the read number on to the stack
        #  xor rdx, rdx
        #  mov rdi, 100
        # mul rdi
        ret


