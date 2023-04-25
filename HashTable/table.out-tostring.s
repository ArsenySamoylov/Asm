	.file	"tostring.cpp"
	.text
	.p2align 4
	.globl	_Z8tostringPKc
	.type	_Z8tostringPKc, @function
_Z8tostringPKc:
.LFB1840:
	.cfi_startproc
	endbr64
	jmp	strdup@PLT
	.cfi_endproc
.LFE1840:
	.size	_Z8tostringPKc, .-_Z8tostringPKc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"tostring"
.LC1:
	.string	"./ATC/Logger/tostring.cpp"
.LC2:
	.string	"PRINTF BESIT CALLOC (%s)\n"
.LC3:
	.string	"%d"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"Enter any key to continue (line %d, func %s)\n"
	.section	.rodata.str1.1
.LC5:
	.string	"buffer"
.LC6:
	.string	"\t%s: "
	.text
	.p2align 4
	.globl	_Z8tostringi
	.type	_Z8tostringi, @function
_Z8tostringi:
.LFB1841:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN6Logger11getInstanceEv@PLT
	movl	$19, %r9d
	movl	$1, %edx
	leaq	.LC0(%rip), %r8
	movq	%rax, %rdi
	leaq	.LC1(%rip), %rcx
	movl	$42, %esi
	call	_ZN6Logger7CAL_LOGEmmPKcS1_i@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L7
	movl	%ebx, %r9d
	movq	%rax, %rdi
	leaq	.LC3(%rip), %r8
	xorl	%eax, %eax
	movq	$-1, %rcx
	movl	$1, %edx
	movl	$10, %esi
	call	__snprintf_chk@PLT
	leaq	.LC0(%rip), %rcx
	movl	$29, %edx
	xorl	%eax, %eax
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	stdin(%rip), %rdi
	call	getc@PLT
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	%r12, %rdi
	call	_Z8ShowLinePKc@PLT
	movl	$10, %edi
	call	putchar@PLT
.L3:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L3
	.cfi_endproc
.LFE1841:
	.size	_Z8tostringi, .-_Z8tostringi
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z8tostringPKc, @function
_GLOBAL__sub_I__Z8tostringPKc:
.LFB2323:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZStL8__ioinit(%rip), %rbp
	movq	%rbp, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2323:
	.size	_GLOBAL__sub_I__Z8tostringPKc, .-_GLOBAL__sub_I__Z8tostringPKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z8tostringPKc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
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
