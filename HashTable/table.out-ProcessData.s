	.file	"ProcessData.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ResizeBuffer"
.LC1:
	.string	"./src/ProcessData.cpp"
.LC2:
	.string	"\033[93m(%s:%d)\033[0m Pizdec\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4
	.type	_ZL12ResizeBufferP10DataBuffer.isra.0, @function
_ZL12ResizeBufferP10DataBuffer.isra.0:
.LFB7801:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7801
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC0(%rip), %rdx
	movl	$666, %esi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbp
	movq	%rbp, %rdi
.LEHB0:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE0:
	movq	16(%rbx), %rax
	movq	8(%rbx), %rsi
	movq	(%rbx), %rdi
	cmpq	%rax, %rsi
	leaq	(%rax,%rax), %rdx
	cmovnb	%rdx, %rsi
	movq	%rsi, 16(%rbx)
	salq	$5, %rsi
	call	realloc@PLT
	testq	%rax, %rax
	je	.L12
	movq	%rax, (%rbx)
	movq	%rbp, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L13
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L12:
	.cfi_restore_state
	movl	$96, %ecx
	leaq	.LC1(%rip), %rdx
	movl	$1, %edi
	leaq	.LC2(%rip), %rsi
.LEHB1:
	call	__printf_chk@PLT
.LEHE1:
	jmp	.L7
.L13:
	call	__stack_chk_fail@PLT
.L6:
	endbr64
	movq	%rax, %r12
	jmp	.L4
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA7801:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7801-.LLSDACSB7801
.LLSDACSB7801:
	.uleb128 .LEHB0-.LFB7801
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB7801
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L6-.LFB7801
	.uleb128 0
.LLSDACSE7801:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC7801
	.type	_ZL12ResizeBufferP10DataBuffer.isra.0.cold, @function
_ZL12ResizeBufferP10DataBuffer.isra.0.cold:
.LFSB7801:
.L7:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	(%rbx), %rdi
	call	free@PLT
	call	abort@PLT
.L4:
	movq	%rbp, %rdi
	vzeroupper
	call	_ZN14FunctionLoggerD1Ev@PLT
	movq	%r12, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE7801:
	.section	.gcc_except_table
.LLSDAC7801:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC7801-.LLSDACSBC7801
.LLSDACSBC7801:
	.uleb128 .LEHB2-.LCOLDB3
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC7801:
	.section	.text.unlikely
	.text
	.size	_ZL12ResizeBufferP10DataBuffer.isra.0, .-_ZL12ResizeBufferP10DataBuffer.isra.0
	.section	.text.unlikely
	.size	_ZL12ResizeBufferP10DataBuffer.isra.0.cold, .-_ZL12ResizeBufferP10DataBuffer.isra.0.cold
.LCOLDE3:
	.text
.LHOTE3:
	.section	.rodata.str1.1
.LC4:
	.string	"ProcessData"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"int ProcessData(processed_data*, raw_data*)"
	.section	.rodata.str1.1
.LC6:
	.string	"proc_data"
.LC7:
	.string	"raw_src_data"
.LC8:
	.string	"buffer.data_array"
.LC9:
	.string	"AddWordToDataBuffer"
.LC10:
	.string	"%[a-zA-Z]%n"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"\033[93m(%s:%d)\033[0m Warning: '%s' is longer than MAX_WORD_LENGHT (%d)\n"
	.section	.rodata.str1.1
.LC12:
	.string	"SkipUnnecessarySymbols"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"\033[93m(%s:%d)\033[0m Data array: %p\n"
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4
	.globl	_Z11ProcessDataP14processed_dataPc
	.type	_Z11ProcessDataP14processed_dataPc, @function
_Z11ProcessDataP14processed_dataPc:
.LFB7313:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7313
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC4(%rip), %rdx
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	movl	$666, %esi
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdi, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	leaq	32(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, (%rsp)
.LEHB3:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE3:
	testq	%r15, %r15
	je	.L45
	testq	%rbx, %rbx
	je	.L46
	movl	$32, %esi
	movl	$256, %edi
	movq	$0, 72(%rsp)
	movq	$256, 80(%rsp)
	call	calloc@PLT
	movq	%rax, 64(%rsp)
	testq	%rax, %rax
	je	.L17
	cmpb	$0, (%rbx)
	leaq	96(%rsp), %r12
	leaq	.LC12(%rip), %r15
	je	.L27
	.p2align 4,,10
	.p2align 3
.L18:
	leaq	.LC9(%rip), %rdx
	movl	$666, %esi
	movq	%r12, %rdi
.LEHB4:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE4:
	movq	72(%rsp), %rbp
	cmpq	80(%rsp), %rbp
	jb	.L20
	leaq	64(%rsp), %rdi
.LEHB5:
	call	_ZL12ResizeBufferP10DataBuffer.isra.0
	movq	72(%rsp), %rbp
.L20:
	movq	64(%rsp), %r13
	movq	%rbp, %rdx
	leaq	28(%rsp), %rcx
	movq	%rbx, %rdi
	salq	$5, %rdx
	leaq	.LC10(%rip), %rsi
	xorl	%eax, %eax
	movl	$0, 28(%rsp)
	addq	%r13, %rdx
	call	__isoc99_sscanf@PLT
	movl	28(%rsp), %r14d
	cmpl	$31, %r14d
	jle	.L21
	movl	$31, %r9d
	movq	%rbx, %r8
	movl	$68, %ecx
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
.LEHE5:
	movl	28(%rsp), %r14d
.L21:
	movq	%r12, %rdi
	addq	$1, %rbp
	movq	%rbp, 72(%rsp)
	call	_ZN14FunctionLoggerD1Ev@PLT
	movslq	%r14d, %rax
	movq	%r15, %rdx
	movl	$666, %esi
	movq	%r12, %rdi
	addq	%rax, %rbx
.LEHB6:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L47:
	movsbl	%al, %edi
	call	isalpha@PLT
	testl	%eax, %eax
	jne	.L23
	addq	$1, %rbx
.L44:
	movzbl	(%rbx), %eax
	testb	%al, %al
	jne	.L47
.L23:
	movq	%r12, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	cmpb	$0, (%rbx)
	jne	.L18
	cmpq	%rbp, 80(%rsp)
	ja	.L27
.L28:
	movq	8(%rsp), %rax
	movq	%r13, %r8
	movl	$50, %ecx
	leaq	.LC1(%rip), %rdx
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	movq	%r13, (%rax)
	movq	%rbp, 8(%rax)
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	(%rsp), %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L48
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
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
.L27:
	.cfi_restore_state
	leaq	64(%rsp), %rdi
	call	_ZL12ResizeBufferP10DataBuffer.isra.0
.LEHE6:
	movq	64(%rsp), %r13
	movq	72(%rsp), %rbp
	jmp	.L28
.L17:
	leaq	.LC5(%rip), %rcx
	movl	$36, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L46:
	leaq	.LC5(%rip), %rcx
	movl	$27, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	__assert_fail@PLT
.L45:
	leaq	.LC5(%rip), %rcx
	movl	$26, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	__assert_fail@PLT
.L48:
	call	__stack_chk_fail@PLT
.L31:
	endbr64
	movq	%rax, %rbp
	jmp	.L24
.L30:
	endbr64
	movq	%rax, %rbp
	vzeroupper
	jmp	.L25
	.section	.gcc_except_table
.LLSDA7313:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7313-.LLSDACSB7313
.LLSDACSB7313:
	.uleb128 .LEHB3-.LFB7313
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB7313
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L30-.LFB7313
	.uleb128 0
	.uleb128 .LEHB5-.LFB7313
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L31-.LFB7313
	.uleb128 0
	.uleb128 .LEHB6-.LFB7313
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L30-.LFB7313
	.uleb128 0
.LLSDACSE7313:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC7313
	.type	_Z11ProcessDataP14processed_dataPc.cold, @function
_Z11ProcessDataP14processed_dataPc.cold:
.LFSB7313:
.L24:
	.cfi_def_cfa_offset 192
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r12, %rdi
	vzeroupper
	call	_ZN14FunctionLoggerD1Ev@PLT
.L25:
	movq	(%rsp), %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movq	%rbp, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
	.cfi_endproc
.LFE7313:
	.section	.gcc_except_table
.LLSDAC7313:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC7313-.LLSDACSBC7313
.LLSDACSBC7313:
	.uleb128 .LEHB7-.LCOLDB14
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC7313:
	.section	.text.unlikely
	.text
	.size	_Z11ProcessDataP14processed_dataPc, .-_Z11ProcessDataP14processed_dataPc
	.section	.text.unlikely
	.size	_Z11ProcessDataP14processed_dataPc.cold, .-_Z11ProcessDataP14processed_dataPc.cold
.LCOLDE14:
	.text
.LHOTE14:
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"int ProcessedDataDtor(processed_data*)"
	.align 8
.LC16:
	.string	"\033[93m(%s:%d)\033[0m Warning: NULL data array in proc_data '%p'\n"
	.text
	.p2align 4
	.globl	_Z17ProcessedDataDtorP14processed_data
	.type	_Z17ProcessedDataDtorP14processed_data, @function
_Z17ProcessedDataDtorP14processed_data:
.LFB7317:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.L54
	movq	%rdi, %r8
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L51
	call	free@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	.cfi_restore_state
	movl	$125, %ecx
	leaq	.LC1(%rip), %rdx
	leaq	.LC16(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L54:
	.cfi_restore_state
	leaq	.LC15(%rip), %rcx
	movl	$120, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7317:
	.size	_Z17ProcessedDataDtorP14processed_data, .-_Z17ProcessedDataDtorP14processed_data
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"int ProcessedDataCtor(processed_data*, const char*)"
	.section	.rodata.str1.1
.LC18:
	.string	"path_to_src_data"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"\033[93m(%s:%d)\033[0m Couldn't read source data from '%s'\n"
	.align 8
.LC20:
	.string	"\033[93m(%s:%d)\033[0m Couldn't process data from file '%s'\n"
	.text
	.p2align 4
	.globl	_Z17ProcessedDataCtorP14processed_dataPKc
	.type	_Z17ProcessedDataCtorP14processed_dataPKc, @function
_Z17ProcessedDataCtorP14processed_dataPKc:
.LFB7318:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	testq	%rdi, %rdi
	je	.L62
	movq	%rsi, %rbx
	testq	%rsi, %rsi
	je	.L63
	movq	%rdi, %r12
	movq	%rsi, %rdi
	call	_Z10GetSrcFilePKc@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L64
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	_Z11ProcessDataP14processed_dataPc
	movl	%eax, %r12d
	testl	%eax, %eax
	jne	.L65
	movq	%rbp, %rdi
	call	free@PLT
.L55:
	movl	%r12d, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	.cfi_restore_state
	movq	%rbx, %r8
	movl	$145, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movl	$-1, %r12d
	call	__printf_chk@PLT
	movq	%rbp, %rdi
	call	free@PLT
	jmp	.L55
.L64:
	movq	%rbx, %r8
	movl	$139, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$-1, %r12d
	call	__printf_chk@PLT
	jmp	.L55
.L63:
	leaq	.LC17(%rip), %rcx
	movl	$133, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC18(%rip), %rdi
	call	__assert_fail@PLT
.L62:
	leaq	.LC17(%rip), %rcx
	movl	$132, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7318:
	.size	_Z17ProcessedDataCtorP14processed_dataPKc, .-_Z17ProcessedDataCtorP14processed_dataPKc
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z11ProcessDataP14processed_dataPc, @function
_GLOBAL__sub_I__Z11ProcessDataP14processed_dataPc:
.LFB7800:
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
.LFE7800:
	.size	_GLOBAL__sub_I__Z11ProcessDataP14processed_dataPc, .-_GLOBAL__sub_I__Z11ProcessDataP14processed_dataPc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z11ProcessDataP14processed_dataPc
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
