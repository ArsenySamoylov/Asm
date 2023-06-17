    .global main
    .extern fin
    .extern fout

    .section .text
_start:
    # TODO: call InitGlobals
    call main 
    movq $0   , %rdi      
    movq $60  , %rax      
    syscall

LinearEquationSolver:
    # set stack frame (2 local vars)
    sub $16, %rsp 
    push %rbp     
    mov %rsp,   %rbp      

    # save callee-save regs
    push %rbx     
    push %r10     
    push %r11     
    push %r12     
    push %r13     
    push %r14     
    push %r15     

    # save param regs on stack
    movq %rdi, 8 (%rbp)       # save parameter 'a' on stack
    movq %rsi, 16(%rbp)       # save parameter 'c' on stack


entry_LinearEquationSolver:
### %op_0 = bigger a, 0
    movq $0   , %r15          # put_value_to_reg: ' const_0' -> %r15
                              # put_value_to_reg: 'a' already in %rdi

    mov %rdi,   %r14          # save 'a' to %r14

    # generating logic op #
    push %rdx                 # (save %rdx)

    cmpq %r15, %rdi
    setg %al
    movzbq %al, %rax

    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %rdi      
    imul %rdi
    mov %rax,   %rdi          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_1 = less a, 0
    movq $0   , %r15          # put_value_to_reg: ' const_1' -> %r15
                              # put_value_to_reg: 'a' already in %r14

    mov %r14,   %r13          # save 'a' to %r13

    # generating logic op #
    push %rdx                 # (save %rdx)

    cmpq %r15, %r14
    setl %al
    movzbq %al, %rax

    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r14      
    imul %r14
    mov %rax,   %r14          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_2 = add %op_0, %op_1
                              # put_value_to_reg: '%op_1' already in %r14
                              # put_value_to_reg: '%op_0' already in %rdi

    # math op #
    add %r14, %rdi


### br %op_2, label than_0, label else_0
                              # put_value_to_reg: '%op_2' already in %rdi
    cmp $100, %rdi
    je than_0 
    jmp else_0 

than_0:
### %op_4 = mul -1, c
                              # put_value_to_reg: 'c' already in %rsi
    movq $-100, %rdi          # put_value_to_reg: ' const_2' -> %rdi

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %rdi,   %rax      
    imul %rsi
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %rdi      
    cqto
    idiv %rdi
    mov %rax,   %rdi          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_5 = div %op_4, a
                              # put_value_to_reg: 'a' already in %r13
                              # put_value_to_reg: '%op_4' already in %rdi

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %rdi,   %rax      
    cqto
    idiv %r13
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %rdi      
    imul %rdi
    mov %rax,   %rdi          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### call: fout (param %op_5)
    # save busy regs
    push %rdi                 # save reg
    push %rsi                 # save reg
    # set parameters
    mov %rdi,   %rdi      
    call fout 
    pop %rsi              
    pop %rdi              

### return 1

    movq $100 , %rax          # return const_3

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $16, %rsp 
    ret 

### br label merge_0
    jmp merge_0 

else_0:
### %op_6 = bigger c, 0
    movq $0   , %r13          # put_value_to_reg: ' const_4' -> %r13
                              # put_value_to_reg: 'c' already in %rsi

    mov %rsi,   %r14          # save 'c' to %r14

    # generating logic op #
    push %rdx                 # (save %rdx)

    cmpq %r13, %rsi
    setg %al
    movzbq %al, %rax

    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %rsi      
    imul %rsi
    mov %rax,   %rsi          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_7 = less c, 0
    movq $0   , %r13          # put_value_to_reg: ' const_5' -> %r13
                              # put_value_to_reg: 'c' already in %r14

    # generating logic op #
    push %rdx                 # (save %rdx)

    cmpq %r13, %r14
    setl %al
    movzbq %al, %rax

    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r14      
    imul %r14
    mov %rax,   %r14          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_8 = add %op_6, %op_7
                              # put_value_to_reg: '%op_7' already in %r14
                              # put_value_to_reg: '%op_6' already in %rsi

    # math op #
    add %r14, %rsi


### br %op_8, label than_1, label else_1
                              # put_value_to_reg: '%op_8' already in %rsi
    cmp $100, %rsi
    je than_1 
    jmp else_1 

than_1:
### call: fout (param -666)
    # save busy regs
    push %rdi                 # save reg
    # set parameters
    movq $-66600, %rdi      
    call fout 
    pop %rdi              

### return 1

    movq $100 , %rax          # return const_7

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $16, %rsp 
    ret 

### br label merge_1
    jmp merge_1 

else_1:
### call: fout (param 8)
    # save busy regs
    push %rdi                 # save reg
    # set parameters
    movq $800 , %rdi      
    call fout 
    pop %rdi              

### return 3

    movq $300 , %rax          # return const_9

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $16, %rsp 
    ret 

### br label merge_1
    jmp merge_1 

merge_1:
### br label merge_0
    jmp merge_0 

merge_0:
### return -1

    movq $-100, %rax          # return const_10

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $16, %rsp 
    ret 


SquareEquationSolver:
    # set stack frame (7 local vars)
    sub $56, %rsp 
    push %rbp     
    mov %rsp,   %rbp      

    # save callee-save regs
    push %rbx     
    push %r10     
    push %r11     
    push %r12     
    push %r13     
    push %r14     
    push %r15     

    # save param regs on stack
    movq %rdi, 8 (%rbp)       # save parameter 'a' on stack
    movq %rsi, 16(%rbp)       # save parameter 'b' on stack
    movq %rdx, 24(%rbp)       # save parameter 'c' on stack


entry_SquareEquationSolver:
### %op_0 = bigger a, 0
    movq $0   , %r15          # put_value_to_reg: ' const_1' -> %r15
                              # put_value_to_reg: 'a' already in %rdi

    mov %rdi,   %r14          # save 'a' to %r14

    # generating logic op #
    push %rdx                 # (save %rdx)

    cmpq %r15, %rdi
    setg %al
    movzbq %al, %rax

    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %rdi      
    imul %rdi
    mov %rax,   %rdi          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_1 = less a, 0
    movq $0   , %r15          # put_value_to_reg: ' const_2' -> %r15
                              # put_value_to_reg: 'a' already in %r14

    mov %r14,   %r13          # save 'a' to %r13

    # generating logic op #
    push %rdx                 # (save %rdx)

    cmpq %r15, %r14
    setl %al
    movzbq %al, %rax

    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r14      
    imul %r14
    mov %rax,   %r14          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_2 = add %op_0, %op_1
                              # put_value_to_reg: '%op_1' already in %r14
                              # put_value_to_reg: '%op_0' already in %rdi

    # math op #
    add %r14, %rdi


### %op_3 = sub 1, %op_2
                              # put_value_to_reg: '%op_2' already in %rdi
    movq $100 , %r14          # put_value_to_reg: ' const_0' -> %r14

    # math op #
    sub %rdi, %r14


### br %op_3, label than_2, label merge_2
                              # put_value_to_reg: '%op_3' already in %r14
    cmp $100, %r14
    je than_2 
    jmp merge_2 

than_2:
### btemp = store(b)
                              # put_value_to_reg: 'b' already in %rsi
    movq %rsi, 32(%rbp)       # copy 'b' to stack (to 'btemp')

### ctemp = store(c)
    movq 24(%rbp), %r14       # put_value_to_reg: '       c' -> %r14
    movq %r14, 40(%rbp)       # copy 'c' to stack (to 'ctemp')

### %c_4 = call: LinearEquationSolver (param btemp, param ctemp)
    # save busy regs
    push %rsi                 # save reg
    push %rdx                 # save reg
    # set parameters
    movq 32(%rbp), %rdi  
    movq 40(%rbp), %rsi  
    call LinearEquationSolver 
    pop %rdx              
    pop %rsi              
    mov %rax,   %rdi          # save call result from rax

### return %c_4

    mov %rdi,   %rax          # return %c_4

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $56, %rsp 
    ret 

### br label merge_2
    jmp merge_2 

merge_2:
### %op_5 = mul b, b
                              # put_value_to_reg: 'b' already in %rsi
                              # put_value_to_reg: 'b' already in %rsi

    mov %rsi,   %rdi          # save 'b' to %rdi

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %rsi,   %rax      
    imul %rsi
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %rsi      
    cqto
    idiv %rsi
    mov %rax,   %rsi          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_6 = mul 4, a
                              # put_value_to_reg: 'a' already in %r13
    movq $400 , %r15          # put_value_to_reg: ' const_3' -> %r15

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %r15,   %rax      
    imul %r13
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r15      
    cqto
    idiv %r15
    mov %rax,   %r15          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_7 = mul %op_6, c
    movq 24(%rbp), %r12       # put_value_to_reg: '       c' -> %r12
                              # put_value_to_reg: '%op_6' already in %r15

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %r15,   %rax      
    imul %r12
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r15      
    cqto
    idiv %r15
    mov %rax,   %r15          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_8 = sub %op_5, %op_7
                              # put_value_to_reg: '%op_7' already in %r15
                              # put_value_to_reg: '%op_5' already in %rsi

    # math op #
    sub %r15, %rsi


### dis = store(%op_8)
                              # put_value_to_reg: '%op_8' already in %rsi
    movq %rsi, 48(%rbp)       # copy '%op_8' to stack (to 'dis')

### %op_9 = less dis, 0
    movq $0   , %rsi          # put_value_to_reg: ' const_4' -> %rsi
    movq 48(%rbp), %r15       # put_value_to_reg: '     dis' -> %r15

    mov %r15,   %r12          # save 'dis' to %r12

    # generating logic op #
    push %rdx                 # (save %rdx)

    cmpq %rsi, %r15
    setl %al
    movzbq %al, %rax

    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r15      
    imul %r15
    mov %rax,   %r15          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### br %op_9, label than_3, label merge_3
                              # put_value_to_reg: '%op_9' already in %r15
    cmp $100, %r15
    je than_3 
    jmp merge_3 

than_3:
### call: fout (param -666)
    # save busy regs
    push %rdi                 # save reg
    push %rdx                 # save reg
    # set parameters
    movq $-66600, %rdi      
    call fout 
    pop %rdx              
    pop %rdi              

### return -1

    movq $-100, %rax          # return const_6

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $56, %rsp 
    ret 

### br label merge_3
    jmp merge_3 

merge_3:
### %op_11 = bigger dis, 0
    movq $0   , %r15          # put_value_to_reg: ' const_7' -> %r15
    movq 48(%rbp), %rsi       # put_value_to_reg: '     dis' -> %rsi

    mov %rsi,   %r11          # save 'dis' to %r11

    # generating logic op #
    push %rdx                 # (save %rdx)

    cmpq %r15, %rsi
    setg %al
    movzbq %al, %rax

    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %rsi      
    imul %rsi
    mov %rax,   %rsi          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_12 = less dis, 0
    movq $0   , %r15          # put_value_to_reg: ' const_8' -> %r15
                              # put_value_to_reg: 'dis' already in %r11

    mov %r11,   %r10          # save 'dis' to %r10

    # generating logic op #
    push %rdx                 # (save %rdx)

    cmpq %r15, %r11
    setl %al
    movzbq %al, %rax

    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r11      
    imul %r11
    mov %rax,   %r11          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_13 = add %op_11, %op_12
                              # put_value_to_reg: '%op_12' already in %r11
                              # put_value_to_reg: '%op_11' already in %rsi

    # math op #
    add %r11, %rsi


### br %op_13, label than_4, label else_4
                              # put_value_to_reg: '%op_13' already in %rsi
    cmp $100, %rsi
    je than_4 
    jmp else_4 

than_4:
### %c_14 = call: pow (param dis, param 0.5)
    # save busy regs
    push %rdi                 # save reg
    push %rdx                 # save reg
    # set parameters
    movq 48(%rbp), %rdi  
    movq $50  , %rsi      
    call pow 
    pop %rdx              
    pop %rdi              
    mov %rax,   %rsi          # save call result from rax

### sqrtdis = store(%c_14)
                              # put_value_to_reg: '%c_14' already in %rsi
    movq %rsi, 56(%rbp)       # copy '%c_14' to stack (to 'sqrtdis')

### %op_16 = mul -1, b
                              # put_value_to_reg: 'b' already in %rdi
    movq $-100, %rsi          # put_value_to_reg: 'const_10' -> %rsi

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %rsi,   %rax      
    imul %rdi
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %rsi      
    cqto
    idiv %rsi
    mov %rax,   %rsi          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_17 = add %op_16, sqrtdis
    movq 56(%rbp), %r11       # put_value_to_reg: ' sqrtdis' -> %r11
                              # put_value_to_reg: '%op_16' already in %rsi

    # math op #
    add %r11, %rsi


### %op_18 = mul 2, a
                              # put_value_to_reg: 'a' already in %r13
    movq $200 , %r15          # put_value_to_reg: 'const_11' -> %r15

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %r15,   %rax      
    imul %r13
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r15      
    cqto
    idiv %r15
    mov %rax,   %r15          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_19 = div %op_17, %op_18
                              # put_value_to_reg: '%op_18' already in %r15
                              # put_value_to_reg: '%op_17' already in %rsi

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %rsi,   %rax      
    cqto
    idiv %r15
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %rsi      
    imul %rsi
    mov %rax,   %rsi          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### call: fout (param %op_19)
    # save busy regs
    push %rdi                 # save reg
    push %rsi                 # save reg
    push %rdx                 # save reg
    # set parameters
    mov %rsi,   %rdi      
    call fout 
    pop %rdx              
    pop %rsi              
    pop %rdi              

### %op_21 = mul -1, b
                              # put_value_to_reg: 'b' already in %rdi
    movq $-100, %r15          # put_value_to_reg: 'const_12' -> %r15

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %r15,   %rax      
    imul %rdi
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r15      
    cqto
    idiv %r15
    mov %rax,   %r15          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_22 = sub %op_21, sqrtdis
                              # put_value_to_reg: 'sqrtdis' already in %r11
                              # put_value_to_reg: '%op_21' already in %r15

    # math op #
    sub %r11, %r15


### %op_23 = mul 2, a
                              # put_value_to_reg: 'a' already in %r13
    movq $200 , %r11          # put_value_to_reg: 'const_13' -> %r11

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %r11,   %rax      
    imul %r13
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r11      
    cqto
    idiv %r11
    mov %rax,   %r11          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_24 = div %op_22, %op_23
                              # put_value_to_reg: '%op_23' already in %r11
                              # put_value_to_reg: '%op_22' already in %r15

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %r15,   %rax      
    cqto
    idiv %r11
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r15      
    imul %r15
    mov %rax,   %r15          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### call: fout (param %op_24)
    # save busy regs
    push %rdi                 # save reg
    push %rsi                 # save reg
    push %rdx                 # save reg
    # set parameters
    mov %r15,   %rdi      
    call fout 
    pop %rdx              
    pop %rsi              
    pop %rdi              

### return 2

    movq $200 , %rax          # return const_14

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $56, %rsp 
    ret 

### br label merge_4
    jmp merge_4 

else_4:
### %op_26 = mul -1, b
                              # put_value_to_reg: 'b' already in %rdi
    movq $-100, %r15          # put_value_to_reg: 'const_15' -> %r15

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %r15,   %rax      
    imul %rdi
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r15      
    cqto
    idiv %r15
    mov %rax,   %r15          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_27 = mul 2, a
                              # put_value_to_reg: 'a' already in %r13
    movq $200 , %rdi          # put_value_to_reg: 'const_16' -> %rdi

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %rdi,   %rax      
    imul %r13
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %rdi      
    cqto
    idiv %rdi
    mov %rax,   %rdi          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### %op_28 = div %op_26, %op_27
                              # put_value_to_reg: '%op_27' already in %rdi
                              # put_value_to_reg: '%op_26' already in %r15

    # generating mul/div #
    push %rdx                 # (save %rdx)
    xor %rdx, %rdx
    mov %r15,   %rax      
    cqto
    idiv %rdi
    # (normalize result) #
    xor %rdx, %rdx
    movq $100 , %r15      
    imul %r15
    mov %rax,   %r15          # (-> normalized result)

    pop %rdx                  # (restore %rdx)

### call: fout (param %op_28)
    # save busy regs
    push %rsi                 # save reg
    push %rdx                 # save reg
    # set parameters
    mov %r15,   %rdi      
    call fout 
    pop %rdx              
    pop %rsi              

### return 1

    movq $100 , %rax          # return const_17

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $56, %rsp 
    ret 

### br label merge_4
    jmp merge_4 

merge_4:
### return -1

    movq $-100, %rax          # return const_18

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $56, %rsp 
    ret 


main:
    # set stack frame (4 local vars)
    sub $32, %rsp 
    push %rbp     
    mov %rsp,   %rbp      

    # save callee-save regs
    push %rbx     
    push %r10     
    push %r11     
    push %r12     
    push %r13     
    push %r14     
    push %r15     

    # save param regs on stack


entry_main:
### a = store(1)
    movq $100 , %r15          # put_value_to_reg: ' const_0' -> %r15
    movq %r15, 8 (%rbp)       # copy 'const_0' to stack (to 'a')

### b = store(-5)
    movq $-500, %r15          # put_value_to_reg: ' const_1' -> %r15
    movq %r15, 16(%rbp)       # copy 'const_1' to stack (to 'b')

### c = store(0)
    movq $0   , %r15          # put_value_to_reg: ' const_2' -> %r15
    movq %r15, 24(%rbp)       # copy 'const_2' to stack (to 'c')

### %c_0 = call: SquareEquationSolver (param a, param b, param c)
    # save busy regs
    # set parameters
    movq 8 (%rbp), %rdi  
    movq 16(%rbp), %rsi  
    movq 24(%rbp), %rdx  
    call SquareEquationSolver 
    mov %rax,   %rdx          # save call result from rax

### nroots = store(%c_0)
                              # put_value_to_reg: '%c_0' already in %rdx
    movq %rdx, 32(%rbp)       # copy '%c_0' to stack (to 'nroots')

### return 0

    movq $0   , %rax          # return const_3

    # restore callee-save regs
    pop %r15              
    pop %r14              
    pop %r13              
    pop %r12              
    pop %r11              
    pop %r10              
    pop %rbx              

    # clear stack frame
    pop %rbp              
    add $32, %rsp 
    ret 


