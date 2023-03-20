%include "debug.asm"
%include "macroses.asm"

org 100h

Start:

    push 10d
    push 20d
    push DESTINATION

    call mem_set

    __GETCH

    __EXIT 0

STRING: db "Hello world, my dear !$"
DESTINATION: db "Hello world, my dear !$"
%include "GET_HEX_VALUE_FROM_BUFFER_TO_AX.asm"

%include "PUT_STR.ASM"
%include "PUT_IN_BINARY_AX.asm"
%include "PUT_HEX_DX_IN_BUFFER.asm"
%include "PUT_DECIMAL_IN_BUFFER.asm"

%include "strlen.asm"
%include "str_chr.asm"
%include "str_cpy.asm"
%include "mem_cpy.asm"
%include "mem_cmp.asm"
%include "mem_set.asm"