;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
New09IntHandler:
    pusha   ; 
    push es ; save the sh*t
    push ds 
    
    db 0B8h         ;| mov ax, selector value 
.selector: dw 0h    ;| deprecated, you can use cs
                    ;|
    mov ds, ax      ;>

    ; mov ax, save_buf         ; |
    ; mov ax, draw_buf ; > for debug

    in al, 60h      ; get scan code
    
    cmp al, 38h     ; if (al = 'alt') { alt_flag = 1; }
    je .pressed_alt

    cmp al, 1Eh   ; 'a' scan code
    je .pressed_a ; if (al = 'a') { if (alt_flag) -> enable_drawing_frame }

    cmp al, 1fh     ; 's'
    je .pressed_x

.clear_alt_flag:
    mov byte ds:[alt_flag], 0h ; > alt_flag = 0

.@: 
    pop ds
    pop es 
    popa

    db 0eah,        ; | jmp to previous handler
.old090Fs  dw 0h    ; |
.old090Seg dw 0h    ; >

    iret

.pressed_alt:
    mov byte ds:[alt_flag], 1h
    jmp .@

.pressed_a:
    mov al, ds:[draw_frame_flag]    
    cmp al, 1h
    je .clear_alt_flag ; clear alt flag
    
    mov al, ds:[alt_flag]        ; if (alt_falg) 
    cmp al, 1h                   ; {draw_frame_falg = 1;
    je .enable_drawing_frame     ;  SaveScreen(); }

    jmp .clear_alt_flag

    .enable_drawing_frame:
        call SAVE_FRAME_SCREEN
        
        call SET_DRAW_BUFFER   ; overwrites es

        mov byte ds:[draw_frame_flag], 1h
        jmp .@

.pressed_x:
    mov al, ds:[alt_flag]
    cmp al, 1h
    jne .@

    mov al, ds:[draw_frame_flag]
    cmp al, 1h
    jne .clear_alt_flag

    mov byte ds:[draw_frame_flag], 0h

    ; call RESTORE_SCREEN_FROM_FRAME_BUF ; change to 
    mov ax, 0b800h
    mov es, ax
    mov di, total_position
    mov si, save_buf 
    call PUT_BUFFER_ON_SCREEN
    
    jmp .clear_alt_flag
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;////////////////////////////////////////////////////
;-----------------------------------------------------
; MOVS ->  (ES:DI) = (DS:SI)
SAVE_FRAME_SCREEN:
    
    mov di, ds      ; |
    mov es, di      ; > di = ds    

    mov di, 0b800h  ; | 
    mov ds, di      ; > ds = b800h

    mov si, total_position
    mov di, save_buf

    cld

%rep height
    mov cx, width               ; set cx for next movs
    rep movsw                   ; save line from screen to buffer
    add si, (50h - width) * 2h  ; di - point on next line
%endrep

    mov di, es ; |
    mov ds, di ; > restore ds

    ret
;////////////////////////////////////////////////////

;////////////////////////////////////////////////////
; Expects DS, BX - address
; %1 - reg name

%macro to_string 1
%defstr __string %1
%endmacro

%macro __PUT_REG_IN_BUFFER 1
    to_string %1
    mov ax, __string

    mov ds:[bx + offset * 2], al
    mov ds:[bx + 2h + offset * 2], ah

    mov byte ds:[bx + 4h + offset * 2], ':'

%endmacro
;////////////////////////////////////////////////////

;////////////////////////////////////////////////////
frame_style: 
    db '>', 4eh, '-', 4eh, '<', 4eh
    db '|', 4eh, ' ', 4eh, '|', 4eh
    db '>', 4eh, '_', 4eh, '<', 4eh

;////////////////////////////////////////////////////
; Overwrites: es
SET_DRAW_BUFFER:
    mov bx, ds  ; |
    mov es, bx  ; > es = ds

    mov di, draw_buf
    mov bx, frame_style
    mov cx, width            ; ch - width, argument for DRAW_LINE_IN_BUFFER
    call DRAW_LINE_IN_BUFFER ; draw upside

    add bx, 6h           ; bx - points to next set of symbols
    mov dl, height - 2h  ; dl - cnt for drawing body frame loop
    
    cmp dl, 0h           ; if (dl == 0) -> {skip drawing body}
    je .draw_lower_side
;................................................
; Draw midle of frame
    .iteration:
        mov cx, width    ; cx - width, argument for DRAW_LINE_IN_BUFFER
        call DRAW_LINE_IN_BUFFER

        sub dl, 1h
        jnz .iteration
;................................................
.draw_lower_side:
    add bx, 6h
    mov cx, width
    call DRAW_LINE_IN_BUFFER ; draw downside


    ; put registers    
    mov bx, draw_buf + (width + offset + 1h) * 2
    
    __PUT_REG_IN_BUFFER ax
    %assign ax_offset 7h * 2h      ; OFFSET - cs:(bp + offset) - addres of value for register

    add bx, width * 2h 
    __PUT_REG_IN_BUFFER cx
    %assign cx_offset 6h * 2h

    add bx, width * 2h 
    __PUT_REG_IN_BUFFER dx
    %assign dx_offset 5h * 2h

    add bx, width * 2h 
    __PUT_REG_IN_BUFFER bx
    %assign bx_offset 4h * 2h
    
    add bx, width * 2h 
    __PUT_REG_IN_BUFFER sp
    %assign sp_offset 3h * 2h

    add bx, width * 2h 
    __PUT_REG_IN_BUFFER bp
    %assign bp_offset 2h * 2h

    add bx, width * 2h 
    __PUT_REG_IN_BUFFER si
    %assign si_offset 1h * 2h

    add bx, width * 2h 
    __PUT_REG_IN_BUFFER di
    %assign di_offset 0h * 2h

    ret
;////////////////////////////////////////////////////

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Entry: di - destination buffer
;        bx - addres of symbols and attributes
;        cx - width
; Expect: es, ds
; Overwrites: AX, CX, DI
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DRAW_LINE_IN_BUFFER:
    cld ; set for stosw

    mov ax, [bx] ; ax - left symbol + attributes
    stosw        ; es:[di] = ax, di += 2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax, [bx + 2h] ; ax - midle symbol + attributes 

    sub cx, 2h        ; cx - counter for putting midle of line loop
    je .avoid_loop    ; if (cx == 0) -> {skip loop}

.loop:
    stosw           ; es:[di] = ax, di += 2
    loop .loop      ; cx--

.avoid_loop:
    mov ax, [bx + 4h]   ; ax - left symbol

    stosw               ; es:[di] = ax, di += 2

    ret
;////////////////////////////////////////////////////