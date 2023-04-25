	.file	"Logger.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"w"
.LC1:
	.string	"Logfile name '%s'\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Ebat, lox, You can't even open logfile\n"
	.section	.rodata.str1.1
.LC3:
	.string	"%s\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN6LoggerC2EPKc
	.type	_ZN6LoggerC2EPKc, @function
_ZN6LoggerC2EPKc:
.LFB1841:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1841
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, (%rdi)
	movq	-24(%rax), %rdi
	movq	16(%rsi), %rax
	xorl	%esi, %esi
	addq	%rbx, %rdi
	movq	%rax, (%rdi)
.LEHB0:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE0:
	movq	0(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%r12, %rdi
	leaq	.LC0(%rip), %rsi
	movq	%rax, (%rbx)
	movq	-24(%rax), %rax
	movq	%rdx, (%rbx,%rax)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	%r12, 24(%rbx)
.LEHB1:
	call	fopen@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L19
	xorl	%ecx, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	call	setvbuf@PLT
	xorl	%edi, %edi
	call	time@PLT
	movq	%rsp, %rdi
	movq	%rax, (%rsp)
	call	ctime@PLT
	movq	8(%rbx), %rdi
	movl	$1, %esi
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L20
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L19:
	.cfi_restore_state
	movq	%r12, %rdx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LEHE1:
	jmp	.L13
.L20:
	call	__stack_chk_fail@PLT
.L11:
	endbr64
	jmp	.L12
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA1841:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT1841-.LLSDATTD1841
.LLSDATTD1841:
	.byte	0x1
	.uleb128 .LLSDACSE1841-.LLSDACSB1841
.LLSDACSB1841:
	.uleb128 .LEHB0-.LFB1841
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1841
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L11-.LFB1841
	.uleb128 0x3
.LLSDACSE1841:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTIPKc-.
.LLSDATT1841:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1841
	.type	_ZN6LoggerC2EPKc.cold, @function
_ZN6LoggerC2EPKc.cold:
.LFSB1841:
.L13:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	xorl	%edx, %edx
	leaq	_ZTIPKc(%rip), %rsi
	movq	%rax, %rdi
	leaq	.LC2(%rip), %rax
	movq	%rax, (%rdi)
.LEHB2:
	call	__cxa_throw@PLT
.LEHE2:
.L9:
	endbr64
.L12:
	movq	%rax, %rdi
	movq	%rdx, %rax
	subq	$1, %rax
	jne	.L15
	vzeroupper
	call	__cxa_begin_catch@PLT
	movq	%rax, %rdi
.LEHB3:
	call	perror@PLT
.LEHE3:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L21
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	__cxa_end_catch@PLT
.L15:
	.cfi_restore_state
	vzeroupper
.L5:
	movq	8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	-24(%rax), %rax
	movq	%rdx, (%rbx,%rax)
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L21:
	call	__stack_chk_fail@PLT
.L10:
	endbr64
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch@PLT
	movq	%r12, %rdi
	jmp	.L5
	.cfi_endproc
.LFE1841:
	.section	.gcc_except_table
	.align 4
.LLSDAC1841:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC1841-.LLSDATTDC1841
.LLSDATTDC1841:
	.byte	0x1
	.uleb128 .LLSDACSEC1841-.LLSDACSBC1841
.LLSDACSBC1841:
	.uleb128 .LEHB2-.LCOLDB4
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L9-.LCOLDB4
	.uleb128 0x3
	.uleb128 .LEHB3-.LCOLDB4
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L10-.LCOLDB4
	.uleb128 0
	.uleb128 .LEHB4-.LCOLDB4
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC1841:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTIPKc-.
.LLSDATTC1841:
	.section	.text.unlikely
	.text
	.size	_ZN6LoggerC2EPKc, .-_ZN6LoggerC2EPKc
	.section	.text.unlikely
	.size	_ZN6LoggerC2EPKc.cold, .-_ZN6LoggerC2EPKc.cold
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.p2align 4
	.globl	_ZN6LoggerC1EPKc
	.type	_ZN6LoggerC1EPKc, @function
_ZN6LoggerC1EPKc:
.LFB1842:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1842
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	24+_ZTC6Logger0_So(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	leaq	32(%rdi), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	movq	%rbp, %rdi
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	_ZNSt8ios_baseC2Ev@PLT
	xorl	%eax, %eax
	movq	%r13, (%rbx)
	xorl	%esi, %esi
	movw	%ax, 256(%rbx)
	leaq	40(%r13), %rax
	movq	%rbp, %rdi
	movq	$0, 248(%rbx)
	movq	$0, 264(%rbx)
	movq	$0, 272(%rbx)
	movq	$0, 280(%rbx)
	movq	$0, 288(%rbx)
	movq	%rax, 32(%rbx)
.LEHB5:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE5:
	leaq	24+_ZTV6Logger(%rip), %rax
	movq	$0, 8(%rbx)
	movq	%r12, %rdi
	leaq	.LC0(%rip), %rsi
	movq	%rax, (%rbx)
	addq	$40, %rax
	movq	%rax, 32(%rbx)
	movq	$0, 16(%rbx)
	movq	%r12, 24(%rbx)
.LEHB6:
	call	fopen@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L41
	xorl	%ecx, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	call	setvbuf@PLT
	xorl	%edi, %edi
	call	time@PLT
	movq	%rsp, %rdi
	movq	%rax, (%rsp)
	call	ctime@PLT
	movq	8(%rbx), %rdi
	movl	$1, %esi
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L42
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L41:
	.cfi_restore_state
	movq	%r12, %rdx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LEHE6:
	jmp	.L36
.L42:
	call	__stack_chk_fail@PLT
.L34:
	endbr64
	jmp	.L35
.L31:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L29
	.section	.gcc_except_table
	.align 4
.LLSDA1842:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT1842-.LLSDATTD1842
.LLSDATTD1842:
	.byte	0x1
	.uleb128 .LLSDACSE1842-.LLSDACSB1842
.LLSDACSB1842:
	.uleb128 .LEHB5-.LFB1842
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L31-.LFB1842
	.uleb128 0
	.uleb128 .LEHB6-.LFB1842
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L34-.LFB1842
	.uleb128 0x3
.LLSDACSE1842:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTIPKc-.
.LLSDATT1842:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1842
	.type	_ZN6LoggerC1EPKc.cold, @function
_ZN6LoggerC1EPKc.cold:
.LFSB1842:
.L36:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	xorl	%edx, %edx
	leaq	_ZTIPKc(%rip), %rsi
	movq	%rax, %rdi
	leaq	.LC2(%rip), %rax
	movq	%rax, (%rdi)
.LEHB7:
	call	__cxa_throw@PLT
.LEHE7:
.L32:
	endbr64
.L35:
	movq	%rax, %rdi
	movq	%rdx, %rax
	subq	$1, %rax
	jne	.L38
	vzeroupper
	call	__cxa_begin_catch@PLT
	movq	%rax, %rdi
.LEHB8:
	call	perror@PLT
.LEHE8:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L43
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	__cxa_end_catch@PLT
.L38:
	.cfi_restore_state
	vzeroupper
.L26:
	movq	%r13, (%rbx)
	movq	%rdi, %r12
.L29:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rbp, %rdi
	movq	%rax, 32(%rbx)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	%r12, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
.L43:
	call	__stack_chk_fail@PLT
.L33:
	endbr64
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch@PLT
	movq	%r12, %rdi
	jmp	.L26
	.cfi_endproc
.LFE1842:
	.section	.gcc_except_table
	.align 4
.LLSDAC1842:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC1842-.LLSDATTDC1842
.LLSDATTDC1842:
	.byte	0x1
	.uleb128 .LLSDACSEC1842-.LLSDACSBC1842
.LLSDACSBC1842:
	.uleb128 .LEHB7-.LCOLDB5
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L32-.LCOLDB5
	.uleb128 0x3
	.uleb128 .LEHB8-.LCOLDB5
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L33-.LCOLDB5
	.uleb128 0
	.uleb128 .LEHB9-.LCOLDB5
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSEC1842:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTIPKc-.
.LLSDATTC1842:
	.section	.text.unlikely
	.text
	.size	_ZN6LoggerC1EPKc, .-_ZN6LoggerC1EPKc
	.section	.text.unlikely
	.size	_ZN6LoggerC1EPKc.cold, .-_ZN6LoggerC1EPKc.cold
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4
	.globl	_ZN6Logger11getInstanceEv
	.type	_ZN6Logger11getInstanceEv, @function
_ZN6Logger11getInstanceEv:
.LFB1843:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1843
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	_ZZN6Logger11getInstanceEvE6logger(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movzbl	_ZGVZN6Logger11getInstanceEvE6logger(%rip), %eax
	testb	%al, %al
	je	.L55
.L52:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%r12, %rax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	.cfi_restore_state
	leaq	_ZGVZN6Logger11getInstanceEvE6logger(%rip), %rbp
	leaq	_ZZN6Logger11getInstanceEvE6logger(%rip), %r12
	movq	%rbp, %rdi
	call	__cxa_guard_acquire@PLT
	testl	%eax, %eax
	je	.L52
	leaq	_ZL12STD_LOG_NAME(%rip), %rsi
	movq	%r12, %rdi
.LEHB10:
	call	_ZN6LoggerC1EPKc
.LEHE10:
	movq	%r12, %rsi
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZN6LoggerD1Ev(%rip), %rdi
	call	__cxa_atexit@PLT
	movq	%rbp, %rdi
	call	__cxa_guard_release@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%r12, %rax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L49:
	.cfi_restore_state
	endbr64
	movq	%rax, %r12
	jmp	.L48
	.section	.gcc_except_table
.LLSDA1843:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1843-.LLSDACSB1843
.LLSDACSB1843:
	.uleb128 .LEHB10-.LFB1843
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L49-.LFB1843
	.uleb128 0
.LLSDACSE1843:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1843
	.type	_ZN6Logger11getInstanceEv.cold, @function
_ZN6Logger11getInstanceEv.cold:
.LFSB1843:
.L48:
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	%rbp, %rdi
	vzeroupper
	call	__cxa_guard_abort@PLT
	movq	%r12, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
	.cfi_endproc
.LFE1843:
	.section	.gcc_except_table
.LLSDAC1843:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1843-.LLSDACSBC1843
.LLSDACSBC1843:
	.uleb128 .LEHB11-.LCOLDB6
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC1843:
	.section	.text.unlikely
	.text
	.size	_ZN6Logger11getInstanceEv, .-_ZN6Logger11getInstanceEv
	.section	.text.unlikely
	.size	_ZN6Logger11getInstanceEv.cold, .-_ZN6Logger11getInstanceEv.cold
.LCOLDE6:
	.text
.LHOTE6:
	.align 2
	.p2align 4
	.globl	_ZN6Logger8getlevelEv
	.type	_ZN6Logger8getlevelEv, @function
_ZN6Logger8getlevelEv:
.LFB1848:
	.cfi_startproc
	endbr64
	movl	16(%rdi), %eax
	ret
	.cfi_endproc
.LFE1848:
	.size	_ZN6Logger8getlevelEv, .-_ZN6Logger8getlevelEv
	.align 2
	.p2align 4
	.globl	_ZN6Logger6getlogEv
	.type	_ZN6Logger6getlogEv, @function
_ZN6Logger6getlogEv:
.LFB1849:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %rax
	ret
	.cfi_endproc
.LFE1849:
	.size	_ZN6Logger6getlogEv, .-_ZN6Logger6getlogEv
	.align 2
	.p2align 4
	.globl	_ZN6Logger9getindentEv
	.type	_ZN6Logger9getindentEv, @function
_ZN6Logger9getindentEv:
.LFB1850:
	.cfi_startproc
	endbr64
	movl	20(%rdi), %eax
	ret
	.cfi_endproc
.LFE1850:
	.size	_ZN6Logger9getindentEv, .-_ZN6Logger9getindentEv
	.align 2
	.p2align 4
	.globl	_ZN6Logger8setlevelEi
	.type	_ZN6Logger8setlevelEi, @function
_ZN6Logger8setlevelEi:
.LFB1851:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	js	.L62
	movl	%esi, 16(%rdi)
	movl	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	movl	16(%rdi), %eax
	ret
	.cfi_endproc
.LFE1851:
	.size	_ZN6Logger8setlevelEi, .-_ZN6Logger8setlevelEi
	.align 2
	.p2align 4
	.globl	_ZN6Logger9setindentEi
	.type	_ZN6Logger9setindentEi, @function
_ZN6Logger9setindentEi:
.LFB1852:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	js	.L66
	movl	%esi, 20(%rdi)
	movl	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	movl	20(%rdi), %eax
	ret
	.cfi_endproc
.LFE1852:
	.size	_ZN6Logger9setindentEi, .-_ZN6Logger9setindentEi
	.align 2
	.p2align 4
	.globl	_ZN6Logger3logEPKcz
	.type	_ZN6Logger3logEPKcz, @function
_ZN6Logger3logEPKcz:
.LFB1853:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$216, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L68
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	%xmm2, 112(%rsp)
	vmovaps	%xmm3, 128(%rsp)
	vmovaps	%xmm4, 144(%rsp)
	vmovaps	%xmm5, 160(%rsp)
	vmovaps	%xmm6, 176(%rsp)
	vmovaps	%xmm7, 192(%rsp)
.L68:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movl	16(%rbx), %eax
	testl	%eax, %eax
	js	.L67
	movl	20(%rbx), %esi
	movq	8(%rbx), %rdi
	leaq	240(%rsp), %rax
	movl	$16, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movl	$48, 4(%rsp)
	movq	%rax, 16(%rsp)
	call	_Z10fsetindentP8_IO_FILEi@PLT
	movq	8(%rbx), %rdi
	movq	%rsp, %rcx
	movq	%r12, %rdx
	movl	$1, %esi
	call	__vfprintf_chk@PLT
.L67:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L73
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L73:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1853:
	.size	_ZN6Logger3logEPKcz, .-_ZN6Logger3logEPKcz
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"*********************************************************************\n"
	.align 8
.LC8:
	.string	"\t\tLog Successfuly ended, on %s"
	.section	.rodata.str1.1
.LC9:
	.string	"\033[96mLog closed\n\033[0m"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6LoggerD2Ev
	.type	_ZN6LoggerD2Ev, @function
_ZN6LoggerD2Ev:
.LFB1845:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1845
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC7(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	-24(%rax), %rax
	movq	24(%rsi), %rdx
	movq	%rdx, (%rdi,%rax)
	xorl	%edi, %edi
	call	time@PLT
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	%rax, (%rsp)
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz
	movq	%rsp, %rdi
	call	ctime@PLT
	leaq	.LC8(%rip), %rsi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz
	movq	%r12, %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz
	movq	8(%rbx), %rdi
	call	fclose@PLT
	movq	$0, 8(%rbx)
	leaq	.LC9(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	8(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-24(%rax), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rbx,%rax)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L78
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L78:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1845:
	.section	.gcc_except_table
.LLSDA1845:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1845-.LLSDACSB1845
.LLSDACSB1845:
.LLSDACSE1845:
	.text
	.size	_ZN6LoggerD2Ev, .-_ZN6LoggerD2Ev
	.align 2
	.p2align 4
	.globl	_ZN6LoggerD1Ev
	.type	_ZN6LoggerD1Ev, @function
_ZN6LoggerD1Ev:
.LFB1846:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1846
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	.LC7(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	leaq	24+_ZTV6Logger(%rip), %rax
	movq	%rax, (%rdi)
	addq	$40, %rax
	movq	%rax, 32(%rdi)
	xorl	%edi, %edi
	call	time@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, (%rsp)
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz
	movq	%rsp, %rdi
	call	ctime@PLT
	leaq	.LC8(%rip), %rsi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz
	movq	8(%rbx), %rdi
	call	fclose@PLT
	movq	$0, 8(%rbx)
	leaq	.LC9(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	leaq	24+_ZTC6Logger0_So(%rip), %rax
	movq	%rax, (%rbx)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L83
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	leaq	32(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSt8ios_baseD2Ev@PLT
.L83:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1846:
	.section	.gcc_except_table
.LLSDA1846:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1846-.LLSDACSB1846
.LLSDACSB1846:
.LLSDACSE1846:
	.text
	.size	_ZN6LoggerD1Ev, .-_ZN6LoggerD1Ev
	.set	.LTHUNK0,_ZN6LoggerD1Ev
	.p2align 4
	.globl	_ZTv0_n24_N6LoggerD1Ev
	.type	_ZTv0_n24_N6LoggerD1Ev, @function
_ZTv0_n24_N6LoggerD1Ev:
.LFB2365:
	.cfi_startproc
	endbr64
	movq	(%rdi), %r10
	addq	-24(%r10), %rdi
	jmp	.LTHUNK0
	.cfi_endproc
.LFE2365:
	.size	_ZTv0_n24_N6LoggerD1Ev, .-_ZTv0_n24_N6LoggerD1Ev
	.align 2
	.p2align 4
	.globl	_ZN6LoggerD0Ev
	.type	_ZN6LoggerD0Ev, @function
_ZN6LoggerD0Ev:
.LFB1847:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	call	_ZN6LoggerD1Ev
	movq	%rbp, %rdi
	movl	$296, %esi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE1847:
	.size	_ZN6LoggerD0Ev, .-_ZN6LoggerD0Ev
	.p2align 4
	.globl	_ZTv0_n24_N6LoggerD0Ev
	.type	_ZTv0_n24_N6LoggerD0Ev, @function
_ZTv0_n24_N6LoggerD0Ev:
.LFB2364:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbp
	addq	-24(%rax), %rbp
	movq	%rbp, %rdi
	call	_ZN6LoggerD1Ev
	movq	%rbp, %rdi
	movl	$296, %esi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE2364:
	.size	_ZTv0_n24_N6LoggerD0Ev, .-_ZTv0_n24_N6LoggerD0Ev
	.align 2
	.p2align 4
	.globl	_ZN6Logger9log_nolvlEPKcz
	.type	_ZN6Logger9log_nolvlEPKcz, @function
_ZN6Logger9log_nolvlEPKcz:
.LFB1854:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$216, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L89
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	%xmm2, 112(%rsp)
	vmovaps	%xmm3, 128(%rsp)
	vmovaps	%xmm4, 144(%rsp)
	vmovaps	%xmm5, 160(%rsp)
	vmovaps	%xmm6, 176(%rsp)
	vmovaps	%xmm7, 192(%rsp)
.L89:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movl	20(%rbx), %esi
	movq	8(%rbx), %rdi
	movl	$16, (%rsp)
	leaq	240(%rsp), %rax
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	call	_Z10fsetindentP8_IO_FILEi@PLT
	movq	8(%rbx), %rdi
	movq	%rsp, %rcx
	movq	%r12, %rdx
	movl	$1, %esi
	call	__vfprintf_chk@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L93
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L93:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1854:
	.size	_ZN6Logger9log_nolvlEPKcz, .-_ZN6Logger9log_nolvlEPKcz
	.align 2
	.p2align 4
	.globl	_ZN6Logger13log_no_indentEPKcz
	.type	_ZN6Logger13log_no_indentEPKcz, @function
_ZN6Logger13log_no_indentEPKcz:
.LFB1855:
	.cfi_startproc
	endbr64
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L95
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	%xmm2, 112(%rsp)
	vmovaps	%xmm3, 128(%rsp)
	vmovaps	%xmm4, 144(%rsp)
	vmovaps	%xmm5, 160(%rsp)
	vmovaps	%xmm6, 176(%rsp)
	vmovaps	%xmm7, 192(%rsp)
.L95:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movl	16(%rdi), %eax
	testl	%eax, %eax
	js	.L94
	leaq	224(%rsp), %rax
	movq	8(%rdi), %rdi
	movq	%rsi, %rdx
	movq	%rsp, %rcx
	movq	%rax, 8(%rsp)
	movl	$1, %esi
	leaq	32(%rsp), %rax
	movl	$16, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 16(%rsp)
	call	__vfprintf_chk@PLT
.L94:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L100
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L100:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1855:
	.size	_ZN6Logger13log_no_indentEPKcz, .-_ZN6Logger13log_no_indentEPKcz
	.align 2
	.p2align 4
	.globl	_ZN6Logger15log_dup_consoleEPKcz
	.type	_ZN6Logger15log_dup_consoleEPKcz, @function
_ZN6Logger15log_dup_consoleEPKcz:
.LFB1856:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	subq	$240, %rsp
	.cfi_def_cfa_offset 256
	movq	%rdx, 80(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	testb	%al, %al
	je	.L102
	vmovaps	%xmm0, 112(%rsp)
	vmovaps	%xmm1, 128(%rsp)
	vmovaps	%xmm2, 144(%rsp)
	vmovaps	%xmm3, 160(%rsp)
	vmovaps	%xmm4, 176(%rsp)
	vmovaps	%xmm5, 192(%rsp)
	vmovaps	%xmm6, 208(%rsp)
	vmovaps	%xmm7, 224(%rsp)
.L102:
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	8(%rdi), %rdi
	leaq	8(%rsp), %rcx
	movq	%r12, %rdx
	leaq	256(%rsp), %rax
	movl	$1, %esi
	movl	$16, 8(%rsp)
	movq	%rax, 16(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	64(%rsp), %rax
	movl	$48, 12(%rsp)
	movl	$16, 32(%rsp)
	movl	$48, 36(%rsp)
	movq	%rax, 48(%rsp)
	call	__vfprintf_chk@PLT
	movq	stdout(%rip), %rdi
	leaq	32(%rsp), %rcx
	movq	%r12, %rdx
	movl	$1, %esi
	call	__vfprintf_chk@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L106
	addq	$240, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L106:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1856:
	.size	_ZN6Logger15log_dup_consoleEPKcz, .-_ZN6Logger15log_dup_consoleEPKcz
	.section	.rodata.str1.1
.LC10:
	.string	"void Logger::logmsg(char*)"
.LC11:
	.string	"./ATC/Logger/Logger.cpp"
.LC12:
	.string	"message"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6Logger6logmsgEPc
	.type	_ZN6Logger6logmsgEPc, @function
_ZN6Logger6logmsgEPc:
.LFB1857:
	.cfi_startproc
	endbr64
	testq	%rsi, %rsi
	je	.L112
	movq	8(%rdi), %rdi
	movq	%rsi, %rcx
	leaq	.LC3(%rip), %rdx
	xorl	%eax, %eax
	movl	$1, %esi
	jmp	__fprintf_chk@PLT
.L112:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC10(%rip), %rcx
	movl	$162, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE1857:
	.size	_ZN6Logger6logmsgEPc, .-_ZN6Logger6logmsgEPc
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"LOG CALLOC:     {%p} = calloc (%zu, %zu = %zu) from %s:%d, at %s:%d\n"
	.align 8
.LC14:
	.string	"LOG CALLOC: Couldn't allocate memory\n"
	.align 8
.LC15:
	.string	"LOG CALLOC: Couldn't allocate memory of size %zu (%zu*%zu) at %s:%d, %s:%d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6Logger7CAL_LOGEmmPKcS1_i
	.type	_ZN6Logger7CAL_LOGEmmPKcS1_i, @function
_ZN6Logger7CAL_LOGEmmPKcS1_i:
.LFB1858:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r8, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	movq	%rdx, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%r12, %rdi
	movq	%r12, %r15
	movl	%r9d, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	imulq	%rbx, %r15
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rcx, 8(%rsp)
	call	calloc@PLT
	movq	%rax, %r13
	call	_ZN6Logger11getInstanceEv
	pushq	%rbp
	.cfi_def_cfa_offset 88
	movq	%r15, %r9
	movq	%rbx, %r8
	pushq	16(%rsp)
	.cfi_def_cfa_offset 96
	movq	%rax, %rdi
	movq	%r12, %rcx
	movq	%r13, %rdx
	pushq	%rbp
	.cfi_def_cfa_offset 104
	leaq	.LC13(%rip), %rsi
	xorl	%eax, %eax
	pushq	%r14
	.cfi_def_cfa_offset 112
	call	_ZN6Logger9log_nolvlEPKcz
	addq	$32, %rsp
	.cfi_def_cfa_offset 80
	testq	%r13, %r13
	je	.L116
.L113:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L116:
	.cfi_restore_state
	call	_ZN6Logger11getInstanceEv
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	movq	%r14, %r9
	movq	%rbx, %r8
	movq	%r12, %rcx
	pushq	%rax
	.cfi_def_cfa_offset 88
	movq	%r15, %rdx
	leaq	.LC15(%rip), %rsi
	movl	$1, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 96
	xorl	%eax, %eax
	pushq	24(%rsp)
	.cfi_def_cfa_offset 104
	pushq	%rbp
	.cfi_def_cfa_offset 112
	call	__printf_chk@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 80
	jmp	.L113
	.cfi_endproc
.LFE1858:
	.size	_ZN6Logger7CAL_LOGEmmPKcS1_i, .-_ZN6Logger7CAL_LOGEmmPKcS1_i
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"LOG FREE (kill): Atempt to free null pointer from: %s:%d, at %s:%d\n"
	.align 8
.LC17:
	.string	"LOG FREE (kiLL): Atempt to free null pointer from: %s:%d, at %s:%d\n"
	.align 8
.LC18:
	.string	"LOG FREE(kill): {%p} - will be freed from %s:%d, at %s:%d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6Logger8FREE_LOGEPvPKcS2_i
	.type	_ZN6Logger8FREE_LOGEPvPKcS2_i, @function
_ZN6Logger8FREE_LOGEPvPKcS2_i:
.LFB1859:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rsi, %rsi
	je	.L120
	movq	%rsi, %rbp
	call	_ZN6Logger11getInstanceEv
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	movq	%rbx, %r9
	movl	%r12d, %r8d
	pushq	%r12
	.cfi_def_cfa_offset 64
	movq	%rax, %rdi
	movq	%r13, %rcx
	movq	%rbp, %rdx
	leaq	.LC18(%rip), %rsi
	xorl	%eax, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L120:
	.cfi_def_cfa_offset 48
	call	_ZN6Logger11getInstanceEv
	movl	%r12d, %r9d
	movq	%rbx, %r8
	movl	%r12d, %ecx
	movq	%rax, %rdi
	movq	%r13, %rdx
	leaq	.LC16(%rip), %rsi
	xorl	%eax, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movl	%r12d, %r9d
	movq	%rbx, %r8
	movl	%r12d, %ecx
	popq	%rbx
	.cfi_def_cfa_offset 32
	movq	%r13, %rdx
	popq	%rbp
	.cfi_def_cfa_offset 24
	leaq	.LC17(%rip), %rsi
	popq	%r12
	.cfi_def_cfa_offset 16
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE1859:
	.size	_ZN6Logger8FREE_LOGEPvPKcS2_i, .-_ZN6Logger8FREE_LOGEPvPKcS2_i
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"Null pointer from RECALLOC from: %s:%d, at %s:%d\n"
	.align 8
.LC20:
	.string	"Ebat, you are trying to REACALLOG of 0 size\n"
	.align 8
.LC21:
	.string	"Null bloc size at %p, from %s:%d, at %s:%d\n"
	.align 8
.LC22:
	.string	"LOG REALLOC:     {%p} -> {%p} = realloc (new size %zu, old size %zu) from %s:%d, at %s:%d\n"
	.align 8
.LC23:
	.string	"LOG REALLOC: Couldn't allocate memory\n"
	.align 8
.LC24:
	.string	"LOG REALLOC: Couldn't allocate memory of size %zu for {%p} at %s:%d, %s:%d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6Logger9RECAL_LOGEPvmPKcS2_i
	.type	_ZN6Logger9RECAL_LOGEPvmPKcS2_i, @function
_ZN6Logger9RECAL_LOGEPvmPKcS2_i:
.LFB1860:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r8, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%r9d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rcx, 8(%rsp)
	testq	%rsi, %rsi
	je	.L128
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L129
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	malloc_usable_size@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L130
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	realloc@PLT
	movq	%rax, %r15
	call	_ZN6Logger11getInstanceEv
	pushq	%r13
	.cfi_def_cfa_offset 88
	movq	%rbp, %r9
	movq	%rbx, %r8
	pushq	16(%rsp)
	.cfi_def_cfa_offset 96
	movq	%rax, %rdi
	movq	%r15, %rcx
	movq	%r12, %rdx
	pushq	%r13
	.cfi_def_cfa_offset 104
	leaq	.LC22(%rip), %rsi
	xorl	%eax, %eax
	pushq	%r14
	.cfi_def_cfa_offset 112
	call	_ZN6Logger9log_nolvlEPKcz
	addq	$32, %rsp
	.cfi_def_cfa_offset 80
	testq	%r15, %r15
	je	.L131
.L126:
	cmpq	%rbp, %rbx
	ja	.L132
.L121:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r15, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L132:
	.cfi_restore_state
	subq	%rbp, %rbx
	leaq	(%r15,%rbp), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	call	memset@PLT
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L129:
	call	_ZN6Logger11getInstanceEv
	leaq	.LC20(%rip), %rsi
	xorl	%r15d, %r15d
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L130:
	call	_ZN6Logger11getInstanceEv
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movq	%r14, %rcx
	movl	%r13d, %r8d
	pushq	%r13
	.cfi_def_cfa_offset 96
	movq	24(%rsp), %r9
	movq	%rax, %rdi
	movq	%r12, %rdx
	leaq	.LC21(%rip), %rsi
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	call	_ZN6Logger9log_nolvlEPKcz
	popq	%rcx
	.cfi_def_cfa_offset 88
	popq	%rsi
	.cfi_def_cfa_offset 80
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L128:
	call	_ZN6Logger11getInstanceEv
	movq	8(%rsp), %r8
	movl	%r13d, %r9d
	movl	%r13d, %ecx
	movq	%rax, %rdi
	movq	%r14, %rdx
	leaq	.LC19(%rip), %rsi
	xorl	%eax, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	xorl	%r15d, %r15d
	jmp	.L121
.L131:
	call	_ZN6Logger11getInstanceEv
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	pushq	%r13
	.cfi_def_cfa_offset 88
	movq	%rbx, %rdx
	movl	%r13d, %r9d
	pushq	16(%rsp)
	.cfi_def_cfa_offset 96
	movq	%r14, %r8
	movq	%r12, %rcx
	movl	$1, %edi
	leaq	.LC24(%rip), %rsi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	popq	%rax
	.cfi_def_cfa_offset 88
	popq	%rdx
	.cfi_def_cfa_offset 80
	jmp	.L126
	.cfi_endproc
.LFE1860:
	.size	_ZN6Logger9RECAL_LOGEPvmPKcS2_i, .-_ZN6Logger9RECAL_LOGEPvmPKcS2_i
	.section	.rodata.str1.1
.LC25:
	.string	"(return %d;)"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6Logger9LogMsgRetEiPKcz
	.type	_ZN6Logger9LogMsgRetEiPKcz, @function
_ZN6Logger9LogMsgRetEiPKcz:
.LFB1861:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%esi, %r12d
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$208, %rsp
	.cfi_def_cfa_offset 240
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L134
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	%xmm2, 112(%rsp)
	vmovaps	%xmm3, 128(%rsp)
	vmovaps	%xmm4, 144(%rsp)
	vmovaps	%xmm5, 160(%rsp)
	vmovaps	%xmm6, 176(%rsp)
	vmovaps	%xmm7, 192(%rsp)
.L134:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	8(%rbx), %rsi
	movl	$10, %edi
	leaq	240(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movl	$24, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 16(%rsp)
	call	fputc@PLT
	movl	20(%rbx), %esi
	movq	8(%rbx), %rdi
	call	_Z10fsetindentP8_IO_FILEi@PLT
	movq	8(%rbx), %rdi
	movq	%rsp, %rcx
	movq	%r13, %rdx
	movl	$1, %esi
	call	__vfprintf_chk@PLT
	movq	8(%rbx), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%r12d, %ecx
	leaq	.LC25(%rip), %rdx
	call	__fprintf_chk@PLT
	movq	8(%rbx), %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L137
	addq	$208, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L137:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1861:
	.size	_ZN6Logger9LogMsgRetEiPKcz, .-_ZN6Logger9LogMsgRetEiPKcz
	.section	.rodata.str1.1
.LC26:
	.string	"return; "
	.text
	.align 2
	.p2align 4
	.globl	_ZN6Logger11LogMsgNoRetEPKcz
	.type	_ZN6Logger11LogMsgNoRetEPKcz, @function
_ZN6Logger11LogMsgNoRetEPKcz:
.LFB1862:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$216, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L139
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	%xmm2, 112(%rsp)
	vmovaps	%xmm3, 128(%rsp)
	vmovaps	%xmm4, 144(%rsp)
	vmovaps	%xmm5, 160(%rsp)
	vmovaps	%xmm6, 176(%rsp)
	vmovaps	%xmm7, 192(%rsp)
.L139:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	8(%rbx), %rsi
	movl	$10, %edi
	leaq	240(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movl	$16, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 16(%rsp)
	call	fputc@PLT
	movl	20(%rbx), %esi
	movq	8(%rbx), %rdi
	call	_Z10fsetindentP8_IO_FILEi@PLT
	movq	8(%rbx), %rcx
	movl	$8, %edx
	movl	$1, %esi
	leaq	.LC26(%rip), %rdi
	call	fwrite@PLT
	movq	8(%rbx), %rdi
	movq	%rsp, %rcx
	movq	%r12, %rdx
	movl	$1, %esi
	call	__vfprintf_chk@PLT
	movq	8(%rbx), %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L143
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L143:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1862:
	.size	_ZN6Logger11LogMsgNoRetEPKcz, .-_ZN6Logger11LogMsgNoRetEPKcz
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"std::nullptr_t Logger::LogMsgNullRet(const char*, ...)"
	.section	.rodata.str1.1
.LC28:
	.string	"format"
.LC29:
	.string	"return Null ptr;"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6Logger13LogMsgNullRetEPKcz
	.type	_ZN6Logger13LogMsgNullRetEPKcz, @function
_ZN6Logger13LogMsgNullRetEPKcz:
.LFB1863:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$216, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L145
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	%xmm2, 112(%rsp)
	vmovaps	%xmm3, 128(%rsp)
	vmovaps	%xmm4, 144(%rsp)
	vmovaps	%xmm5, 160(%rsp)
	vmovaps	%xmm6, 176(%rsp)
	vmovaps	%xmm7, 192(%rsp)
.L145:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.L149
	movq	8(%rbx), %rsi
	leaq	240(%rsp), %rax
	movl	$10, %edi
	movl	$16, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movl	$48, 4(%rsp)
	movq	%rax, 16(%rsp)
	call	fputc@PLT
	movl	20(%rbx), %esi
	movq	8(%rbx), %rdi
	call	_Z10fsetindentP8_IO_FILEi@PLT
	movq	8(%rbx), %rcx
	movl	$16, %edx
	movl	$1, %esi
	leaq	.LC29(%rip), %rdi
	call	fwrite@PLT
	movq	8(%rbx), %rdi
	movq	%rsp, %rcx
	movq	%r12, %rdx
	movl	$1, %esi
	call	__vfprintf_chk@PLT
	movq	8(%rbx), %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L150
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L149:
	.cfi_restore_state
	leaq	.LC27(%rip), %rcx
	movl	$294, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC28(%rip), %rdi
	call	__assert_fail@PLT
.L150:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1863:
	.size	_ZN6Logger13LogMsgNullRetEPKcz, .-_ZN6Logger13LogMsgNullRetEPKcz
	.section	.rodata.str1.1
.LC30:
	.string	"\n\terror: (code %d) %s\n\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6Logger8logerrorEiPKcz
	.type	_ZN6Logger8logerrorEiPKcz, @function
_ZN6Logger8logerrorEiPKcz:
.LFB1864:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	subq	$216, %rsp
	.cfi_def_cfa_offset 240
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L152
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	%xmm2, 112(%rsp)
	vmovaps	%xmm3, 128(%rsp)
	vmovaps	%xmm4, 144(%rsp)
	vmovaps	%xmm5, 160(%rsp)
	vmovaps	%xmm6, 176(%rsp)
	vmovaps	%xmm7, 192(%rsp)
.L152:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	8(%rbp), %rdi
	movq	%rsp, %rcx
	movl	$1, %esi
	leaq	240(%rsp), %rax
	movl	$24, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movl	$48, 4(%rsp)
	movq	%rax, 16(%rsp)
	call	__vfprintf_chk@PLT
	movl	%r12d, %edi
	call	strerror@PLT
	movl	%r12d, %edx
	leaq	.LC30(%rip), %rsi
	movq	%rbp, %rdi
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L156
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L156:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1864:
	.size	_ZN6Logger8logerrorEiPKcz, .-_ZN6Logger8logerrorEiPKcz
	.align 2
	.p2align 4
	.globl	_ZN6Logger8logerrnoEPKcz
	.type	_ZN6Logger8logerrnoEPKcz, @function
_ZN6Logger8logerrnoEPKcz:
.LFB1865:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %r10
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$216, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L158
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	%xmm2, 112(%rsp)
	vmovaps	%xmm3, 128(%rsp)
	vmovaps	%xmm4, 144(%rsp)
	vmovaps	%xmm5, 160(%rsp)
	vmovaps	%xmm6, 176(%rsp)
	vmovaps	%xmm7, 192(%rsp)
.L158:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	8(%rbp), %rdi
	movq	%rsp, %rcx
	movq	%r10, %rdx
	leaq	240(%rsp), %rax
	movl	$1, %esi
	movl	$16, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movl	$48, 4(%rsp)
	movq	%rax, 16(%rsp)
	call	__vfprintf_chk@PLT
	call	__errno_location@PLT
	movl	(%rax), %edi
	movq	%rax, %rbx
	call	strerror@PLT
	movl	(%rbx), %edx
	leaq	.LC30(%rip), %rsi
	movq	%rbp, %rdi
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L162
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L162:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1865:
	.size	_ZN6Logger8logerrnoEPKcz, .-_ZN6Logger8logerrnoEPKcz
	.section	.rodata.str1.1
.LC31:
	.string	"Everything fine\n\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6Logger10checkerrnoEPKcz
	.type	_ZN6Logger10checkerrnoEPKcz, @function
_ZN6Logger10checkerrnoEPKcz:
.LFB1866:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$208, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L164
	vmovaps	%xmm0, 80(%rsp)
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	%xmm2, 112(%rsp)
	vmovaps	%xmm3, 128(%rsp)
	vmovaps	%xmm4, 144(%rsp)
	vmovaps	%xmm5, 160(%rsp)
	vmovaps	%xmm6, 176(%rsp)
	vmovaps	%xmm7, 192(%rsp)
.L164:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	__errno_location@PLT
	movq	%rax, %rbx
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L165
	movq	8(%rbp), %rdi
	movq	%rsp, %rcx
	movq	%r12, %rdx
	movl	$1, %esi
	leaq	240(%rsp), %rax
	movl	$16, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movl	$48, 4(%rsp)
	movq	%rax, 16(%rsp)
	call	__vfprintf_chk@PLT
	movl	(%rbx), %edi
	call	strerror@PLT
	movl	(%rbx), %edx
	leaq	.LC30(%rip), %rsi
	movq	%rbp, %rdi
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz
.L163:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L170
	addq	$208, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L165:
	.cfi_restore_state
	leaq	.LC31(%rip), %rsi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz
	jmp	.L163
.L170:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1866:
	.size	_ZN6Logger10checkerrnoEPKcz, .-_ZN6Logger10checkerrnoEPKcz
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__ZN6LoggerC2EPKc, @function
_GLOBAL__sub_I__ZN6LoggerC2EPKc:
.LFB2362:
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
.LFE2362:
	.size	_GLOBAL__sub_I__ZN6LoggerC2EPKc, .-_GLOBAL__sub_I__ZN6LoggerC2EPKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN6LoggerC2EPKc
	.weak	_ZTS6Logger
	.section	.rodata._ZTS6Logger,"aG",@progbits,_ZTS6Logger,comdat
	.align 8
	.type	_ZTS6Logger, @object
	.size	_ZTS6Logger, 8
_ZTS6Logger:
	.string	"6Logger"
	.weak	_ZTI6Logger
	.section	.data.rel.ro._ZTI6Logger,"awG",@progbits,_ZTI6Logger,comdat
	.align 8
	.type	_ZTI6Logger, @object
	.size	_ZTI6Logger, 24
_ZTI6Logger:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS6Logger
	.quad	_ZTISo
	.hidden	_ZTC6Logger0_So
	.weak	_ZTC6Logger0_So
	.section	.data.rel.ro._ZTC6Logger0_So,"awG",@progbits,_ZTV6Logger,comdat
	.align 8
	.type	_ZTC6Logger0_So, @object
	.size	_ZTC6Logger0_So, 80
_ZTC6Logger0_So:
	.quad	32
	.quad	0
	.quad	_ZTISo
	.quad	0
	.quad	0
	.quad	-32
	.quad	-32
	.quad	_ZTISo
	.quad	0
	.quad	0
	.weak	_ZTT6Logger
	.section	.data.rel.ro.local._ZTT6Logger,"awG",@progbits,_ZTV6Logger,comdat
	.align 8
	.type	_ZTT6Logger, @object
	.size	_ZTT6Logger, 32
_ZTT6Logger:
	.quad	_ZTV6Logger+24
	.quad	_ZTC6Logger0_So+24
	.quad	_ZTC6Logger0_So+64
	.quad	_ZTV6Logger+64
	.weak	_ZTV6Logger
	.section	.data.rel.ro.local._ZTV6Logger,"awG",@progbits,_ZTV6Logger,comdat
	.align 8
	.type	_ZTV6Logger, @object
	.size	_ZTV6Logger, 80
_ZTV6Logger:
	.quad	32
	.quad	0
	.quad	_ZTI6Logger
	.quad	_ZN6LoggerD1Ev
	.quad	_ZN6LoggerD0Ev
	.quad	-32
	.quad	-32
	.quad	_ZTI6Logger
	.quad	_ZTv0_n24_N6LoggerD1Ev
	.quad	_ZTv0_n24_N6LoggerD0Ev
	.local	_ZGVZN6Logger11getInstanceEvE6logger
	.comm	_ZGVZN6Logger11getInstanceEvE6logger,8,8
	.local	_ZZN6Logger11getInstanceEvE6logger
	.comm	_ZZN6Logger11getInstanceEvE6logger,296,32
	.section	.rodata
	.align 16
	.type	_ZL12STD_LOG_NAME, @object
	.size	_ZL12STD_LOG_NAME, 18
_ZL12STD_LOG_NAME:
	.string	"./logs/stdlog.ars"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	DW.ref._ZTIPKc
	.weak	DW.ref._ZTIPKc
	.section	.data.rel.local.DW.ref._ZTIPKc,"awG",@progbits,DW.ref._ZTIPKc,comdat
	.align 8
	.type	DW.ref._ZTIPKc, @object
	.size	DW.ref._ZTIPKc, 8
DW.ref._ZTIPKc:
	.quad	_ZTIPKc
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
