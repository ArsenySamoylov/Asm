	.file	"Logger.cpp"
	.text
.Ltext0:
	.file 0 "/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd" "../ATC/Logger/Logger.cpp"
	.bss
	.align 32
	.type	_ZStL8__ioinit, @object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	64
	.section	.rodata
	.align 32
	.type	_ZL12STD_LOG_NAME, @object
	.size	_ZL12STD_LOG_NAME, 18
_ZL12STD_LOG_NAME:
	.string	"./logs/stdlog.ars"
	.zero	46
	.align 32
	.type	_ZL11INDENT_SIZE, @object
	.size	_ZL11INDENT_SIZE, 4
_ZL11INDENT_SIZE:
	.long	2
	.zero	60
	.globl	__asan_stack_malloc_0
.LC0:
	.string	"1 32 8 11 NewYorkTime"
	.align 32
.LC1:
	.string	"w"
	.zero	62
	.align 32
.LC2:
	.string	"Ebat, lox, You can't even open logfile\n"
	.zero	56
	.align 32
.LC3:
	.string	"%s\n"
	.zero	60
	.text
	.align 2
	.globl	_ZN6LoggerC2EPKc
	.type	_ZN6LoggerC2EPKc, @function
_ZN6LoggerC2EPKc:
.LASANPC2271:
.LFB2271:
	.file 1 "../ATC/Logger/Logger.cpp"
	.loc 1 18 1
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2271
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	leaq	-112(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L1
	movl	$64, %edi
	call	__asan_stack_malloc_0@PLT
	testq	%rax, %rax
	je	.L1
	movq	%rax, %rbx
.L1:
	leaq	64(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC0(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2271(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-202116352, 2147450884(%r12)
.LBB2:
	.loc 1 18 91
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSoC2Ev@PLT
.LEHE0:
	movq	-144(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L5
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L5:
	movq	-144(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L6
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L6:
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L7
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L7:
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	addq	$24, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L8
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L8:
	movq	-144(%rbp), %rdx
	movq	24(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rdx, %rsi
	shrq	$3, %rsi
	addq	$2147450880, %rsi
	movzbl	(%rsi), %esi
	testb	%sil, %sil
	je	.L9
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L9:
	movq	%rcx, (%rax)
	.loc 1 18 41
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L10
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L10:
	movq	-136(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 18 54
	movq	-136(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L11
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L11:
	movq	-136(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 1 18 64
	movq	-136(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L12
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L12:
	movq	-136(%rbp), %rax
	movl	$0, 20(%rax)
	.loc 1 18 75
	movq	-136(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L13
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L13:
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, 24(%rax)
.LBB3:
.LBB4:
	.loc 1 22 31
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	fopen@PLT
	movq	%rax, %rcx
	.loc 1 22 23
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L14
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L14:
	.loc 1 22 23 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax
	movq	%rcx, 8(%rax)
	.loc 1 24 21 is_stmt 1 discriminator 1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 24 16 discriminator 1
	testq	%rax, %rax
	jne	.L15
	.loc 1 25 27
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %r14
	.loc 1 25 21
	movq	%r14, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L16
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L16:
	leaq	.LC2(%rip), %rax
	movq	%rax, (%r14)
	.loc 1 25 27
	call	__asan_handle_no_return@PLT
	movl	$0, %edx
	leaq	_ZTIPKc(%rip), %rax
	movq	%rax, %rsi
	movq	%r14, %rdi
	call	__cxa_throw@PLT
.L15:
	.loc 1 27 23
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L17
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L17:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setvbuf@PLT
	.loc 1 29 41
	movl	$0, %edi
	call	time@PLT
	.loc 1 29 45
	leaq	-32(%r13), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L18
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L18:
	movq	%rax, -32(%r13)
	.loc 1 30 24
	leaq	-32(%r13), %rax
	movq	%rax, %rdi
	call	ctime@PLT
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L19
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L19:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.LEHE1:
.LBE4:
.LBE3:
.LBE2:
	.loc 1 36 13
	jmp	.L4
.L25:
	endbr64
.LBB11:
.LBB8:
.LBB5:
	movq	%rax, %rcx
	movq	%rdx, %rax
	leaq	-32(%r13), %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movb	$-8, (%rdx)
	movq	%rcx, %rdx
.LBE5:
.LBE8:
.LBE11:
	.loc 1 32 13
	cmpq	$1, %rax
	je	.L21
	movq	%rdx, %rbx
	jmp	.L22
.L21:
.LBB12:
.LBB9:
.LBB6:
	.loc 1 32 31 discriminator 1
	movq	%rdx, %rax
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rax, -120(%rbp)
	.loc 1 34 23 discriminator 1
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
.LEHB2:
	call	perror@PLT
.LEHE2:
	.loc 1 35 16
	call	__cxa_end_catch@PLT
.LBE6:
.LBE9:
.LBE12:
	.loc 1 36 13
	jmp	.L4
.L26:
	endbr64
.LBB13:
.LBB10:
.LBB7:
	.loc 1 35 16
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
.L22:
.LBE7:
.LBE10:
	.loc 1 36 13
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSoD2Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L4:
.LBE13:
	.loc 1 18 1
	cmpq	%rbx, %r15
	je	.L2
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movq	56(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L3
.L2:
	movq	$0, 2147450880(%r12)
.L3:
	.loc 1 36 13
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2271:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA2271:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2271-.LLSDATTD2271
.LLSDATTD2271:
	.byte	0x1
	.uleb128 .LLSDACSE2271-.LLSDACSB2271
.LLSDACSB2271:
	.uleb128 .LEHB0-.LFB2271
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2271
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L25-.LFB2271
	.uleb128 0x3
	.uleb128 .LEHB2-.LFB2271
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L26-.LFB2271
	.uleb128 0
	.uleb128 .LEHB3-.LFB2271
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2271:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTIPKc-.
.LLSDATT2271:
	.text
	.size	_ZN6LoggerC2EPKc, .-_ZN6LoggerC2EPKc
	.align 2
	.globl	_ZN6LoggerC1EPKc
	.type	_ZN6LoggerC1EPKc, @function
_ZN6LoggerC1EPKc:
.LASANPC2272:
.LFB2272:
	.loc 1 18 1
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2272
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	leaq	-112(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L27
	movl	$64, %edi
	call	__asan_stack_malloc_0@PLT
	testq	%rax, %rax
	je	.L27
	movq	%rax, %rbx
.L27:
	leaq	64(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC0(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2272(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-202116352, 2147450884(%r12)
.LBB14:
	.loc 1 18 91
	movq	-136(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEEC2Ev@PLT
.LEHE4:
	movq	-136(%rbp), %rax
	leaq	8+_ZTT6Logger(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSoC2Ev@PLT
.LEHE5:
	.loc 1 18 91 is_stmt 0 discriminator 1
	leaq	24+_ZTV6Logger(%rip), %rcx
	movq	-136(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L31
	.loc 1 18 91
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L31:
	.loc 1 18 91 discriminator 1
	movq	-136(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-136(%rbp), %rax
	addq	$32, %rax
	leaq	64+_ZTV6Logger(%rip), %rsi
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L32
	.loc 1 18 91
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L32:
	.loc 1 18 91 discriminator 1
	movq	%rsi, (%rax)
	.loc 1 18 41 is_stmt 1 discriminator 1
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L33
	.loc 1 18 41 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L33:
	.loc 1 18 41 discriminator 1
	movq	-136(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 18 54 is_stmt 1 discriminator 1
	movq	-136(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L34
	.loc 1 18 54 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L34:
	.loc 1 18 54 discriminator 1
	movq	-136(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 1 18 64 is_stmt 1 discriminator 1
	movq	-136(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L35
	.loc 1 18 64 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L35:
	.loc 1 18 64 discriminator 1
	movq	-136(%rbp), %rax
	movl	$0, 20(%rax)
	.loc 1 18 75 is_stmt 1 discriminator 1
	movq	-136(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L36
	.loc 1 18 75 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L36:
	.loc 1 18 75 discriminator 1
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, 24(%rax)
.LBB15:
.LBB16:
	.loc 1 22 31 is_stmt 1 discriminator 1
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	fopen@PLT
	movq	%rax, %rcx
	.loc 1 22 23 discriminator 1
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L37
	.loc 1 22 23 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L37:
	.loc 1 22 23 discriminator 1
	movq	-136(%rbp), %rax
	movq	%rcx, 8(%rax)
	.loc 1 24 21 is_stmt 1 discriminator 1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 24 16 discriminator 1
	testq	%rax, %rax
	jne	.L38
	.loc 1 25 27
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %r14
	.loc 1 25 21
	movq	%r14, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L39
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L39:
	leaq	.LC2(%rip), %rax
	movq	%rax, (%r14)
	.loc 1 25 27
	call	__asan_handle_no_return@PLT
	movl	$0, %edx
	leaq	_ZTIPKc(%rip), %rax
	movq	%rax, %rsi
	movq	%r14, %rdi
	call	__cxa_throw@PLT
.L38:
	.loc 1 27 23
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L40
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L40:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setvbuf@PLT
	.loc 1 29 41
	movl	$0, %edi
	call	time@PLT
	.loc 1 29 45
	leaq	-32(%r13), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L41
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L41:
	movq	%rax, -32(%r13)
	.loc 1 30 24
	leaq	-32(%r13), %rax
	movq	%rax, %rdi
	call	ctime@PLT
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L42
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L42:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.LEHE6:
.LBE16:
.LBE15:
.LBE14:
	.loc 1 36 13
	jmp	.L30
.L50:
	endbr64
.LBB23:
.LBB20:
.LBB17:
	movq	%rax, %rcx
	movq	%rdx, %rax
	leaq	-32(%r13), %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movb	$-8, (%rdx)
	movq	%rcx, %rdx
.LBE17:
.LBE20:
.LBE23:
	.loc 1 32 13
	cmpq	$1, %rax
	je	.L44
	movq	%rdx, %rbx
	jmp	.L45
.L44:
.LBB24:
.LBB21:
.LBB18:
	.loc 1 32 31 discriminator 1
	movq	%rdx, %rax
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rax, -120(%rbp)
	.loc 1 34 23 discriminator 1
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
.LEHB7:
	call	perror@PLT
.LEHE7:
	.loc 1 35 16
	call	__cxa_end_catch@PLT
.LBE18:
.LBE21:
.LBE24:
	.loc 1 36 13
	jmp	.L30
.L51:
	endbr64
.LBB25:
.LBB22:
.LBB19:
	.loc 1 35 16
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
.L45:
.LBE19:
.LBE22:
	.loc 1 36 13
	movq	-136(%rbp), %rax
	leaq	8+_ZTT6Logger(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSoD2Ev@PLT
	jmp	.L48
.L49:
	endbr64
	movq	%rax, %rbx
.L48:
	movq	-136(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEED2Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L30:
.LBE25:
	.loc 1 18 1
	cmpq	%rbx, %r15
	je	.L28
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movq	56(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L29
.L28:
	movq	$0, 2147450880(%r12)
.L29:
	.loc 1 36 13
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2272:
	.section	.gcc_except_table
	.align 4
.LLSDA2272:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2272-.LLSDATTD2272
.LLSDATTD2272:
	.byte	0x1
	.uleb128 .LLSDACSE2272-.LLSDACSB2272
.LLSDACSB2272:
	.uleb128 .LEHB4-.LFB2272
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2272
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L49-.LFB2272
	.uleb128 0
	.uleb128 .LEHB6-.LFB2272
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L50-.LFB2272
	.uleb128 0x3
	.uleb128 .LEHB7-.LFB2272
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L51-.LFB2272
	.uleb128 0
	.uleb128 .LEHB8-.LFB2272
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2272:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTIPKc-.
.LLSDATT2272:
	.text
	.size	_ZN6LoggerC1EPKc, .-_ZN6LoggerC1EPKc
	.bss
	.align 32
	.type	_ZZN6Logger11getInstanceEvE6logger, @object
	.size	_ZZN6Logger11getInstanceEvE6logger, 296
_ZZN6Logger11getInstanceEvE6logger:
	.zero	352
	.align 32
	.type	_ZGVZN6Logger11getInstanceEvE6logger, @object
	.size	_ZGVZN6Logger11getInstanceEvE6logger, 8
_ZGVZN6Logger11getInstanceEvE6logger:
	.zero	64
	.text
	.align 2
	.globl	_ZN6Logger11getInstanceEv
	.type	_ZN6Logger11getInstanceEv, @function
_ZN6Logger11getInstanceEv:
.LASANPC2273:
.LFB2273:
	.loc 1 39 13
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2273
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 40 46
	movzbl	_ZGVZN6Logger11getInstanceEvE6logger(%rip), %eax
	testb	%al, %al
	sete	%al
	testb	%al, %al
	je	.L53
	.loc 1 40 46 is_stmt 0 discriminator 1
	leaq	_ZGVZN6Logger11getInstanceEvE6logger(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_guard_acquire@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L53
	.loc 1 40 46 discriminator 2
	movl	$0, %r12d
	leaq	_ZL12STD_LOG_NAME(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZZN6Logger11getInstanceEvE6logger(%rip), %rax
	movq	%rax, %rdi
.LEHB9:
	call	_ZN6LoggerC1EPKc
.LEHE9:
	.loc 1 40 46 discriminator 4
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZZN6Logger11getInstanceEvE6logger(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZN6LoggerD1Ev(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
	leaq	_ZGVZN6Logger11getInstanceEvE6logger(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_guard_release@PLT
.L53:
	.loc 1 42 20 is_stmt 1
	leaq	_ZZN6Logger11getInstanceEvE6logger(%rip), %rax
	jmp	.L58
.L57:
	endbr64
	.loc 1 40 46
	movq	%rax, %rbx
	testb	%r12b, %r12b
	jne	.L56
	.loc 1 40 46 is_stmt 0 discriminator 5
	leaq	_ZGVZN6Logger11getInstanceEvE6logger(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_guard_abort@PLT
.L56:
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L58:
	.loc 1 43 13 is_stmt 1
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2273:
	.section	.gcc_except_table
.LLSDA2273:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2273-.LLSDACSB2273
.LLSDACSB2273:
	.uleb128 .LEHB9-.LFB2273
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L57-.LFB2273
	.uleb128 0
	.uleb128 .LEHB10-.LFB2273
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2273:
	.text
	.size	_ZN6Logger11getInstanceEv, .-_ZN6Logger11getInstanceEv
	.section	.rodata
.LC4:
	.string	"1 32 8 14 NewYorkTime:47"
	.align 32
.LC5:
	.string	"*********************************************************************\n"
	.zero	57
	.align 32
.LC6:
	.string	"\t\tLog Successfuly ended, on %s"
	.zero	33
	.align 32
.LC7:
	.string	"\033[96mLog closed\n\033[0m"
	.zero	43
	.text
	.align 2
	.globl	_ZN6LoggerD2Ev
	.type	_ZN6LoggerD2Ev, @function
_ZN6LoggerD2Ev:
.LASANPC2275:
.LFB2275:
	.loc 1 45 1
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2275
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	leaq	-96(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L59
	movl	$64, %edi
	call	__asan_stack_malloc_0@PLT
	testq	%rax, %rax
	je	.L59
	movq	%rax, %rbx
.L59:
	leaq	64(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC4(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2275(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-202116352, 2147450884(%r12)
.LBB26:
	.loc 1 45 18
	movq	-112(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L63
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L63:
	movq	-112(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L64
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L64:
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L65
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L65:
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	-112(%rbp), %rdx
	addq	$24, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L66
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L66:
	movq	-112(%rbp), %rdx
	movq	24(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rdx, %rsi
	shrq	$3, %rsi
	addq	$2147450880, %rsi
	movzbl	(%rsi), %esi
	testb	%sil, %sil
	je	.L67
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L67:
	movq	%rcx, (%rax)
.LBB27:
	.loc 1 47 30
	movl	$0, %edi
	call	time@PLT
	.loc 1 47 34
	leaq	-32(%r13), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L68
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L68:
	movq	%rax, -32(%r13)
	.loc 1 49 8
	movq	-104(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz
	.loc 1 50 8
	leaq	-32(%r13), %rax
	movq	%rax, %rdi
	call	ctime@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz
	.loc 1 51 8
	movq	-104(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz
	.loc 1 53 11
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L69
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L69:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 54 12
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L70
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L70:
	movq	-104(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 56 12
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%r13), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$-8, (%rax)
.LBE27:
	.loc 1 58 5
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSoD2Ev@PLT
.LBE26:
	nop
	.loc 1 45 1
	cmpq	%rbx, %r14
	je	.L60
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movq	56(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L61
.L60:
	movq	$0, 2147450880(%r12)
.L61:
	.loc 1 58 5
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2275:
	.section	.gcc_except_table
.LLSDA2275:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2275-.LLSDACSB2275
.LLSDACSB2275:
.LLSDACSE2275:
	.text
	.size	_ZN6LoggerD2Ev, .-_ZN6LoggerD2Ev
	.align 2
	.globl	_ZN6LoggerD1Ev
	.type	_ZN6LoggerD1Ev, @function
_ZN6LoggerD1Ev:
.LASANPC2276:
.LFB2276:
	.loc 1 45 1
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2276
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	leaq	-96(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L71
	movl	$64, %edi
	call	__asan_stack_malloc_0@PLT
	testq	%rax, %rax
	je	.L71
	movq	%rax, %rbx
.L71:
	leaq	64(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC4(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2276(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-202116352, 2147450884(%r12)
.LBB28:
	.loc 1 45 18
	leaq	24+_ZTV6Logger(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L75
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L75:
	movq	-104(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-104(%rbp), %rax
	addq	$32, %rax
	leaq	64+_ZTV6Logger(%rip), %rsi
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L76
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L76:
	movq	%rsi, (%rax)
.LBB29:
	.loc 1 47 30
	movl	$0, %edi
	call	time@PLT
	.loc 1 47 34
	leaq	-32(%r13), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L77
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L77:
	movq	%rax, -32(%r13)
	.loc 1 49 8
	movq	-104(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz
	.loc 1 50 8
	leaq	-32(%r13), %rax
	movq	%rax, %rdi
	call	ctime@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz
	.loc 1 51 8
	movq	-104(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz
	.loc 1 53 11
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L78
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L78:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 54 12
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L79
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L79:
	movq	-104(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 56 12
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%r13), %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movb	$-8, (%rax)
.LBE29:
	.loc 1 58 5
	movq	-104(%rbp), %rax
	leaq	8+_ZTT6Logger(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSoD2Ev@PLT
	movq	-104(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEED2Ev@PLT
.LBE28:
	nop
	.loc 1 45 1
	cmpq	%rbx, %r14
	je	.L72
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movq	56(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L73
.L72:
	movq	$0, 2147450880(%r12)
.L73:
	.loc 1 58 5
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2276:
	.section	.gcc_except_table
.LLSDA2276:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2276-.LLSDACSB2276
.LLSDACSB2276:
.LLSDACSE2276:
	.text
	.size	_ZN6LoggerD1Ev, .-_ZN6LoggerD1Ev
	.set	.LTHUNK0,_ZN6LoggerD1Ev
	.globl	_ZTv0_n24_N6LoggerD1Ev
	.type	_ZTv0_n24_N6LoggerD1Ev, @function
_ZTv0_n24_N6LoggerD1Ev:
.LASANPC2979:
.LFB2979:
	.file 2 "../ATC/Logger/Logger.h"
	.loc 2 26 9
	.cfi_startproc
	endbr64
	movq	(%rdi), %r10
	addq	-24(%r10), %rdi
	jmp	.LTHUNK0
	.cfi_endproc
.LFE2979:
	.size	_ZTv0_n24_N6LoggerD1Ev, .-_ZTv0_n24_N6LoggerD1Ev
	.align 2
	.globl	_ZN6LoggerD0Ev
	.type	_ZN6LoggerD0Ev, @function
_ZN6LoggerD0Ev:
.LASANPC2277:
.LFB2277:
	.loc 1 45 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 58 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6LoggerD1Ev
	movq	-8(%rbp), %rax
	movl	$296, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2277:
	.size	_ZN6LoggerD0Ev, .-_ZN6LoggerD0Ev
	.set	.LTHUNK1,_ZN6LoggerD0Ev
	.globl	_ZTv0_n24_N6LoggerD0Ev
	.type	_ZTv0_n24_N6LoggerD0Ev, @function
_ZTv0_n24_N6LoggerD0Ev:
.LASANPC2980:
.LFB2980:
	.loc 2 26 9
	.cfi_startproc
	endbr64
	movq	(%rdi), %r10
	addq	-24(%r10), %rdi
	jmp	.LTHUNK1
	.cfi_endproc
.LFE2980:
	.size	_ZTv0_n24_N6LoggerD0Ev, .-_ZTv0_n24_N6LoggerD0Ev
	.align 2
	.globl	_ZN6Logger8getlevelEv
	.type	_ZN6Logger8getlevelEv, @function
_ZN6Logger8getlevelEv:
.LASANPC2278:
.LFB2278:
	.loc 1 62 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 62 14
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L82
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L82:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 62 20
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2278:
	.size	_ZN6Logger8getlevelEv, .-_ZN6Logger8getlevelEv
	.align 2
	.globl	_ZN6Logger6getlogEv
	.type	_ZN6Logger6getlogEv, @function
_ZN6Logger6getlogEv:
.LASANPC2279:
.LFB2279:
	.loc 1 65 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 65 14
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L85
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L85:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 65 22
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2279:
	.size	_ZN6Logger6getlogEv, .-_ZN6Logger6getlogEv
	.align 2
	.globl	_ZN6Logger9getindentEv
	.type	_ZN6Logger9getindentEv, @function
_ZN6Logger9getindentEv:
.LASANPC2280:
.LFB2280:
	.loc 1 68 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 68 14
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L88
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L88:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	.loc 1 68 22
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2280:
	.size	_ZN6Logger9getindentEv, .-_ZN6Logger9getindentEv
	.align 2
	.globl	_ZN6Logger8setlevelEi
	.type	_ZN6Logger8setlevelEi, @function
_ZN6Logger8setlevelEi:
.LASANPC2281:
.LFB2281:
	.loc 1 71 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 1 72 5
	cmpl	$0, -12(%rbp)
	js	.L91
	.loc 1 73 15
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L92
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L92:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 16(%rax)
.L91:
	.loc 1 75 12
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L93
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L93:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 76 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2281:
	.size	_ZN6Logger8setlevelEi, .-_ZN6Logger8setlevelEi
	.align 2
	.globl	_ZN6Logger9setindentEi
	.type	_ZN6Logger9setindentEi, @function
_ZN6Logger9setindentEi:
.LASANPC2282:
.LFB2282:
	.loc 1 79 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 1 80 5
	cmpl	$0, -12(%rbp)
	js	.L96
	.loc 1 81 16
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L97
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L97:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 20(%rax)
.L96:
	.loc 1 83 12
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L98
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L98:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	.loc 1 84 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2282:
	.size	_ZN6Logger9setindentEi, .-_ZN6Logger9setindentEi
	.globl	__asan_stack_malloc_1
	.section	.rodata
.LC8:
	.string	"1 32 24 6 ptr:93"
	.text
	.align 2
	.globl	_ZN6Logger3logEPKcz
	.type	_ZN6Logger3logEPKcz, @function
_ZN6Logger3logEPKcz:
.LASANPC2283:
.LFB2283:
	.loc 1 89 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L104
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L104:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L100
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L100
	movq	%rax, %rbx
.L100:
	leaq	96(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC8(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2283(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 90 9
	movq	-312(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$3, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L105
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L105:
	movq	-312(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 90 5
	testl	%eax, %eax
	js	.L112
	.loc 1 94 22
	movl	$16, -64(%r13)
	movl	$48, -60(%r13)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%r13)
	leaq	-208(%rbp), %rax
	movq	%rax, -48(%r13)
	.loc 1 96 16
	movq	-312(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L108
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L108:
	movq	-312(%rbp), %rax
	movl	20(%rax), %edx
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L109
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L109:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z10fsetindentP8_IO_FILEi@PLT
	.loc 1 97 14
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L110
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L110:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-64(%r13), %rdx
	movq	-320(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	.loc 1 103 5
	jmp	.L103
.L112:
	.loc 1 91 9
	nop
.L103:
	.loc 1 89 5
	cmpq	%rbx, %r14
	je	.L101
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L102
.L101:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L102:
	.loc 1 104 5
	addq	$288, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2283:
	.size	_ZN6Logger3logEPKcz, .-_ZN6Logger3logEPKcz
	.section	.rodata
.LC9:
	.string	"1 32 24 7 ptr:108"
	.text
	.align 2
	.globl	_ZN6Logger9log_nolvlEPKcz
	.type	_ZN6Logger9log_nolvlEPKcz, @function
_ZN6Logger9log_nolvlEPKcz:
.LASANPC2284:
.LFB2284:
	.loc 1 107 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L117
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L117:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L113
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L113
	movq	%rax, %rbx
.L113:
	leaq	96(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC9(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2284(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 109 22
	movl	$16, -64(%r13)
	movl	$48, -60(%r13)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%r13)
	leaq	-208(%rbp), %rax
	movq	%rax, -48(%r13)
	.loc 1 111 16
	movq	-312(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L118
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L118:
	movq	-312(%rbp), %rax
	movl	20(%rax), %edx
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L119
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L119:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z10fsetindentP8_IO_FILEi@PLT
	.loc 1 112 14
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L120
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L120:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-64(%r13), %rdx
	movq	-320(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	.loc 1 118 5
	nop
	.loc 1 107 5
	cmpq	%rbx, %r14
	je	.L114
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L115
.L114:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L115:
	.loc 1 119 5
	addq	$288, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2284:
	.size	_ZN6Logger9log_nolvlEPKcz, .-_ZN6Logger9log_nolvlEPKcz
	.section	.rodata
.LC10:
	.string	"1 32 24 7 ptr:126"
	.text
	.align 2
	.globl	_ZN6Logger13log_no_indentEPKcz
	.type	_ZN6Logger13log_no_indentEPKcz, @function
_ZN6Logger13log_no_indentEPKcz:
.LASANPC2285:
.LFB2285:
	.loc 1 122 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L126
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L126:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r13
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L122
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L122
	movq	%rax, %rbx
.L122:
	leaq	96(%rbx), %rax
	movq	$1102416563, (%rbx)
	leaq	.LC10(%rip), %rdx
	movq	%rdx, 8(%rbx)
	leaq	.LASANPC2285(%rip), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 123 9
	movq	-312(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	cmpb	$3, %dl
	setle	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L127
	movq	%rcx, %rdi
	call	__asan_report_load4@PLT
.L127:
	movq	-312(%rbp), %rdx
	movl	16(%rdx), %edx
	.loc 1 123 5
	testl	%edx, %edx
	js	.L132
	.loc 1 127 22
	movl	$16, -64(%rax)
	movl	$48, -60(%rax)
	leaq	16(%rbp), %rsi
	movq	%rsi, -56(%rax)
	leaq	-208(%rbp), %rdi
	movq	%rdi, -48(%rax)
	.loc 1 130 14
	movq	-312(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L130
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L130:
	movq	-312(%rbp), %rdx
	movq	8(%rdx), %rcx
	leaq	-64(%rax), %rdx
	movq	-320(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	vfprintf@PLT
	.loc 1 136 5
	jmp	.L125
.L132:
	.loc 1 124 9
	nop
.L125:
	.loc 1 122 5
	cmpq	%rbx, %r13
	je	.L123
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L124
.L123:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L124:
	.loc 1 137 5
	addq	$296, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2285:
	.size	_ZN6Logger13log_no_indentEPKcz, .-_ZN6Logger13log_no_indentEPKcz
	.globl	__asan_stack_malloc_2
	.section	.rodata
	.align 8
.LC11:
	.string	"2 32 24 11 for_log:142 96 24 15 for_console:143"
	.text
	.align 2
	.globl	_ZN6Logger15log_dup_consoleEPKcz
	.type	_ZN6Logger15log_dup_consoleEPKcz, @function
_ZN6Logger15log_dup_consoleEPKcz:
.LASANPC2286:
.LFB2286:
	.loc 1 140 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$352, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L137
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L137:
	leaq	-368(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L133
	movl	$160, %edi
	call	__asan_stack_malloc_2@PLT
	testq	%rax, %rax
	je	.L133
	movq	%rax, %rbx
.L133:
	leaq	160(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC11(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2286(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-234881024, 2147450884(%r12)
	movl	$-218959118, 2147450888(%r12)
	movl	$-218103808, 2147450892(%r12)
	movl	$-202116109, 2147450896(%r12)
	.loc 1 145 22
	movl	$16, -128(%r13)
	movl	$48, -124(%r13)
	leaq	16(%rbp), %rax
	movq	%rax, -120(%r13)
	leaq	-208(%rbp), %rax
	movq	%rax, -112(%r13)
	.loc 1 146 22
	movl	$16, -64(%r13)
	movl	$48, -60(%r13)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%r13)
	leaq	-208(%rbp), %rax
	movq	%rax, -48(%r13)
	.loc 1 148 14
	movq	-376(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L138
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L138:
	movq	-376(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-128(%r13), %rdx
	movq	-384(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	.loc 1 149 14
	leaq	-64(%r13), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf@PLT
	.loc 1 154 5
	nop
	.loc 1 140 5
	cmpq	%rbx, %r14
	je	.L134
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movabsq	$-723401728380766731, %rdx
	movq	%rax, 2147450880(%r12)
	movq	%rdx, 2147450888(%r12)
	movl	$-168430091, 2147450896(%r12)
	movq	248(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L135
.L134:
	movq	$0, 2147450880(%r12)
	movq	$0, 2147450888(%r12)
	movl	$0, 2147450896(%r12)
.L135:
	.loc 1 155 5
	addq	$352, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2286:
	.size	_ZN6Logger15log_dup_consoleEPKcz, .-_ZN6Logger15log_dup_consoleEPKcz
	.section	.rodata
	.align 32
.LC12:
	.string	"void Logger::logmsg(char*)"
	.zero	37
	.align 32
.LC13:
	.string	"../ATC/Logger/Logger.cpp"
	.zero	39
	.align 32
.LC14:
	.string	"message"
	.zero	56
	.text
	.align 2
	.globl	_ZN6Logger6logmsgEPc
	.type	_ZN6Logger6logmsgEPc, @function
_ZN6Logger6logmsgEPc:
.LASANPC2287:
.LFB2287:
	.loc 1 158 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 159 6
	cmpq	$0, -16(%rbp)
	jne	.L141
	.loc 1 159 33 discriminator 1
	call	__asan_handle_no_return@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	movl	$159, %edx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L141:
	.loc 1 161 13
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L142
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L142:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 163 5
	nop
	.loc 1 164 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2287:
	.size	_ZN6Logger6logmsgEPc, .-_ZN6Logger6logmsgEPc
	.section	.rodata
	.align 32
.LC15:
	.string	"LOG CALLOC:     {%p} = calloc (%zu, %zu = %zu) from %s:%d, at %s:%d\n"
	.zero	59
	.align 32
.LC16:
	.string	"LOG CALLOC: Couldn't allocate memory\n"
	.zero	58
	.align 32
.LC17:
	.string	"LOG CALLOC: Couldn't allocate memory of size %zu (%zu*%zu) at %s:%d, %s:%d\n"
	.zero	52
	.text
	.align 2
	.globl	_ZN6Logger7CAL_LOGEmmPKcS1_i
	.type	_ZN6Logger7CAL_LOGEmmPKcS1_i, @function
_ZN6Logger7CAL_LOGEmmPKcS1_i:
.LASANPC2288:
.LFB2288:
	.loc 1 167 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	.loc 1 168 24
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 170 24
	call	_ZN6Logger11getInstanceEv
	movq	%rax, %rdi
	.loc 1 170 37
	movq	-32(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, %r8
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	-60(%rbp), %ecx
	pushq	%rcx
	pushq	-48(%rbp)
	movl	-60(%rbp), %ecx
	pushq	%rcx
	pushq	-56(%rbp)
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	addq	$32, %rsp
	.loc 1 173 5
	cmpq	$0, -8(%rbp)
	jne	.L145
	.loc 1 175 28
	call	_ZN6Logger11getInstanceEv
	movq	%rax, %rdx
	.loc 1 175 40
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	.loc 1 176 15
	movq	-32(%rbp), %rax
	imulq	-40(%rbp), %rax
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	-60(%rbp), %esi
	pushq	%rsi
	pushq	-48(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
.L145:
	.loc 1 180 12
	movq	-8(%rbp), %rax
	.loc 1 181 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2288:
	.size	_ZN6Logger7CAL_LOGEmmPKcS1_i, .-_ZN6Logger7CAL_LOGEmmPKcS1_i
	.section	.rodata
	.align 32
.LC18:
	.string	"LOG FREE (kill): Atempt to free null pointer from: %s:%d, at %s:%d\n"
	.zero	60
	.align 32
.LC19:
	.string	"LOG FREE (kiLL): Atempt to free null pointer from: %s:%d, at %s:%d\n"
	.zero	60
	.align 32
.LC20:
	.string	"LOG FREE(kill): {%p} - will be freed from %s:%d, at %s:%d\n"
	.zero	37
	.text
	.align 2
	.globl	_ZN6Logger8FREE_LOGEPvPKcS2_i
	.type	_ZN6Logger8FREE_LOGEPvPKcS2_i, @function
_ZN6Logger8FREE_LOGEPvPKcS2_i:
.LASANPC2289:
.LFB2289:
	.loc 1 184 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	.loc 1 185 5
	cmpq	$0, -16(%rbp)
	jne	.L148
	.loc 1 187 28
	call	_ZN6Logger11getInstanceEv
	movq	%rax, %rdi
	.loc 1 187 40
	movl	-36(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%esi, %r9d
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rax, %rdx
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	.loc 1 188 40
	movl	-36(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 190 9
	jmp	.L147
.L148:
	.loc 1 193 24
	call	_ZN6Logger11getInstanceEv
	movq	%rax, %rdi
	.loc 1 193 36
	movq	-24(%rbp), %r8
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	movl	-36(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movl	%esi, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC20(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	addq	$16, %rsp
	.loc 1 195 9
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 197 5
	nop
.L147:
	.loc 1 198 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2289:
	.size	_ZN6Logger8FREE_LOGEPvPKcS2_i, .-_ZN6Logger8FREE_LOGEPvPKcS2_i
	.section	.rodata
	.align 32
.LC21:
	.string	"Null pointer from RECALLOC from: %s:%d, at %s:%d\n"
	.zero	46
	.align 32
.LC22:
	.string	"Ebat, you are trying to REACALLOG of 0 size\n"
	.zero	51
	.align 32
.LC23:
	.string	"Null bloc size at %p, from %s:%d, at %s:%d\n"
	.zero	52
	.align 32
.LC24:
	.string	"LOG REALLOC:     {%p} -> {%p} = realloc (new size %zu, old size %zu) from %s:%d, at %s:%d\n"
	.zero	37
	.align 32
.LC25:
	.string	"LOG REALLOC: Couldn't allocate memory\n"
	.zero	57
	.align 32
.LC26:
	.string	"LOG REALLOC: Couldn't allocate memory of size %zu for {%p} at %s:%d, %s:%d\n"
	.zero	52
	.text
	.align 2
	.globl	_ZN6Logger9RECAL_LOGEPvmPKcS2_i
	.type	_ZN6Logger9RECAL_LOGEPvmPKcS2_i, @function
_ZN6Logger9RECAL_LOGEPvmPKcS2_i:
.LASANPC2290:
.LFB2290:
	.loc 1 202 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	.loc 1 203 5
	cmpq	$0, -32(%rbp)
	jne	.L151
	.loc 1 205 28
	call	_ZN6Logger11getInstanceEv
	movq	%rax, %rdi
	.loc 1 205 40
	movl	-60(%rbp), %esi
	movq	-48(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%esi, %r9d
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rax, %rdx
	leaq	.LC21(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	.loc 1 207 15
	movl	$0, %eax
	jmp	.L152
.L151:
	.loc 1 210 5
	cmpq	$0, -40(%rbp)
	jne	.L153
	.loc 1 212 28
	call	_ZN6Logger11getInstanceEv
	movq	%rax, %rdx
	.loc 1 212 46
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz
	.loc 1 214 15
	movl	$0, %eax
	jmp	.L152
.L153:
	.loc 1 217 42
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	malloc_usable_size@PLT
	movq	%rax, -16(%rbp)
	.loc 1 218 5
	cmpq	$0, -16(%rbp)
	jne	.L154
	.loc 1 220 28
	call	_ZN6Logger11getInstanceEv
	movq	%rax, %rdi
	.loc 1 220 40
	movq	-48(%rbp), %r8
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	movl	-60(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movl	%esi, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	addq	$16, %rsp
	.loc 1 222 15
	movl	$0, %eax
	jmp	.L152
.L154:
	.loc 1 225 28
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 227 24
	call	_ZN6Logger11getInstanceEv
	movq	%rax, %rdi
	.loc 1 227 37
	movq	-16(%rbp), %r8
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	-60(%rbp), %ecx
	pushq	%rcx
	pushq	-48(%rbp)
	movl	-60(%rbp), %ecx
	pushq	%rcx
	pushq	-56(%rbp)
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	addq	$32, %rsp
	.loc 1 230 5
	cmpq	$0, -8(%rbp)
	jne	.L155
	.loc 1 232 28
	call	_ZN6Logger11getInstanceEv
	movq	%rax, %rdx
	.loc 1 232 40
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger9log_nolvlEPKcz
	.loc 1 233 15
	movq	-48(%rbp), %r8
	movl	-60(%rbp), %edi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	movl	-60(%rbp), %esi
	pushq	%rsi
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
.L155:
	.loc 1 237 5
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.L156
	.loc 1 238 15
	movq	-40(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
.L156:
	.loc 1 240 12
	movq	-8(%rbp), %rax
.L152:
	.loc 1 241 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2290:
	.size	_ZN6Logger9RECAL_LOGEPvmPKcS2_i, .-_ZN6Logger9RECAL_LOGEPvmPKcS2_i
	.section	.rodata
.LC27:
	.string	"1 32 24 7 ptr:252"
	.align 32
.LC28:
	.string	"(return %d;)"
	.zero	51
	.text
	.align 2
	.globl	_ZN6Logger9LogMsgRetEiPKcz
	.type	_ZN6Logger9LogMsgRetEiPKcz, @function
_ZN6Logger9LogMsgRetEiPKcz:
.LASANPC2291:
.LFB2291:
	.loc 1 245 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$304, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -312(%rbp)
	movl	%esi, -316(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L161
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L161:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L157
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L157
	movq	%rax, %rbx
.L157:
	leaq	96(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC27(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2291(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 253 22
	movl	$24, -64(%r13)
	movl	$48, -60(%r13)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%r13)
	leaq	-208(%rbp), %rax
	movq	%rax, -48(%r13)
	.loc 1 255 13
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L162
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L162:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	.loc 1 256 16
	movq	-312(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L163
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L163:
	movq	-312(%rbp), %rax
	movl	20(%rax), %edx
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L164
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L164:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z10fsetindentP8_IO_FILEi@PLT
	.loc 1 258 14
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L165
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L165:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-64(%r13), %rdx
	movq	-328(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	.loc 1 259 13
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L166
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L166:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movl	-316(%rbp), %edx
	leaq	.LC28(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 261 13
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L167
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L167:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	.loc 1 267 12
	movl	-316(%rbp), %eax
	movl	%eax, %edx
	.loc 1 245 5
	cmpq	%rbx, %r14
	je	.L158
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L159
.L158:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L159:
	.loc 1 268 5
	movl	%edx, %eax
	addq	$304, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2291:
	.size	_ZN6Logger9LogMsgRetEiPKcz, .-_ZN6Logger9LogMsgRetEiPKcz
	.section	.rodata
.LC29:
	.string	"1 32 24 7 ptr:272"
	.align 32
.LC30:
	.string	"return; "
	.zero	55
	.text
	.align 2
	.globl	_ZN6Logger11LogMsgNoRetEPKcz
	.type	_ZN6Logger11LogMsgNoRetEPKcz, @function
_ZN6Logger11LogMsgNoRetEPKcz:
.LASANPC2292:
.LFB2292:
	.loc 1 271 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L173
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L173:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L169
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L169
	movq	%rax, %rbx
.L169:
	leaq	96(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC29(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2292(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 273 22
	movl	$16, -64(%r13)
	movl	$48, -60(%r13)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%r13)
	leaq	-208(%rbp), %rax
	movq	%rax, -48(%r13)
	.loc 1 275 13
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L174
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L174:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	.loc 1 276 16
	movq	-312(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L175
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L175:
	movq	-312(%rbp), %rax
	movl	20(%rax), %edx
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L176
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L176:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z10fsetindentP8_IO_FILEi@PLT
	.loc 1 278 13
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L177
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L177:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$1, %esi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 279 14
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L178
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L178:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-64(%r13), %rdx
	movq	-320(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	.loc 1 280 13
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L179
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L179:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	.loc 1 286 5
	nop
	.loc 1 271 5
	cmpq	%rbx, %r14
	je	.L170
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L171
.L170:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L171:
	.loc 1 287 5
	addq	$288, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2292:
	.size	_ZN6Logger11LogMsgNoRetEPKcz, .-_ZN6Logger11LogMsgNoRetEPKcz
	.section	.rodata
.LC31:
	.string	"1 32 24 3 ptr"
	.align 32
.LC32:
	.string	"std::nullptr_t Logger::LogMsgNullRet(const char*, ...)"
	.zero	41
	.align 32
.LC33:
	.string	"format"
	.zero	57
	.align 32
.LC34:
	.string	"return Null ptr;"
	.zero	47
	.text
	.align 2
	.globl	_ZN6Logger13LogMsgNullRetEPKcz
	.type	_ZN6Logger13LogMsgNullRetEPKcz, @function
_ZN6Logger13LogMsgNullRetEPKcz:
.LASANPC2293:
.LFB2293:
	.loc 1 290 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L185
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L185:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L181
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L181
	movq	%rax, %rbx
.L181:
	leaq	96(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC31(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2293(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 291 6
	cmpq	$0, -320(%rbp)
	jne	.L186
	.loc 1 291 33 discriminator 1
	call	__asan_handle_no_return@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	movl	$291, %edx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L186:
	.loc 1 294 22
	movl	$16, -64(%r13)
	movl	$48, -60(%r13)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%r13)
	leaq	-208(%rbp), %rax
	movq	%rax, -48(%r13)
	.loc 1 296 13
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L187
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L187:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	.loc 1 297 16
	movq	-312(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L188
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L188:
	movq	-312(%rbp), %rax
	movl	20(%rax), %edx
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L189
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L189:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z10fsetindentP8_IO_FILEi@PLT
	.loc 1 299 13
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L190
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L190:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 300 14
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L191
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L191:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-64(%r13), %rdx
	movq	-320(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	.loc 1 301 13
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L192
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L192:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	.loc 1 306 12
	movl	$0, %eax
	movq	%rax, %rdx
	.loc 1 290 5
	cmpq	%rbx, %r14
	je	.L182
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L183
.L182:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L183:
	.loc 1 307 5
	movq	%rdx, %rax
	addq	$288, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2293:
	.size	_ZN6Logger13LogMsgNullRetEPKcz, .-_ZN6Logger13LogMsgNullRetEPKcz
	.section	.rodata
.LC35:
	.string	"1 32 24 7 ptr:312"
	.align 32
.LC36:
	.string	"\n\terror: (code %d) %s\n\n"
	.zero	40
	.text
	.align 2
	.globl	_ZN6Logger8logerrorEiPKcz
	.type	_ZN6Logger8logerrorEiPKcz, @function
_ZN6Logger8logerrorEiPKcz:
.LASANPC2294:
.LFB2294:
	.loc 1 311 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -312(%rbp)
	movl	%esi, -316(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L198
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L198:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r13
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L194
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L194
	movq	%rax, %rbx
.L194:
	leaq	96(%rbx), %rax
	movq	$1102416563, (%rbx)
	leaq	.LC35(%rip), %rdx
	movq	%rdx, 8(%rbx)
	leaq	.LASANPC2294(%rip), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 313 22
	movl	$24, -64(%rax)
	movl	$48, -60(%rax)
	leaq	16(%rbp), %rsi
	movq	%rsi, -56(%rax)
	leaq	-208(%rbp), %rdi
	movq	%rdi, -48(%rax)
	.loc 1 315 14
	movq	-312(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L199
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L199:
	movq	-312(%rbp), %rdx
	movq	8(%rdx), %rcx
	leaq	-64(%rax), %rdx
	movq	-328(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	vfprintf@PLT
	.loc 1 317 8
	movl	-316(%rbp), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	-316(%rbp), %edx
	movq	-312(%rbp), %rax
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz
	.loc 1 323 5
	nop
	.loc 1 311 5
	cmpq	%rbx, %r13
	je	.L195
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L196
.L195:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L196:
	.loc 1 324 5
	addq	$312, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2294:
	.size	_ZN6Logger8logerrorEiPKcz, .-_ZN6Logger8logerrorEiPKcz
	.section	.rodata
.LC37:
	.string	"1 32 24 7 ptr:328"
	.text
	.align 2
	.globl	_ZN6Logger8logerrnoEPKcz
	.type	_ZN6Logger8logerrnoEPKcz, @function
_ZN6Logger8logerrnoEPKcz:
.LASANPC2295:
.LFB2295:
	.loc 1 327 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L205
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L205:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L201
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L201
	movq	%rax, %rbx
.L201:
	leaq	96(%rbx), %rax
	movq	$1102416563, (%rbx)
	leaq	.LC37(%rip), %rdx
	movq	%rdx, 8(%rbx)
	leaq	.LASANPC2295(%rip), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 329 22
	movl	$16, -64(%rax)
	movl	$48, -60(%rax)
	leaq	16(%rbp), %rdi
	movq	%rdi, -56(%rax)
	leaq	-208(%rbp), %rdi
	movq	%rdi, -48(%rax)
	.loc 1 331 14
	movq	-312(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L206
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L206:
	movq	-312(%rbp), %rdx
	movq	8(%rdx), %rcx
	leaq	-64(%rax), %rdx
	movq	-320(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	vfprintf@PLT
	.loc 1 333 74
	call	__errno_location@PLT
	movq	%rax, %rdx
	.loc 1 333 8
	movq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%dil
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%cl, %sil
	setge	%cl
	andl	%edi, %ecx
	testb	%cl, %cl
	je	.L207
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L207:
	movl	(%rdx), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %r13
	.loc 1 333 58
	call	__errno_location@PLT
	movq	%rax, %rdx
	.loc 1 333 8
	movq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%dil
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%cl, %sil
	setge	%cl
	andl	%edi, %ecx
	testb	%cl, %cl
	je	.L208
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L208:
	movl	(%rdx), %edx
	movq	-312(%rbp), %rax
	movq	%r13, %rcx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz
	.loc 1 338 5
	nop
	.loc 1 327 5
	cmpq	%rbx, %r14
	je	.L202
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L203
.L202:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L203:
	.loc 1 339 5
	addq	$288, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2295:
	.size	_ZN6Logger8logerrnoEPKcz, .-_ZN6Logger8logerrnoEPKcz
	.section	.rodata
	.align 32
.LC38:
	.string	"Everything fine\n\n"
	.zero	46
	.text
	.align 2
	.globl	_ZN6Logger10checkerrnoEPKcz
	.type	_ZN6Logger10checkerrnoEPKcz, @function
_ZN6Logger10checkerrnoEPKcz:
.LASANPC2296:
.LFB2296:
	.loc 1 342 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L214
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L214:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L210
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L210
	movq	%rax, %rbx
.L210:
	leaq	96(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC31(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2296(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
.LBB30:
	.loc 1 343 27
	call	__errno_location@PLT
	movq	%rax, %rdx
	.loc 1 343 9
	movq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%dil
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%cl, %sil
	setge	%cl
	andl	%edi, %ecx
	testb	%cl, %cl
	je	.L215
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L215:
	movl	(%rdx), %eax
	.loc 1 343 5
	testl	%eax, %eax
	je	.L216
.LBB31:
	.loc 1 346 26
	movl	$16, -64(%r13)
	movl	$48, -60(%r13)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%r13)
	leaq	-208(%rbp), %rax
	movq	%rax, -48(%r13)
	.loc 1 348 18
	movq	-312(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L217
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L217:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-64(%r13), %rdx
	movq	-320(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	.loc 1 350 78
	call	__errno_location@PLT
	movq	%rax, %rdx
	.loc 1 350 12
	movq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%dil
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%cl, %sil
	setge	%cl
	andl	%edi, %ecx
	testb	%cl, %cl
	je	.L218
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L218:
	movl	(%rdx), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %r13
	.loc 1 350 62
	call	__errno_location@PLT
	movq	%rax, %rdx
	.loc 1 350 12
	movq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%dil
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%cl, %sil
	setge	%cl
	andl	%edi, %ecx
	testb	%cl, %cl
	je	.L219
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L219:
	movl	(%rdx), %edx
	movq	-312(%rbp), %rax
	movq	%r13, %rcx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz
.LBE31:
.LBE30:
	.loc 1 357 5
	jmp	.L213
.L216:
.LBB32:
	.loc 1 354 12
	movq	-312(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz
.LBE32:
	.loc 1 357 5
	nop
.L213:
	.loc 1 342 5
	cmpq	%rbx, %r14
	je	.L211
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L212
.L211:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L212:
	.loc 1 358 5
	addq	$288, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2296:
	.size	_ZN6Logger10checkerrnoEPKcz, .-_ZN6Logger10checkerrnoEPKcz
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
	.weak	_ZTI6Logger
	.section	.data.rel.ro._ZTI6Logger,"awG",@progbits,_ZTI6Logger,comdat
	.align 8
	.type	_ZTI6Logger, @object
	.size	_ZTI6Logger, 24
_ZTI6Logger:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS6Logger
	.quad	_ZTISo
	.weak	_ZTS6Logger
	.section	.rodata._ZTS6Logger,"aG",@progbits,_ZTS6Logger,comdat
	.align 8
	.type	_ZTS6Logger, @object
	.size	_ZTS6Logger, 8
_ZTS6Logger:
	.string	"6Logger"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LASANPC2977:
.LFB2977:
	.loc 1 358 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 358 5
	cmpl	$1, -4(%rbp)
	jne	.L225
	.loc 1 358 5 is_stmt 0 discriminator 1
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__asan_before_dynamic_init@PLT
	cmpl	$65535, -8(%rbp)
	jne	.L224
	.file 3 "/usr/include/c++/11/iostream"
	.loc 3 74 25 is_stmt 1
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L224:
	.loc 3 74 25 is_stmt 0 discriminator 1
	call	__asan_after_dynamic_init@PLT
.L225:
	.loc 1 358 5 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2977:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN6LoggerC2EPKc, @function
_GLOBAL__sub_I__ZN6LoggerC2EPKc:
.LASANPC2978:
.LFB2978:
	.loc 1 358 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 358 5
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2978:
	.size	_GLOBAL__sub_I__ZN6LoggerC2EPKc, .-_GLOBAL__sub_I__ZN6LoggerC2EPKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN6LoggerC2EPKc
	.section	.data.rel.local,"aw"
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC13
	.long	40
	.long	27
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC13
	.long	40
	.long	27
	.section	.rodata
.LC39:
	.string	"../ATC/Buffer/my_buffer.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC3, @object
	.size	.LASANLOC3, 16
.LASANLOC3:
	.quad	.LC39
	.long	32
	.long	11
	.section	.rodata
.LC40:
	.string	"../ATC/Logger/LogConfig.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC4, @object
	.size	.LASANLOC4, 16
.LASANLOC4:
	.quad	.LC40
	.long	3
	.long	12
	.section	.rodata
.LC41:
	.string	"/usr/include/c++/11/iostream"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC5, @object
	.size	.LASANLOC5, 16
.LASANLOC5:
	.quad	.LC41
	.long	74
	.long	25
	.section	.rodata
	.align 8
.LC42:
	.string	"_ZGVZN6Logger11getInstanceEvE6logger"
.LC43:
	.string	"logger"
.LC44:
	.string	"INDENT_SIZE"
.LC45:
	.string	"STD_LOG_NAME"
.LC46:
	.string	"__ioinit"
.LC47:
	.string	"*.LC1"
.LC48:
	.string	"*.LC26"
.LC49:
	.string	"*.LC14"
.LC50:
	.string	"*.LC17"
.LC51:
	.string	"*.LC2"
.LC52:
	.string	"*.LC19"
.LC53:
	.string	"*.LC24"
.LC54:
	.string	"*.LC13"
.LC55:
	.string	"*.LC16"
.LC56:
	.string	"*.LC36"
.LC57:
	.string	"*.LC5"
.LC58:
	.string	"*.LC21"
.LC59:
	.string	"*.LC33"
.LC60:
	.string	"*.LC22"
.LC61:
	.string	"*.LC28"
.LC62:
	.string	"*.LC23"
.LC63:
	.string	"*.LC38"
.LC64:
	.string	"*.LC12"
.LC65:
	.string	"*.LC18"
.LC66:
	.string	"*.LC34"
.LC67:
	.string	"*.LC7"
.LC68:
	.string	"*.LC30"
.LC69:
	.string	"*.LC3"
.LC70:
	.string	"*.LC20"
.LC71:
	.string	"*.LC32"
.LC72:
	.string	"*.LC15"
.LC73:
	.string	"*.LC25"
.LC74:
	.string	"*.LC6"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 2112
.LASAN0:
	.quad	_ZGVZN6Logger11getInstanceEvE6logger
	.quad	8
	.quad	64
	.quad	.LC42
	.quad	.LC13
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	_ZZN6Logger11getInstanceEvE6logger
	.quad	296
	.quad	352
	.quad	.LC43
	.quad	.LC13
	.quad	0
	.quad	.LASANLOC2
	.quad	0
	.quad	_ZL11INDENT_SIZE
	.quad	4
	.quad	64
	.quad	.LC44
	.quad	.LC13
	.quad	0
	.quad	.LASANLOC3
	.quad	0
	.quad	_ZL12STD_LOG_NAME
	.quad	18
	.quad	64
	.quad	.LC45
	.quad	.LC13
	.quad	0
	.quad	.LASANLOC4
	.quad	0
	.quad	_ZStL8__ioinit
	.quad	1
	.quad	64
	.quad	.LC46
	.quad	.LC13
	.quad	1
	.quad	.LASANLOC5
	.quad	0
	.quad	.LC1
	.quad	2
	.quad	64
	.quad	.LC47
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC26
	.quad	76
	.quad	128
	.quad	.LC48
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC14
	.quad	8
	.quad	64
	.quad	.LC49
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC17
	.quad	76
	.quad	128
	.quad	.LC50
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	40
	.quad	96
	.quad	.LC51
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC19
	.quad	68
	.quad	128
	.quad	.LC52
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC24
	.quad	91
	.quad	128
	.quad	.LC53
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	25
	.quad	64
	.quad	.LC54
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC16
	.quad	38
	.quad	96
	.quad	.LC55
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC36
	.quad	24
	.quad	64
	.quad	.LC56
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	71
	.quad	128
	.quad	.LC57
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC21
	.quad	50
	.quad	96
	.quad	.LC58
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC33
	.quad	7
	.quad	64
	.quad	.LC59
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC22
	.quad	45
	.quad	96
	.quad	.LC60
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC28
	.quad	13
	.quad	64
	.quad	.LC61
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC23
	.quad	44
	.quad	96
	.quad	.LC62
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC38
	.quad	18
	.quad	64
	.quad	.LC63
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	27
	.quad	64
	.quad	.LC64
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC18
	.quad	68
	.quad	128
	.quad	.LC65
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC34
	.quad	17
	.quad	64
	.quad	.LC66
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	21
	.quad	64
	.quad	.LC67
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC30
	.quad	9
	.quad	64
	.quad	.LC68
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	4
	.quad	64
	.quad	.LC69
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	59
	.quad	96
	.quad	.LC70
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC32
	.quad	55
	.quad	96
	.quad	.LC71
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC15
	.quad	69
	.quad	128
	.quad	.LC72
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC25
	.quad	39
	.quad	96
	.quad	.LC73
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	31
	.quad	64
	.quad	.LC74
	.quad	.LC13
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB2981:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$33, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2981:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB2982:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$33, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2982:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stdarg.h"
	.file 6 "<built-in>"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 13 "/usr/include/c++/11/cwchar"
	.file 14 "/usr/include/x86_64-linux-gnu/c++/11/bits/c++config.h"
	.file 15 "/usr/include/c++/11/type_traits"
	.file 16 "/usr/include/c++/11/bits/exception_ptr.h"
	.file 17 "/usr/include/c++/11/concepts"
	.file 18 "/usr/include/c++/11/bits/iterator_concepts.h"
	.file 19 "/usr/include/c++/11/bits/ranges_cmp.h"
	.file 20 "/usr/include/c++/11/compare"
	.file 21 "/usr/include/c++/11/debug/debug.h"
	.file 22 "/usr/include/c++/11/bits/char_traits.h"
	.file 23 "/usr/include/c++/11/cstdint"
	.file 24 "/usr/include/c++/11/clocale"
	.file 25 "/usr/include/c++/11/cstdlib"
	.file 26 "/usr/include/c++/11/numbers"
	.file 27 "/usr/include/c++/11/cstdio"
	.file 28 "/usr/include/c++/11/bits/ios_base.h"
	.file 29 "/usr/include/c++/11/cwctype"
	.file 30 "/usr/include/c++/11/ostream"
	.file 31 "/usr/include/c++/11/bits/std_abs.h"
	.file 32 "/usr/include/c++/11/bits/basic_ios.h"
	.file 33 "/usr/include/wchar.h"
	.file 34 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 35 "/usr/include/c++/11/bits/predefined_ops.h"
	.file 36 "/usr/include/c++/11/bits/ptr_traits.h"
	.file 37 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 38 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 39 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 40 "/usr/include/stdint.h"
	.file 41 "/usr/include/locale.h"
	.file 42 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 43 "/usr/include/stdlib.h"
	.file 44 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.file 45 "/usr/include/stdio.h"
	.file 46 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
	.file 47 "/usr/include/wctype.h"
	.file 48 "../ATC/Logger/LogConfig.h"
	.file 49 "/usr/include/c++/11/stdlib.h"
	.file 50 "../ATC/Buffer/my_buffer.h"
	.file 51 "/usr/include/errno.h"
	.file 52 "/usr/include/string.h"
	.file 53 "/usr/include/malloc.h"
	.file 54 "/usr/include/assert.h"
	.file 55 "/usr/include/c++/11/new"
	.file 56 "/usr/include/time.h"
	.file 57 "/usr/include/c++/11/bits/algorithmfwd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3506
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x47
	.long	.LASF500
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.byte	0x20
	.byte	0x3
	.long	.LASF2
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.long	.LASF3
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.long	.LASF4
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.long	.LASF5
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF8
	.byte	0x4
	.byte	0xd1
	.byte	0x1b
	.long	0x5d
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.long	0x70
	.uleb128 0x48
	.long	.LASF501
	.long	0x79
	.uleb128 0x19
	.long	0x89
	.long	0x89
	.uleb128 0x1a
	.long	0x5d
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	.LASF502
	.byte	0x18
	.byte	0x6
	.byte	0
	.long	0xbe
	.uleb128 0x28
	.long	.LASF10
	.long	0xbe
	.byte	0
	.uleb128 0x28
	.long	.LASF11
	.long	0xbe
	.byte	0x4
	.uleb128 0x28
	.long	.LASF12
	.long	0xc5
	.byte	0x8
	.uleb128 0x28
	.long	.LASF13
	.long	0xc5
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x4a
	.byte	0x8
	.uleb128 0x4
	.long	.LASF15
	.byte	0x7
	.byte	0x14
	.byte	0x16
	.long	0xbe
	.uleb128 0x29
	.byte	0x8
	.byte	0x8
	.byte	0xe
	.byte	0x1
	.long	.LASF315
	.long	0x11b
	.uleb128 0x4b
	.byte	0x4
	.byte	0x8
	.byte	0x11
	.byte	0x3
	.long	0x100
	.uleb128 0x36
	.long	.LASF16
	.byte	0x12
	.byte	0x12
	.long	0xbe
	.uleb128 0x36
	.long	.LASF17
	.byte	0x13
	.byte	0xa
	.long	0x11b
	.byte	0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x8
	.byte	0xf
	.byte	0x7
	.long	0x137
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x8
	.byte	0x14
	.byte	0x5
	.long	0xe0
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.long	0x12b
	.long	0x12b
	.uleb128 0x1a
	.long	0x5d
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0xc
	.long	0x12b
	.uleb128 0x4c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.long	0x137
	.uleb128 0x4
	.long	.LASF21
	.byte	0x8
	.byte	0x15
	.byte	0x3
	.long	0xd3
	.uleb128 0x4
	.long	.LASF22
	.byte	0x9
	.byte	0x6
	.byte	0x15
	.long	0x143
	.uleb128 0xc
	.long	0x14f
	.uleb128 0x4
	.long	.LASF23
	.byte	0xa
	.byte	0x5
	.byte	0x19
	.long	0x16c
	.uleb128 0x2c
	.long	.LASF94
	.byte	0xd8
	.byte	0xb
	.byte	0x31
	.byte	0x8
	.long	0x2f3
	.uleb128 0x3
	.long	.LASF24
	.byte	0xb
	.byte	0x33
	.byte	0x7
	.long	0x137
	.byte	0
	.uleb128 0x3
	.long	.LASF25
	.byte	0xb
	.byte	0x36
	.byte	0x9
	.long	0x1240
	.byte	0x8
	.uleb128 0x3
	.long	.LASF26
	.byte	0xb
	.byte	0x37
	.byte	0x9
	.long	0x1240
	.byte	0x10
	.uleb128 0x3
	.long	.LASF27
	.byte	0xb
	.byte	0x38
	.byte	0x9
	.long	0x1240
	.byte	0x18
	.uleb128 0x3
	.long	.LASF28
	.byte	0xb
	.byte	0x39
	.byte	0x9
	.long	0x1240
	.byte	0x20
	.uleb128 0x3
	.long	.LASF29
	.byte	0xb
	.byte	0x3a
	.byte	0x9
	.long	0x1240
	.byte	0x28
	.uleb128 0x3
	.long	.LASF30
	.byte	0xb
	.byte	0x3b
	.byte	0x9
	.long	0x1240
	.byte	0x30
	.uleb128 0x3
	.long	.LASF31
	.byte	0xb
	.byte	0x3c
	.byte	0x9
	.long	0x1240
	.byte	0x38
	.uleb128 0x3
	.long	.LASF32
	.byte	0xb
	.byte	0x3d
	.byte	0x9
	.long	0x1240
	.byte	0x40
	.uleb128 0x3
	.long	.LASF33
	.byte	0xb
	.byte	0x40
	.byte	0x9
	.long	0x1240
	.byte	0x48
	.uleb128 0x3
	.long	.LASF34
	.byte	0xb
	.byte	0x41
	.byte	0x9
	.long	0x1240
	.byte	0x50
	.uleb128 0x3
	.long	.LASF35
	.byte	0xb
	.byte	0x42
	.byte	0x9
	.long	0x1240
	.byte	0x58
	.uleb128 0x3
	.long	.LASF36
	.byte	0xb
	.byte	0x44
	.byte	0x16
	.long	0x2088
	.byte	0x60
	.uleb128 0x3
	.long	.LASF37
	.byte	0xb
	.byte	0x46
	.byte	0x14
	.long	0x208d
	.byte	0x68
	.uleb128 0x3
	.long	.LASF38
	.byte	0xb
	.byte	0x48
	.byte	0x7
	.long	0x137
	.byte	0x70
	.uleb128 0x3
	.long	.LASF39
	.byte	0xb
	.byte	0x49
	.byte	0x7
	.long	0x137
	.byte	0x74
	.uleb128 0x3
	.long	.LASF40
	.byte	0xb
	.byte	0x4a
	.byte	0xb
	.long	0x1973
	.byte	0x78
	.uleb128 0x3
	.long	.LASF41
	.byte	0xb
	.byte	0x4d
	.byte	0x12
	.long	0x2ff
	.byte	0x80
	.uleb128 0x3
	.long	.LASF42
	.byte	0xb
	.byte	0x4e
	.byte	0xf
	.long	0x181f
	.byte	0x82
	.uleb128 0x3
	.long	.LASF43
	.byte	0xb
	.byte	0x4f
	.byte	0x8
	.long	0x2092
	.byte	0x83
	.uleb128 0x3
	.long	.LASF44
	.byte	0xb
	.byte	0x51
	.byte	0xf
	.long	0x20a2
	.byte	0x88
	.uleb128 0x3
	.long	.LASF45
	.byte	0xb
	.byte	0x59
	.byte	0xd
	.long	0x197f
	.byte	0x90
	.uleb128 0x3
	.long	.LASF46
	.byte	0xb
	.byte	0x5b
	.byte	0x17
	.long	0x20ac
	.byte	0x98
	.uleb128 0x3
	.long	.LASF47
	.byte	0xb
	.byte	0x5c
	.byte	0x19
	.long	0x20b6
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF48
	.byte	0xb
	.byte	0x5d
	.byte	0x14
	.long	0x208d
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF49
	.byte	0xb
	.byte	0x5e
	.byte	0x9
	.long	0xc5
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF50
	.byte	0xb
	.byte	0x5f
	.byte	0xa
	.long	0x51
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF51
	.byte	0xb
	.byte	0x60
	.byte	0x7
	.long	0x137
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF52
	.byte	0xb
	.byte	0x62
	.byte	0x8
	.long	0x20bb
	.byte	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF53
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.long	0x16c
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.long	.LASF54
	.uleb128 0x7
	.long	0x132
	.uleb128 0x4d
	.string	"std"
	.byte	0xe
	.value	0x116
	.byte	0xb
	.long	0xf08
	.uleb128 0x2
	.byte	0xd
	.byte	0x40
	.byte	0xb
	.long	0x14f
	.uleb128 0x2
	.byte	0xd
	.byte	0x8d
	.byte	0xb
	.long	0xc7
	.uleb128 0x2
	.byte	0xd
	.byte	0x8f
	.byte	0xb
	.long	0xf08
	.uleb128 0x2
	.byte	0xd
	.byte	0x90
	.byte	0xb
	.long	0xf1f
	.uleb128 0x2
	.byte	0xd
	.byte	0x91
	.byte	0xb
	.long	0xf3b
	.uleb128 0x2
	.byte	0xd
	.byte	0x92
	.byte	0xb
	.long	0xf6d
	.uleb128 0x2
	.byte	0xd
	.byte	0x93
	.byte	0xb
	.long	0xf89
	.uleb128 0x2
	.byte	0xd
	.byte	0x94
	.byte	0xb
	.long	0xfaa
	.uleb128 0x2
	.byte	0xd
	.byte	0x95
	.byte	0xb
	.long	0xfc6
	.uleb128 0x2
	.byte	0xd
	.byte	0x96
	.byte	0xb
	.long	0xfe3
	.uleb128 0x2
	.byte	0xd
	.byte	0x97
	.byte	0xb
	.long	0x1004
	.uleb128 0x2
	.byte	0xd
	.byte	0x98
	.byte	0xb
	.long	0x101b
	.uleb128 0x2
	.byte	0xd
	.byte	0x99
	.byte	0xb
	.long	0x1028
	.uleb128 0x2
	.byte	0xd
	.byte	0x9a
	.byte	0xb
	.long	0x104e
	.uleb128 0x2
	.byte	0xd
	.byte	0x9b
	.byte	0xb
	.long	0x1074
	.uleb128 0x2
	.byte	0xd
	.byte	0x9c
	.byte	0xb
	.long	0x1090
	.uleb128 0x2
	.byte	0xd
	.byte	0x9d
	.byte	0xb
	.long	0x10bb
	.uleb128 0x2
	.byte	0xd
	.byte	0x9e
	.byte	0xb
	.long	0x10d7
	.uleb128 0x2
	.byte	0xd
	.byte	0xa0
	.byte	0xb
	.long	0x10ee
	.uleb128 0x2
	.byte	0xd
	.byte	0xa2
	.byte	0xb
	.long	0x1110
	.uleb128 0x2
	.byte	0xd
	.byte	0xa3
	.byte	0xb
	.long	0x1131
	.uleb128 0x2
	.byte	0xd
	.byte	0xa4
	.byte	0xb
	.long	0x114d
	.uleb128 0x2
	.byte	0xd
	.byte	0xa6
	.byte	0xb
	.long	0x1173
	.uleb128 0x2
	.byte	0xd
	.byte	0xa9
	.byte	0xb
	.long	0x1198
	.uleb128 0x2
	.byte	0xd
	.byte	0xac
	.byte	0xb
	.long	0x11be
	.uleb128 0x2
	.byte	0xd
	.byte	0xae
	.byte	0xb
	.long	0x11e3
	.uleb128 0x2
	.byte	0xd
	.byte	0xb0
	.byte	0xb
	.long	0x11ff
	.uleb128 0x2
	.byte	0xd
	.byte	0xb2
	.byte	0xb
	.long	0x121f
	.uleb128 0x2
	.byte	0xd
	.byte	0xb3
	.byte	0xb
	.long	0x1245
	.uleb128 0x2
	.byte	0xd
	.byte	0xb4
	.byte	0xb
	.long	0x1260
	.uleb128 0x2
	.byte	0xd
	.byte	0xb5
	.byte	0xb
	.long	0x127b
	.uleb128 0x2
	.byte	0xd
	.byte	0xb6
	.byte	0xb
	.long	0x1296
	.uleb128 0x2
	.byte	0xd
	.byte	0xb7
	.byte	0xb
	.long	0x12b1
	.uleb128 0x2
	.byte	0xd
	.byte	0xb8
	.byte	0xb
	.long	0x12cc
	.uleb128 0x2
	.byte	0xd
	.byte	0xb9
	.byte	0xb
	.long	0x1398
	.uleb128 0x2
	.byte	0xd
	.byte	0xba
	.byte	0xb
	.long	0x13ae
	.uleb128 0x2
	.byte	0xd
	.byte	0xbb
	.byte	0xb
	.long	0x13ce
	.uleb128 0x2
	.byte	0xd
	.byte	0xbc
	.byte	0xb
	.long	0x13ee
	.uleb128 0x2
	.byte	0xd
	.byte	0xbd
	.byte	0xb
	.long	0x140e
	.uleb128 0x2
	.byte	0xd
	.byte	0xbe
	.byte	0xb
	.long	0x1439
	.uleb128 0x2
	.byte	0xd
	.byte	0xbf
	.byte	0xb
	.long	0x1454
	.uleb128 0x2
	.byte	0xd
	.byte	0xc1
	.byte	0xb
	.long	0x1475
	.uleb128 0x2
	.byte	0xd
	.byte	0xc3
	.byte	0xb
	.long	0x1491
	.uleb128 0x2
	.byte	0xd
	.byte	0xc4
	.byte	0xb
	.long	0x14b1
	.uleb128 0x2
	.byte	0xd
	.byte	0xc5
	.byte	0xb
	.long	0x14d9
	.uleb128 0x2
	.byte	0xd
	.byte	0xc6
	.byte	0xb
	.long	0x14fa
	.uleb128 0x2
	.byte	0xd
	.byte	0xc7
	.byte	0xb
	.long	0x151a
	.uleb128 0x2
	.byte	0xd
	.byte	0xc8
	.byte	0xb
	.long	0x1531
	.uleb128 0x2
	.byte	0xd
	.byte	0xc9
	.byte	0xb
	.long	0x1552
	.uleb128 0x2
	.byte	0xd
	.byte	0xca
	.byte	0xb
	.long	0x1573
	.uleb128 0x2
	.byte	0xd
	.byte	0xcb
	.byte	0xb
	.long	0x1594
	.uleb128 0x2
	.byte	0xd
	.byte	0xcc
	.byte	0xb
	.long	0x15b5
	.uleb128 0x2
	.byte	0xd
	.byte	0xcd
	.byte	0xb
	.long	0x15cd
	.uleb128 0x2
	.byte	0xd
	.byte	0xce
	.byte	0xb
	.long	0x15e9
	.uleb128 0x2
	.byte	0xd
	.byte	0xce
	.byte	0xb
	.long	0x1607
	.uleb128 0x2
	.byte	0xd
	.byte	0xcf
	.byte	0xb
	.long	0x1625
	.uleb128 0x2
	.byte	0xd
	.byte	0xcf
	.byte	0xb
	.long	0x1643
	.uleb128 0x2
	.byte	0xd
	.byte	0xd0
	.byte	0xb
	.long	0x1661
	.uleb128 0x2
	.byte	0xd
	.byte	0xd0
	.byte	0xb
	.long	0x167f
	.uleb128 0x2
	.byte	0xd
	.byte	0xd1
	.byte	0xb
	.long	0x169d
	.uleb128 0x2
	.byte	0xd
	.byte	0xd1
	.byte	0xb
	.long	0x16bb
	.uleb128 0x2
	.byte	0xd
	.byte	0xd2
	.byte	0xb
	.long	0x16d9
	.uleb128 0x2
	.byte	0xd
	.byte	0xd2
	.byte	0xb
	.long	0x16fc
	.uleb128 0x10
	.value	0x10b
	.byte	0x16
	.long	0x17a0
	.uleb128 0x10
	.value	0x10c
	.byte	0x16
	.long	0x17bc
	.uleb128 0x10
	.value	0x10d
	.byte	0x16
	.long	0x17e4
	.uleb128 0x10
	.value	0x11b
	.byte	0xe
	.long	0x1475
	.uleb128 0x10
	.value	0x11e
	.byte	0xe
	.long	0x1173
	.uleb128 0x10
	.value	0x121
	.byte	0xe
	.long	0x11be
	.uleb128 0x10
	.value	0x124
	.byte	0xe
	.long	0x11ff
	.uleb128 0x10
	.value	0x128
	.byte	0xe
	.long	0x17a0
	.uleb128 0x10
	.value	0x129
	.byte	0xe
	.long	0x17bc
	.uleb128 0x10
	.value	0x12a
	.byte	0xe
	.long	0x17e4
	.uleb128 0x24
	.long	.LASF8
	.byte	0xe
	.value	0x118
	.byte	0x1d
	.long	0x5d
	.uleb128 0x25
	.long	.LASF55
	.byte	0xf
	.value	0xa86
	.byte	0xd
	.uleb128 0x25
	.long	.LASF56
	.byte	0xf
	.value	0xadc
	.byte	0xd
	.uleb128 0x2d
	.long	.LASF57
	.byte	0x10
	.byte	0x3f
	.byte	0xd
	.long	0x75a
	.uleb128 0x4e
	.long	.LASF63
	.byte	0x8
	.byte	0x10
	.byte	0x5a
	.byte	0xb
	.long	0x74c
	.uleb128 0x3
	.long	.LASF58
	.byte	0x10
	.byte	0x5c
	.byte	0xd
	.long	0xc5
	.byte	0
	.uleb128 0x4f
	.long	.LASF63
	.byte	0x10
	.byte	0x5e
	.byte	0x10
	.long	.LASF65
	.long	0x5b9
	.long	0x5c4
	.uleb128 0x6
	.long	0x1842
	.uleb128 0x1
	.long	0xc5
	.byte	0
	.uleb128 0x2e
	.long	.LASF59
	.byte	0x10
	.byte	0x60
	.byte	0xc
	.long	.LASF61
	.long	0x5d8
	.long	0x5de
	.uleb128 0x6
	.long	0x1842
	.byte	0
	.uleb128 0x2e
	.long	.LASF60
	.byte	0x10
	.byte	0x61
	.byte	0xc
	.long	.LASF62
	.long	0x5f2
	.long	0x5f8
	.uleb128 0x6
	.long	0x1842
	.byte	0
	.uleb128 0x50
	.long	.LASF64
	.byte	0x10
	.byte	0x63
	.byte	0xd
	.long	.LASF66
	.long	0xc5
	.long	0x610
	.long	0x616
	.uleb128 0x6
	.long	0x1847
	.byte	0
	.uleb128 0x11
	.long	.LASF63
	.byte	0x10
	.byte	0x6b
	.byte	0x7
	.long	.LASF67
	.long	0x62a
	.long	0x630
	.uleb128 0x6
	.long	0x1842
	.byte	0
	.uleb128 0x11
	.long	.LASF63
	.byte	0x10
	.byte	0x6d
	.byte	0x7
	.long	.LASF68
	.long	0x644
	.long	0x64f
	.uleb128 0x6
	.long	0x1842
	.uleb128 0x1
	.long	0x184c
	.byte	0
	.uleb128 0x11
	.long	.LASF63
	.byte	0x10
	.byte	0x70
	.byte	0x7
	.long	.LASF69
	.long	0x663
	.long	0x66e
	.uleb128 0x6
	.long	0x1842
	.uleb128 0x1
	.long	0x778
	.byte	0
	.uleb128 0x11
	.long	.LASF63
	.byte	0x10
	.byte	0x74
	.byte	0x7
	.long	.LASF70
	.long	0x682
	.long	0x68d
	.uleb128 0x6
	.long	0x1842
	.uleb128 0x1
	.long	0x1851
	.byte	0
	.uleb128 0x12
	.long	.LASF71
	.byte	0x10
	.byte	0x81
	.byte	0x7
	.long	.LASF72
	.long	0x1857
	.long	0x6a5
	.long	0x6b0
	.uleb128 0x6
	.long	0x1842
	.uleb128 0x1
	.long	0x184c
	.byte	0
	.uleb128 0x12
	.long	.LASF71
	.byte	0x10
	.byte	0x85
	.byte	0x7
	.long	.LASF73
	.long	0x1857
	.long	0x6c8
	.long	0x6d3
	.uleb128 0x6
	.long	0x1842
	.uleb128 0x1
	.long	0x1851
	.byte	0
	.uleb128 0x11
	.long	.LASF74
	.byte	0x10
	.byte	0x8c
	.byte	0x7
	.long	.LASF75
	.long	0x6e7
	.long	0x6f2
	.uleb128 0x6
	.long	0x1842
	.uleb128 0x6
	.long	0x137
	.byte	0
	.uleb128 0x11
	.long	.LASF76
	.byte	0x10
	.byte	0x8f
	.byte	0x7
	.long	.LASF77
	.long	0x706
	.long	0x711
	.uleb128 0x6
	.long	0x1842
	.uleb128 0x1
	.long	0x1857
	.byte	0
	.uleb128 0x51
	.long	.LASF130
	.byte	0x10
	.byte	0x9b
	.byte	0x10
	.long	.LASF132
	.long	0x1811
	.byte	0x1
	.long	0x72a
	.long	0x730
	.uleb128 0x6
	.long	0x1847
	.byte	0
	.uleb128 0x52
	.long	.LASF78
	.byte	0x10
	.byte	0xb0
	.byte	0x7
	.long	.LASF79
	.long	0x185c
	.byte	0x1
	.long	0x745
	.uleb128 0x6
	.long	0x1847
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x58b
	.uleb128 0x2
	.byte	0x10
	.byte	0x54
	.byte	0x10
	.long	0x762
	.byte	0
	.uleb128 0x2
	.byte	0x10
	.byte	0x44
	.byte	0x1a
	.long	0x58b
	.uleb128 0x53
	.long	.LASF80
	.byte	0x10
	.byte	0x50
	.byte	0x8
	.long	.LASF81
	.long	0x778
	.uleb128 0x1
	.long	0x58b
	.byte	0
	.uleb128 0x24
	.long	.LASF82
	.byte	0xe
	.value	0x11c
	.byte	0x1d
	.long	0x180c
	.uleb128 0x54
	.long	.LASF503
	.uleb128 0xc
	.long	0x785
	.uleb128 0x2d
	.long	.LASF83
	.byte	0x11
	.byte	0xa3
	.byte	0xd
	.long	0x7ce
	.uleb128 0x16
	.long	.LASF84
	.byte	0x11
	.byte	0xa5
	.byte	0xf
	.uleb128 0x55
	.long	.LASF91
	.byte	0x11
	.byte	0xe1
	.byte	0x16
	.uleb128 0x16
	.long	.LASF85
	.byte	0x12
	.byte	0x50
	.byte	0xf
	.uleb128 0x25
	.long	.LASF86
	.byte	0x12
	.value	0x31d
	.byte	0xd
	.uleb128 0x25
	.long	.LASF87
	.byte	0x12
	.value	0x3a0
	.byte	0x15
	.uleb128 0x16
	.long	.LASF88
	.byte	0x13
	.byte	0x40
	.byte	0xd
	.byte	0
	.uleb128 0x16
	.long	.LASF89
	.byte	0x14
	.byte	0x31
	.byte	0xd
	.uleb128 0x16
	.long	.LASF88
	.byte	0x11
	.byte	0x36
	.byte	0xd
	.uleb128 0x25
	.long	.LASF90
	.byte	0x14
	.value	0x20e
	.byte	0xd
	.uleb128 0x37
	.long	.LASF92
	.byte	0x14
	.value	0x357
	.byte	0x14
	.uleb128 0x16
	.long	.LASF93
	.byte	0x15
	.byte	0x32
	.byte	0xd
	.uleb128 0x56
	.long	.LASF95
	.byte	0x1
	.byte	0x16
	.value	0x158
	.byte	0xc
	.long	0x9e0
	.uleb128 0x57
	.long	.LASF109
	.byte	0x16
	.value	0x164
	.byte	0x7
	.long	.LASF504
	.long	0x822
	.uleb128 0x1
	.long	0x187d
	.uleb128 0x1
	.long	0x1882
	.byte	0
	.uleb128 0x24
	.long	.LASF96
	.byte	0x16
	.value	0x15a
	.byte	0x14
	.long	0x12b
	.uleb128 0xc
	.long	0x822
	.uleb128 0x38
	.string	"eq"
	.value	0x168
	.long	.LASF97
	.long	0x1811
	.long	0x851
	.uleb128 0x1
	.long	0x1882
	.uleb128 0x1
	.long	0x1882
	.byte	0
	.uleb128 0x38
	.string	"lt"
	.value	0x16c
	.long	.LASF98
	.long	0x1811
	.long	0x86e
	.uleb128 0x1
	.long	0x1882
	.uleb128 0x1
	.long	0x1882
	.byte	0
	.uleb128 0xe
	.long	.LASF99
	.byte	0x16
	.value	0x174
	.byte	0x7
	.long	.LASF101
	.long	0x137
	.long	0x893
	.uleb128 0x1
	.long	0x1887
	.uleb128 0x1
	.long	0x1887
	.uleb128 0x1
	.long	0x560
	.byte	0
	.uleb128 0xe
	.long	.LASF100
	.byte	0x16
	.value	0x189
	.byte	0x7
	.long	.LASF102
	.long	0x560
	.long	0x8ae
	.uleb128 0x1
	.long	0x1887
	.byte	0
	.uleb128 0xe
	.long	.LASF103
	.byte	0x16
	.value	0x193
	.byte	0x7
	.long	.LASF104
	.long	0x1887
	.long	0x8d3
	.uleb128 0x1
	.long	0x1887
	.uleb128 0x1
	.long	0x560
	.uleb128 0x1
	.long	0x1882
	.byte	0
	.uleb128 0xe
	.long	.LASF105
	.byte	0x16
	.value	0x1a1
	.byte	0x7
	.long	.LASF106
	.long	0x188c
	.long	0x8f8
	.uleb128 0x1
	.long	0x188c
	.uleb128 0x1
	.long	0x1887
	.uleb128 0x1
	.long	0x560
	.byte	0
	.uleb128 0xe
	.long	.LASF107
	.byte	0x16
	.value	0x1ad
	.byte	0x7
	.long	.LASF108
	.long	0x188c
	.long	0x91d
	.uleb128 0x1
	.long	0x188c
	.uleb128 0x1
	.long	0x1887
	.uleb128 0x1
	.long	0x560
	.byte	0
	.uleb128 0xe
	.long	.LASF109
	.byte	0x16
	.value	0x1b9
	.byte	0x7
	.long	.LASF110
	.long	0x188c
	.long	0x942
	.uleb128 0x1
	.long	0x188c
	.uleb128 0x1
	.long	0x560
	.uleb128 0x1
	.long	0x822
	.byte	0
	.uleb128 0xe
	.long	.LASF111
	.byte	0x16
	.value	0x1c5
	.byte	0x7
	.long	.LASF112
	.long	0x822
	.long	0x95d
	.uleb128 0x1
	.long	0x1891
	.byte	0
	.uleb128 0x24
	.long	.LASF113
	.byte	0x16
	.value	0x15b
	.byte	0x13
	.long	0x137
	.uleb128 0xc
	.long	0x95d
	.uleb128 0xe
	.long	.LASF114
	.byte	0x16
	.value	0x1cb
	.byte	0x7
	.long	.LASF115
	.long	0x95d
	.long	0x98a
	.uleb128 0x1
	.long	0x1882
	.byte	0
	.uleb128 0xe
	.long	.LASF116
	.byte	0x16
	.value	0x1cf
	.byte	0x7
	.long	.LASF117
	.long	0x1811
	.long	0x9aa
	.uleb128 0x1
	.long	0x1891
	.uleb128 0x1
	.long	0x1891
	.byte	0
	.uleb128 0x58
	.string	"eof"
	.byte	0x16
	.value	0x1d3
	.byte	0x7
	.long	.LASF505
	.long	0x95d
	.uleb128 0xe
	.long	.LASF118
	.byte	0x16
	.value	0x1d7
	.byte	0x7
	.long	.LASF119
	.long	0x95d
	.long	0x9d6
	.uleb128 0x1
	.long	0x1891
	.byte	0
	.uleb128 0x2f
	.long	.LASF135
	.long	0x12b
	.byte	0
	.uleb128 0x2
	.byte	0x17
	.byte	0x2f
	.byte	0xb
	.long	0x1997
	.uleb128 0x2
	.byte	0x17
	.byte	0x30
	.byte	0xb
	.long	0x19a3
	.uleb128 0x2
	.byte	0x17
	.byte	0x31
	.byte	0xb
	.long	0x19af
	.uleb128 0x2
	.byte	0x17
	.byte	0x32
	.byte	0xb
	.long	0x19bb
	.uleb128 0x2
	.byte	0x17
	.byte	0x34
	.byte	0xb
	.long	0x1a57
	.uleb128 0x2
	.byte	0x17
	.byte	0x35
	.byte	0xb
	.long	0x1a63
	.uleb128 0x2
	.byte	0x17
	.byte	0x36
	.byte	0xb
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x17
	.byte	0x37
	.byte	0xb
	.long	0x1a7b
	.uleb128 0x2
	.byte	0x17
	.byte	0x39
	.byte	0xb
	.long	0x19f7
	.uleb128 0x2
	.byte	0x17
	.byte	0x3a
	.byte	0xb
	.long	0x1a03
	.uleb128 0x2
	.byte	0x17
	.byte	0x3b
	.byte	0xb
	.long	0x1a0f
	.uleb128 0x2
	.byte	0x17
	.byte	0x3c
	.byte	0xb
	.long	0x1a1b
	.uleb128 0x2
	.byte	0x17
	.byte	0x3e
	.byte	0xb
	.long	0x1acf
	.uleb128 0x2
	.byte	0x17
	.byte	0x3f
	.byte	0xb
	.long	0x1ab7
	.uleb128 0x2
	.byte	0x17
	.byte	0x41
	.byte	0xb
	.long	0x19c7
	.uleb128 0x2
	.byte	0x17
	.byte	0x42
	.byte	0xb
	.long	0x19d3
	.uleb128 0x2
	.byte	0x17
	.byte	0x43
	.byte	0xb
	.long	0x19df
	.uleb128 0x2
	.byte	0x17
	.byte	0x44
	.byte	0xb
	.long	0x19eb
	.uleb128 0x2
	.byte	0x17
	.byte	0x46
	.byte	0xb
	.long	0x1a87
	.uleb128 0x2
	.byte	0x17
	.byte	0x47
	.byte	0xb
	.long	0x1a93
	.uleb128 0x2
	.byte	0x17
	.byte	0x48
	.byte	0xb
	.long	0x1a9f
	.uleb128 0x2
	.byte	0x17
	.byte	0x49
	.byte	0xb
	.long	0x1aab
	.uleb128 0x2
	.byte	0x17
	.byte	0x4b
	.byte	0xb
	.long	0x1a27
	.uleb128 0x2
	.byte	0x17
	.byte	0x4c
	.byte	0xb
	.long	0x1a33
	.uleb128 0x2
	.byte	0x17
	.byte	0x4d
	.byte	0xb
	.long	0x1a3f
	.uleb128 0x2
	.byte	0x17
	.byte	0x4e
	.byte	0xb
	.long	0x1a4b
	.uleb128 0x2
	.byte	0x17
	.byte	0x50
	.byte	0xb
	.long	0x1adb
	.uleb128 0x2
	.byte	0x17
	.byte	0x51
	.byte	0xb
	.long	0x1ac3
	.uleb128 0x2
	.byte	0x18
	.byte	0x35
	.byte	0xb
	.long	0x1ae7
	.uleb128 0x2
	.byte	0x18
	.byte	0x36
	.byte	0xb
	.long	0x1c2d
	.uleb128 0x2
	.byte	0x18
	.byte	0x37
	.byte	0xb
	.long	0x1c48
	.uleb128 0x2
	.byte	0x19
	.byte	0x7f
	.byte	0xb
	.long	0x1ca7
	.uleb128 0x2
	.byte	0x19
	.byte	0x80
	.byte	0xb
	.long	0x1cda
	.uleb128 0x2
	.byte	0x19
	.byte	0x86
	.byte	0xb
	.long	0x1d3f
	.uleb128 0x2
	.byte	0x19
	.byte	0x89
	.byte	0xb
	.long	0x1d5c
	.uleb128 0x2
	.byte	0x19
	.byte	0x8c
	.byte	0xb
	.long	0x1d77
	.uleb128 0x2
	.byte	0x19
	.byte	0x8d
	.byte	0xb
	.long	0x1d8d
	.uleb128 0x2
	.byte	0x19
	.byte	0x8e
	.byte	0xb
	.long	0x1da3
	.uleb128 0x2
	.byte	0x19
	.byte	0x8f
	.byte	0xb
	.long	0x1db9
	.uleb128 0x2
	.byte	0x19
	.byte	0x91
	.byte	0xb
	.long	0x1de4
	.uleb128 0x2
	.byte	0x19
	.byte	0x94
	.byte	0xb
	.long	0x1e00
	.uleb128 0x2
	.byte	0x19
	.byte	0x96
	.byte	0xb
	.long	0x1e17
	.uleb128 0x2
	.byte	0x19
	.byte	0x99
	.byte	0xb
	.long	0x1e33
	.uleb128 0x2
	.byte	0x19
	.byte	0x9a
	.byte	0xb
	.long	0x1e4f
	.uleb128 0x2
	.byte	0x19
	.byte	0x9b
	.byte	0xb
	.long	0x1e70
	.uleb128 0x2
	.byte	0x19
	.byte	0x9d
	.byte	0xb
	.long	0x1e91
	.uleb128 0x2
	.byte	0x19
	.byte	0xa0
	.byte	0xb
	.long	0x1eb2
	.uleb128 0x2
	.byte	0x19
	.byte	0xa3
	.byte	0xb
	.long	0x1ec5
	.uleb128 0x2
	.byte	0x19
	.byte	0xa5
	.byte	0xb
	.long	0x1ed2
	.uleb128 0x2
	.byte	0x19
	.byte	0xa6
	.byte	0xb
	.long	0x1ee4
	.uleb128 0x2
	.byte	0x19
	.byte	0xa7
	.byte	0xb
	.long	0x1f04
	.uleb128 0x2
	.byte	0x19
	.byte	0xa8
	.byte	0xb
	.long	0x1f24
	.uleb128 0x2
	.byte	0x19
	.byte	0xa9
	.byte	0xb
	.long	0x1f44
	.uleb128 0x2
	.byte	0x19
	.byte	0xab
	.byte	0xb
	.long	0x1f5b
	.uleb128 0x2
	.byte	0x19
	.byte	0xac
	.byte	0xb
	.long	0x1f7c
	.uleb128 0x2
	.byte	0x19
	.byte	0xf0
	.byte	0x16
	.long	0x1d0d
	.uleb128 0x2
	.byte	0x19
	.byte	0xf5
	.byte	0x16
	.long	0x1784
	.uleb128 0x2
	.byte	0x19
	.byte	0xf6
	.byte	0x16
	.long	0x1f98
	.uleb128 0x2
	.byte	0x19
	.byte	0xf8
	.byte	0x16
	.long	0x1fb4
	.uleb128 0x2
	.byte	0x19
	.byte	0xf9
	.byte	0x16
	.long	0x200a
	.uleb128 0x2
	.byte	0x19
	.byte	0xfa
	.byte	0x16
	.long	0x1fca
	.uleb128 0x2
	.byte	0x19
	.byte	0xfb
	.byte	0x16
	.long	0x1fea
	.uleb128 0x2
	.byte	0x19
	.byte	0xfc
	.byte	0x16
	.long	0x2025
	.uleb128 0x16
	.long	.LASF120
	.byte	0x1a
	.byte	0x30
	.byte	0xb
	.uleb128 0x2
	.byte	0x1b
	.byte	0x62
	.byte	0xb
	.long	0x2f3
	.uleb128 0x2
	.byte	0x1b
	.byte	0x63
	.byte	0xb
	.long	0x20d7
	.uleb128 0x2
	.byte	0x1b
	.byte	0x65
	.byte	0xb
	.long	0x20ed
	.uleb128 0x2
	.byte	0x1b
	.byte	0x66
	.byte	0xb
	.long	0x20ff
	.uleb128 0x2
	.byte	0x1b
	.byte	0x67
	.byte	0xb
	.long	0x2115
	.uleb128 0x2
	.byte	0x1b
	.byte	0x68
	.byte	0xb
	.long	0x212c
	.uleb128 0x2
	.byte	0x1b
	.byte	0x69
	.byte	0xb
	.long	0x2143
	.uleb128 0x2
	.byte	0x1b
	.byte	0x6a
	.byte	0xb
	.long	0x2159
	.uleb128 0x2
	.byte	0x1b
	.byte	0x6b
	.byte	0xb
	.long	0x2170
	.uleb128 0x2
	.byte	0x1b
	.byte	0x6c
	.byte	0xb
	.long	0x2191
	.uleb128 0x2
	.byte	0x1b
	.byte	0x6d
	.byte	0xb
	.long	0x21b2
	.uleb128 0x2
	.byte	0x1b
	.byte	0x71
	.byte	0xb
	.long	0x21ce
	.uleb128 0x2
	.byte	0x1b
	.byte	0x72
	.byte	0xb
	.long	0x21f4
	.uleb128 0x2
	.byte	0x1b
	.byte	0x74
	.byte	0xb
	.long	0x2215
	.uleb128 0x2
	.byte	0x1b
	.byte	0x75
	.byte	0xb
	.long	0x2236
	.uleb128 0x2
	.byte	0x1b
	.byte	0x76
	.byte	0xb
	.long	0x2257
	.uleb128 0x2
	.byte	0x1b
	.byte	0x78
	.byte	0xb
	.long	0x226e
	.uleb128 0x2
	.byte	0x1b
	.byte	0x79
	.byte	0xb
	.long	0x2285
	.uleb128 0x2
	.byte	0x1b
	.byte	0x7e
	.byte	0xb
	.long	0x2292
	.uleb128 0x2
	.byte	0x1b
	.byte	0x83
	.byte	0xb
	.long	0x22a4
	.uleb128 0x2
	.byte	0x1b
	.byte	0x84
	.byte	0xb
	.long	0x22ba
	.uleb128 0x2
	.byte	0x1b
	.byte	0x85
	.byte	0xb
	.long	0x22d5
	.uleb128 0x2
	.byte	0x1b
	.byte	0x87
	.byte	0xb
	.long	0x22e7
	.uleb128 0x2
	.byte	0x1b
	.byte	0x88
	.byte	0xb
	.long	0x22fe
	.uleb128 0x2
	.byte	0x1b
	.byte	0x8b
	.byte	0xb
	.long	0x2324
	.uleb128 0x2
	.byte	0x1b
	.byte	0x8d
	.byte	0xb
	.long	0x2330
	.uleb128 0x2
	.byte	0x1b
	.byte	0x8f
	.byte	0xb
	.long	0x2346
	.uleb128 0x37
	.long	.LASF121
	.byte	0xe
	.value	0x12e
	.byte	0x41
	.uleb128 0x59
	.string	"_V2"
	.byte	0x39
	.value	0x25c
	.byte	0x14
	.uleb128 0x39
	.long	.LASF128
	.long	0xd64
	.uleb128 0x5a
	.long	.LASF122
	.byte	0x1
	.byte	0x1c
	.value	0x272
	.byte	0xb
	.byte	0x1
	.long	0xd5e
	.uleb128 0x3a
	.long	.LASF122
	.value	0x276
	.long	.LASF124
	.long	0xcf5
	.long	0xcfb
	.uleb128 0x6
	.long	0x2362
	.byte	0
	.uleb128 0x3a
	.long	.LASF123
	.value	0x277
	.long	.LASF125
	.long	0xd0e
	.long	0xd19
	.uleb128 0x6
	.long	0x2362
	.uleb128 0x6
	.long	0x137
	.byte	0
	.uleb128 0x5b
	.long	.LASF122
	.byte	0x1c
	.value	0x27a
	.byte	0x7
	.long	.LASF126
	.byte	0x1
	.byte	0x1
	.long	0xd30
	.long	0xd3b
	.uleb128 0x6
	.long	0x2362
	.uleb128 0x1
	.long	0x236c
	.byte	0
	.uleb128 0x5c
	.long	.LASF71
	.byte	0x1c
	.value	0x27b
	.byte	0xd
	.long	.LASF127
	.long	0x2371
	.byte	0x1
	.byte	0x1
	.long	0xd52
	.uleb128 0x6
	.long	0x2362
	.uleb128 0x1
	.long	0x236c
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0xcd3
	.byte	0
	.uleb128 0x2
	.byte	0x1d
	.byte	0x52
	.byte	0xb
	.long	0x2382
	.uleb128 0x2
	.byte	0x1d
	.byte	0x53
	.byte	0xb
	.long	0x2376
	.uleb128 0x2
	.byte	0x1d
	.byte	0x54
	.byte	0xb
	.long	0xc7
	.uleb128 0x2
	.byte	0x1d
	.byte	0x5c
	.byte	0xb
	.long	0x2393
	.uleb128 0x2
	.byte	0x1d
	.byte	0x65
	.byte	0xb
	.long	0x23ae
	.uleb128 0x2
	.byte	0x1d
	.byte	0x68
	.byte	0xb
	.long	0x23c9
	.uleb128 0x2
	.byte	0x1d
	.byte	0x69
	.byte	0xb
	.long	0x23df
	.uleb128 0x39
	.long	.LASF129
	.long	0xe06
	.uleb128 0x3b
	.long	.LASF131
	.byte	0x1e
	.byte	0x5d
	.byte	0x7
	.long	.LASF133
	.long	0xd9c
	.long	0xdbd
	.long	0xdcd
	.uleb128 0x6
	.long	0x2bbd
	.uleb128 0x1
	.long	0x137
	.uleb128 0x1
	.long	0x2905
	.byte	0
	.uleb128 0x1c
	.long	.LASF134
	.byte	0x1e
	.value	0x18d
	.byte	0x7
	.long	.LASF144
	.byte	0x2
	.long	0xde3
	.long	0xdf3
	.uleb128 0x6
	.long	0x2bbd
	.uleb128 0x1
	.long	0x137
	.uleb128 0x1
	.long	0x2905
	.byte	0
	.uleb128 0x2f
	.long	.LASF135
	.long	0x12b
	.uleb128 0x3c
	.long	.LASF146
	.long	0x7f8
	.byte	0
	.uleb128 0x5d
	.long	.LASF392
	.byte	0x3
	.byte	0x4a
	.byte	0x19
	.long	0xcd3
	.uleb128 0x1d
	.string	"abs"
	.byte	0x1f
	.byte	0x4f
	.long	.LASF136
	.long	0x4a
	.long	0xe2b
	.uleb128 0x1
	.long	0x4a
	.byte	0
	.uleb128 0x1d
	.string	"abs"
	.byte	0x1f
	.byte	0x4b
	.long	.LASF137
	.long	0x3c
	.long	0xe44
	.uleb128 0x1
	.long	0x3c
	.byte	0
	.uleb128 0x1d
	.string	"abs"
	.byte	0x1f
	.byte	0x47
	.long	.LASF138
	.long	0x43
	.long	0xe5d
	.uleb128 0x1
	.long	0x43
	.byte	0
	.uleb128 0x1d
	.string	"abs"
	.byte	0x1f
	.byte	0x3d
	.long	.LASF139
	.long	0x17dd
	.long	0xe76
	.uleb128 0x1
	.long	0x17dd
	.byte	0
	.uleb128 0x1d
	.string	"abs"
	.byte	0x1f
	.byte	0x38
	.long	.LASF140
	.long	0x14d2
	.long	0xe8f
	.uleb128 0x1
	.long	0x14d2
	.byte	0
	.uleb128 0x1d
	.string	"div"
	.byte	0x19
	.byte	0xb1
	.long	.LASF141
	.long	0x1cda
	.long	0xead
	.uleb128 0x1
	.long	0x14d2
	.uleb128 0x1
	.long	0x14d2
	.byte	0
	.uleb128 0x5e
	.long	.LASF506
	.uleb128 0x5f
	.long	.LASF142
	.byte	0x20
	.value	0x11a
	.byte	0x7
	.long	.LASF507
	.byte	0x1
	.long	0xead
	.byte	0x1
	.long	0xecd
	.long	0xed8
	.uleb128 0x6
	.long	0x2bf4
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.long	.LASF143
	.byte	0x20
	.value	0x1cc
	.byte	0x7
	.long	.LASF145
	.byte	0x2
	.long	0xeee
	.long	0xef4
	.uleb128 0x6
	.long	0x2bf4
	.byte	0
	.uleb128 0x2f
	.long	.LASF135
	.long	0x12b
	.uleb128 0x3c
	.long	.LASF146
	.long	0x7f8
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF147
	.byte	0x21
	.value	0x11d
	.byte	0xf
	.long	0xc7
	.long	0xf1f
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x5
	.long	.LASF148
	.byte	0x21
	.value	0x2e8
	.byte	0xf
	.long	0xc7
	.long	0xf36
	.uleb128 0x1
	.long	0xf36
	.byte	0
	.uleb128 0x7
	.long	0x160
	.uleb128 0x5
	.long	.LASF149
	.byte	0x21
	.value	0x305
	.byte	0x11
	.long	0xf5c
	.long	0xf5c
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0x137
	.uleb128 0x1
	.long	0xf36
	.byte	0
	.uleb128 0x7
	.long	0xf61
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.long	.LASF150
	.uleb128 0xc
	.long	0xf61
	.uleb128 0x5
	.long	.LASF151
	.byte	0x21
	.value	0x2f6
	.byte	0xf
	.long	0xc7
	.long	0xf89
	.uleb128 0x1
	.long	0xf61
	.uleb128 0x1
	.long	0xf36
	.byte	0
	.uleb128 0x5
	.long	.LASF152
	.byte	0x21
	.value	0x30c
	.byte	0xc
	.long	0x137
	.long	0xfa5
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xf36
	.byte	0
	.uleb128 0x7
	.long	0xf68
	.uleb128 0x5
	.long	.LASF153
	.byte	0x21
	.value	0x24c
	.byte	0xc
	.long	0x137
	.long	0xfc6
	.uleb128 0x1
	.long	0xf36
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x5
	.long	.LASF154
	.byte	0x21
	.value	0x253
	.byte	0xc
	.long	0x137
	.long	0xfe3
	.uleb128 0x1
	.long	0xf36
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x9
	.byte	0
	.uleb128 0xe
	.long	.LASF155
	.byte	0x21
	.value	0x291
	.byte	0xc
	.long	.LASF156
	.long	0x137
	.long	0x1004
	.uleb128 0x1
	.long	0xf36
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x9
	.byte	0
	.uleb128 0x5
	.long	.LASF157
	.byte	0x21
	.value	0x2e9
	.byte	0xf
	.long	0xc7
	.long	0x101b
	.uleb128 0x1
	.long	0xf36
	.byte	0
	.uleb128 0x30
	.long	.LASF312
	.byte	0x21
	.value	0x2ef
	.byte	0xf
	.long	0xc7
	.uleb128 0x5
	.long	.LASF158
	.byte	0x21
	.value	0x134
	.byte	0xf
	.long	0x51
	.long	0x1049
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x1049
	.byte	0
	.uleb128 0x7
	.long	0x14f
	.uleb128 0x5
	.long	.LASF159
	.byte	0x21
	.value	0x129
	.byte	0xf
	.long	0x51
	.long	0x1074
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x1049
	.byte	0
	.uleb128 0x5
	.long	.LASF160
	.byte	0x21
	.value	0x125
	.byte	0xc
	.long	0x137
	.long	0x108b
	.uleb128 0x1
	.long	0x108b
	.byte	0
	.uleb128 0x7
	.long	0x15b
	.uleb128 0x5
	.long	.LASF161
	.byte	0x21
	.value	0x152
	.byte	0xf
	.long	0x51
	.long	0x10b6
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0x10b6
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x1049
	.byte	0
	.uleb128 0x7
	.long	0x306
	.uleb128 0x5
	.long	.LASF162
	.byte	0x21
	.value	0x2f7
	.byte	0xf
	.long	0xc7
	.long	0x10d7
	.uleb128 0x1
	.long	0xf61
	.uleb128 0x1
	.long	0xf36
	.byte	0
	.uleb128 0x5
	.long	.LASF163
	.byte	0x21
	.value	0x2fd
	.byte	0xf
	.long	0xc7
	.long	0x10ee
	.uleb128 0x1
	.long	0xf61
	.byte	0
	.uleb128 0x5
	.long	.LASF164
	.byte	0x21
	.value	0x25d
	.byte	0xc
	.long	0x137
	.long	0x1110
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x9
	.byte	0
	.uleb128 0xe
	.long	.LASF165
	.byte	0x21
	.value	0x298
	.byte	0xc
	.long	.LASF166
	.long	0x137
	.long	0x1131
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x9
	.byte	0
	.uleb128 0x5
	.long	.LASF167
	.byte	0x21
	.value	0x314
	.byte	0xf
	.long	0xc7
	.long	0x114d
	.uleb128 0x1
	.long	0xc7
	.uleb128 0x1
	.long	0xf36
	.byte	0
	.uleb128 0x5
	.long	.LASF168
	.byte	0x21
	.value	0x265
	.byte	0xc
	.long	0x137
	.long	0x116e
	.uleb128 0x1
	.long	0xf36
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x116e
	.byte	0
	.uleb128 0x7
	.long	0x89
	.uleb128 0xe
	.long	.LASF169
	.byte	0x21
	.value	0x2c7
	.byte	0xc
	.long	.LASF170
	.long	0x137
	.long	0x1198
	.uleb128 0x1
	.long	0xf36
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x116e
	.byte	0
	.uleb128 0x5
	.long	.LASF171
	.byte	0x21
	.value	0x272
	.byte	0xc
	.long	0x137
	.long	0x11be
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x116e
	.byte	0
	.uleb128 0xe
	.long	.LASF172
	.byte	0x21
	.value	0x2ce
	.byte	0xc
	.long	.LASF173
	.long	0x137
	.long	0x11e3
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x116e
	.byte	0
	.uleb128 0x5
	.long	.LASF174
	.byte	0x21
	.value	0x26d
	.byte	0xc
	.long	0x137
	.long	0x11ff
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x116e
	.byte	0
	.uleb128 0xe
	.long	.LASF175
	.byte	0x21
	.value	0x2cb
	.byte	0xc
	.long	.LASF176
	.long	0x137
	.long	0x121f
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x116e
	.byte	0
	.uleb128 0x5
	.long	.LASF177
	.byte	0x21
	.value	0x12e
	.byte	0xf
	.long	0x51
	.long	0x1240
	.uleb128 0x1
	.long	0x1240
	.uleb128 0x1
	.long	0xf61
	.uleb128 0x1
	.long	0x1049
	.byte	0
	.uleb128 0x7
	.long	0x12b
	.uleb128 0x8
	.long	.LASF178
	.byte	0x21
	.byte	0x61
	.byte	0x11
	.long	0xf5c
	.long	0x1260
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xfa5
	.byte	0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x21
	.byte	0x6a
	.byte	0xc
	.long	0x137
	.long	0x127b
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xfa5
	.byte	0
	.uleb128 0x8
	.long	.LASF180
	.byte	0x21
	.byte	0x83
	.byte	0xc
	.long	0x137
	.long	0x1296
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xfa5
	.byte	0
	.uleb128 0x8
	.long	.LASF181
	.byte	0x21
	.byte	0x57
	.byte	0x11
	.long	0xf5c
	.long	0x12b1
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xfa5
	.byte	0
	.uleb128 0x8
	.long	.LASF182
	.byte	0x21
	.byte	0xbc
	.byte	0xf
	.long	0x51
	.long	0x12cc
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xfa5
	.byte	0
	.uleb128 0x5
	.long	.LASF183
	.byte	0x21
	.value	0x354
	.byte	0xf
	.long	0x51
	.long	0x12f2
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x12f2
	.byte	0
	.uleb128 0x7
	.long	0x1393
	.uleb128 0x60
	.string	"tm"
	.byte	0x38
	.byte	0x22
	.byte	0x7
	.byte	0x8
	.long	0x1393
	.uleb128 0x3
	.long	.LASF184
	.byte	0x22
	.byte	0x9
	.byte	0x7
	.long	0x137
	.byte	0
	.uleb128 0x3
	.long	.LASF185
	.byte	0x22
	.byte	0xa
	.byte	0x7
	.long	0x137
	.byte	0x4
	.uleb128 0x3
	.long	.LASF186
	.byte	0x22
	.byte	0xb
	.byte	0x7
	.long	0x137
	.byte	0x8
	.uleb128 0x3
	.long	.LASF187
	.byte	0x22
	.byte	0xc
	.byte	0x7
	.long	0x137
	.byte	0xc
	.uleb128 0x3
	.long	.LASF188
	.byte	0x22
	.byte	0xd
	.byte	0x7
	.long	0x137
	.byte	0x10
	.uleb128 0x3
	.long	.LASF189
	.byte	0x22
	.byte	0xe
	.byte	0x7
	.long	0x137
	.byte	0x14
	.uleb128 0x3
	.long	.LASF190
	.byte	0x22
	.byte	0xf
	.byte	0x7
	.long	0x137
	.byte	0x18
	.uleb128 0x3
	.long	.LASF191
	.byte	0x22
	.byte	0x10
	.byte	0x7
	.long	0x137
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF192
	.byte	0x22
	.byte	0x11
	.byte	0x7
	.long	0x137
	.byte	0x20
	.uleb128 0x3
	.long	.LASF193
	.byte	0x22
	.byte	0x14
	.byte	0xc
	.long	0x14d2
	.byte	0x28
	.uleb128 0x3
	.long	.LASF194
	.byte	0x22
	.byte	0x15
	.byte	0xf
	.long	0x306
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.long	0x12f7
	.uleb128 0x8
	.long	.LASF195
	.byte	0x21
	.byte	0xdf
	.byte	0xf
	.long	0x51
	.long	0x13ae
	.uleb128 0x1
	.long	0xfa5
	.byte	0
	.uleb128 0x8
	.long	.LASF196
	.byte	0x21
	.byte	0x65
	.byte	0x11
	.long	0xf5c
	.long	0x13ce
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x8
	.long	.LASF197
	.byte	0x21
	.byte	0x6d
	.byte	0xc
	.long	0x137
	.long	0x13ee
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x8
	.long	.LASF198
	.byte	0x21
	.byte	0x5c
	.byte	0x11
	.long	0xf5c
	.long	0x140e
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x5
	.long	.LASF199
	.byte	0x21
	.value	0x158
	.byte	0xf
	.long	0x51
	.long	0x1434
	.uleb128 0x1
	.long	0x1240
	.uleb128 0x1
	.long	0x1434
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x1049
	.byte	0
	.uleb128 0x7
	.long	0xfa5
	.uleb128 0x8
	.long	.LASF200
	.byte	0x21
	.byte	0xc0
	.byte	0xf
	.long	0x51
	.long	0x1454
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xfa5
	.byte	0
	.uleb128 0x5
	.long	.LASF201
	.byte	0x21
	.value	0x17a
	.byte	0xf
	.long	0x43
	.long	0x1470
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x1470
	.byte	0
	.uleb128 0x7
	.long	0xf5c
	.uleb128 0x5
	.long	.LASF202
	.byte	0x21
	.value	0x17f
	.byte	0xe
	.long	0x3c
	.long	0x1491
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x1470
	.byte	0
	.uleb128 0x8
	.long	.LASF203
	.byte	0x21
	.byte	0xda
	.byte	0x11
	.long	0xf5c
	.long	0x14b1
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x1470
	.byte	0
	.uleb128 0x5
	.long	.LASF204
	.byte	0x21
	.value	0x1ad
	.byte	0x11
	.long	0x14d2
	.long	0x14d2
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x1470
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF205
	.uleb128 0x5
	.long	.LASF206
	.byte	0x21
	.value	0x1b2
	.byte	0x1a
	.long	0x5d
	.long	0x14fa
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x1470
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x8
	.long	.LASF207
	.byte	0x21
	.byte	0x87
	.byte	0xf
	.long	0x51
	.long	0x151a
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x5
	.long	.LASF208
	.byte	0x21
	.value	0x121
	.byte	0xc
	.long	0x137
	.long	0x1531
	.uleb128 0x1
	.long	0xc7
	.byte	0
	.uleb128 0x5
	.long	.LASF209
	.byte	0x21
	.value	0x103
	.byte	0xc
	.long	0x137
	.long	0x1552
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x5
	.long	.LASF210
	.byte	0x21
	.value	0x107
	.byte	0x11
	.long	0xf5c
	.long	0x1573
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x5
	.long	.LASF211
	.byte	0x21
	.value	0x10c
	.byte	0x11
	.long	0xf5c
	.long	0x1594
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x5
	.long	.LASF212
	.byte	0x21
	.value	0x110
	.byte	0x11
	.long	0xf5c
	.long	0x15b5
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xf61
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x5
	.long	.LASF213
	.byte	0x21
	.value	0x25a
	.byte	0xc
	.long	0x137
	.long	0x15cd
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x9
	.byte	0
	.uleb128 0xe
	.long	.LASF214
	.byte	0x21
	.value	0x295
	.byte	0xc
	.long	.LASF215
	.long	0x137
	.long	0x15e9
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x9
	.byte	0
	.uleb128 0x13
	.long	.LASF216
	.byte	0xa2
	.byte	0x1d
	.long	.LASF216
	.long	0xfa5
	.long	0x1607
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xf61
	.byte	0
	.uleb128 0x13
	.long	.LASF216
	.byte	0xa0
	.byte	0x17
	.long	.LASF216
	.long	0xf5c
	.long	0x1625
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xf61
	.byte	0
	.uleb128 0x13
	.long	.LASF217
	.byte	0xc6
	.byte	0x1d
	.long	.LASF217
	.long	0xfa5
	.long	0x1643
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xfa5
	.byte	0
	.uleb128 0x13
	.long	.LASF217
	.byte	0xc4
	.byte	0x17
	.long	.LASF217
	.long	0xf5c
	.long	0x1661
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xfa5
	.byte	0
	.uleb128 0x13
	.long	.LASF218
	.byte	0xac
	.byte	0x1d
	.long	.LASF218
	.long	0xfa5
	.long	0x167f
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xf61
	.byte	0
	.uleb128 0x13
	.long	.LASF218
	.byte	0xaa
	.byte	0x17
	.long	.LASF218
	.long	0xf5c
	.long	0x169d
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xf61
	.byte	0
	.uleb128 0x13
	.long	.LASF219
	.byte	0xd1
	.byte	0x1d
	.long	.LASF219
	.long	0xfa5
	.long	0x16bb
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xfa5
	.byte	0
	.uleb128 0x13
	.long	.LASF219
	.byte	0xcf
	.byte	0x17
	.long	.LASF219
	.long	0xf5c
	.long	0x16d9
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xfa5
	.byte	0
	.uleb128 0x13
	.long	.LASF220
	.byte	0xfa
	.byte	0x1d
	.long	.LASF220
	.long	0xfa5
	.long	0x16fc
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0xf61
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x13
	.long	.LASF220
	.byte	0xf8
	.byte	0x17
	.long	.LASF220
	.long	0xf5c
	.long	0x171f
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0xf61
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x61
	.long	.LASF221
	.byte	0xe
	.value	0x130
	.byte	0xb
	.long	0x17a0
	.uleb128 0x2
	.byte	0xd
	.byte	0xfb
	.byte	0xb
	.long	0x17a0
	.uleb128 0x10
	.value	0x104
	.byte	0xb
	.long	0x17bc
	.uleb128 0x10
	.value	0x105
	.byte	0xb
	.long	0x17e4
	.uleb128 0x16
	.long	.LASF222
	.byte	0x23
	.byte	0x25
	.byte	0xb
	.uleb128 0x2
	.byte	0x19
	.byte	0xc8
	.byte	0xb
	.long	0x1d0d
	.uleb128 0x2
	.byte	0x19
	.byte	0xd8
	.byte	0xb
	.long	0x1f98
	.uleb128 0x2
	.byte	0x19
	.byte	0xe3
	.byte	0xb
	.long	0x1fb4
	.uleb128 0x2
	.byte	0x19
	.byte	0xe4
	.byte	0xb
	.long	0x1fca
	.uleb128 0x2
	.byte	0x19
	.byte	0xe5
	.byte	0xb
	.long	0x1fea
	.uleb128 0x2
	.byte	0x19
	.byte	0xe7
	.byte	0xb
	.long	0x200a
	.uleb128 0x2
	.byte	0x19
	.byte	0xe8
	.byte	0xb
	.long	0x2025
	.uleb128 0x62
	.string	"div"
	.byte	0x19
	.byte	0xd5
	.byte	0x3
	.long	.LASF508
	.long	0x1d0d
	.uleb128 0x1
	.long	0x17dd
	.uleb128 0x1
	.long	0x17dd
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF223
	.byte	0x21
	.value	0x181
	.byte	0x14
	.long	0x4a
	.long	0x17bc
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x1470
	.byte	0
	.uleb128 0x5
	.long	.LASF224
	.byte	0x21
	.value	0x1ba
	.byte	0x16
	.long	0x17dd
	.long	0x17dd
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x1470
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF225
	.uleb128 0x5
	.long	.LASF226
	.byte	0x21
	.value	0x1c1
	.byte	0x1f
	.long	0x1805
	.long	0x1805
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x1470
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF227
	.uleb128 0x63
	.long	.LASF509
	.uleb128 0xa
	.byte	0x1
	.byte	0x2
	.long	.LASF228
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF229
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF230
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.long	.LASF231
	.uleb128 0xa
	.byte	0x1
	.byte	0x7
	.long	.LASF232
	.uleb128 0xa
	.byte	0x2
	.byte	0x10
	.long	.LASF233
	.uleb128 0xa
	.byte	0x4
	.byte	0x10
	.long	.LASF234
	.uleb128 0x7
	.long	0x58b
	.uleb128 0x7
	.long	0x74c
	.uleb128 0x14
	.long	0x74c
	.uleb128 0x64
	.byte	0x8
	.long	0x58b
	.uleb128 0x14
	.long	0x58b
	.uleb128 0x7
	.long	0x78a
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.long	.LASF235
	.uleb128 0x2d
	.long	.LASF236
	.byte	0x24
	.byte	0x27
	.byte	0xb
	.long	0x187d
	.uleb128 0x65
	.byte	0x15
	.byte	0x3a
	.byte	0x18
	.long	0x7f0
	.byte	0
	.uleb128 0x14
	.long	0x822
	.uleb128 0x14
	.long	0x82f
	.uleb128 0x7
	.long	0x82f
	.uleb128 0x7
	.long	0x822
	.uleb128 0x14
	.long	0x96a
	.uleb128 0x4
	.long	.LASF237
	.byte	0x25
	.byte	0x25
	.byte	0x15
	.long	0x181f
	.uleb128 0x4
	.long	.LASF238
	.byte	0x25
	.byte	0x26
	.byte	0x17
	.long	0x1818
	.uleb128 0x4
	.long	.LASF239
	.byte	0x25
	.byte	0x27
	.byte	0x1a
	.long	0x1826
	.uleb128 0x4
	.long	.LASF240
	.byte	0x25
	.byte	0x28
	.byte	0x1c
	.long	0x2ff
	.uleb128 0x4
	.long	.LASF241
	.byte	0x25
	.byte	0x29
	.byte	0x14
	.long	0x137
	.uleb128 0xc
	.long	0x18c6
	.uleb128 0x4
	.long	.LASF242
	.byte	0x25
	.byte	0x2a
	.byte	0x16
	.long	0xbe
	.uleb128 0x4
	.long	.LASF243
	.byte	0x25
	.byte	0x2c
	.byte	0x19
	.long	0x14d2
	.uleb128 0x4
	.long	.LASF244
	.byte	0x25
	.byte	0x2d
	.byte	0x1b
	.long	0x5d
	.uleb128 0x4
	.long	.LASF245
	.byte	0x25
	.byte	0x34
	.byte	0x12
	.long	0x1896
	.uleb128 0x4
	.long	.LASF246
	.byte	0x25
	.byte	0x35
	.byte	0x13
	.long	0x18a2
	.uleb128 0x4
	.long	.LASF247
	.byte	0x25
	.byte	0x36
	.byte	0x13
	.long	0x18ae
	.uleb128 0x4
	.long	.LASF248
	.byte	0x25
	.byte	0x37
	.byte	0x14
	.long	0x18ba
	.uleb128 0x4
	.long	.LASF249
	.byte	0x25
	.byte	0x38
	.byte	0x13
	.long	0x18c6
	.uleb128 0x4
	.long	.LASF250
	.byte	0x25
	.byte	0x39
	.byte	0x14
	.long	0x18d7
	.uleb128 0x4
	.long	.LASF251
	.byte	0x25
	.byte	0x3a
	.byte	0x13
	.long	0x18e3
	.uleb128 0x4
	.long	.LASF252
	.byte	0x25
	.byte	0x3b
	.byte	0x14
	.long	0x18ef
	.uleb128 0x4
	.long	.LASF253
	.byte	0x25
	.byte	0x48
	.byte	0x12
	.long	0x14d2
	.uleb128 0x4
	.long	.LASF254
	.byte	0x25
	.byte	0x49
	.byte	0x1b
	.long	0x5d
	.uleb128 0x4
	.long	.LASF255
	.byte	0x25
	.byte	0x98
	.byte	0x12
	.long	0x14d2
	.uleb128 0x4
	.long	.LASF256
	.byte	0x25
	.byte	0x99
	.byte	0x12
	.long	0x14d2
	.uleb128 0x4
	.long	.LASF257
	.byte	0x25
	.byte	0xa0
	.byte	0x12
	.long	0x14d2
	.uleb128 0x4
	.long	.LASF258
	.byte	0x26
	.byte	0x18
	.byte	0x12
	.long	0x1896
	.uleb128 0x4
	.long	.LASF259
	.byte	0x26
	.byte	0x19
	.byte	0x13
	.long	0x18ae
	.uleb128 0x4
	.long	.LASF260
	.byte	0x26
	.byte	0x1a
	.byte	0x13
	.long	0x18c6
	.uleb128 0x4
	.long	.LASF261
	.byte	0x26
	.byte	0x1b
	.byte	0x13
	.long	0x18e3
	.uleb128 0x4
	.long	.LASF262
	.byte	0x27
	.byte	0x18
	.byte	0x13
	.long	0x18a2
	.uleb128 0x4
	.long	.LASF263
	.byte	0x27
	.byte	0x19
	.byte	0x14
	.long	0x18ba
	.uleb128 0x4
	.long	.LASF264
	.byte	0x27
	.byte	0x1a
	.byte	0x14
	.long	0x18d7
	.uleb128 0x4
	.long	.LASF265
	.byte	0x27
	.byte	0x1b
	.byte	0x14
	.long	0x18ef
	.uleb128 0x4
	.long	.LASF266
	.byte	0x28
	.byte	0x2b
	.byte	0x18
	.long	0x18fb
	.uleb128 0x4
	.long	.LASF267
	.byte	0x28
	.byte	0x2c
	.byte	0x19
	.long	0x1913
	.uleb128 0x4
	.long	.LASF268
	.byte	0x28
	.byte	0x2d
	.byte	0x19
	.long	0x192b
	.uleb128 0x4
	.long	.LASF269
	.byte	0x28
	.byte	0x2e
	.byte	0x19
	.long	0x1943
	.uleb128 0x4
	.long	.LASF270
	.byte	0x28
	.byte	0x31
	.byte	0x19
	.long	0x1907
	.uleb128 0x4
	.long	.LASF271
	.byte	0x28
	.byte	0x32
	.byte	0x1a
	.long	0x191f
	.uleb128 0x4
	.long	.LASF272
	.byte	0x28
	.byte	0x33
	.byte	0x1a
	.long	0x1937
	.uleb128 0x4
	.long	.LASF273
	.byte	0x28
	.byte	0x34
	.byte	0x1a
	.long	0x194f
	.uleb128 0x4
	.long	.LASF274
	.byte	0x28
	.byte	0x3a
	.byte	0x15
	.long	0x181f
	.uleb128 0x4
	.long	.LASF275
	.byte	0x28
	.byte	0x3c
	.byte	0x12
	.long	0x14d2
	.uleb128 0x4
	.long	.LASF276
	.byte	0x28
	.byte	0x3d
	.byte	0x12
	.long	0x14d2
	.uleb128 0x4
	.long	.LASF277
	.byte	0x28
	.byte	0x3e
	.byte	0x12
	.long	0x14d2
	.uleb128 0x4
	.long	.LASF278
	.byte	0x28
	.byte	0x47
	.byte	0x17
	.long	0x1818
	.uleb128 0x4
	.long	.LASF279
	.byte	0x28
	.byte	0x49
	.byte	0x1b
	.long	0x5d
	.uleb128 0x4
	.long	.LASF280
	.byte	0x28
	.byte	0x4a
	.byte	0x1b
	.long	0x5d
	.uleb128 0x4
	.long	.LASF281
	.byte	0x28
	.byte	0x4b
	.byte	0x1b
	.long	0x5d
	.uleb128 0x4
	.long	.LASF282
	.byte	0x28
	.byte	0x57
	.byte	0x12
	.long	0x14d2
	.uleb128 0x4
	.long	.LASF283
	.byte	0x28
	.byte	0x5a
	.byte	0x1b
	.long	0x5d
	.uleb128 0x4
	.long	.LASF284
	.byte	0x28
	.byte	0x65
	.byte	0x14
	.long	0x195b
	.uleb128 0x4
	.long	.LASF285
	.byte	0x28
	.byte	0x66
	.byte	0x15
	.long	0x1967
	.uleb128 0x2c
	.long	.LASF286
	.byte	0x60
	.byte	0x29
	.byte	0x33
	.byte	0x8
	.long	0x1c2d
	.uleb128 0x3
	.long	.LASF287
	.byte	0x29
	.byte	0x37
	.byte	0x9
	.long	0x1240
	.byte	0
	.uleb128 0x3
	.long	.LASF288
	.byte	0x29
	.byte	0x38
	.byte	0x9
	.long	0x1240
	.byte	0x8
	.uleb128 0x3
	.long	.LASF289
	.byte	0x29
	.byte	0x3e
	.byte	0x9
	.long	0x1240
	.byte	0x10
	.uleb128 0x3
	.long	.LASF290
	.byte	0x29
	.byte	0x44
	.byte	0x9
	.long	0x1240
	.byte	0x18
	.uleb128 0x3
	.long	.LASF291
	.byte	0x29
	.byte	0x45
	.byte	0x9
	.long	0x1240
	.byte	0x20
	.uleb128 0x3
	.long	.LASF292
	.byte	0x29
	.byte	0x46
	.byte	0x9
	.long	0x1240
	.byte	0x28
	.uleb128 0x3
	.long	.LASF293
	.byte	0x29
	.byte	0x47
	.byte	0x9
	.long	0x1240
	.byte	0x30
	.uleb128 0x3
	.long	.LASF294
	.byte	0x29
	.byte	0x48
	.byte	0x9
	.long	0x1240
	.byte	0x38
	.uleb128 0x3
	.long	.LASF295
	.byte	0x29
	.byte	0x49
	.byte	0x9
	.long	0x1240
	.byte	0x40
	.uleb128 0x3
	.long	.LASF296
	.byte	0x29
	.byte	0x4a
	.byte	0x9
	.long	0x1240
	.byte	0x48
	.uleb128 0x3
	.long	.LASF297
	.byte	0x29
	.byte	0x4b
	.byte	0x8
	.long	0x12b
	.byte	0x50
	.uleb128 0x3
	.long	.LASF298
	.byte	0x29
	.byte	0x4c
	.byte	0x8
	.long	0x12b
	.byte	0x51
	.uleb128 0x3
	.long	.LASF299
	.byte	0x29
	.byte	0x4e
	.byte	0x8
	.long	0x12b
	.byte	0x52
	.uleb128 0x3
	.long	.LASF300
	.byte	0x29
	.byte	0x50
	.byte	0x8
	.long	0x12b
	.byte	0x53
	.uleb128 0x3
	.long	.LASF301
	.byte	0x29
	.byte	0x52
	.byte	0x8
	.long	0x12b
	.byte	0x54
	.uleb128 0x3
	.long	.LASF302
	.byte	0x29
	.byte	0x54
	.byte	0x8
	.long	0x12b
	.byte	0x55
	.uleb128 0x3
	.long	.LASF303
	.byte	0x29
	.byte	0x5b
	.byte	0x8
	.long	0x12b
	.byte	0x56
	.uleb128 0x3
	.long	.LASF304
	.byte	0x29
	.byte	0x5c
	.byte	0x8
	.long	0x12b
	.byte	0x57
	.uleb128 0x3
	.long	.LASF305
	.byte	0x29
	.byte	0x5f
	.byte	0x8
	.long	0x12b
	.byte	0x58
	.uleb128 0x3
	.long	.LASF306
	.byte	0x29
	.byte	0x61
	.byte	0x8
	.long	0x12b
	.byte	0x59
	.uleb128 0x3
	.long	.LASF307
	.byte	0x29
	.byte	0x63
	.byte	0x8
	.long	0x12b
	.byte	0x5a
	.uleb128 0x3
	.long	.LASF308
	.byte	0x29
	.byte	0x65
	.byte	0x8
	.long	0x12b
	.byte	0x5b
	.uleb128 0x3
	.long	.LASF309
	.byte	0x29
	.byte	0x6c
	.byte	0x8
	.long	0x12b
	.byte	0x5c
	.uleb128 0x3
	.long	.LASF310
	.byte	0x29
	.byte	0x6d
	.byte	0x8
	.long	0x12b
	.byte	0x5d
	.byte	0
	.uleb128 0x8
	.long	.LASF311
	.byte	0x29
	.byte	0x7a
	.byte	0xe
	.long	0x1240
	.long	0x1c48
	.uleb128 0x1
	.long	0x137
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x31
	.long	.LASF313
	.byte	0x29
	.byte	0x7d
	.byte	0x16
	.long	0x1c54
	.uleb128 0x7
	.long	0x1ae7
	.uleb128 0x4
	.long	.LASF314
	.byte	0x2a
	.byte	0xa
	.byte	0x12
	.long	0x198b
	.uleb128 0xc
	.long	0x1c59
	.uleb128 0x66
	.long	0x1c75
	.uleb128 0x1
	.long	0xc5
	.byte	0
	.uleb128 0x7
	.long	0x1c6a
	.uleb128 0x7
	.long	0x1c7f
	.uleb128 0x67
	.uleb128 0x29
	.byte	0x8
	.byte	0x2b
	.byte	0x3c
	.byte	0x3
	.long	.LASF316
	.long	0x1ca7
	.uleb128 0x3
	.long	.LASF317
	.byte	0x2b
	.byte	0x3d
	.byte	0x9
	.long	0x137
	.byte	0
	.uleb128 0x32
	.string	"rem"
	.byte	0x3e
	.byte	0x9
	.long	0x137
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF318
	.byte	0x2b
	.byte	0x3f
	.byte	0x5
	.long	0x1c80
	.uleb128 0x29
	.byte	0x10
	.byte	0x2b
	.byte	0x44
	.byte	0x3
	.long	.LASF319
	.long	0x1cda
	.uleb128 0x3
	.long	.LASF317
	.byte	0x2b
	.byte	0x45
	.byte	0xe
	.long	0x14d2
	.byte	0
	.uleb128 0x32
	.string	"rem"
	.byte	0x46
	.byte	0xe
	.long	0x14d2
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF320
	.byte	0x2b
	.byte	0x47
	.byte	0x5
	.long	0x1cb3
	.uleb128 0x29
	.byte	0x10
	.byte	0x2b
	.byte	0x4e
	.byte	0x3
	.long	.LASF321
	.long	0x1d0d
	.uleb128 0x3
	.long	.LASF317
	.byte	0x2b
	.byte	0x4f
	.byte	0x13
	.long	0x17dd
	.byte	0
	.uleb128 0x32
	.string	"rem"
	.byte	0x50
	.byte	0x13
	.long	0x17dd
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF322
	.byte	0x2b
	.byte	0x51
	.byte	0x5
	.long	0x1ce6
	.uleb128 0x24
	.long	.LASF323
	.byte	0x2b
	.value	0x330
	.byte	0xf
	.long	0x1d26
	.uleb128 0x7
	.long	0x1d2b
	.uleb128 0x68
	.long	0x137
	.long	0x1d3f
	.uleb128 0x1
	.long	0x1c7a
	.uleb128 0x1
	.long	0x1c7a
	.byte	0
	.uleb128 0x5
	.long	.LASF324
	.byte	0x2b
	.value	0x25a
	.byte	0xc
	.long	0x137
	.long	0x1d56
	.uleb128 0x1
	.long	0x1d56
	.byte	0
	.uleb128 0x7
	.long	0x1d5b
	.uleb128 0x69
	.uleb128 0xe
	.long	.LASF325
	.byte	0x2b
	.value	0x25f
	.byte	0x12
	.long	.LASF325
	.long	0x137
	.long	0x1d77
	.uleb128 0x1
	.long	0x1d56
	.byte	0
	.uleb128 0x8
	.long	.LASF326
	.byte	0x2b
	.byte	0x66
	.byte	0xf
	.long	0x43
	.long	0x1d8d
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x8
	.long	.LASF327
	.byte	0x2b
	.byte	0x69
	.byte	0xc
	.long	0x137
	.long	0x1da3
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x8
	.long	.LASF328
	.byte	0x2b
	.byte	0x6c
	.byte	0x11
	.long	0x14d2
	.long	0x1db9
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x5
	.long	.LASF329
	.byte	0x2b
	.value	0x33c
	.byte	0xe
	.long	0xc5
	.long	0x1de4
	.uleb128 0x1
	.long	0x1c7a
	.uleb128 0x1
	.long	0x1c7a
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x1d19
	.byte	0
	.uleb128 0x6a
	.string	"div"
	.byte	0x2b
	.value	0x35c
	.byte	0xe
	.long	0x1ca7
	.long	0x1e00
	.uleb128 0x1
	.long	0x137
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x5
	.long	.LASF330
	.byte	0x2b
	.value	0x281
	.byte	0xe
	.long	0x1240
	.long	0x1e17
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x5
	.long	.LASF331
	.byte	0x2b
	.value	0x35e
	.byte	0xf
	.long	0x1cda
	.long	0x1e33
	.uleb128 0x1
	.long	0x14d2
	.uleb128 0x1
	.long	0x14d2
	.byte	0
	.uleb128 0x5
	.long	.LASF332
	.byte	0x2b
	.value	0x3a2
	.byte	0xc
	.long	0x137
	.long	0x1e4f
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x5
	.long	.LASF333
	.byte	0x2b
	.value	0x3ad
	.byte	0xf
	.long	0x51
	.long	0x1e70
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x5
	.long	.LASF334
	.byte	0x2b
	.value	0x3a5
	.byte	0xc
	.long	0x137
	.long	0x1e91
	.uleb128 0x1
	.long	0xf5c
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x1e
	.long	.LASF337
	.byte	0x2b
	.value	0x346
	.long	0x1eb2
	.uleb128 0x1
	.long	0xc5
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x1d19
	.byte	0
	.uleb128 0x6b
	.long	.LASF335
	.byte	0x2b
	.value	0x276
	.byte	0xd
	.long	0x1ec5
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x30
	.long	.LASF336
	.byte	0x2b
	.value	0x1c6
	.byte	0xc
	.long	0x137
	.uleb128 0x1e
	.long	.LASF338
	.byte	0x2b
	.value	0x1c8
	.long	0x1ee4
	.uleb128 0x1
	.long	0xbe
	.byte	0
	.uleb128 0x8
	.long	.LASF339
	.byte	0x2b
	.byte	0x76
	.byte	0xf
	.long	0x43
	.long	0x1eff
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x1eff
	.byte	0
	.uleb128 0x7
	.long	0x1240
	.uleb128 0x8
	.long	.LASF340
	.byte	0x2b
	.byte	0xb1
	.byte	0x11
	.long	0x14d2
	.long	0x1f24
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x1eff
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x8
	.long	.LASF341
	.byte	0x2b
	.byte	0xb5
	.byte	0x1a
	.long	0x5d
	.long	0x1f44
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x1eff
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x5
	.long	.LASF342
	.byte	0x2b
	.value	0x317
	.byte	0xc
	.long	0x137
	.long	0x1f5b
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x5
	.long	.LASF343
	.byte	0x2b
	.value	0x3b1
	.byte	0xf
	.long	0x51
	.long	0x1f7c
	.uleb128 0x1
	.long	0x1240
	.uleb128 0x1
	.long	0xfa5
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x5
	.long	.LASF344
	.byte	0x2b
	.value	0x3a9
	.byte	0xc
	.long	0x137
	.long	0x1f98
	.uleb128 0x1
	.long	0x1240
	.uleb128 0x1
	.long	0xf61
	.byte	0
	.uleb128 0x5
	.long	.LASF345
	.byte	0x2b
	.value	0x362
	.byte	0x1e
	.long	0x1d0d
	.long	0x1fb4
	.uleb128 0x1
	.long	0x17dd
	.uleb128 0x1
	.long	0x17dd
	.byte	0
	.uleb128 0x8
	.long	.LASF346
	.byte	0x2b
	.byte	0x71
	.byte	0x24
	.long	0x17dd
	.long	0x1fca
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x8
	.long	.LASF347
	.byte	0x2b
	.byte	0xc9
	.byte	0x16
	.long	0x17dd
	.long	0x1fea
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x1eff
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x8
	.long	.LASF348
	.byte	0x2b
	.byte	0xce
	.byte	0x1f
	.long	0x1805
	.long	0x200a
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x1eff
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x8
	.long	.LASF349
	.byte	0x2b
	.byte	0x7c
	.byte	0xe
	.long	0x3c
	.long	0x2025
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x1eff
	.byte	0
	.uleb128 0x8
	.long	.LASF350
	.byte	0x2b
	.byte	0x7f
	.byte	0x14
	.long	0x4a
	.long	0x2040
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x1eff
	.byte	0
	.uleb128 0xa
	.byte	0x10
	.byte	0x7
	.long	.LASF351
	.uleb128 0x2c
	.long	.LASF352
	.byte	0x10
	.byte	0x2c
	.byte	0xa
	.byte	0x10
	.long	0x206f
	.uleb128 0x3
	.long	.LASF353
	.byte	0x2c
	.byte	0xc
	.byte	0xb
	.long	0x1973
	.byte	0
	.uleb128 0x3
	.long	.LASF354
	.byte	0x2c
	.byte	0xd
	.byte	0xf
	.long	0x143
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF355
	.byte	0x2c
	.byte	0xe
	.byte	0x3
	.long	0x2047
	.uleb128 0x6c
	.long	.LASF510
	.byte	0xb
	.byte	0x2b
	.byte	0xe
	.uleb128 0x33
	.long	.LASF356
	.uleb128 0x7
	.long	0x2083
	.uleb128 0x7
	.long	0x16c
	.uleb128 0x19
	.long	0x12b
	.long	0x20a2
	.uleb128 0x1a
	.long	0x5d
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x207b
	.uleb128 0x33
	.long	.LASF357
	.uleb128 0x7
	.long	0x20a7
	.uleb128 0x33
	.long	.LASF358
	.uleb128 0x7
	.long	0x20b1
	.uleb128 0x19
	.long	0x12b
	.long	0x20cb
	.uleb128 0x1a
	.long	0x5d
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	.LASF359
	.byte	0x2d
	.byte	0x34
	.byte	0x18
	.long	0x64
	.uleb128 0x4
	.long	.LASF360
	.byte	0x2d
	.byte	0x54
	.byte	0x12
	.long	0x206f
	.uleb128 0xc
	.long	0x20d7
	.uleb128 0x7
	.long	0x2f3
	.uleb128 0x1e
	.long	.LASF361
	.byte	0x2d
	.value	0x312
	.long	0x20ff
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x8
	.long	.LASF362
	.byte	0x2d
	.byte	0xb2
	.byte	0xc
	.long	0x137
	.long	0x2115
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x5
	.long	.LASF363
	.byte	0x2d
	.value	0x314
	.byte	0xc
	.long	0x137
	.long	0x212c
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x5
	.long	.LASF364
	.byte	0x2d
	.value	0x316
	.byte	0xc
	.long	0x137
	.long	0x2143
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x8
	.long	.LASF365
	.byte	0x2d
	.byte	0xe6
	.byte	0xc
	.long	0x137
	.long	0x2159
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x5
	.long	.LASF366
	.byte	0x2d
	.value	0x201
	.byte	0xc
	.long	0x137
	.long	0x2170
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x5
	.long	.LASF367
	.byte	0x2d
	.value	0x2f8
	.byte	0xc
	.long	0x137
	.long	0x218c
	.uleb128 0x1
	.long	0x20e8
	.uleb128 0x1
	.long	0x218c
	.byte	0
	.uleb128 0x7
	.long	0x20d7
	.uleb128 0x5
	.long	.LASF368
	.byte	0x2d
	.value	0x250
	.byte	0xe
	.long	0x1240
	.long	0x21b2
	.uleb128 0x1
	.long	0x1240
	.uleb128 0x1
	.long	0x137
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x5
	.long	.LASF369
	.byte	0x2d
	.value	0x102
	.byte	0xe
	.long	0x20e8
	.long	0x21ce
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x5
	.long	.LASF370
	.byte	0x2d
	.value	0x2a3
	.byte	0xf
	.long	0x51
	.long	0x21f4
	.uleb128 0x1
	.long	0xc5
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x5
	.long	.LASF371
	.byte	0x2d
	.value	0x109
	.byte	0xe
	.long	0x20e8
	.long	0x2215
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x5
	.long	.LASF372
	.byte	0x2d
	.value	0x2c9
	.byte	0xc
	.long	0x137
	.long	0x2236
	.uleb128 0x1
	.long	0x20e8
	.uleb128 0x1
	.long	0x14d2
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x5
	.long	.LASF373
	.byte	0x2d
	.value	0x2fd
	.byte	0xc
	.long	0x137
	.long	0x2252
	.uleb128 0x1
	.long	0x20e8
	.uleb128 0x1
	.long	0x2252
	.byte	0
	.uleb128 0x7
	.long	0x20e3
	.uleb128 0x5
	.long	.LASF374
	.byte	0x2d
	.value	0x2ce
	.byte	0x11
	.long	0x14d2
	.long	0x226e
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x5
	.long	.LASF375
	.byte	0x2d
	.value	0x202
	.byte	0xc
	.long	0x137
	.long	0x2285
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x30
	.long	.LASF376
	.byte	0x2d
	.value	0x208
	.byte	0xc
	.long	0x137
	.uleb128 0x1e
	.long	.LASF377
	.byte	0x2d
	.value	0x324
	.long	0x22a4
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x8
	.long	.LASF378
	.byte	0x2d
	.byte	0x98
	.byte	0xc
	.long	0x137
	.long	0x22ba
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x8
	.long	.LASF379
	.byte	0x2d
	.byte	0x9a
	.byte	0xc
	.long	0x137
	.long	0x22d5
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x1e
	.long	.LASF380
	.byte	0x2d
	.value	0x2d3
	.long	0x22e7
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x1e
	.long	.LASF381
	.byte	0x2d
	.value	0x148
	.long	0x22fe
	.uleb128 0x1
	.long	0x20e8
	.uleb128 0x1
	.long	0x1240
	.byte	0
	.uleb128 0x5
	.long	.LASF382
	.byte	0x2d
	.value	0x14c
	.byte	0xc
	.long	0x137
	.long	0x2324
	.uleb128 0x1
	.long	0x20e8
	.uleb128 0x1
	.long	0x1240
	.uleb128 0x1
	.long	0x137
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x31
	.long	.LASF383
	.byte	0x2d
	.byte	0xbc
	.byte	0xe
	.long	0x20e8
	.uleb128 0x8
	.long	.LASF384
	.byte	0x2d
	.byte	0xcd
	.byte	0xe
	.long	0x1240
	.long	0x2346
	.uleb128 0x1
	.long	0x1240
	.byte	0
	.uleb128 0x5
	.long	.LASF385
	.byte	0x2d
	.value	0x29c
	.byte	0xc
	.long	0x137
	.long	0x2362
	.uleb128 0x1
	.long	0x137
	.uleb128 0x1
	.long	0x20e8
	.byte	0
	.uleb128 0x7
	.long	0xcd3
	.uleb128 0xc
	.long	0x2362
	.uleb128 0x14
	.long	0xd5e
	.uleb128 0x14
	.long	0xcd3
	.uleb128 0x4
	.long	.LASF386
	.byte	0x2e
	.byte	0x26
	.byte	0x1b
	.long	0x5d
	.uleb128 0x4
	.long	.LASF387
	.byte	0x2f
	.byte	0x30
	.byte	0x1a
	.long	0x238e
	.uleb128 0x7
	.long	0x18d2
	.uleb128 0x8
	.long	.LASF388
	.byte	0x2e
	.byte	0x9f
	.byte	0xc
	.long	0x137
	.long	0x23ae
	.uleb128 0x1
	.long	0xc7
	.uleb128 0x1
	.long	0x2376
	.byte	0
	.uleb128 0x8
	.long	.LASF389
	.byte	0x2f
	.byte	0x37
	.byte	0xf
	.long	0xc7
	.long	0x23c9
	.uleb128 0x1
	.long	0xc7
	.uleb128 0x1
	.long	0x2382
	.byte	0
	.uleb128 0x8
	.long	.LASF390
	.byte	0x2f
	.byte	0x34
	.byte	0x12
	.long	0x2382
	.long	0x23df
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x8
	.long	.LASF391
	.byte	0x2e
	.byte	0x9b
	.byte	0x11
	.long	0x2376
	.long	0x23f5
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x6d
	.long	0xe06
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0x19
	.long	0x132
	.long	0x2414
	.uleb128 0x1a
	.long	0x5d
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.long	0x2404
	.uleb128 0x1b
	.long	.LASF393
	.byte	0x30
	.byte	0x3
	.byte	0xc
	.long	0x2414
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12STD_LOG_NAME
	.uleb128 0x2
	.byte	0x31
	.byte	0x27
	.byte	0xc
	.long	0x1d3f
	.uleb128 0x2
	.byte	0x31
	.byte	0x2b
	.byte	0xe
	.long	0x1d5c
	.uleb128 0x2
	.byte	0x31
	.byte	0x2e
	.byte	0xe
	.long	0x1eb2
	.uleb128 0x2
	.byte	0x31
	.byte	0x33
	.byte	0xc
	.long	0x1ca7
	.uleb128 0x2
	.byte	0x31
	.byte	0x34
	.byte	0xc
	.long	0x1cda
	.uleb128 0x2
	.byte	0x31
	.byte	0x36
	.byte	0xc
	.long	0xe12
	.uleb128 0x2
	.byte	0x31
	.byte	0x36
	.byte	0xc
	.long	0xe2b
	.uleb128 0x2
	.byte	0x31
	.byte	0x36
	.byte	0xc
	.long	0xe44
	.uleb128 0x2
	.byte	0x31
	.byte	0x36
	.byte	0xc
	.long	0xe5d
	.uleb128 0x2
	.byte	0x31
	.byte	0x36
	.byte	0xc
	.long	0xe76
	.uleb128 0x2
	.byte	0x31
	.byte	0x37
	.byte	0xc
	.long	0x1d77
	.uleb128 0x2
	.byte	0x31
	.byte	0x38
	.byte	0xc
	.long	0x1d8d
	.uleb128 0x2
	.byte	0x31
	.byte	0x39
	.byte	0xc
	.long	0x1da3
	.uleb128 0x2
	.byte	0x31
	.byte	0x3a
	.byte	0xc
	.long	0x1db9
	.uleb128 0x2
	.byte	0x31
	.byte	0x3c
	.byte	0xc
	.long	0x1784
	.uleb128 0x2
	.byte	0x31
	.byte	0x3c
	.byte	0xc
	.long	0xe8f
	.uleb128 0x2
	.byte	0x31
	.byte	0x3c
	.byte	0xc
	.long	0x1de4
	.uleb128 0x2
	.byte	0x31
	.byte	0x3e
	.byte	0xc
	.long	0x1e00
	.uleb128 0x2
	.byte	0x31
	.byte	0x40
	.byte	0xc
	.long	0x1e17
	.uleb128 0x2
	.byte	0x31
	.byte	0x43
	.byte	0xc
	.long	0x1e33
	.uleb128 0x2
	.byte	0x31
	.byte	0x44
	.byte	0xc
	.long	0x1e4f
	.uleb128 0x2
	.byte	0x31
	.byte	0x45
	.byte	0xc
	.long	0x1e70
	.uleb128 0x2
	.byte	0x31
	.byte	0x47
	.byte	0xc
	.long	0x1e91
	.uleb128 0x2
	.byte	0x31
	.byte	0x48
	.byte	0xc
	.long	0x1ec5
	.uleb128 0x2
	.byte	0x31
	.byte	0x4a
	.byte	0xc
	.long	0x1ed2
	.uleb128 0x2
	.byte	0x31
	.byte	0x4b
	.byte	0xc
	.long	0x1ee4
	.uleb128 0x2
	.byte	0x31
	.byte	0x4c
	.byte	0xc
	.long	0x1f04
	.uleb128 0x2
	.byte	0x31
	.byte	0x4d
	.byte	0xc
	.long	0x1f24
	.uleb128 0x2
	.byte	0x31
	.byte	0x4e
	.byte	0xc
	.long	0x1f44
	.uleb128 0x2
	.byte	0x31
	.byte	0x50
	.byte	0xc
	.long	0x1f5b
	.uleb128 0x2
	.byte	0x31
	.byte	0x51
	.byte	0xc
	.long	0x1f7c
	.uleb128 0x1b
	.long	.LASF394
	.byte	0x32
	.byte	0x20
	.byte	0xb
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11INDENT_SIZE
	.uleb128 0x6e
	.long	.LASF476
	.long	0xc5
	.uleb128 0x6f
	.long	.LASF395
	.value	0x128
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.long	0xd9c
	.long	0x28f6
	.uleb128 0x70
	.long	0xd9c
	.byte	0
	.byte	0x1
	.uleb128 0x3
	.long	.LASF396
	.byte	0x2
	.byte	0xb
	.byte	0xf
	.long	0x20e8
	.byte	0x8
	.uleb128 0x3
	.long	.LASF397
	.byte	0x2
	.byte	0xd
	.byte	0xd
	.long	0x137
	.byte	0x10
	.uleb128 0x3
	.long	.LASF398
	.byte	0x2
	.byte	0xe
	.byte	0xd
	.long	0x137
	.byte	0x14
	.uleb128 0x3
	.long	.LASF399
	.byte	0x2
	.byte	0x10
	.byte	0x15
	.long	0x306
	.byte	0x18
	.uleb128 0x2e
	.long	.LASF395
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.long	.LASF400
	.long	0x25a7
	.long	0x25bc
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x6
	.long	0x137
	.uleb128 0x6
	.long	0x2905
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x71
	.long	.LASF395
	.byte	0x2
	.byte	0x15
	.byte	0x9
	.long	.LASF401
	.long	0x25d0
	.long	0x25e5
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x6
	.long	0x137
	.uleb128 0x6
	.long	0x2905
	.uleb128 0x1
	.long	0x290f
	.byte	0
	.uleb128 0x72
	.long	.LASF71
	.byte	0x2
	.byte	0x16
	.byte	0x11
	.long	.LASF402
	.long	0x2914
	.long	0x25fd
	.long	0x2608
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x290f
	.byte	0
	.uleb128 0x73
	.long	.LASF511
	.byte	0x1
	.byte	0x26
	.byte	0x15
	.long	.LASF512
	.long	0x2914
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF403
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	.LASF404
	.long	0x2546
	.long	0x2631
	.long	0x2641
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x6
	.long	0x137
	.uleb128 0x6
	.long	0x2905
	.byte	0
	.uleb128 0x12
	.long	.LASF405
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.long	.LASF406
	.long	0x137
	.long	0x2659
	.long	0x265f
	.uleb128 0x6
	.long	0x28fb
	.byte	0
	.uleb128 0x12
	.long	.LASF407
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.long	.LASF408
	.long	0x137
	.long	0x2677
	.long	0x2682
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x12
	.long	.LASF409
	.byte	0x1
	.byte	0x43
	.byte	0x5
	.long	.LASF410
	.long	0x137
	.long	0x269a
	.long	0x26a0
	.uleb128 0x6
	.long	0x28fb
	.byte	0
	.uleb128 0x12
	.long	.LASF411
	.byte	0x1
	.byte	0x4e
	.byte	0x5
	.long	.LASF412
	.long	0x137
	.long	0x26b8
	.long	0x26c3
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x12
	.long	.LASF413
	.byte	0x1
	.byte	0x40
	.byte	0x7
	.long	.LASF414
	.long	0x20e8
	.long	0x26db
	.long	0x26e1
	.uleb128 0x6
	.long	0x28fb
	.byte	0
	.uleb128 0x74
	.string	"log"
	.byte	0x1
	.byte	0x58
	.byte	0x6
	.long	.LASF513
	.byte	0x1
	.long	0x26f6
	.long	0x2702
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.uleb128 0x11
	.long	.LASF415
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.long	.LASF416
	.long	0x2716
	.long	0x2722
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.uleb128 0x11
	.long	.LASF417
	.byte	0x1
	.byte	0x79
	.byte	0x6
	.long	.LASF418
	.long	0x2736
	.long	0x2742
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.uleb128 0x11
	.long	.LASF419
	.byte	0x1
	.byte	0x8b
	.byte	0x6
	.long	.LASF420
	.long	0x2756
	.long	0x2762
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.uleb128 0x11
	.long	.LASF421
	.byte	0x1
	.byte	0x9d
	.byte	0x6
	.long	.LASF422
	.long	0x2776
	.long	0x2781
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x1240
	.byte	0
	.uleb128 0x12
	.long	.LASF423
	.byte	0x1
	.byte	0xa6
	.byte	0x7
	.long	.LASF424
	.long	0xc5
	.long	0x2799
	.long	0x27b8
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x11
	.long	.LASF425
	.byte	0x1
	.byte	0xb7
	.byte	0x7
	.long	.LASF426
	.long	0x27cc
	.long	0x27e6
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0xc5
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x12
	.long	.LASF427
	.byte	0x1
	.byte	0xc9
	.byte	0x7
	.long	.LASF428
	.long	0xc5
	.long	0x27fe
	.long	0x281d
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0xc5
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.long	.LASF429
	.byte	0x1
	.value	0x155
	.byte	0x6
	.long	.LASF430
	.byte	0x1
	.long	0x2833
	.long	0x283f
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.uleb128 0x1c
	.long	.LASF431
	.byte	0x1
	.value	0x136
	.byte	0x6
	.long	.LASF432
	.byte	0x1
	.long	0x2855
	.long	0x2866
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x137
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.uleb128 0x1c
	.long	.LASF433
	.byte	0x1
	.value	0x146
	.byte	0x6
	.long	.LASF434
	.byte	0x1
	.long	0x287c
	.long	0x2888
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.uleb128 0x12
	.long	.LASF435
	.byte	0x1
	.byte	0xf4
	.byte	0x5
	.long	.LASF436
	.long	0x137
	.long	0x28a0
	.long	0x28b1
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x137
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.uleb128 0x1c
	.long	.LASF437
	.byte	0x1
	.value	0x10e
	.byte	0x6
	.long	.LASF438
	.byte	0x1
	.long	0x28c7
	.long	0x28d3
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.uleb128 0x75
	.long	.LASF439
	.byte	0x1
	.value	0x121
	.byte	0x10
	.long	.LASF440
	.long	0x778
	.byte	0x1
	.long	0x28e9
	.uleb128 0x6
	.long	0x28fb
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x2546
	.uleb128 0x7
	.long	0x2546
	.uleb128 0xc
	.long	0x28fb
	.uleb128 0x7
	.long	0x1c7a
	.uleb128 0xc
	.long	0x2905
	.uleb128 0x14
	.long	0x28f6
	.uleb128 0x14
	.long	0x2546
	.uleb128 0x1f
	.long	0xcfb
	.long	.LASF441
	.long	0x292a
	.long	0x2934
	.uleb128 0x17
	.long	.LASF443
	.long	0x2367
	.byte	0
	.uleb128 0x1f
	.long	0xce2
	.long	.LASF442
	.long	0x2945
	.long	0x294f
	.uleb128 0x17
	.long	.LASF443
	.long	0x2367
	.byte	0
	.uleb128 0x31
	.long	.LASF444
	.byte	0x33
	.byte	0x25
	.byte	0xd
	.long	0x295b
	.uleb128 0x7
	.long	0x137
	.uleb128 0x5
	.long	.LASF445
	.byte	0x34
	.value	0x1a3
	.byte	0xe
	.long	0x1240
	.long	0x2977
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x8
	.long	.LASF446
	.byte	0x34
	.byte	0x3d
	.byte	0xe
	.long	0xc5
	.long	0x2997
	.uleb128 0x1
	.long	0xc5
	.uleb128 0x1
	.long	0x137
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x8
	.long	.LASF447
	.byte	0x35
	.byte	0x33
	.byte	0xe
	.long	0xc5
	.long	0x29b2
	.uleb128 0x1
	.long	0xc5
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x8
	.long	.LASF448
	.byte	0x35
	.byte	0x98
	.byte	0xf
	.long	0x51
	.long	0x29c8
	.uleb128 0x1
	.long	0xc5
	.byte	0
	.uleb128 0x76
	.long	.LASF449
	.byte	0x35
	.byte	0x40
	.byte	0xd
	.long	0x29da
	.uleb128 0x1
	.long	0xc5
	.byte	0
	.uleb128 0x8
	.long	.LASF450
	.byte	0x35
	.byte	0x2b
	.byte	0xe
	.long	0xc5
	.long	0x29f5
	.uleb128 0x1
	.long	0x51
	.uleb128 0x1
	.long	0x51
	.byte	0
	.uleb128 0x77
	.long	.LASF451
	.byte	0x36
	.byte	0x45
	.byte	0xd
	.long	0x2a16
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0xbe
	.uleb128 0x1
	.long	0x306
	.byte	0
	.uleb128 0x5
	.long	.LASF452
	.byte	0x2d
	.value	0x173
	.byte	0xc
	.long	0x137
	.long	0x2a32
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x116e
	.byte	0
	.uleb128 0x5
	.long	.LASF453
	.byte	0x2d
	.value	0x16d
	.byte	0xc
	.long	0x137
	.long	0x2a53
	.uleb128 0x1
	.long	0x20e8
	.uleb128 0x1
	.long	0x306
	.uleb128 0x1
	.long	0x116e
	.byte	0
	.uleb128 0x3d
	.long	.LASF454
	.byte	0x32
	.byte	0x22
	.long	.LASF456
	.long	0x2a6d
	.uleb128 0x1
	.long	0x20e8
	.uleb128 0x1
	.long	0x137
	.byte	0
	.uleb128 0x3d
	.long	.LASF455
	.byte	0x37
	.byte	0x87
	.long	.LASF457
	.long	0x2a87
	.uleb128 0x1
	.long	0xc5
	.uleb128 0x1
	.long	0x560
	.byte	0
	.uleb128 0x5
	.long	.LASF458
	.byte	0x2d
	.value	0x164
	.byte	0xc
	.long	0x137
	.long	0x2a9f
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.uleb128 0x3e
	.long	.LASF459
	.long	0x2aae
	.uleb128 0x1
	.long	0x2aae
	.byte	0
	.uleb128 0x7
	.long	0x17dd
	.uleb128 0x3e
	.long	.LASF460
	.long	0x2ac2
	.uleb128 0x1
	.long	0x2aae
	.byte	0
	.uleb128 0x34
	.long	.LASF461
	.long	0x137
	.long	0x2ad5
	.uleb128 0x1
	.long	0x2aae
	.byte	0
	.uleb128 0x78
	.long	.LASF514
	.uleb128 0x34
	.long	.LASF462
	.long	0xc5
	.long	0x2aed
	.uleb128 0x1
	.long	0xc5
	.byte	0
	.uleb128 0x5
	.long	.LASF463
	.byte	0x2d
	.value	0x15e
	.byte	0xc
	.long	0x137
	.long	0x2b0a
	.uleb128 0x1
	.long	0x20e8
	.uleb128 0x1
	.long	0x306
	.uleb128 0x9
	.byte	0
	.uleb128 0x8
	.long	.LASF464
	.byte	0x38
	.byte	0xb7
	.byte	0xe
	.long	0x1240
	.long	0x2b20
	.uleb128 0x1
	.long	0x2b20
	.byte	0
	.uleb128 0x7
	.long	0x1c65
	.uleb128 0x8
	.long	.LASF465
	.byte	0x38
	.byte	0x4c
	.byte	0xf
	.long	0x1c59
	.long	0x2b3b
	.uleb128 0x1
	.long	0x2b3b
	.byte	0
	.uleb128 0x7
	.long	0x1c59
	.uleb128 0x79
	.long	.LASF466
	.long	0x2b59
	.uleb128 0x1
	.long	0xc5
	.uleb128 0x1
	.long	0xc5
	.uleb128 0x1
	.long	0x1c75
	.byte	0
	.uleb128 0x34
	.long	.LASF467
	.long	0xc5
	.long	0x2b6c
	.uleb128 0x1
	.long	0x5d
	.byte	0
	.uleb128 0x7a
	.long	.LASF515
	.quad	.LFB2978
	.quad	.LFE2978-.LFB2978
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7b
	.long	.LASF516
	.quad	.LFB2977
	.quad	.LFE2977-.LFB2977
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bbd
	.uleb128 0x18
	.long	.LASF468
	.value	0x166
	.byte	0x5
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF469
	.value	0x166
	.byte	0x5
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.long	0xd9c
	.uleb128 0x2a
	.long	0xda5
	.uleb128 0x1f
	.long	0x2bc2
	.long	.LASF470
	.long	0x2bd8
	.long	0x2bdb
	.uleb128 0x20
	.uleb128 0x20
	.byte	0
	.uleb128 0x2a
	.long	0xdcd
	.uleb128 0x1f
	.long	0x2bdb
	.long	.LASF471
	.long	0x2bf1
	.long	0x2bf4
	.uleb128 0x20
	.uleb128 0x20
	.byte	0
	.uleb128 0x7
	.long	0xead
	.uleb128 0x2a
	.long	0xeb2
	.uleb128 0x1f
	.long	0x2bf9
	.long	.LASF472
	.long	0x2c0f
	.long	0x2c11
	.uleb128 0x20
	.byte	0
	.uleb128 0x2a
	.long	0xed8
	.uleb128 0x1f
	.long	0x2c11
	.long	.LASF473
	.long	0x2c27
	.long	0x2c29
	.uleb128 0x20
	.byte	0
	.uleb128 0xf
	.long	0x281d
	.long	0x2c48
	.quad	.LFB2296
	.quad	.LFE2296-.LFB2296
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c88
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x18
	.long	.LASF474
	.value	0x155
	.byte	0x26
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x9
	.uleb128 0x7c
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x26
	.string	"ptr"
	.value	0x159
	.byte	0x11
	.long	0x20cb
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2866
	.long	0x2ca7
	.quad	.LFB2295
	.quad	.LFE2295-.LFB2295
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cd5
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x18
	.long	.LASF474
	.value	0x146
	.byte	0x24
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x9
	.uleb128 0x26
	.string	"ptr"
	.value	0x148
	.byte	0xd
	.long	0x20cb
	.uleb128 0x2
	.byte	0x70
	.sleb128 -64
	.byte	0
	.uleb128 0xf
	.long	0x283f
	.long	0x2cf4
	.quad	.LFB2294
	.quad	.LFE2294-.LFB2294
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d32
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x18
	.long	.LASF475
	.value	0x136
	.byte	0x1c
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x18
	.long	.LASF474
	.value	0x136
	.byte	0x34
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x9
	.uleb128 0x26
	.string	"ptr"
	.value	0x138
	.byte	0xd
	.long	0x20cb
	.uleb128 0x2
	.byte	0x70
	.sleb128 -64
	.byte	0
	.uleb128 0xf
	.long	0x28d3
	.long	0x2d51
	.quad	.LFB2293
	.quad	.LFE2293-.LFB2293
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d92
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x18
	.long	.LASF474
	.value	0x121
	.byte	0x32
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x9
	.uleb128 0x3f
	.long	.LASF477
	.long	0x2da2
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.uleb128 0x26
	.string	"ptr"
	.value	0x125
	.byte	0xd
	.long	0x20cb
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.long	0x132
	.long	0x2da2
	.uleb128 0x1a
	.long	0x5d
	.byte	0x36
	.byte	0
	.uleb128 0xc
	.long	0x2d92
	.uleb128 0xf
	.long	0x28b1
	.long	0x2dc6
	.quad	.LFB2292
	.quad	.LFE2292-.LFB2292
	.uleb128 0x1
	.byte	0x9c
	.long	0x2df4
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x18
	.long	.LASF474
	.value	0x10e
	.byte	0x26
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x9
	.uleb128 0x26
	.string	"ptr"
	.value	0x110
	.byte	0xd
	.long	0x20cb
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.byte	0
	.uleb128 0xf
	.long	0x2888
	.long	0x2e13
	.quad	.LFB2291
	.quad	.LFE2291-.LFB2291
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e4e
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0xb
	.long	.LASF478
	.byte	0xf4
	.byte	0x1b
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0xb
	.long	.LASF474
	.byte	0xf4
	.byte	0x35
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x9
	.uleb128 0x27
	.string	"ptr"
	.byte	0xfc
	.byte	0xd
	.long	0x20cb
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.byte	0
	.uleb128 0x40
	.long	0x27e6
	.long	0xc5
	.long	0x2e71
	.quad	.LFB2290
	.quad	.LFE2290-.LFB2290
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ee4
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x41
	.string	"ptr"
	.byte	0xc9
	.byte	0x20
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF479
	.byte	0xc9
	.byte	0x2c
	.long	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF480
	.byte	0xc9
	.byte	0x3e
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF481
	.byte	0xc9
	.byte	0x50
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.long	.LASF482
	.byte	0xc9
	.byte	0x5a
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1b
	.long	.LASF483
	.byte	0x1
	.byte	0xd9
	.byte	0xc
	.long	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LASF484
	.byte	0x1
	.byte	0xe1
	.byte	0xb
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	0x27b8
	.long	0x2f03
	.quad	.LFB2289
	.quad	.LFE2289-.LFB2289
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f48
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF485
	.byte	0xb7
	.byte	0x1f
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.long	.LASF480
	.byte	0xb7
	.byte	0x37
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF481
	.byte	0xb7
	.byte	0x49
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF482
	.byte	0xb7
	.byte	0x53
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x40
	.long	0x2781
	.long	0xc5
	.long	0x2f6b
	.quad	.LFB2288
	.quad	.LFE2288-.LFB2288
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fce
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF486
	.byte	0xa6
	.byte	0x1f
	.long	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF487
	.byte	0xa6
	.byte	0x37
	.long	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF480
	.byte	0xa6
	.byte	0x52
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF481
	.byte	0xa6
	.byte	0x64
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.long	.LASF482
	.byte	0xa6
	.byte	0x6e
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"ptr"
	.byte	0xa8
	.byte	0xb
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	0x2762
	.long	0x2fed
	.quad	.LFB2287
	.quad	.LFE2287-.LFB2287
	.uleb128 0x1
	.byte	0x9c
	.long	0x301b
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF488
	.byte	0x9d
	.byte	0x1c
	.long	0x1240
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3f
	.long	.LASF477
	.long	0x302b
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.uleb128 0x19
	.long	0x132
	.long	0x302b
	.uleb128 0x1a
	.long	0x5d
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.long	0x301b
	.uleb128 0xf
	.long	0x2742
	.long	0x304f
	.quad	.LFB2286
	.quad	.LFE2286-.LFB2286
	.uleb128 0x1
	.byte	0x9c
	.long	0x308c
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0xb
	.long	.LASF474
	.byte	0x8b
	.byte	0x2a
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x9
	.uleb128 0x1b
	.long	.LASF489
	.byte	0x1
	.byte	0x8e
	.byte	0xd
	.long	0x20cb
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -128
	.uleb128 0x1b
	.long	.LASF490
	.byte	0x1
	.byte	0x8f
	.byte	0xd
	.long	0x20cb
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.byte	0
	.uleb128 0xf
	.long	0x2722
	.long	0x30ab
	.quad	.LFB2285
	.quad	.LFE2285-.LFB2285
	.uleb128 0x1
	.byte	0x9c
	.long	0x30d7
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0xb
	.long	.LASF474
	.byte	0x79
	.byte	0x29
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x9
	.uleb128 0x27
	.string	"ptr"
	.byte	0x7e
	.byte	0xd
	.long	0x20cb
	.uleb128 0x2
	.byte	0x70
	.sleb128 -64
	.byte	0
	.uleb128 0xf
	.long	0x2702
	.long	0x30f6
	.quad	.LFB2284
	.quad	.LFE2284-.LFB2284
	.uleb128 0x1
	.byte	0x9c
	.long	0x3122
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0xb
	.long	.LASF474
	.byte	0x6a
	.byte	0x25
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x9
	.uleb128 0x27
	.string	"ptr"
	.byte	0x6c
	.byte	0xd
	.long	0x20cb
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.byte	0
	.uleb128 0xf
	.long	0x26e1
	.long	0x3141
	.quad	.LFB2283
	.quad	.LFE2283-.LFB2283
	.uleb128 0x1
	.byte	0x9c
	.long	0x316d
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0xb
	.long	.LASF474
	.byte	0x58
	.byte	0x1f
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x9
	.uleb128 0x27
	.string	"ptr"
	.byte	0x5d
	.byte	0xd
	.long	0x20cb
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.byte	0
	.uleb128 0xf
	.long	0x26a0
	.long	0x318c
	.quad	.LFB2282
	.quad	.LFE2282-.LFB2282
	.uleb128 0x1
	.byte	0x9c
	.long	0x31a7
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF491
	.byte	0x4e
	.byte	0x1c
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.long	0x265f
	.long	0x31c6
	.quad	.LFB2281
	.quad	.LFE2281-.LFB2281
	.uleb128 0x1
	.byte	0x9c
	.long	0x31e1
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x41
	.string	"lvl"
	.byte	0x46
	.byte	0x1b
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.long	0x2682
	.long	0x3200
	.quad	.LFB2280
	.quad	.LFE2280-.LFB2280
	.uleb128 0x1
	.byte	0x9c
	.long	0x320d
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	0x26c3
	.long	0x322c
	.quad	.LFB2279
	.quad	.LFE2279-.LFB2279
	.uleb128 0x1
	.byte	0x9c
	.long	0x3239
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	0x2641
	.long	0x3258
	.quad	.LFB2278
	.quad	.LFE2278-.LFB2278
	.uleb128 0x1
	.byte	0x9c
	.long	0x3265
	.uleb128 0xd
	.long	.LASF443
	.long	0x2900
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x42
	.long	0x2619
	.long	0x3272
	.long	0x329b
	.uleb128 0x17
	.long	.LASF443
	.long	0x2900
	.uleb128 0x17
	.long	.LASF492
	.long	0x13e
	.uleb128 0x17
	.long	.LASF493
	.long	0x290a
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF494
	.byte	0x2f
	.byte	0xc
	.long	0x1c59
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x3265
	.long	.LASF495
	.long	0x32be
	.quad	.LFB2277
	.quad	.LFE2277-.LFB2277
	.uleb128 0x1
	.byte	0x9c
	.long	0x32c7
	.uleb128 0x15
	.long	0x3272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	0x3265
	.long	.LASF496
	.long	0x32ea
	.quad	.LFB2276
	.quad	.LFE2276-.LFB2276
	.uleb128 0x1
	.byte	0x9c
	.long	0x3321
	.uleb128 0x15
	.long	0x3272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.long	0x328d
	.long	0x3302
	.uleb128 0x22
	.long	0x328e
	.byte	0
	.uleb128 0x44
	.long	0x328d
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x23
	.long	0x328e
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x3265
	.long	.LASF497
	.long	0x3344
	.quad	.LFB2275
	.quad	.LFE2275-.LFB2275
	.uleb128 0x1
	.byte	0x9c
	.long	0x3384
	.uleb128 0x15
	.long	0x3272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x15
	.long	0x3284
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	0x328d
	.long	0x3365
	.uleb128 0x22
	.long	0x328e
	.byte	0
	.uleb128 0x44
	.long	0x328d
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x23
	.long	0x328e
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7d
	.long	0x2608
	.quad	.LFB2273
	.quad	.LFE2273-.LFB2273
	.uleb128 0x1
	.byte	0x9c
	.long	0x33b6
	.uleb128 0x1b
	.long	.LASF498
	.byte	0x1
	.byte	0x28
	.byte	0x1b
	.long	0x2546
	.uleb128 0x9
	.byte	0x3
	.quad	_ZZN6Logger11getInstanceEvE6logger
	.byte	0
	.uleb128 0x42
	.long	0x2593
	.long	0x33c3
	.long	0x3409
	.uleb128 0x17
	.long	.LASF443
	.long	0x2900
	.uleb128 0x17
	.long	.LASF492
	.long	0x13e
	.uleb128 0x17
	.long	.LASF493
	.long	0x290a
	.uleb128 0x7e
	.long	.LASF517
	.byte	0x1
	.byte	0x12
	.byte	0x1d
	.long	0x306
	.uleb128 0x7f
	.long	0x33fb
	.uleb128 0x35
	.long	.LASF494
	.byte	0x1d
	.byte	0x17
	.long	0x1c59
	.byte	0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF488
	.byte	0x20
	.byte	0x1f
	.long	0x306
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x33b6
	.long	.LASF499
	.long	0x342c
	.quad	.LFB2272
	.quad	.LFE2272-.LFB2272
	.uleb128 0x1
	.byte	0x9c
	.long	0x3486
	.uleb128 0x15
	.long	0x33c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x15
	.long	0x33de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	0x33ea
	.long	0x344d
	.uleb128 0x22
	.long	0x33ef
	.byte	0
	.uleb128 0x21
	.long	0x33fb
	.long	0x345c
	.uleb128 0x22
	.long	0x33fc
	.byte	0
	.uleb128 0x45
	.long	0x33ea
	.long	.LLRL2
	.long	0x3472
	.uleb128 0x23
	.long	0x33ef
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -32
	.byte	0
	.uleb128 0x46
	.long	0x33fb
	.long	.LLRL3
	.uleb128 0x23
	.long	0x33fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0x80
	.long	0x33b6
	.long	.LASF518
	.long	0x34a6
	.quad	.LFB2271
	.quad	.LFE2271-.LFB2271
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	0x33c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x15
	.long	0x33d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x15
	.long	0x33de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x21
	.long	0x33ea
	.long	0x34d0
	.uleb128 0x22
	.long	0x33ef
	.byte	0
	.uleb128 0x21
	.long	0x33fb
	.long	0x34df
	.uleb128 0x22
	.long	0x33fc
	.byte	0
	.uleb128 0x45
	.long	0x33ea
	.long	.LLRL0
	.long	0x34f5
	.uleb128 0x23
	.long	0x33ef
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -32
	.byte	0
	.uleb128 0x46
	.long	0x33fb
	.long	.LLRL1
	.uleb128 0x23
	.long	0x33fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 33
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 43
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 28
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x4c
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1d
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1e
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5a
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5d
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5e
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x4c
	.uleb128 0xb
	.uleb128 0x1d
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x60
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x61
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x62
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x63
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x64
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x65
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x66
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x67
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x68
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x69
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6c
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6d
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6f
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1d
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x70
	.uleb128 0x1c
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x71
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8a
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x72
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8a
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x73
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x74
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x75
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x76
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x77
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x78
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x79
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x7d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7e
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x7f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x80
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
	.byte	0x4
	.uleb128 .LBB5-.Ltext0
	.uleb128 .LBE5-.Ltext0
	.byte	0
.LLRL1:
	.byte	0x4
	.uleb128 .LBB6-.Ltext0
	.uleb128 .LBE6-.Ltext0
	.byte	0x4
	.uleb128 .LBB7-.Ltext0
	.uleb128 .LBE7-.Ltext0
	.byte	0
.LLRL2:
	.byte	0x4
	.uleb128 .LBB16-.Ltext0
	.uleb128 .LBE16-.Ltext0
	.byte	0x4
	.uleb128 .LBB17-.Ltext0
	.uleb128 .LBE17-.Ltext0
	.byte	0
.LLRL3:
	.byte	0x4
	.uleb128 .LBB18-.Ltext0
	.uleb128 .LBE18-.Ltext0
	.byte	0x4
	.uleb128 .LBB19-.Ltext0
	.uleb128 .LBE19-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF397:
	.string	"level"
.LASF136:
	.string	"_ZSt3abse"
.LASF137:
	.string	"_ZSt3absf"
.LASF366:
	.string	"fgetc"
.LASF258:
	.string	"int8_t"
.LASF140:
	.string	"_ZSt3absl"
.LASF86:
	.string	"__cust_iswap"
.LASF8:
	.string	"size_t"
.LASF368:
	.string	"fgets"
.LASF186:
	.string	"tm_hour"
.LASF425:
	.string	"FREE_LOG"
.LASF19:
	.string	"__value"
.LASF424:
	.string	"_ZN6Logger7CAL_LOGEmmPKcS1_i"
.LASF457:
	.string	"_ZdlPvm"
.LASF357:
	.string	"_IO_codecvt"
.LASF281:
	.string	"uint_fast64_t"
.LASF230:
	.string	"signed char"
.LASF246:
	.string	"__uint_least8_t"
.LASF35:
	.string	"_IO_save_end"
.LASF345:
	.string	"lldiv"
.LASF85:
	.string	"__cust_imove"
.LASF182:
	.string	"wcscspn"
.LASF313:
	.string	"localeconv"
.LASF59:
	.string	"_M_addref"
.LASF64:
	.string	"_M_get"
.LASF15:
	.string	"wint_t"
.LASF350:
	.string	"strtold"
.LASF490:
	.string	"for_console"
.LASF314:
	.string	"time_t"
.LASF347:
	.string	"strtoll"
.LASF126:
	.string	"_ZNSt8ios_base4InitC4ERKS0_"
.LASF326:
	.string	"atof"
.LASF28:
	.string	"_IO_write_base"
.LASF384:
	.string	"tmpnam"
.LASF318:
	.string	"div_t"
.LASF513:
	.string	"_ZN6Logger3logEPKcz"
.LASF423:
	.string	"CAL_LOG"
.LASF44:
	.string	"_lock"
.LASF325:
	.string	"at_quick_exit"
.LASF290:
	.string	"int_curr_symbol"
.LASF87:
	.string	"__cust_access"
.LASF274:
	.string	"int_fast8_t"
.LASF216:
	.string	"wcschr"
.LASF32:
	.string	"_IO_buf_end"
.LASF301:
	.string	"n_cs_precedes"
.LASF323:
	.string	"__compar_fn_t"
.LASF33:
	.string	"_IO_save_base"
.LASF159:
	.string	"mbrtowc"
.LASF401:
	.string	"_ZN6LoggerC4ERKS_"
.LASF207:
	.string	"wcsxfrm"
.LASF346:
	.string	"atoll"
.LASF297:
	.string	"int_frac_digits"
.LASF65:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EPv"
.LASF367:
	.string	"fgetpos"
.LASF353:
	.string	"__pos"
.LASF37:
	.string	"_chain"
.LASF180:
	.string	"wcscoll"
.LASF361:
	.string	"clearerr"
.LASF499:
	.string	"_ZN6LoggerC1EPKc"
.LASF41:
	.string	"_cur_column"
.LASF280:
	.string	"uint_fast32_t"
.LASF295:
	.string	"positive_sign"
.LASF411:
	.string	"setindent"
.LASF133:
	.string	"_ZNSoD4EiPPKv"
.LASF16:
	.string	"__wch"
.LASF106:
	.string	"_ZNSt11char_traitsIcE4moveEPcPKcm"
.LASF238:
	.string	"__uint8_t"
.LASF498:
	.string	"logger"
.LASF507:
	.string	"_ZNSt9basic_iosIcSt11char_traitsIcEED4Ei"
.LASF503:
	.string	"type_info"
.LASF484:
	.string	"result"
.LASF327:
	.string	"atoi"
.LASF328:
	.string	"atol"
.LASF218:
	.string	"wcsrchr"
.LASF292:
	.string	"mon_decimal_point"
.LASF205:
	.string	"long int"
.LASF72:
	.string	"_ZNSt15__exception_ptr13exception_ptraSERKS0_"
.LASF192:
	.string	"tm_isdst"
.LASF430:
	.string	"_ZN6Logger10checkerrnoEPKcz"
.LASF403:
	.string	"~Logger"
.LASF419:
	.string	"log_dup_console"
.LASF174:
	.string	"vwprintf"
.LASF422:
	.string	"_ZN6Logger6logmsgEPc"
.LASF344:
	.string	"wctomb"
.LASF113:
	.string	"int_type"
.LASF356:
	.string	"_IO_marker"
.LASF360:
	.string	"fpos_t"
.LASF307:
	.string	"int_n_cs_precedes"
.LASF496:
	.string	"_ZN6LoggerD1Ev"
.LASF389:
	.string	"towctrans"
.LASF83:
	.string	"ranges"
.LASF107:
	.string	"copy"
.LASF336:
	.string	"rand"
.LASF459:
	.string	"__cxa_guard_abort"
.LASF517:
	.string	"log_name"
.LASF442:
	.string	"_ZNSt8ios_base4InitC1Ev"
.LASF98:
	.string	"_ZNSt11char_traitsIcE2ltERKcS2_"
.LASF392:
	.string	"__ioinit"
.LASF82:
	.string	"nullptr_t"
.LASF506:
	.string	"basic_ios<char, std::char_traits<char> >"
.LASF451:
	.string	"__assert_fail"
.LASF191:
	.string	"tm_yday"
.LASF348:
	.string	"strtoull"
.LASF262:
	.string	"uint8_t"
.LASF94:
	.string	"_IO_FILE"
.LASF378:
	.string	"remove"
.LASF358:
	.string	"_IO_wide_data"
.LASF129:
	.string	"basic_ostream<char, std::char_traits<char> >"
.LASF386:
	.string	"wctype_t"
.LASF71:
	.string	"operator="
.LASF166:
	.string	"__isoc99_swscanf"
.LASF148:
	.string	"fgetwc"
.LASF312:
	.string	"getwchar"
.LASF473:
	.string	"_ZNSt9basic_iosIcSt11char_traitsIcEEC2Ev"
.LASF149:
	.string	"fgetws"
.LASF248:
	.string	"__uint_least16_t"
.LASF96:
	.string	"char_type"
.LASF229:
	.string	"unsigned char"
.LASF351:
	.string	"__int128 unsigned"
.LASF393:
	.string	"STD_LOG_NAME"
.LASF302:
	.string	"n_sep_by_space"
.LASF362:
	.string	"fclose"
.LASF220:
	.string	"wmemchr"
.LASF233:
	.string	"char16_t"
.LASF447:
	.string	"realloc"
.LASF471:
	.string	"_ZNSoC2Ev"
.LASF156:
	.string	"__isoc99_fwscanf"
.LASF321:
	.string	"7lldiv_t"
.LASF179:
	.string	"wcscmp"
.LASF338:
	.string	"srand"
.LASF501:
	.string	"__builtin_va_list"
.LASF118:
	.string	"not_eof"
.LASF164:
	.string	"swprintf"
.LASF217:
	.string	"wcspbrk"
.LASF80:
	.string	"rethrow_exception"
.LASF20:
	.string	"char"
.LASF331:
	.string	"ldiv"
.LASF508:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF22:
	.string	"mbstate_t"
.LASF391:
	.string	"wctype"
.LASF272:
	.string	"uint_least32_t"
.LASF197:
	.string	"wcsncmp"
.LASF510:
	.string	"_IO_lock_t"
.LASF240:
	.string	"__uint16_t"
.LASF304:
	.string	"n_sign_posn"
.LASF125:
	.string	"_ZNSt8ios_base4InitD4Ev"
.LASF211:
	.string	"wmemmove"
.LASF444:
	.string	"__errno_location"
.LASF316:
	.string	"5div_t"
.LASF375:
	.string	"getc"
.LASF414:
	.string	"_ZN6Logger6getlogEv"
.LASF185:
	.string	"tm_min"
.LASF157:
	.string	"getwc"
.LASF25:
	.string	"_IO_read_ptr"
.LASF214:
	.string	"wscanf"
.LASF293:
	.string	"mon_thousands_sep"
.LASF167:
	.string	"ungetwc"
.LASF11:
	.string	"fp_offset"
.LASF374:
	.string	"ftell"
.LASF127:
	.string	"_ZNSt8ios_base4InitaSERKS0_"
.LASF158:
	.string	"mbrlen"
.LASF296:
	.string	"negative_sign"
.LASF305:
	.string	"int_p_cs_precedes"
.LASF154:
	.string	"fwprintf"
.LASF483:
	.string	"old_size"
.LASF453:
	.string	"vfprintf"
.LASF36:
	.string	"_markers"
.LASF226:
	.string	"wcstoull"
.LASF480:
	.string	"file"
.LASF99:
	.string	"compare"
.LASF352:
	.string	"_G_fpos_t"
.LASF252:
	.string	"__uint_least64_t"
.LASF500:
	.string	"GNU C++20 11.3.0 -mtune=generic -march=x86-64 -g -std=c++20 -fstrict-overflow -fstack-protector -fcheck-new -fsized-deallocation -fno-omit-frame-pointer -fPIE -fsanitize=address,leak -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF181:
	.string	"wcscpy"
.LASF135:
	.string	"_CharT"
.LASF458:
	.string	"printf"
.LASF171:
	.string	"vswprintf"
.LASF341:
	.string	"strtoul"
.LASF212:
	.string	"wmemset"
.LASF77:
	.string	"_ZNSt15__exception_ptr13exception_ptr4swapERS0_"
.LASF176:
	.string	"__isoc99_vwscanf"
.LASF124:
	.string	"_ZNSt8ios_base4InitC4Ev"
.LASF153:
	.string	"fwide"
.LASF232:
	.string	"char8_t"
.LASF273:
	.string	"uint_least64_t"
.LASF184:
	.string	"tm_sec"
.LASF78:
	.string	"__cxa_exception_type"
.LASF45:
	.string	"_offset"
.LASF415:
	.string	"log_nolvl"
.LASF198:
	.string	"wcsncpy"
.LASF163:
	.string	"putwchar"
.LASF251:
	.string	"__int_least64_t"
.LASF73:
	.string	"_ZNSt15__exception_ptr13exception_ptraSEOS0_"
.LASF209:
	.string	"wmemcmp"
.LASF108:
	.string	"_ZNSt11char_traitsIcE4copyEPcPKcm"
.LASF103:
	.string	"find"
.LASF244:
	.string	"__uint64_t"
.LASF330:
	.string	"getenv"
.LASF469:
	.string	"__priority"
.LASF271:
	.string	"uint_least16_t"
.LASF105:
	.string	"move"
.LASF7:
	.string	"long unsigned int"
.LASF322:
	.string	"lldiv_t"
.LASF67:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4Ev"
.LASF474:
	.string	"format"
.LASF505:
	.string	"_ZNSt11char_traitsIcE3eofEv"
.LASF60:
	.string	"_M_release"
.LASF39:
	.string	"_flags2"
.LASF454:
	.string	"fsetindent"
.LASF268:
	.string	"int_least32_t"
.LASF123:
	.string	"~Init"
.LASF250:
	.string	"__uint_least32_t"
.LASF319:
	.string	"6ldiv_t"
.LASF27:
	.string	"_IO_read_base"
.LASF410:
	.string	"_ZN6Logger9getindentEv"
.LASF269:
	.string	"int_least64_t"
.LASF482:
	.string	"line"
.LASF168:
	.string	"vfwprintf"
.LASF260:
	.string	"int32_t"
.LASF443:
	.string	"this"
.LASF234:
	.string	"char32_t"
.LASF52:
	.string	"_unused2"
.LASF343:
	.string	"wcstombs"
.LASF193:
	.string	"tm_gmtoff"
.LASF406:
	.string	"_ZN6Logger8getlevelEv"
.LASF478:
	.string	"return_value"
.LASF283:
	.string	"uintptr_t"
.LASF120:
	.string	"numbers"
.LASF116:
	.string	"eq_int_type"
.LASF66:
	.string	"_ZNKSt15__exception_ptr13exception_ptr6_M_getEv"
.LASF3:
	.string	"__float128"
.LASF143:
	.string	"basic_ios"
.LASF418:
	.string	"_ZN6Logger13log_no_indentEPKcz"
.LASF467:
	.string	"__cxa_allocate_exception"
.LASF409:
	.string	"getindent"
.LASF40:
	.string	"_old_offset"
.LASF373:
	.string	"fsetpos"
.LASF308:
	.string	"int_n_sep_by_space"
.LASF146:
	.string	"_Traits"
.LASF412:
	.string	"_ZN6Logger9setindentEi"
.LASF396:
	.string	"my_log"
.LASF468:
	.string	"__initialize_p"
.LASF144:
	.string	"_ZNSoC4EiPPKv"
.LASF416:
	.string	"_ZN6Logger9log_nolvlEPKcz"
.LASF398:
	.string	"indent"
.LASF400:
	.string	"_ZN6LoggerC4EPKc"
.LASF242:
	.string	"__uint32_t"
.LASF225:
	.string	"long long int"
.LASF21:
	.string	"__mbstate_t"
.LASF359:
	.string	"va_list"
.LASF210:
	.string	"wmemcpy"
.LASF188:
	.string	"tm_mon"
.LASF493:
	.string	"__vtt_parm"
.LASF48:
	.string	"_freeres_list"
.LASF204:
	.string	"wcstol"
.LASF5:
	.string	"double"
.LASF104:
	.string	"_ZNSt11char_traitsIcE4findEPKcmRS1_"
.LASF334:
	.string	"mbtowc"
.LASF84:
	.string	"__cust_swap"
.LASF30:
	.string	"_IO_write_end"
.LASF512:
	.string	"_ZN6Logger11getInstanceEv"
.LASF285:
	.string	"uintmax_t"
.LASF208:
	.string	"wctob"
.LASF92:
	.string	"__cmp_alg"
.LASF10:
	.string	"gp_offset"
.LASF485:
	.string	"break_free"
.LASF445:
	.string	"strerror"
.LASF4:
	.string	"float"
.LASF509:
	.string	"decltype(nullptr)"
.LASF63:
	.string	"exception_ptr"
.LASF303:
	.string	"p_sign_posn"
.LASF253:
	.string	"__intmax_t"
.LASF31:
	.string	"_IO_buf_base"
.LASF14:
	.string	"unsigned int"
.LASF402:
	.string	"_ZN6LoggeraSERKS_"
.LASF437:
	.string	"LogMsgNoRet"
.LASF95:
	.string	"char_traits<char>"
.LASF377:
	.string	"perror"
.LASF405:
	.string	"getlevel"
.LASF91:
	.string	"__cust"
.LASF282:
	.string	"intptr_t"
.LASF200:
	.string	"wcsspn"
.LASF130:
	.string	"operator bool"
.LASF117:
	.string	"_ZNSt11char_traitsIcE11eq_int_typeERKiS2_"
.LASF461:
	.string	"__cxa_guard_acquire"
.LASF427:
	.string	"RECAL_LOG"
.LASF372:
	.string	"fseek"
.LASF50:
	.string	"__pad5"
.LASF514:
	.string	"__cxa_end_catch"
.LASF382:
	.string	"setvbuf"
.LASF112:
	.string	"_ZNSt11char_traitsIcE12to_char_typeERKi"
.LASF436:
	.string	"_ZN6Logger9LogMsgRetEiPKcz"
.LASF342:
	.string	"system"
.LASF275:
	.string	"int_fast16_t"
.LASF387:
	.string	"wctrans_t"
.LASF12:
	.string	"overflow_arg_area"
.LASF379:
	.string	"rename"
.LASF24:
	.string	"_flags"
.LASF452:
	.string	"vprintf"
.LASF122:
	.string	"Init"
.LASF51:
	.string	"_mode"
.LASF455:
	.string	"operator delete"
.LASF486:
	.string	"number_of_elmts"
.LASF74:
	.string	"~exception_ptr"
.LASF464:
	.string	"ctime"
.LASF287:
	.string	"decimal_point"
.LASF169:
	.string	"vfwscanf"
.LASF376:
	.string	"getchar"
.LASF46:
	.string	"_codecvt"
.LASF18:
	.string	"__count"
.LASF221:
	.string	"__gnu_cxx"
.LASF145:
	.string	"_ZNSt9basic_iosIcSt11char_traitsIcEEC4Ev"
.LASF228:
	.string	"bool"
.LASF270:
	.string	"uint_least8_t"
.LASF363:
	.string	"feof"
.LASF89:
	.string	"__cmp_cat"
.LASF266:
	.string	"int_least8_t"
.LASF2:
	.string	"__unknown__"
.LASF110:
	.string	"_ZNSt11char_traitsIcE6assignEPcmc"
.LASF450:
	.string	"calloc"
.LASF147:
	.string	"btowc"
.LASF337:
	.string	"qsort"
.LASF215:
	.string	"__isoc99_wscanf"
.LASF284:
	.string	"intmax_t"
.LASF6:
	.string	"long double"
.LASF162:
	.string	"putwc"
.LASF53:
	.string	"FILE"
.LASF276:
	.string	"int_fast32_t"
.LASF428:
	.string	"_ZN6Logger9RECAL_LOGEPvmPKcS2_i"
.LASF320:
	.string	"ldiv_t"
.LASF187:
	.string	"tm_mday"
.LASF435:
	.string	"LogMsgRet"
.LASF17:
	.string	"__wchb"
.LASF432:
	.string	"_ZN6Logger8logerrorEiPKcz"
.LASF329:
	.string	"bsearch"
.LASF460:
	.string	"__cxa_guard_release"
.LASF429:
	.string	"checkerrno"
.LASF237:
	.string	"__int8_t"
.LASF441:
	.string	"_ZNSt8ios_base4InitD1Ev"
.LASF491:
	.string	"indnt"
.LASF516:
	.string	"__static_initialization_and_destruction_0"
.LASF479:
	.string	"size"
.LASF101:
	.string	"_ZNSt11char_traitsIcE7compareEPKcS2_m"
.LASF227:
	.string	"long long unsigned int"
.LASF76:
	.string	"swap"
.LASF236:
	.string	"__gnu_debug"
.LASF13:
	.string	"reg_save_area"
.LASF223:
	.string	"wcstold"
.LASF306:
	.string	"int_p_sep_by_space"
.LASF100:
	.string	"length"
.LASF263:
	.string	"uint16_t"
.LASF224:
	.string	"wcstoll"
.LASF255:
	.string	"__off_t"
.LASF219:
	.string	"wcsstr"
.LASF395:
	.string	"Logger"
.LASF138:
	.string	"_ZSt3absd"
.LASF69:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EDn"
.LASF81:
	.string	"_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE"
.LASF381:
	.string	"setbuf"
.LASF438:
	.string	"_ZN6Logger11LogMsgNoRetEPKcz"
.LASF199:
	.string	"wcsrtombs"
.LASF247:
	.string	"__int_least16_t"
.LASF300:
	.string	"p_sep_by_space"
.LASF49:
	.string	"_freeres_buf"
.LASF190:
	.string	"tm_wday"
.LASF97:
	.string	"_ZNSt11char_traitsIcE2eqERKcS2_"
.LASF440:
	.string	"_ZN6Logger13LogMsgNullRetEPKcz"
.LASF139:
	.string	"_ZSt3absx"
.LASF472:
	.string	"_ZNSt9basic_iosIcSt11char_traitsIcEED2Ev"
.LASF160:
	.string	"mbsinit"
.LASF165:
	.string	"swscanf"
.LASF201:
	.string	"wcstod"
.LASF202:
	.string	"wcstof"
.LASF433:
	.string	"logerrno"
.LASF203:
	.string	"wcstok"
.LASF121:
	.string	"__cxx11"
.LASF267:
	.string	"int_least16_t"
.LASF355:
	.string	"__fpos_t"
.LASF141:
	.string	"_ZSt3divll"
.LASF446:
	.string	"memset"
.LASF317:
	.string	"quot"
.LASF475:
	.string	"error_code"
.LASF23:
	.string	"__FILE"
.LASF239:
	.string	"__int16_t"
.LASF278:
	.string	"uint_fast8_t"
.LASF34:
	.string	"_IO_backup_base"
.LASF311:
	.string	"setlocale"
.LASF43:
	.string	"_shortbuf"
.LASF173:
	.string	"__isoc99_vswscanf"
.LASF155:
	.string	"fwscanf"
.LASF9:
	.string	"__gnuc_va_list"
.LASF235:
	.string	"__int128"
.LASF465:
	.string	"time"
.LASF128:
	.string	"ios_base"
.LASF256:
	.string	"__off64_t"
.LASF431:
	.string	"logerror"
.LASF494:
	.string	"NewYorkTime"
.LASF404:
	.string	"_ZN6LoggerD4Ev"
.LASF369:
	.string	"fopen"
.LASF511:
	.string	"getInstance"
.LASF487:
	.string	"size_of_elmts"
.LASF241:
	.string	"__int32_t"
.LASF390:
	.string	"wctrans"
.LASF288:
	.string	"thousands_sep"
.LASF170:
	.string	"__isoc99_vfwscanf"
.LASF55:
	.string	"__swappable_details"
.LASF332:
	.string	"mblen"
.LASF421:
	.string	"logmsg"
.LASF380:
	.string	"rewind"
.LASF142:
	.string	"~basic_ios"
.LASF195:
	.string	"wcslen"
.LASF518:
	.string	"_ZN6LoggerC2EPKc"
.LASF426:
	.string	"_ZN6Logger8FREE_LOGEPvPKcS2_i"
.LASF463:
	.string	"fprintf"
.LASF339:
	.string	"strtod"
.LASF114:
	.string	"to_int_type"
.LASF349:
	.string	"strtof"
.LASF90:
	.string	"__cmp_cust"
.LASF111:
	.string	"to_char_type"
.LASF340:
	.string	"strtol"
.LASF93:
	.string	"__debug"
.LASF298:
	.string	"frac_digits"
.LASF364:
	.string	"ferror"
.LASF291:
	.string	"currency_symbol"
.LASF231:
	.string	"short int"
.LASF58:
	.string	"_M_exception_object"
.LASF420:
	.string	"_ZN6Logger15log_dup_consoleEPKcz"
.LASF265:
	.string	"uint64_t"
.LASF183:
	.string	"wcsftime"
.LASF481:
	.string	"func"
.LASF354:
	.string	"__state"
.LASF259:
	.string	"int16_t"
.LASF324:
	.string	"atexit"
.LASF132:
	.string	"_ZNKSt15__exception_ptr13exception_ptrcvbEv"
.LASF462:
	.string	"__cxa_begin_catch"
.LASF42:
	.string	"_vtable_offset"
.LASF294:
	.string	"mon_grouping"
.LASF254:
	.string	"__uintmax_t"
.LASF407:
	.string	"setlevel"
.LASF413:
	.string	"getlog"
.LASF504:
	.string	"_ZNSt11char_traitsIcE6assignERcRKc"
.LASF417:
	.string	"log_no_indent"
.LASF178:
	.string	"wcscat"
.LASF448:
	.string	"malloc_usable_size"
.LASF383:
	.string	"tmpfile"
.LASF315:
	.string	"11__mbstate_t"
.LASF309:
	.string	"int_p_sign_posn"
.LASF56:
	.string	"__swappable_with_details"
.LASF470:
	.string	"_ZNSoD2Ev"
.LASF399:
	.string	"logname"
.LASF194:
	.string	"tm_zone"
.LASF243:
	.string	"__int64_t"
.LASF385:
	.string	"ungetc"
.LASF175:
	.string	"vwscanf"
.LASF177:
	.string	"wcrtomb"
.LASF286:
	.string	"lconv"
.LASF489:
	.string	"for_log"
.LASF26:
	.string	"_IO_read_end"
.LASF333:
	.string	"mbstowcs"
.LASF196:
	.string	"wcsncat"
.LASF515:
	.string	"_GLOBAL__sub_I__ZN6LoggerC2EPKc"
.LASF68:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4ERKS0_"
.LASF456:
	.string	"_Z10fsetindentP8_IO_FILEi"
.LASF476:
	.string	"__dso_handle"
.LASF264:
	.string	"uint32_t"
.LASF310:
	.string	"int_n_sign_posn"
.LASF38:
	.string	"_fileno"
.LASF102:
	.string	"_ZNSt11char_traitsIcE6lengthEPKc"
.LASF466:
	.string	"__cxa_throw"
.LASF279:
	.string	"uint_fast16_t"
.LASF152:
	.string	"fputws"
.LASF172:
	.string	"vswscanf"
.LASF439:
	.string	"LogMsgNullRet"
.LASF161:
	.string	"mbsrtowcs"
.LASF47:
	.string	"_wide_data"
.LASF62:
	.string	"_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv"
.LASF249:
	.string	"__int_least32_t"
.LASF75:
	.string	"_ZNSt15__exception_ptr13exception_ptrD4Ev"
.LASF449:
	.string	"free"
.LASF134:
	.string	"basic_ostream"
.LASF151:
	.string	"fputwc"
.LASF299:
	.string	"p_cs_precedes"
.LASF408:
	.string	"_ZN6Logger8setlevelEi"
.LASF189:
	.string	"tm_year"
.LASF70:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EOS0_"
.LASF54:
	.string	"short unsigned int"
.LASF245:
	.string	"__int_least8_t"
.LASF488:
	.string	"message"
.LASF370:
	.string	"fread"
.LASF277:
	.string	"int_fast64_t"
.LASF222:
	.string	"__ops"
.LASF88:
	.string	"__detail"
.LASF29:
	.string	"_IO_write_ptr"
.LASF477:
	.string	"__PRETTY_FUNCTION__"
.LASF57:
	.string	"__exception_ptr"
.LASF394:
	.string	"INDENT_SIZE"
.LASF261:
	.string	"int64_t"
.LASF492:
	.string	"__in_chrg"
.LASF79:
	.string	"_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv"
.LASF61:
	.string	"_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv"
.LASF388:
	.string	"iswctype"
.LASF257:
	.string	"__time_t"
.LASF109:
	.string	"assign"
.LASF289:
	.string	"grouping"
.LASF495:
	.string	"_ZN6LoggerD0Ev"
.LASF213:
	.string	"wprintf"
.LASF119:
	.string	"_ZNSt11char_traitsIcE7not_eofERKi"
.LASF434:
	.string	"_ZN6Logger8logerrnoEPKcz"
.LASF365:
	.string	"fflush"
.LASF335:
	.string	"quick_exit"
.LASF150:
	.string	"wchar_t"
.LASF502:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF131:
	.string	"~basic_ostream"
.LASF206:
	.string	"wcstoul"
.LASF115:
	.string	"_ZNSt11char_traitsIcE11to_int_typeERKc"
.LASF497:
	.string	"_ZN6LoggerD2Ev"
.LASF371:
	.string	"freopen"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd"
.LASF0:
	.string	"../ATC/Logger/Logger.cpp"
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
