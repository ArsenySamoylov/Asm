%include "macroses.asm"
org 100h

    mov ax, 0b800h
    mov es, ax

    __PUT_STRING enter_pas_mes, 0, 0

    __SET_CURSOR 0, 15d

    call Fake_call

    ; GET PASSWORD
    nop
    call Set_interupt
    nop
    nop
    nop
    call Get_password
    nop

    nop
    jmp Check_accses_rights 
    nop
    __GETCH

good_end:
    call Fake_call

    nop
    call Restore_handler
    call Access_granted
    nop

    __GETCH
    __GETCH

    __EXIT 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
enter_pas_mes:      db "Enter password:$"
access_granted_mes: db "Acces granted$"
Access_not_granted:  db "Acces not granted$"
wrong_pass_mes:     db "Wrong password$" 

%assign password_buf_length 6h  
%assign offset              16d

password_buf: resb 16h

access_flag: db 0h ; special for rewriting

db "sosi 4len geev"
db "zachem tu eto chitaesh"

password_entered_flag: db 0h
get_password_flag:     db 0h
correct_password:      db  2h, 3h, 5h, 6h ; 1245 pressed simultaneously; @TODO
%assign password_length 4h        

number_of_entered_symbols: db 0h

Set_interupt:
    ; Set keyboard handler
    cli ; stop interupts
    nop

    xor bx, bx
    mov es, bx
    mov bx, 4h * 9h ; handler addres

    nop

    mov cx, es:[bx]                      ; |
    mov [New09IntHandler.old090Fs], cx   ; |
    nop                                  ; |
    mov cx, es:[bx+2h]                   ; |
    mov [New09IntHandler.old090Seg], cx  ; > save previous handler addres

    mov ax, cs                           ; | current segment
    mov word es:[bx], New09IntHandler    ; |
    mov es:[bx + 2h], ax                 ; > set new handler address

    nop
    sti 
    ; resume interupts
    nop


    ; set keyboard delay
    mov ah, 3h
    mov al, 5h
    mov bh, 03h     ; delay code
    mov bl, 1fh     ; typematic rate code
    int 16h

    mov ax, 0EDAh
    mov bx, 80h
    call PUT_DECIMAL_IN_BUFFER

    ret

sosi_chlen:
    call PUT_DECIMAL_IN_BUFFER
    ret

Get_password:

    mov cx, 0
    dec cx
    .loop:
    loop .loop

    mov byte ds:[get_password_flag], 1h ; enable entering password

.wait:
    mov al, [password_entered_flag]
    cmp al, 1h
    jne .wait

    nop
    call Fake_call
    nop

    ret  

Check_accses_rights:
    mov ah, ds:[access_flag]
    cmp ah, 1h      
    je good_end


    mov bx, password_buf

    mov ax, ds ; |
    mov es, ax ; > for mem_cmp

    push password_length
    push bx
    push correct_password    

    call mem_cmp

    sub sp, 6h ; clear argument 

    cmp ax, 0h
    je .give_access

    jmp bad_end

.give_access:
    mov byte ds:[access_flag], 1h
    jmp good_end

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
New09IntHandler: ; hard vzlom: if reg value = 1, access granted

    pushf
    push cs
    push .ret_address 
    
    db 09ah,            ; | jmp to previous handler
    .old090Fs  dw 0h    ; |
    .old090Seg dw 0h    ; >

.ret_address:
    NOP
    NOP
    NOP
    add sp, 4h

    pusha   ; 
    push es ; save the sh*t
    push ds 


    mov bx, 0b800h
    mov es, bx

    mov bx, cs     
    mov ds, bx 

    ; mov ax, 01h ; test

    mov ah, ds:[access_flag]
    cmp ax, 1h      ; hack me danny
    je good_end

    mov al, ds:[password_entered_flag]
    cmp al, 1h
    je .end

    mov al, ds:[get_password_flag]
    cmp al, 1h
    jne .end

    in al, 60h   ; get scan code

    cmp al, 1ch  ; 'Enter' scan code
    je .enter_entered

    cmp al, 1ch + 128d  ; ignore enter release
    je .end

    ; put '*' on the screnn
    mov dl, ds:[number_of_entered_symbols] ; | dx - current number of symbols 
    movzx bx, dl                        ; | bx - points to  addres
    add bx, offset                      ; |
    shl bx, 1                           ; | double bx 
    mov byte es:[bx], '*'               ; > put '*' on the screen
    
    ; save to buf
    movzx bx, dl                        ; | offset in buffer
    mov ds:[bx + password_buf], al      ; > put al in buffer

    inc dl                                  ; |
    mov [number_of_entered_symbols], dl     ; > increase cnt


.end:

    pop ds
    pop es 
    popa

;     db 0eah,        ; | jmp to previous handler
; .old090Fs  dw 0h    ; |
; .old090Seg dw 0h    ; >

    iret


.enter_entered:
    nop
    nop
    mov byte ds:[password_entered_flag], 1h

    jmp .end


Restore_handler:

    cli
    xor bx, bx
    mov es, bx
    mov bx, 4h * 9h                         ; handler addres

    mov cx, ds:[New09IntHandler.old090Fs]   ; |
    mov es:[bx], cx    

    mov cx, ds:[New09IntHandler.old090Seg]   ; > save previous handler addres
    mov es:[bx + 2h], cx                     ; > set new handler address

    sti

    ret

Access_granted:
    mov ax, 0b800h
    mov es, ax
    __PUT_STRING access_granted_mes, 1, 0
    
    ret


bad_end:
    mov ax, 0b800h
    mov es, ax

    mov si, Access_not_granted
    mov bh, 1
    mov bl, 0
    mov ch, 34h
    call PUT_STR

    call Restore_handler

    __GETCH
    __GETCH
    
    __EXIT 0
    ret

Fake_call:
    mov ax, 01h
    mov bx, 111h

    call Fake_call_2

    mov cx, 45d
    mul cx

    push ax
    pop ax

    push ax
    pop ax

    ret


Fake_call_2:
    xor ax, ax ; clear ax

    mov al, bh ; move y to al to then multiply 
    mov bh, 0h

    mov cl, 50h
    mul cl

    add bx, ax ; total pos
    
    shl bx, 1 ; x2

    mov di, [bp + 4h]
    mov si, [bp + 6h]
    mov cx, [bp + 8h]

    mov ax, 1h
    dec si
    dec di

    push sosi_chlen
    ret

%include "PUT_DECIMAL_IN_BUFFER.asm"
%include "PUT_STR.ASM"
%include "mem_cmp.asm"