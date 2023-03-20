;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; But buffer with
; Expects: es = b800h , 
;          di - videomem addres
;          ds:si - buffer address 
PUT_BUFFER_ON_SCREEN:

    mov ax, height

.loop:
    mov cx, width
    rep movsw  ;  (ES:DI) = (DS:SI)
    add di, (50h - width) * 2h
    
    sub ax, 1h
    jne .loop

    ret
;////////////////////////////////////////////////////