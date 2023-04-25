	.file	"FunctionLogger.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"No name"
.LC1:
	.string	"%s::\n"
.LC2:
	.string	"{\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN14FunctionLoggerC2EiPKc
	.type	_ZN14FunctionLoggerC2EiPKc, @function
_ZN14FunctionLoggerC2EiPKc:
.LFB1814:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	testl	%esi, %esi
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%esi, %r12d
	cmovns	%esi, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	testq	%rdx, %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	%eax, 4(%rdi)
	leaq	.LC0(%rip), %rax
	cmove	%rax, %rdx
	movl	$0, (%rdi)
	movl	$0, 8(%rdi)
	movq	%rdx, 16(%rdi)
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZN6Logger8getlevelEv@PLT
	movl	%r12d, %esi
	movq	%rbp, %rdi
	movl	%eax, (%rbx)
	call	_ZN6Logger8setlevelEi@PLT
	movq	16(%rbx), %rdx
	movq	%rbp, %rdi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rsi
	call	_ZN6Logger3logEPKcz@PLT
	movq	%rbp, %rdi
	call	_ZN6Logger9getindentEv@PLT
	movq	%rbp, %rdi
	leal	1(%rax), %esi
	call	_ZN6Logger9setindentEi@PLT
	movq	%rbp, %rdi
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz@PLT
	movq	%rbp, %rdi
	call	_ZN6Logger9getindentEv@PLT
	movl	%eax, 8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1814:
	.size	_ZN14FunctionLoggerC2EiPKc, .-_ZN14FunctionLoggerC2EiPKc
	.globl	_ZN14FunctionLoggerC1EiPKc
	.set	_ZN14FunctionLoggerC1EiPKc,_ZN14FunctionLoggerC2EiPKc
	.section	.rodata.str1.1
.LC3:
	.string	"}\n\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN14FunctionLoggerD2Ev
	.type	_ZN14FunctionLoggerD2Ev, @function
_ZN14FunctionLoggerD2Ev:
.LFB1817:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1817
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN6Logger11getInstanceEv@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rbp
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz@PLT
	movl	(%rbx), %esi
	movq	%rbp, %rdi
	call	_ZN6Logger8setlevelEi@PLT
	movl	8(%rbx), %esi
	movq	%rbp, %rdi
	subl	$1, %esi
	call	_ZN6Logger9setindentEi@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1817:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1817:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1817-.LLSDACSB1817
.LLSDACSB1817:
.LLSDACSE1817:
	.text
	.size	_ZN14FunctionLoggerD2Ev, .-_ZN14FunctionLoggerD2Ev
	.globl	_ZN14FunctionLoggerD1Ev
	.set	_ZN14FunctionLoggerD1Ev,_ZN14FunctionLoggerD2Ev
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__ZN14FunctionLoggerC2EiPKc, @function
_GLOBAL__sub_I__ZN14FunctionLoggerC2EiPKc:
.LFB2300:
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
.LFE2300:
	.size	_GLOBAL__sub_I__ZN14FunctionLoggerC2EiPKc, .-_GLOBAL__sub_I__ZN14FunctionLoggerC2EiPKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN14FunctionLoggerC2EiPKc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
