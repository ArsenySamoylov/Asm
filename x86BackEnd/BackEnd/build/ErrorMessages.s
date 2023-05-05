	.file	"ErrorMessages.cpp"
	.text
.Ltext0:
	.file 0 "/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd" "../ATC/Logger/OldandUselles/ErrorMessages.cpp"
	.globl	ERROR_MESSAGES
	.section	.rodata
	.align 32
.LC0:
	.string	"SUCCESS"
	.zero	56
	.align 32
.LC1:
	.string	"Unitialized object"
	.zero	45
	.align 32
.LC2:
	.string	"Active object"
	.zero	50
	.align 32
.LC3:
	.string	"Dead object"
	.zero	52
	.align 32
.LC4:
	.string	"Dyrak, no arguments"
	.zero	44
	.align 32
.LC5:
	.string	"Dyrachok, wrong argument"
	.zero	39
	.align 32
.LC6:
	.string	"Fool, wrong number of arguments"
	.zero	32
	.align 32
.LC7:
	.string	"Shoot, can't open file!"
	.zero	40
	.align 32
.LC8:
	.string	"Crap, can't read from file!"
	.zero	36
	.align 32
.LC9:
	.string	"Lox, bad calloc"
	.zero	48
	.align 32
.LC10:
	.string	"Lox, bad realloc"
	.zero	47
	.align 32
.LC11:
	.string	"Xyligan, NULL pointer"
	.zero	42
	.align 32
.LC12:
	.string	"Xuy, Null Structure member"
	.zero	37
	.align 32
.LC13:
	.string	"Syntax error (serious message)"
	.zero	33
	.section	.data.rel.local,"aw"
	.align 32
	.type	ERROR_MESSAGES, @object
	.size	ERROR_MESSAGES, 112
ERROR_MESSAGES:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.zero	48
	.globl	__odr_asan.ERROR_MESSAGES
	.bss
	.type	__odr_asan.ERROR_MESSAGES, @object
	.size	__odr_asan.ERROR_MESSAGES, 1
__odr_asan.ERROR_MESSAGES:
	.zero	1
	.section	.rodata
	.align 8
.LC14:
	.string	"../ATC/Logger/OldandUselles/ErrorMessages.cpp"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC14
	.long	3
	.long	13
	.section	.rodata
.LC15:
	.string	"ERROR_MESSAGES"
.LC16:
	.string	"*.LC8"
.LC17:
	.string	"*.LC5"
.LC18:
	.string	"*.LC3"
.LC19:
	.string	"*.LC0"
.LC20:
	.string	"*.LC10"
.LC21:
	.string	"*.LC1"
.LC22:
	.string	"*.LC13"
.LC23:
	.string	"*.LC12"
.LC24:
	.string	"*.LC4"
.LC25:
	.string	"*.LC7"
.LC26:
	.string	"*.LC2"
.LC27:
	.string	"*.LC6"
.LC28:
	.string	"*.LC9"
.LC29:
	.string	"*.LC11"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 960
.LASAN0:
	.quad	ERROR_MESSAGES
	.quad	112
	.quad	160
	.quad	.LC15
	.quad	.LC14
	.quad	0
	.quad	.LASANLOC1
	.quad	__odr_asan.ERROR_MESSAGES
	.quad	.LC8
	.quad	28
	.quad	64
	.quad	.LC16
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	25
	.quad	64
	.quad	.LC17
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	12
	.quad	64
	.quad	.LC18
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	8
	.quad	64
	.quad	.LC19
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	17
	.quad	64
	.quad	.LC20
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	19
	.quad	64
	.quad	.LC21
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	31
	.quad	64
	.quad	.LC22
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	27
	.quad	64
	.quad	.LC23
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	20
	.quad	64
	.quad	.LC24
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	24
	.quad	64
	.quad	.LC25
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	14
	.quad	64
	.quad	.LC26
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	32
	.quad	64
	.quad	.LC27
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	16
	.quad	64
	.quad	.LC28
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	22
	.quad	64
	.quad	.LC29
	.quad	.LC14
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$15, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$15, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 1 "../ATC/Logger/OldandUselles/ErrorMessages.cpp"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5a
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2
	.long	.LASF4
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.long	.Ldebug_line0
	.uleb128 0x3
	.long	0x35
	.long	0x2e
	.uleb128 0x4
	.long	0x2e
	.byte	0xd
	.byte	0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x5
	.byte	0x8
	.long	0x42
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x6
	.long	0x3b
	.uleb128 0x7
	.long	.LASF5
	.byte	0x1
	.byte	0x3
	.byte	0xd
	.long	0x1e
	.uleb128 0x9
	.byte	0x3
	.quad	ERROR_MESSAGES
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"ERROR_MESSAGES"
.LASF4:
	.string	"GNU C++20 11.3.0 -mtune=generic -march=x86-64 -g -std=c++20 -fstrict-overflow -fstack-protector -fcheck-new -fsized-deallocation -fno-omit-frame-pointer -fPIE -fsanitize=address,leak -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF2:
	.string	"long unsigned int"
.LASF3:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd"
.LASF0:
	.string	"../ATC/Logger/OldandUselles/ErrorMessages.cpp"
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
