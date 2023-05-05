	.file	"my_buffer.cpp"
	.text
.Ltext0:
	.file 0 "/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd" "../ATC/Buffer/my_buffer.cpp"
	.section	.rodata
	.align 32
	.type	_ZL11INDENT_SIZE, @object
	.size	_ZL11INDENT_SIZE, 4
_ZL11INDENT_SIZE:
	.long	2
	.zero	60
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
	.type	_ZL6CRINGE, @object
	.size	_ZL6CRINGE, 4
_ZL6CRINGE:
	.long	3565
	.zero	60
	.globl	__asan_stack_malloc_2
.LC0:
	.string	"1 48 144 8 txt_data"
	.align 32
.LC1:
	.string	"rb"
	.zero	61
	.align 32
.LC2:
	.string	"\033[91mCan't open file %s\n\033[0m"
	.zero	35
	.align 32
.LC3:
	.string	"GetSrcFile"
	.zero	53
	.align 32
.LC4:
	.string	"../ATC/Buffer/my_buffer.cpp"
	.zero	36
	.text
	.globl	_Z10GetSrcFilePKc
	.type	_Z10GetSrcFilePKc, @function
_Z10GetSrcFilePKc:
.LASANPC2270:
.LFB2270:
	.file 1 "../ATC/Buffer/my_buffer.cpp"
	.loc 1 11 5
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
	movq	%rdi, -328(%rbp)
	leaq	-288(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L1
	movl	$256, %edi
	call	__asan_stack_malloc_2@PLT
	testq	%rax, %rax
	je	.L1
	movq	%rax, %rbx
.L1:
	leaq	256(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC0(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2270(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$61937, 2147450884(%r12)
	movl	$-202116109, 2147450904(%r12)
	movl	$-202116109, 2147450908(%r12)
	.loc 1 12 5
	cmpq	$0, -328(%rbp)
	jne	.L5
	.loc 1 12 32 discriminator 1
	movl	$0, %eax
	jmp	.L15
.L5:
	.loc 1 14 22
	movq	-328(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -312(%rbp)
	.loc 1 15 6
	cmpq	$0, -312(%rbp)
	jne	.L7
	.loc 1 17 15
	movq	-328(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 19 15
	movl	$0, %eax
	jmp	.L15
.L7:
	.loc 1 23 9
	leaq	-208(%r13), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 1 25 18
	leaq	-208(%r13), %rax
	addq	$48, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L8
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L8:
	movq	-160(%r13), %rax
	.loc 1 25 5
	testq	%rax, %rax
	jg	.L9
	.loc 1 27 15
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 28 15
	movl	$0, %eax
	jmp	.L15
.L9:
	.loc 1 31 51
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 31 72
	leaq	-208(%r13), %rax
	addq	$48, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L10
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L10:
	.loc 1 31 72 is_stmt 0 discriminator 1
	movq	-160(%r13), %rax
	.loc 1 31 80 is_stmt 1 discriminator 1
	addq	$1, %rax
	.loc 1 31 62 discriminator 1
	movq	%rax, %rsi
	movl	$31, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	call	_ZN6Logger7CAL_LOGEmmPKcS1_i@PLT
	movq	%rax, -320(%rbp)
	.loc 1 32 5 discriminator 1
	cmpq	$0, -320(%rbp)
	jne	.L11
	.loc 1 33 15
	movl	$0, %eax
	jmp	.L15
.L11:
	.loc 1 35 69
	leaq	-208(%r13), %rax
	addq	$48, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L12
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L12:
	movq	-160(%r13), %rax
	.loc 1 35 33
	movq	%rax, %rsi
	movq	-312(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -304(%rbp)
	.loc 1 37 32
	movq	-304(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -296(%rbp)
	.loc 1 38 5
	cmpq	$0, -296(%rbp)
	je	.L13
	.loc 1 39 20
	movq	-296(%rbp), %rax
	movq	%rax, -320(%rbp)
.L13:
	.loc 1 41 28
	movq	-320(%rbp), %rdx
	movq	-304(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 41 30
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L14
	movq	%rax, %rdi
	call	__asan_report_store1@PLT
.L14:
	movb	$0, (%rcx)
	.loc 1 43 11
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 45 12
	movq	-320(%rbp), %rax
.L15:
	.loc 1 46 5 discriminator 1
	movq	%rax, %rdx
	.loc 1 11 5 discriminator 1
	cmpq	%rbx, %r14
	je	.L2
	.loc 1 11 5 is_stmt 0
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rsi
	movabsq	$-723401728380766731, %rdi
	movq	%rsi, 2147450880(%r12)
	movq	%rdi, 2147450888(%r12)
	movq	%rsi, 2147450896(%r12)
	movq	%rdi, 2147450904(%r12)
	movq	248(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L3
.L2:
	movq	$0, 2147450880(%r12)
	movq	$0, 2147450904(%r12)
.L3:
	.loc 1 46 5 is_stmt 1
	movq	%rdx, %rax
	addq	$304, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2270:
	.size	_Z10GetSrcFilePKc, .-_Z10GetSrcFilePKc
	.section	.rodata
	.align 32
.LC5:
	.string	"DivideBufferIntoLines"
	.zero	42
	.text
	.globl	_Z21DivideBufferIntoLinesPcm
	.type	_Z21DivideBufferIntoLinesPcm, @function
_Z21DivideBufferIntoLinesPcm:
.LASANPC2271:
.LFB2271:
	.loc 1 51 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 52 5
	cmpq	$0, -40(%rbp)
	jne	.L17
	.loc 1 52 33 discriminator 1
	movl	$0, %eax
	jmp	.L18
.L17:
	.loc 1 53 5
	cmpq	$0, -48(%rbp)
	jne	.L19
	.loc 1 53 33 discriminator 1
	movl	$0, %eax
	jmp	.L18
.L19:
	.loc 1 55 66
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 55 77
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movl	$55, %r9d
	leaq	.LC5(%rip), %r8
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	call	_ZN6Logger7CAL_LOGEmmPKcS1_i@PLT
	movq	%rax, -8(%rbp)
	.loc 1 56 5
	cmpq	$0, -8(%rbp)
	jne	.L20
	.loc 1 56 36 discriminator 1
	movl	$0, %eax
	jmp	.L18
.L20:
	.loc 1 58 12
	movq	$0, -24(%rbp)
	.loc 1 59 9
	movl	$0, -28(%rbp)
	.loc 1 60 12
	movq	$0, -16(%rbp)
	.loc 1 62 5
	jmp	.L21
.L34:
	.loc 1 64 21
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L22
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L22:
	movzbl	(%rcx), %eax
	.loc 1 64 9
	cmpb	$13, %al
	jne	.L23
	.loc 1 65 21
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 65 23
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L24
	movq	%rax, %rdi
	call	__asan_report_store1@PLT
.L24:
	movb	$32, (%rcx)
.L23:
	.loc 1 67 21
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L25
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L25:
	movzbl	(%rcx), %eax
	.loc 1 67 9
	cmpb	$10, %al
	jne	.L26
	.loc 1 69 21
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 69 23
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L27
	movq	%rax, %rdi
	call	__asan_report_store1@PLT
.L27:
	movb	$0, (%rcx)
	.loc 1 70 55
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 70 53
	movq	-16(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	.loc 1 70 37
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 70 53
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	.loc 1 70 39
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L28
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L28:
	movq	%rsi, (%rax)
	.loc 1 72 42
	movl	$0, -28(%rbp)
	.loc 1 73 25
	addq	$1, -24(%rbp)
	jmp	.L29
.L26:
	.loc 1 76 28
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L30
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L30:
	movzbl	(%rcx), %eax
	.loc 1 76 14
	testb	%al, %al
	jne	.L31
	.loc 1 78 55
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 78 53
	movq	-16(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	.loc 1 78 37
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 78 53
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	.loc 1 78 39
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L32
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L32:
	movq	%rsi, (%rax)
	.loc 1 80 25
	addq	$1, -24(%rbp)
	.loc 1 81 42
	movl	$0, -28(%rbp)
	jmp	.L29
.L31:
	.loc 1 85 41
	addl	$1, -28(%rbp)
.L29:
	.loc 1 87 10
	addq	$1, -16(%rbp)
.L21:
	.loc 1 62 20
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L33
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L33:
	movzbl	(%rcx), %eax
	.loc 1 62 22
	testb	%al, %al
	jne	.L34
	.loc 1 90 32
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 90 34
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L35
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L35:
	movq	$0, (%rax)
	.loc 1 92 12
	movq	-8(%rbp), %rax
.L18:
	.loc 1 93 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2271:
	.size	_Z21DivideBufferIntoLinesPcm, .-_Z21DivideBufferIntoLinesPcm
	.section	.rodata
	.align 32
.LC6:
	.string	"SplitBufferIntoLines"
	.zero	43
	.text
	.globl	_Z20SplitBufferIntoLinesPKcm
	.type	_Z20SplitBufferIntoLinesPKcm, @function
_Z20SplitBufferIntoLinesPKcm:
.LASANPC2272:
.LFB2272:
	.loc 1 96 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 97 5
	cmpq	$0, -40(%rbp)
	jne	.L37
	.loc 1 97 33 discriminator 1
	movl	$0, %eax
	jmp	.L38
.L37:
	.loc 1 98 5
	cmpq	$0, -48(%rbp)
	jne	.L39
	.loc 1 98 33 discriminator 1
	movl	$0, %eax
	jmp	.L38
.L39:
	.loc 1 100 66
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 100 77
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movl	$100, %r9d
	leaq	.LC6(%rip), %r8
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	call	_ZN6Logger7CAL_LOGEmmPKcS1_i@PLT
	movq	%rax, -8(%rbp)
	.loc 1 101 5
	cmpq	$0, -8(%rbp)
	jne	.L40
	.loc 1 101 36 discriminator 1
	movl	$0, %eax
	jmp	.L38
.L40:
	.loc 1 103 12
	movq	$0, -24(%rbp)
	.loc 1 104 9
	movl	$0, -28(%rbp)
	.loc 1 105 12
	movq	$0, -16(%rbp)
	.loc 1 107 5
	jmp	.L41
.L50:
	.loc 1 109 21
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L42
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L42:
	movzbl	(%rcx), %eax
	.loc 1 109 9
	cmpb	$10, %al
	jne	.L43
	.loc 1 111 55
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 111 53
	movq	-16(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	.loc 1 111 37
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 111 53
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	.loc 1 111 39
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L44
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L44:
	movq	%rsi, (%rax)
	.loc 1 113 42
	movl	$0, -28(%rbp)
	.loc 1 114 25
	addq	$1, -24(%rbp)
	jmp	.L45
.L43:
	.loc 1 117 28
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L46
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L46:
	movzbl	(%rcx), %eax
	.loc 1 117 14
	testb	%al, %al
	jne	.L47
	.loc 1 119 55
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 119 53
	movq	-16(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	.loc 1 119 37
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 119 53
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	.loc 1 119 39
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L48
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L48:
	movq	%rsi, (%rax)
	.loc 1 121 25
	addq	$1, -24(%rbp)
	.loc 1 122 42
	movl	$0, -28(%rbp)
	jmp	.L45
.L47:
	.loc 1 126 41
	addl	$1, -28(%rbp)
.L45:
	.loc 1 128 10
	addq	$1, -16(%rbp)
.L41:
	.loc 1 107 20
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L49
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L49:
	movzbl	(%rcx), %eax
	.loc 1 107 22
	testb	%al, %al
	jne	.L50
	.loc 1 131 32
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 131 34
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L51
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L51:
	movq	$0, (%rax)
	.loc 1 133 12
	movq	-8(%rbp), %rax
.L38:
	.loc 1 134 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2272:
	.size	_Z20SplitBufferIntoLinesPKcm, .-_Z20SplitBufferIntoLinesPKcm
	.globl	_Z10CountLinesPKcc
	.type	_Z10CountLinesPKcc, @function
_Z10CountLinesPKcc:
.LASANPC2273:
.LFB2273:
	.loc 1 137 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	.loc 1 138 5
	cmpq	$0, -24(%rbp)
	jne	.L53
	.loc 1 139 16
	movl	$0, %eax
	jmp	.L54
.L53:
	.loc 1 141 12
	movq	$0, -16(%rbp)
	.loc 1 142 12
	movq	$0, -8(%rbp)
	.loc 1 144 5
	jmp	.L55
.L61:
	.loc 1 146 19
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L56
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L56:
	movzbl	(%rcx), %eax
	.loc 1 146 9
	cmpb	%al, -28(%rbp)
	je	.L57
	.loc 1 146 47 discriminator 1
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L58
	.loc 1 146 47 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L58:
	.loc 1 146 47 discriminator 1
	movzbl	(%rcx), %eax
	.loc 1 146 36 is_stmt 1 discriminator 1
	testb	%al, %al
	jne	.L59
.L57:
	.loc 1 147 28
	addq	$1, -16(%rbp)
.L59:
	.loc 1 149 10
	addq	$1, -8(%rbp)
.L55:
	.loc 1 144 18
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L60
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L60:
	movzbl	(%rcx), %eax
	.loc 1 144 20
	testb	%al, %al
	jne	.L61
	.loc 1 152 12
	movq	-16(%rbp), %rax
.L54:
	.loc 1 153 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2273:
	.size	_Z10CountLinesPKcc, .-_Z10CountLinesPKcc
	.globl	_Z14RemoveCommentsPcc
	.type	_Z14RemoveCommentsPcc, @function
_Z14RemoveCommentsPcc:
.LASANPC2274:
.LFB2274:
	.loc 1 156 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	.loc 1 157 5
	cmpq	$0, -8(%rbp)
	je	.L70
	.loc 1 159 5
	jmp	.L65
.L69:
	.loc 1 161 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L66
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L66:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 161 9
	cmpb	%al, -12(%rbp)
	jne	.L67
	.loc 1 162 21
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
.L67:
	.loc 1 164 9
	addq	$1, -8(%rbp)
.L65:
	.loc 1 159 12
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L68
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L68:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 159 20
	testb	%al, %al
	jne	.L69
	.loc 1 167 5
	jmp	.L62
.L70:
	.loc 1 157 18
	nop
.L62:
	.loc 1 168 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2274:
	.size	_Z14RemoveCommentsPcc, .-_Z14RemoveCommentsPcc
	.globl	_Z14RemoveCommentsPcjc
	.type	_Z14RemoveCommentsPcjc, @function
_Z14RemoveCommentsPcjc:
.LASANPC2275:
.LFB2275:
	.loc 1 171 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movb	%al, -32(%rbp)
	.loc 1 172 5
	cmpq	$0, -24(%rbp)
	je	.L79
	.loc 1 175 14
	movl	$0, -4(%rbp)
	.loc 1 176 5
	jmp	.L74
.L78:
	.loc 1 178 24
	movl	-4(%rbp), %edx
	.loc 1 178 22
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 178 13
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L75
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L75:
	movzbl	(%rcx), %eax
	.loc 1 178 9
	cmpb	%al, -32(%rbp)
	jne	.L76
	.loc 1 179 24
	movl	-4(%rbp), %edx
	.loc 1 179 22
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 179 27
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L77
	movq	%rax, %rdi
	call	__asan_report_store1@PLT
.L77:
	movb	$0, (%rcx)
.L76:
	.loc 1 181 9
	addl	$1, -4(%rbp)
.L74:
	.loc 1 176 14
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L78
	.loc 1 184 5
	jmp	.L71
.L79:
	.loc 1 173 9
	nop
.L71:
	.loc 1 185 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2275:
	.size	_Z14RemoveCommentsPcjc, .-_Z14RemoveCommentsPcjc
	.globl	__asan_stack_malloc_0
	.section	.rodata
.LC7:
	.string	"1 32 4 1 n"
	.align 32
.LC8:
	.string	"%*[ \t\n\013]%n"
	.zero	53
	.text
	.globl	_Z10SkipSpacesPKc
	.type	_Z10SkipSpacesPKc, @function
_Z10SkipSpacesPKc:
.LASANPC2276:
.LFB2276:
	.loc 1 190 5
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
	subq	$80, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	leaq	-96(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L80
	movl	$64, %edi
	call	__asan_stack_malloc_0@PLT
	testq	%rax, %rax
	je	.L80
	movq	%rax, %rbx
.L80:
	leaq	64(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC7(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2276(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-202116348, 2147450884(%r12)
	.loc 1 191 5
	cmpq	$0, -104(%rbp)
	jne	.L84
	.loc 1 192 15
	movl	$0, %eax
	jmp	.L88
.L84:
	.loc 1 194 9
	leaq	-32(%r13), %rax
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
	je	.L86
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L86:
	movl	$0, -32(%r13)
	.loc 1 195 11
	leaq	-32(%r13), %rdx
	movq	-104(%rbp), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	.loc 1 197 24
	leaq	-32(%r13), %rax
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
	je	.L87
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L87:
	movl	-32(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 197 25
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
.L88:
	.loc 1 198 5 discriminator 1
	movq	%rax, %rdx
	.loc 1 190 5 discriminator 1
	cmpq	%rbx, %r14
	je	.L81
	.loc 1 190 5 is_stmt 0
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movq	56(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L82
.L81:
	movq	$0, 2147450880(%r12)
.L82:
	.loc 1 198 5 is_stmt 1
	movq	%rdx, %rax
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
	.size	_Z10SkipSpacesPKc, .-_Z10SkipSpacesPKc
	.section	.rodata
	.align 32
.LC9:
	.string	"\\n"
	.zero	61
	.align 32
.LC10:
	.string	"\\t"
	.zero	61
	.align 32
.LC11:
	.string	"\\b"
	.zero	61
	.align 32
.LC12:
	.string	"\\r"
	.zero	61
	.align 32
.LC13:
	.string	"\\0"
	.zero	61
	.text
	.globl	_Z8ShowLinePKc
	.type	_Z8ShowLinePKc, @function
_Z8ShowLinePKc:
.LASANPC2277:
.LFB2277:
	.loc 1 201 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 204 5
	jmp	.L90
.L104:
	.loc 1 206 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L91
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L91:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 206 9
	cmpb	$32, %al
	jne	.L92
	.loc 1 207 20
	movl	$95, %edi
	call	putchar@PLT
	jmp	.L93
.L92:
	.loc 1 209 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L94
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L94:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 209 9
	cmpb	$10, %al
	jne	.L95
	.loc 1 210 19
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L93
.L95:
	.loc 1 212 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L96
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L96:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 212 9
	cmpb	$9, %al
	jne	.L97
	.loc 1 213 19
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L93
.L97:
	.loc 1 215 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L98
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L98:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 215 9
	cmpb	$8, %al
	jne	.L99
	.loc 1 216 19
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L93
.L99:
	.loc 1 218 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L100
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L100:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 218 9
	cmpb	$13, %al
	jne	.L101
	.loc 1 219 19
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L93
.L101:
	.loc 1 221 22
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L102
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L102:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 221 20
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
.L93:
	.loc 1 223 13
	addq	$1, -8(%rbp)
.L90:
	.loc 1 204 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	movq	%rax, %rsi
	andl	$7, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%ecx, %edx
	testb	%dl, %dl
	je	.L103
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L103:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 204 17
	testb	%al, %al
	jne	.L104
	.loc 1 226 11
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 227 5
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2277:
	.size	_Z8ShowLinePKc, .-_Z8ShowLinePKc
	.globl	_Z7stricmpPKcS0_
	.type	_Z7stricmpPKcS0_, @function
_Z7stricmpPKcS0_:
.LASANPC2278:
.LFB2278:
	.loc 1 230 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 231 9
	movl	$0, -20(%rbp)
	.loc 1 233 5
	jmp	.L106
.L116:
	.loc 1 234 25
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 234 26
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L107
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L107:
	movzbl	(%rcx), %eax
	.loc 1 234 21
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ebx
	.loc 1 234 43
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 234 44
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L108
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L108:
	movzbl	(%rcx), %eax
	.loc 1 234 39
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	.loc 1 234 9
	cmpl	%eax, %ebx
	je	.L109
	.loc 1 235 23
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 235 24
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L110
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L110:
	movzbl	(%rcx), %eax
	movsbl	%al, %esi
	.loc 1 235 31
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 235 32
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %r8
	andl	$7, %r8d
	cmpb	%dl, %r8b
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L111
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L111:
	movzbl	(%rcx), %eax
	movsbl	%al, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	jmp	.L112
.L109:
	.loc 1 233 5
	addl	$1, -20(%rbp)
.L106:
	.loc 1 233 15 discriminator 1
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 233 16 discriminator 1
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L113
	.loc 1 233 16 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L113:
	.loc 1 233 16 discriminator 1
	movzbl	(%rcx), %eax
	.loc 1 233 18 is_stmt 1 discriminator 1
	testb	%al, %al
	je	.L114
	.loc 1 233 24 discriminator 2
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 233 25 discriminator 2
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L115
	.loc 1 233 25 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L115:
	.loc 1 233 25 discriminator 2
	movzbl	(%rcx), %eax
	.loc 1 233 18 is_stmt 1 discriminator 2
	testb	%al, %al
	jne	.L116
.L114:
	.loc 1 237 16
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 237 17
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L117
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L117:
	movzbl	(%rcx), %eax
	movsbl	%al, %esi
	.loc 1 237 24
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 237 25
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %r8
	andl	$7, %r8d
	cmpb	%dl, %r8b
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L118
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L118:
	movzbl	(%rcx), %eax
	movsbl	%al, %edx
	.loc 1 237 26
	movl	%esi, %eax
	subl	%edx, %eax
.L112:
	.loc 1 238 5
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2278:
	.size	_Z7stricmpPKcS0_, .-_Z7stricmpPKcS0_
	.globl	_Z8strnicmpPKcS0_i
	.type	_Z8strnicmpPKcS0_i, @function
_Z8strnicmpPKcS0_i:
.LASANPC2279:
.LFB2279:
	.loc 1 241 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 1 242 9
	movl	$0, -20(%rbp)
	.loc 1 244 5
	jmp	.L120
.L130:
	.loc 1 245 25
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 245 26
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L121
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L121:
	movzbl	(%rcx), %eax
	.loc 1 245 21
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ebx
	.loc 1 245 43
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 245 44
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L122
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L122:
	movzbl	(%rcx), %eax
	.loc 1 245 39
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	.loc 1 245 9
	cmpl	%eax, %ebx
	je	.L123
	.loc 1 246 23
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 246 24
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L124
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L124:
	movzbl	(%rcx), %eax
	movsbl	%al, %esi
	.loc 1 246 31
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 246 32
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %r8
	andl	$7, %r8d
	cmpb	%dl, %r8b
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L125
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L125:
	movzbl	(%rcx), %eax
	movsbl	%al, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	jmp	.L126
.L123:
	.loc 1 244 47
	addl	$1, -20(%rbp)
	subl	$1, -52(%rbp)
.L120:
	.loc 1 244 15 discriminator 1
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 244 16 discriminator 1
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L127
	.loc 1 244 16 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L127:
	.loc 1 244 16 discriminator 1
	movzbl	(%rcx), %eax
	.loc 1 244 27 is_stmt 1 discriminator 1
	testb	%al, %al
	je	.L128
	.loc 1 244 24 discriminator 2
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 244 25 discriminator 2
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L129
	.loc 1 244 25 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L129:
	.loc 1 244 25 discriminator 2
	movzbl	(%rcx), %eax
	.loc 1 244 18 is_stmt 1 discriminator 2
	testb	%al, %al
	je	.L128
	.loc 1 244 27 discriminator 3
	cmpl	$0, -52(%rbp)
	jne	.L130
.L128:
	.loc 1 248 16
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 248 17
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L131
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L131:
	movzbl	(%rcx), %eax
	movsbl	%al, %esi
	.loc 1 248 24
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 248 25
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %r8
	andl	$7, %r8d
	cmpb	%dl, %r8b
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L132
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L132:
	movzbl	(%rcx), %eax
	movsbl	%al, %edx
	.loc 1 248 26
	movl	%esi, %eax
	subl	%edx, %eax
.L126:
	.loc 1 249 5
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2279:
	.size	_Z8strnicmpPKcS0_i, .-_Z8strnicmpPKcS0_i
	.globl	_Z11strnicmprusPKcS0_i
	.type	_Z11strnicmprusPKcS0_i, @function
_Z11strnicmprusPKcS0_i:
.LASANPC2280:
.LFB2280:
	.loc 1 253 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 1 254 9
	movl	$0, -4(%rbp)
	.loc 1 263 5
	jmp	.L134
.L146:
	.loc 1 264 16
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 264 17
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L135
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L135:
	movzbl	(%rcx), %esi
	.loc 1 264 25
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 264 26
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %r8
	andl	$7, %r8d
	cmpb	%dl, %r8b
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L136
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L136:
	movzbl	(%rcx), %eax
	.loc 1 264 9
	cmpb	%al, %sil
	je	.L137
	.loc 1 264 38 discriminator 1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 264 39 discriminator 1
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L138
	.loc 1 264 39 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L138:
	.loc 1 264 39 discriminator 1
	movzbl	(%rcx), %eax
	movsbl	%al, %esi
	.loc 1 264 46 is_stmt 1 discriminator 1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 264 47 discriminator 1
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %r8
	andl	$7, %r8d
	cmpb	%dl, %r8b
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L139
	.loc 1 264 47 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L139:
	.loc 1 264 47 discriminator 1
	movzbl	(%rcx), %eax
	movsbl	%al, %edx
	.loc 1 264 41 is_stmt 1 discriminator 1
	movl	%esi, %eax
	subl	%edx, %eax
	.loc 1 264 34 discriminator 1
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	.loc 1 264 28 discriminator 1
	cmpl	$32, %eax
	je	.L137
	.loc 1 265 23
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 265 24
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L140
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L140:
	movzbl	(%rcx), %eax
	movsbl	%al, %esi
	.loc 1 265 31
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 265 32
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %r8
	andl	$7, %r8d
	cmpb	%dl, %r8b
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L141
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L141:
	movzbl	(%rcx), %eax
	movsbl	%al, %edx
	movl	%esi, %eax
	subl	%edx, %eax
	jmp	.L142
.L137:
	.loc 1 263 47
	addl	$1, -4(%rbp)
	subl	$1, -36(%rbp)
.L134:
	.loc 1 263 15 discriminator 1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 263 16 discriminator 1
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L143
	.loc 1 263 16 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L143:
	.loc 1 263 16 discriminator 1
	movzbl	(%rcx), %eax
	.loc 1 263 27 is_stmt 1 discriminator 1
	testb	%al, %al
	je	.L144
	.loc 1 263 24 discriminator 2
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 263 25 discriminator 2
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L145
	.loc 1 263 25 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L145:
	.loc 1 263 25 discriminator 2
	movzbl	(%rcx), %eax
	.loc 1 263 18 is_stmt 1 discriminator 2
	testb	%al, %al
	je	.L144
	.loc 1 263 27 discriminator 3
	cmpl	$0, -36(%rbp)
	jne	.L146
.L144:
	.loc 1 267 17
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 267 18
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L147
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L147:
	movzbl	(%rcx), %eax
	movsbl	%al, %esi
	.loc 1 267 25
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 267 26
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %r8
	andl	$7, %r8d
	cmpb	%dl, %r8b
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L148
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L148:
	movzbl	(%rcx), %eax
	movsbl	%al, %edx
	.loc 1 267 20
	movl	%esi, %eax
	subl	%edx, %eax
	.loc 1 267 13
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	.loc 1 267 5
	cmpl	$32, %eax
	jne	.L149
	.loc 1 268 16
	movl	$0, %eax
	jmp	.L142
.L149:
	.loc 1 270 15
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 270 16
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%dl, %dil
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L150
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L150:
	movzbl	(%rcx), %eax
	movsbl	%al, %esi
	.loc 1 270 23
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 270 24
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %r8
	andl	$7, %r8d
	cmpb	%dl, %r8b
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L151
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L151:
	movzbl	(%rcx), %eax
	movsbl	%al, %edx
	movl	%esi, %eax
	subl	%edx, %eax
.L142:
	.loc 1 271 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2280:
	.size	_Z11strnicmprusPKcS0_i, .-_Z11strnicmprusPKcS0_i
	.globl	_Z11ClearBufferv
	.type	_Z11ClearBufferv, @function
_Z11ClearBufferv:
.LASANPC2281:
.LFB2281:
	.loc 1 274 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 275 5
	jmp	.L153
.L154:
	.loc 1 276 9
	nop
.L153:
	.loc 1 275 19
	call	getchar@PLT
	.loc 1 275 22
	cmpl	$10, %eax
	setne	%al
	testb	%al, %al
	jne	.L154
	.loc 1 278 5
	nop
	.loc 1 279 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2281:
	.size	_Z11ClearBufferv, .-_Z11ClearBufferv
	.section	.rodata
	.align 32
.LC14:
	.string	""
	.zero	63
	.align 32
.LC15:
	.string	"%*s"
	.zero	60
	.text
	.globl	_Z10fsetindentP8_IO_FILEi
	.type	_Z10fsetindentP8_IO_FILEi, @function
_Z10fsetindentP8_IO_FILEi:
.LASANPC2282:
.LFB2282:
	.loc 1 282 5
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
	.loc 1 283 12
	movl	-12(%rbp), %eax
	leal	(%rax,%rax), %edx
	movq	-8(%rbp), %rax
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 285 5
	nop
	.loc 1 286 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2282:
	.size	_Z10fsetindentP8_IO_FILEi, .-_Z10fsetindentP8_IO_FILEi
	.globl	_Z9setindenti
	.type	_Z9setindenti, @function
_Z9setindenti:
.LASANPC2283:
.LFB2283:
	.loc 1 289 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 1 290 11
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	leaq	.LC14(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 292 5
	nop
	.loc 1 293 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2283:
	.size	_Z9setindenti, .-_Z9setindenti
	.globl	__asan_stack_malloc_1
	.section	.rodata
.LC16:
	.string	"1 32 24 12 func_297:297"
	.align 32
.LC17:
	.string	"BufferCtor"
	.zero	53
	.align 32
.LC18:
	.string	"%s:%d::CHECK: buf is false\n"
	.zero	36
	.align 32
.LC19:
	.string	"Failed (%s:%d, %s:%d)"
	.zero	42
	.align 32
.LC20:
	.string	"%s:%d returned SUCCESS "
	.zero	40
	.text
	.globl	_Z10BufferCtorP6BufferPKc
	.type	_Z10BufferCtorP6BufferPKc, @function
_Z10BufferCtorP6BufferPKc:
.LASANPC2284:
.LFB2284:
	.loc 1 296 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2284
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
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L160
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L160
	movq	%rax, %rbx
.L160:
	leaq	96(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC16(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2284(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 297 49
	leaq	-64(%r13), %rax
	leaq	.LC17(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE0:
	.loc 1 298 10
	cmpq	$0, -152(%rbp)
	jne	.L164
.LEHB1:
	.loc 1 298 41 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 298 47 discriminator 1
	movl	$298, %ecx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 298 129 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 298 151 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 298 151 is_stmt 0 discriminator 4
	movq	%rax, %rdi
	.loc 1 298 164 is_stmt 1 discriminator 4
	subq	$8, %rsp
	pushq	$298
	leaq	.LC17(%rip), %r9
	movl	$298, %r8d
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 1 298 164 is_stmt 0 discriminator 5
	addq	$16, %rsp
	movl	%eax, %r14d
	.loc 1 298 249 is_stmt 1 discriminator 5
	jmp	.L165
.L164:
	.loc 1 300 17
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L166
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L166:
	movq	-152(%rbp), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 301 14
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L167
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L167:
	movq	-152(%rbp), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 303 26
	movq	-152(%rbp), %rax
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
	je	.L168
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L168:
	movq	-152(%rbp), %rax
	movl	$1, 16(%rax)
	.loc 1 304 17
	movq	-152(%rbp), %rax
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
	je	.L169
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L169:
	movq	-152(%rbp), %rax
	movl	$1, 20(%rax)
	.cfi_escape 0x2e,0
	.loc 1 306 31
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 306 53
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 306 53 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 1 306 66 is_stmt 1 discriminator 1
	movl	$306, %r8d
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
.LEHE1:
	.loc 1 306 66 is_stmt 0 discriminator 2
	movl	%eax, %r14d
	.loc 1 306 117 is_stmt 1 discriminator 2
	nop
.L165:
	.loc 1 307 5
	leaq	-64(%r13), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r14d, %edx
	.loc 1 296 5
	cmpq	%rbx, %r15
	je	.L161
	jmp	.L173
.L172:
	endbr64
	.loc 1 307 5
	movq	%rax, %rbx
	leaq	-64(%r13), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L173:
	.loc 1 296 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L162
.L161:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L162:
	.loc 1 307 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2284:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2284:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2284-.LLSDACSB2284
.LLSDACSB2284:
	.uleb128 .LEHB0-.LFB2284
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2284
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L172-.LFB2284
	.uleb128 0
	.uleb128 .LEHB2-.LFB2284
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2284:
	.text
	.size	_Z10BufferCtorP6BufferPKc, .-_Z10BufferCtorP6BufferPKc
	.section	.rodata
.LC21:
	.string	"1 32 24 12 func_311:311"
	.align 32
.LC22:
	.string	"buf"
	.zero	60
	.align 32
.LC23:
	.string	"ASSERTLOG:: Condition (%s) is false\n"
	.zero	59
	.align 32
.LC24:
	.string	"\033[93mASSERTLOG:: \033[0mCondition\033[95m (%s) \033[0mis \033[91mfalse\n\033[0m"
	.zero	32
	.align 32
.LC25:
	.string	"int BufferCtor(Buffer*, int)"
	.zero	35
	.align 32
.LC26:
	.string	"\t%s:%d, function: %s\n"
	.zero	42
	.align 32
.LC27:
	.string	"It matches to error: (code %d) %s\n\n"
	.zero	60
	.align 32
.LC28:
	.string	"Shutting down the system (%s:%d)"
	.zero	63
	.align 32
.LC29:
	.string	"echo LOX\n"
	.zero	54
	.text
	.globl	_Z10BufferCtorP6Bufferi
	.type	_Z10BufferCtorP6Bufferi, @function
_Z10BufferCtorP6Bufferi:
.LASANPC2285:
.LFB2285:
	.loc 1 310 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2285
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
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L174
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L174
	movq	%rax, %rbx
.L174:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC21(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2285(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 311 49
	leaq	-64(%r14), %rax
	leaq	.LC17(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE3:
	.loc 1 312 10
	cmpq	$0, -152(%rbp)
	jne	.L178
.LEHB4:
	.loc 1 312 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 312 49 discriminator 1
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 312 105 discriminator 3
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 312 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 312 255 discriminator 4
	leaq	.LC25(%rip), %r8
	movl	$312, %ecx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 312 347 discriminator 6
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	movl	$312, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 312 452 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 1 312 458 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 312 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 312 33 discriminator 9
	movl	$312, %ecx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 312 92 discriminator 11
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 312 134 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 312 156 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 312 156 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 1 312 169 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$312
	leaq	.LC17(%rip), %r9
	movl	$312, %r8d
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 1 312 169 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 1 312 254 is_stmt 1 discriminator 14
	jmp	.L179
.L178:
	.cfi_escape 0x2e,0
	.loc 1 314 52
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 314 63
	movl	-156(%rbp), %eax
	cltq
	movl	$314, %r9d
	leaq	.LC17(%rip), %r8
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	call	_ZN6Logger7CAL_LOGEmmPKcS1_i@PLT
	.loc 1 314 17 discriminator 1
	movq	-152(%rbp), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L180
	.loc 1 314 17 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L180:
	.loc 1 314 17 discriminator 2
	movq	-152(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 1 315 15 is_stmt 1 discriminator 2
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 315 5 discriminator 2
	testq	%rax, %rax
	jne	.L181
	.loc 1 315 49 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 315 71 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 315 71 is_stmt 0 discriminator 2
	movq	%rax, %rdi
	.loc 1 315 84 is_stmt 1 discriminator 2
	subq	$8, %rsp
	pushq	$315
	leaq	.LC17(%rip), %r9
	movl	$315, %r8d
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 1 315 84 is_stmt 0 discriminator 3
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 1 315 169 is_stmt 1 discriminator 3
	jmp	.L179
.L181:
	.loc 1 317 29
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L182
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L182:
	movq	-152(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 317 14
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L183
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L183:
	movq	-152(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 319 26
	movq	-152(%rbp), %rax
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
	je	.L184
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L184:
	movq	-152(%rbp), %rax
	movl	$1, 16(%rax)
	.loc 1 320 17
	movq	-152(%rbp), %rax
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
	je	.L185
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L185:
	movq	-152(%rbp), %rax
	movl	$1, 20(%rax)
	.cfi_escape 0x2e,0
	.loc 1 322 31
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 322 53
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 322 53 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 1 322 66 is_stmt 1 discriminator 1
	movl	$322, %r8d
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
.LEHE4:
	.loc 1 322 66 is_stmt 0 discriminator 2
	movl	%eax, %r13d
	.loc 1 322 117 is_stmt 1 discriminator 2
	nop
.L179:
	.loc 1 323 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r13d, %edx
	.loc 1 310 5
	cmpq	%rbx, %r15
	je	.L175
	jmp	.L189
.L188:
	endbr64
	.loc 1 323 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L189:
	.loc 1 310 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L176
.L175:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L176:
	.loc 1 323 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2285:
	.section	.gcc_except_table
.LLSDA2285:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2285-.LLSDACSB2285
.LLSDACSB2285:
	.uleb128 .LEHB3-.LFB2285
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2285
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L188-.LFB2285
	.uleb128 0
	.uleb128 .LEHB5-.LFB2285
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2285:
	.text
	.size	_Z10BufferCtorP6Bufferi, .-_Z10BufferCtorP6Bufferi
	.section	.rodata
	.align 32
.LC30:
	.string	"void BufferSkipSpaces(Buffer*)"
	.zero	33
	.align 32
.LC31:
	.string	"%*[ \t\013]%n"
	.zero	54
	.text
	.globl	_Z16BufferSkipSpacesP6Buffer
	.type	_Z16BufferSkipSpacesP6Buffer, @function
_Z16BufferSkipSpacesP6Buffer:
.LASANPC2286:
.LFB2286:
	.loc 1 338 5
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
	subq	$80, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	leaq	-96(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L190
	movl	$64, %edi
	call	__asan_stack_malloc_0@PLT
	testq	%rax, %rax
	je	.L190
	movq	%rax, %rbx
.L190:
	leaq	64(%rbx), %rax
	movq	%rax, %r12
	movq	$1102416563, (%rbx)
	leaq	.LC7(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2286(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r13
	shrq	$3, %r13
	movl	$-235802127, 2147450880(%r13)
	movl	$-202116348, 2147450884(%r13)
	.loc 1 339 6
	cmpq	$0, -104(%rbp)
	jne	.L194
	.loc 1 339 33 discriminator 1
	call	__asan_handle_no_return@PLT
	leaq	.LC30(%rip), %rax
	movq	%rax, %rcx
	movl	$339, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L194:
	.loc 1 341 9
	leaq	-32(%r12), %rax
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
	je	.L195
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L195:
	movl	$0, -32(%r12)
	.loc 1 343 5
	jmp	.L196
.L209:
	.loc 1 346 21
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L197
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L197:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 346 15
	leaq	-32(%r12), %rdx
	leaq	.LC31(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	.loc 1 348 19
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L198
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L198:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 348 13
	movq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%cl, %dil
	setge	%cl
	andl	%esi, %ecx
	testb	%cl, %cl
	je	.L199
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L199:
	movzbl	(%rdx), %eax
	.loc 1 348 9
	cmpb	$10, %al
	jne	.L200
	.loc 1 350 18 discriminator 1
	movq	-104(%rbp), %rax
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
	je	.L201
	.loc 1 350 18 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L201:
	.loc 1 350 18 discriminator 1
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 350 33 is_stmt 1 discriminator 1
	leal	1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 351 25 discriminator 1
	movq	-104(%rbp), %rax
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
	je	.L202
	.loc 1 351 25 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L202:
	.loc 1 351 25 discriminator 1
	movq	-104(%rbp), %rax
	movl	$1, 20(%rax)
	.loc 1 353 22 is_stmt 1 discriminator 1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 353 25 discriminator 1
	leaq	-32(%r12), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	cmpb	$3, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L203
	.loc 1 353 25 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L203:
	.loc 1 353 25 discriminator 1
	movl	-32(%r12), %eax
	cltq
	.loc 1 353 22 is_stmt 1 discriminator 1
	addq	$1, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 355 13 discriminator 1
	jmp	.L196
.L200:
	.loc 1 358 18
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L204
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L204:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 358 21
	leaq	-32(%r12), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	cmpb	$3, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L205
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L205:
	movl	-32(%r12), %eax
	cltq
	.loc 1 358 18
	leaq	(%rcx,%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 359 21
	movq	-104(%rbp), %rax
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
	je	.L206
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L206:
	movq	-104(%rbp), %rax
	movl	20(%rax), %edx
	movl	-32(%r12), %eax
	addl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 361 11
	movl	$0, -32(%r12)
.L196:
	.loc 1 343 18
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L207
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L207:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 343 12
	movq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%cl, %dil
	setge	%cl
	andl	%esi, %ecx
	testb	%cl, %cl
	je	.L208
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L208:
	movzbl	(%rdx), %eax
	.loc 1 344 30
	cmpb	$32, %al
	je	.L209
	.loc 1 343 38
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 343 32
	movq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%cl, %dil
	setge	%cl
	andl	%esi, %ecx
	testb	%cl, %cl
	je	.L210
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L210:
	movzbl	(%rdx), %eax
	.loc 1 343 29
	cmpb	$9, %al
	je	.L209
	.loc 1 344 18 discriminator 1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 344 12 discriminator 1
	movq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%cl, %dil
	setge	%cl
	andl	%esi, %ecx
	testb	%cl, %cl
	je	.L211
	.loc 1 344 12 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L211:
	.loc 1 344 12 discriminator 1
	movzbl	(%rdx), %eax
	.loc 1 343 50 is_stmt 1 discriminator 1
	cmpb	$11, %al
	je	.L209
	.loc 1 344 39
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 344 33
	movq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%cl, %dil
	setge	%cl
	andl	%esi, %ecx
	testb	%cl, %cl
	je	.L212
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L212:
	movzbl	(%rdx), %eax
	.loc 1 344 30
	cmpb	$10, %al
	je	.L209
	.loc 1 370 5
	nop
	.loc 1 338 5
	cmpq	%rbx, %r14
	je	.L191
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r13)
	movq	56(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L192
.L191:
	movq	$0, 2147450880(%r13)
.L192:
	.loc 1 371 5
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2286:
	.size	_Z16BufferSkipSpacesP6Buffer, .-_Z16BufferSkipSpacesP6Buffer
	.section	.rodata
	.align 32
.LC32:
	.string	"void BufferSkipCommentLine(Buffer*, char)"
	.zero	54
	.align 32
.LC33:
	.string	"%*[^\n]%n"
	.zero	55
	.text
	.globl	_Z21BufferSkipCommentLineP6Bufferc
	.type	_Z21BufferSkipCommentLineP6Bufferc, @function
_Z21BufferSkipCommentLineP6Bufferc:
.LASANPC2287:
.LFB2287:
	.loc 1 374 5
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
	subq	$80, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	movl	%esi, %eax
	movb	%al, -108(%rbp)
	leaq	-96(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L214
	movl	$64, %edi
	call	__asan_stack_malloc_0@PLT
	testq	%rax, %rax
	je	.L214
	movq	%rax, %rbx
.L214:
	leaq	64(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC7(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2287(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-202116348, 2147450884(%r12)
	.loc 1 375 6
	cmpq	$0, -104(%rbp)
	jne	.L218
	.loc 1 375 33 discriminator 1
	call	__asan_handle_no_return@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	movl	$375, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L218:
.LBB2:
	.loc 1 377 19
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10BufferLookP6Buffer
	.loc 1 377 28
	movsbl	-108(%rbp), %edx
	.loc 1 377 25
	cmpl	%edx, %eax
	sete	%al
	.loc 1 377 5
	testb	%al, %al
	je	.L227
.LBB3:
	.loc 1 379 13
	leaq	-32(%r13), %rax
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
	je	.L220
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L220:
	movl	$0, -32(%r13)
	.loc 1 380 21
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L221
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L221:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 380 15
	leaq	-32(%r13), %rdx
	leaq	.LC33(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	.loc 1 382 18
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L222
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L222:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 382 21
	leaq	-32(%r13), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	cmpb	$3, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L223
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L223:
	movl	-32(%r13), %eax
	cltq
	.loc 1 382 18
	addq	$1, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 385 14
	movq	-104(%rbp), %rax
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
	je	.L224
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L224:
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 385 29
	leal	1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 386 21
	movq	-104(%rbp), %rax
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
	je	.L225
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L225:
	movq	-104(%rbp), %rax
	movl	$1, 20(%rax)
.LBE3:
.LBE2:
	.loc 1 389 5
	nop
.L227:
	nop
	.loc 1 374 5
	cmpq	%rbx, %r14
	je	.L215
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movq	56(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L216
.L215:
	movq	$0, 2147450880(%r12)
.L216:
	.loc 1 390 5
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2287:
	.size	_Z21BufferSkipCommentLineP6Bufferc, .-_Z21BufferSkipCommentLineP6Bufferc
	.section	.rodata
	.align 32
.LC34:
	.string	"int BufferGetCh(Buffer*)"
	.zero	39
	.text
	.globl	_Z11BufferGetChP6Buffer
	.type	_Z11BufferGetChP6Buffer, @function
_Z11BufferGetChP6Buffer:
.LASANPC2288:
.LFB2288:
	.loc 1 393 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 394 6
	cmpq	$0, -8(%rbp)
	jne	.L229
	.loc 1 394 33 discriminator 1
	call	__asan_handle_no_return@PLT
	leaq	.LC34(%rip), %rax
	movq	%rax, %rcx
	movl	$394, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L229:
	.loc 1 396 21
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z16BufferSkipSpacesP6Buffer
	.loc 1 398 10
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
	je	.L230
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L230:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	.loc 1 398 16
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 400 19
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L231
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L231:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 400 22
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	.loc 1 400 12
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%sil
	movq	%rdx, %rdi
	andl	$7, %edi
	cmpb	%cl, %dil
	setge	%cl
	andl	%esi, %ecx
	testb	%cl, %cl
	je	.L232
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L232:
	movzbl	(%rax), %eax
	.loc 1 400 24
	movsbl	%al, %eax
	.loc 1 401 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2288:
	.size	_Z11BufferGetChP6Buffer, .-_Z11BufferGetChP6Buffer
	.section	.rodata
	.align 32
.LC35:
	.string	"int BufferLook(Buffer*)"
	.zero	40
	.text
	.globl	_Z10BufferLookP6Buffer
	.type	_Z10BufferLookP6Buffer, @function
_Z10BufferLookP6Buffer:
.LASANPC2289:
.LFB2289:
	.loc 1 404 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 405 6
	cmpq	$0, -8(%rbp)
	jne	.L235
	.loc 1 405 33 discriminator 1
	call	__asan_handle_no_return@PLT
	leaq	.LC35(%rip), %rax
	movq	%rax, %rcx
	movl	$405, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L235:
	.loc 1 407 21
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z16BufferSkipSpacesP6Buffer
	.loc 1 409 19
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L236
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L236:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 409 12
	movq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%sil
	movq	%rax, %rdi
	andl	$7, %edi
	cmpb	%cl, %dil
	setge	%cl
	andl	%esi, %ecx
	testb	%cl, %cl
	je	.L237
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L237:
	movzbl	(%rdx), %eax
	.loc 1 409 22
	movsbl	%al, %eax
	.loc 1 410 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2289:
	.size	_Z10BufferLookP6Buffer, .-_Z10BufferLookP6Buffer
	.section	.rodata
	.align 32
.LC36:
	.string	"int BufferGetDouble(Buffer*, double*)"
	.zero	58
	.align 32
.LC37:
	.string	"%lg%n"
	.zero	58
	.text
	.globl	_Z15BufferGetDoubleP6BufferPd
	.type	_Z15BufferGetDoubleP6BufferPd, @function
_Z15BufferGetDoubleP6BufferPd:
.LASANPC2290:
.LFB2290:
	.loc 1 413 5
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
	je	.L239
	movl	$64, %edi
	call	__asan_stack_malloc_0@PLT
	testq	%rax, %rax
	je	.L239
	movq	%rax, %rbx
.L239:
	leaq	64(%rbx), %rax
	movq	%rax, %r12
	movq	$1102416563, (%rbx)
	leaq	.LC7(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2290(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r13
	shrq	$3, %r13
	movl	$-235802127, 2147450880(%r13)
	movl	$-202116348, 2147450884(%r13)
	.loc 1 414 6
	cmpq	$0, -104(%rbp)
	jne	.L243
	.loc 1 414 33 discriminator 1
	call	__asan_handle_no_return@PLT
	leaq	.LC36(%rip), %rax
	movq	%rax, %rcx
	movl	$414, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L243:
	.loc 1 419 9
	leaq	-32(%r12), %rax
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
	je	.L244
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L244:
	movl	$0, -32(%r12)
	.loc 1 421 21
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L245
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L245:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 421 15
	leaq	-32(%r12), %rcx
	movq	-112(%rbp), %rdx
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	.loc 1 421 44
	testl	%eax, %eax
	sete	%al
	.loc 1 421 5
	testb	%al, %al
	je	.L246
	.loc 1 422 16
	leaq	-32(%r12), %rax
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
	je	.L247
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L247:
	movl	-32(%r12), %eax
	jmp	.L252
.L246:
	.loc 1 424 14
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L249
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L249:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 424 17
	leaq	-32(%r12), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	cmpb	$3, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L250
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L250:
	movl	-32(%r12), %eax
	cltq
	.loc 1 424 14
	leaq	(%rcx,%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 425 17
	movq	-104(%rbp), %rax
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
	je	.L251
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L251:
	movq	-104(%rbp), %rax
	movl	20(%rax), %edx
	movl	-32(%r12), %eax
	addl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 427 12
	movl	-32(%r12), %eax
.L252:
	.loc 1 428 5 discriminator 1
	movl	%eax, %edx
	.loc 1 413 5 discriminator 1
	cmpq	%rbx, %r14
	je	.L240
	.loc 1 413 5 is_stmt 0
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r13)
	movq	56(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L241
.L240:
	movq	$0, 2147450880(%r13)
.L241:
	.loc 1 428 5 is_stmt 1
	movl	%edx, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2290:
	.size	_Z15BufferGetDoubleP6BufferPd, .-_Z15BufferGetDoubleP6BufferPd
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LASANPC2957:
.LFB2957:
	.loc 1 428 5
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
	.loc 1 428 5
	cmpl	$1, -4(%rbp)
	jne	.L256
	.loc 1 428 5 is_stmt 0 discriminator 1
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__asan_before_dynamic_init@PLT
	cmpl	$65535, -8(%rbp)
	jne	.L255
	.file 2 "/usr/include/c++/11/iostream"
	.loc 2 74 25 is_stmt 1
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
.L255:
	.loc 2 74 25 is_stmt 0 discriminator 1
	call	__asan_after_dynamic_init@PLT
.L256:
	.loc 1 428 5 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2957:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z10GetSrcFilePKc, @function
_GLOBAL__sub_I__Z10GetSrcFilePKc:
.LASANPC2958:
.LFB2958:
	.loc 1 428 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 428 5
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2958:
	.size	_GLOBAL__sub_I__Z10GetSrcFilePKc, .-_GLOBAL__sub_I__Z10GetSrcFilePKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z10GetSrcFilePKc
	.section	.rodata
	.align 8
.LC38:
	.string	"../ATC/RandomStuff/CommonEnums.h"
	.section	.data.rel.local,"aw"
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC38
	.long	3
	.long	11
	.section	.rodata
.LC39:
	.string	"../ATC/Logger/LogConfig.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC39
	.long	3
	.long	12
	.section	.rodata
.LC40:
	.string	"/usr/include/c++/11/iostream"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC3, @object
	.size	.LASANLOC3, 16
.LASANLOC3:
	.quad	.LC40
	.long	74
	.long	25
	.section	.rodata
.LC41:
	.string	"../ATC/Buffer/my_buffer.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC4, @object
	.size	.LASANLOC4, 16
.LASANLOC4:
	.quad	.LC41
	.long	32
	.long	11
	.section	.rodata
.LC42:
	.string	"CRINGE"
.LC43:
	.string	"STD_LOG_NAME"
.LC44:
	.string	"__ioinit"
.LC45:
	.string	"INDENT_SIZE"
.LC46:
	.string	"*.LC26"
.LC47:
	.string	"*.LC9"
.LC48:
	.string	"*.LC3"
.LC49:
	.string	"*.LC20"
.LC50:
	.string	"*.LC32"
.LC51:
	.string	"*.LC11"
.LC52:
	.string	"*.LC30"
.LC53:
	.string	"*.LC18"
.LC54:
	.string	"*.LC23"
.LC55:
	.string	"*.LC5"
.LC56:
	.string	"*.LC6"
.LC57:
	.string	"*.LC4"
.LC58:
	.string	"*.LC31"
.LC59:
	.string	"*.LC12"
.LC60:
	.string	"*.LC15"
.LC61:
	.string	"*.LC33"
.LC62:
	.string	"*.LC34"
.LC63:
	.string	"*.LC29"
.LC64:
	.string	"*.LC25"
.LC65:
	.string	"*.LC17"
.LC66:
	.string	"*.LC37"
.LC67:
	.string	"*.LC35"
.LC68:
	.string	"*.LC8"
.LC69:
	.string	"*.LC27"
.LC70:
	.string	"*.LC22"
.LC71:
	.string	"*.LC36"
.LC72:
	.string	"*.LC24"
.LC73:
	.string	"*.LC13"
.LC74:
	.string	"*.LC14"
.LC75:
	.string	"*.LC28"
.LC76:
	.string	"*.LC2"
.LC77:
	.string	"*.LC1"
.LC78:
	.string	"*.LC19"
.LC79:
	.string	"*.LC10"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 2432
.LASAN0:
	.quad	_ZL6CRINGE
	.quad	4
	.quad	64
	.quad	.LC42
	.quad	.LC4
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	_ZL12STD_LOG_NAME
	.quad	18
	.quad	64
	.quad	.LC43
	.quad	.LC4
	.quad	0
	.quad	.LASANLOC2
	.quad	0
	.quad	_ZStL8__ioinit
	.quad	1
	.quad	64
	.quad	.LC44
	.quad	.LC4
	.quad	1
	.quad	.LASANLOC3
	.quad	0
	.quad	_ZL11INDENT_SIZE
	.quad	4
	.quad	64
	.quad	.LC45
	.quad	.LC4
	.quad	0
	.quad	.LASANLOC4
	.quad	0
	.quad	.LC26
	.quad	22
	.quad	64
	.quad	.LC46
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	3
	.quad	64
	.quad	.LC47
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	11
	.quad	64
	.quad	.LC48
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	24
	.quad	64
	.quad	.LC49
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC32
	.quad	42
	.quad	96
	.quad	.LC50
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	3
	.quad	64
	.quad	.LC51
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC30
	.quad	31
	.quad	64
	.quad	.LC52
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC18
	.quad	28
	.quad	64
	.quad	.LC53
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC23
	.quad	37
	.quad	96
	.quad	.LC54
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	22
	.quad	64
	.quad	.LC55
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	21
	.quad	64
	.quad	.LC56
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	28
	.quad	64
	.quad	.LC57
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC31
	.quad	10
	.quad	64
	.quad	.LC58
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	3
	.quad	64
	.quad	.LC59
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC15
	.quad	4
	.quad	64
	.quad	.LC60
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC33
	.quad	9
	.quad	64
	.quad	.LC61
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC34
	.quad	25
	.quad	64
	.quad	.LC62
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC29
	.quad	10
	.quad	64
	.quad	.LC63
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC25
	.quad	29
	.quad	64
	.quad	.LC64
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC17
	.quad	11
	.quad	64
	.quad	.LC65
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC37
	.quad	6
	.quad	64
	.quad	.LC66
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC35
	.quad	24
	.quad	64
	.quad	.LC67
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	11
	.quad	64
	.quad	.LC68
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC27
	.quad	36
	.quad	96
	.quad	.LC69
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC22
	.quad	4
	.quad	64
	.quad	.LC70
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC36
	.quad	38
	.quad	96
	.quad	.LC71
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC24
	.quad	64
	.quad	96
	.quad	.LC72
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	3
	.quad	64
	.quad	.LC73
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC14
	.quad	1
	.quad	64
	.quad	.LC74
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC28
	.quad	33
	.quad	96
	.quad	.LC75
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	29
	.quad	64
	.quad	.LC76
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	3
	.quad	64
	.quad	.LC77
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC19
	.quad	22
	.quad	64
	.quad	.LC78
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	3
	.quad	64
	.quad	.LC79
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB2959:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$38, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2959:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB2960:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$38, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2960:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 4 "/usr/include/stdlib.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 8 "/usr/include/c++/11/cstdlib"
	.file 9 "/usr/include/c++/11/bits/std_abs.h"
	.file 10 "/usr/include/c++/11/cwchar"
	.file 11 "/usr/include/c++/11/type_traits"
	.file 12 "/usr/include/c++/11/bits/exception_ptr.h"
	.file 13 "/usr/include/x86_64-linux-gnu/c++/11/bits/c++config.h"
	.file 14 "/usr/include/c++/11/concepts"
	.file 15 "/usr/include/c++/11/bits/iterator_concepts.h"
	.file 16 "/usr/include/c++/11/bits/ranges_cmp.h"
	.file 17 "/usr/include/c++/11/compare"
	.file 18 "/usr/include/c++/11/debug/debug.h"
	.file 19 "/usr/include/c++/11/cstdint"
	.file 20 "/usr/include/c++/11/clocale"
	.file 21 "/usr/include/c++/11/numbers"
	.file 22 "/usr/include/c++/11/cstdio"
	.file 23 "/usr/include/c++/11/bits/ios_base.h"
	.file 24 "/usr/include/c++/11/cwctype"
	.file 25 "/usr/include/c++/11/bits/predefined_ops.h"
	.file 26 "/usr/include/c++/11/stdlib.h"
	.file 27 "<built-in>"
	.file 28 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 29 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.file 30 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.file 31 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 32 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 33 "/usr/include/stdio.h"
	.file 34 "../ATC/Buffer/my_buffer.h"
	.file 35 "/usr/include/x86_64-linux-gnu/bits/struct_stat.h"
	.file 36 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
	.file 37 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 38 "/usr/include/wchar.h"
	.file 39 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 40 "/usr/include/c++/11/bits/ptr_traits.h"
	.file 41 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 42 "/usr/include/stdint.h"
	.file 43 "/usr/include/locale.h"
	.file 44 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
	.file 45 "/usr/include/wctype.h"
	.file 46 "../ATC/Logger/LogConfig.h"
	.file 47 "../ATC/Logger/FunctionLogger.h"
	.file 48 "../ATC/RandomStuff/CommonEnums.h"
	.file 49 "/usr/include/assert.h"
	.file 50 "/usr/include/string.h"
	.file 51 "../ATC/Logger/Logger.h"
	.file 52 "/usr/include/ctype.h"
	.file 53 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.file 54 "/usr/include/c++/11/bits/algorithmfwd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2f8b
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x39
	.long	.LASF491
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0xd1
	.byte	0x1b
	.long	0x3a
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xa
	.byte	0x20
	.byte	0x3
	.long	.LASF3
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.long	.LASF4
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.long	.LASF5
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.long	.LASF6
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.long	.LASF7
	.uleb128 0x22
	.byte	0x8
	.byte	0x4
	.byte	0x3c
	.byte	0x3
	.long	.LASF11
	.long	0x8c
	.uleb128 0x3
	.long	.LASF8
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x8c
	.byte	0
	.uleb128 0x23
	.string	"rem"
	.byte	0x4
	.byte	0x3e
	.byte	0x9
	.long	0x8c
	.byte	0x4
	.byte	0
	.uleb128 0x3a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.long	0x8c
	.uleb128 0x4
	.long	.LASF10
	.byte	0x4
	.byte	0x3f
	.byte	0x5
	.long	0x64
	.uleb128 0x22
	.byte	0x10
	.byte	0x4
	.byte	0x44
	.byte	0x3
	.long	.LASF12
	.long	0xcc
	.uleb128 0x3
	.long	.LASF8
	.byte	0x4
	.byte	0x45
	.byte	0xe
	.long	0xcc
	.byte	0
	.uleb128 0x23
	.string	"rem"
	.byte	0x4
	.byte	0x46
	.byte	0xe
	.long	0xcc
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x47
	.byte	0x5
	.long	0xa4
	.uleb128 0x22
	.byte	0x10
	.byte	0x4
	.byte	0x4e
	.byte	0x3
	.long	.LASF15
	.long	0x107
	.uleb128 0x3
	.long	.LASF8
	.byte	0x4
	.byte	0x4f
	.byte	0x13
	.long	0x107
	.byte	0
	.uleb128 0x23
	.string	"rem"
	.byte	0x4
	.byte	0x50
	.byte	0x13
	.long	0x107
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0x51
	.byte	0x5
	.long	0xdf
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.long	.LASF18
	.uleb128 0x6
	.long	0x12d
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0x9
	.long	0x126
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF20
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF21
	.uleb128 0x4
	.long	.LASF22
	.byte	0x5
	.byte	0x25
	.byte	0x15
	.long	0x14c
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF23
	.uleb128 0x4
	.long	.LASF24
	.byte	0x5
	.byte	0x26
	.byte	0x17
	.long	0x132
	.uleb128 0x4
	.long	.LASF25
	.byte	0x5
	.byte	0x27
	.byte	0x1a
	.long	0x16b
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.long	.LASF26
	.uleb128 0x4
	.long	.LASF27
	.byte	0x5
	.byte	0x28
	.byte	0x1c
	.long	0x11a
	.uleb128 0x4
	.long	.LASF28
	.byte	0x5
	.byte	0x29
	.byte	0x14
	.long	0x8c
	.uleb128 0x9
	.long	0x17e
	.uleb128 0x4
	.long	.LASF29
	.byte	0x5
	.byte	0x2a
	.byte	0x16
	.long	0x139
	.uleb128 0x4
	.long	.LASF30
	.byte	0x5
	.byte	0x2c
	.byte	0x19
	.long	0xcc
	.uleb128 0x4
	.long	.LASF31
	.byte	0x5
	.byte	0x2d
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF32
	.byte	0x5
	.byte	0x34
	.byte	0x12
	.long	0x140
	.uleb128 0x4
	.long	.LASF33
	.byte	0x5
	.byte	0x35
	.byte	0x13
	.long	0x153
	.uleb128 0x4
	.long	.LASF34
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.long	0x15f
	.uleb128 0x4
	.long	.LASF35
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.long	0x172
	.uleb128 0x4
	.long	.LASF36
	.byte	0x5
	.byte	0x38
	.byte	0x13
	.long	0x17e
	.uleb128 0x4
	.long	.LASF37
	.byte	0x5
	.byte	0x39
	.byte	0x14
	.long	0x18f
	.uleb128 0x4
	.long	.LASF38
	.byte	0x5
	.byte	0x3a
	.byte	0x13
	.long	0x19b
	.uleb128 0x4
	.long	.LASF39
	.byte	0x5
	.byte	0x3b
	.byte	0x14
	.long	0x1a7
	.uleb128 0x4
	.long	.LASF40
	.byte	0x5
	.byte	0x48
	.byte	0x12
	.long	0xcc
	.uleb128 0x4
	.long	.LASF41
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF42
	.byte	0x5
	.byte	0x91
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF43
	.byte	0x5
	.byte	0x92
	.byte	0x16
	.long	0x139
	.uleb128 0x4
	.long	.LASF44
	.byte	0x5
	.byte	0x93
	.byte	0x16
	.long	0x139
	.uleb128 0x4
	.long	.LASF45
	.byte	0x5
	.byte	0x94
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF46
	.byte	0x5
	.byte	0x96
	.byte	0x16
	.long	0x139
	.uleb128 0x4
	.long	.LASF47
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF48
	.byte	0x5
	.byte	0x98
	.byte	0x12
	.long	0xcc
	.uleb128 0x4
	.long	.LASF49
	.byte	0x5
	.byte	0x99
	.byte	0x12
	.long	0xcc
	.uleb128 0x4
	.long	.LASF50
	.byte	0x5
	.byte	0xa0
	.byte	0x12
	.long	0xcc
	.uleb128 0x3b
	.byte	0x8
	.uleb128 0x4
	.long	.LASF51
	.byte	0x5
	.byte	0xaf
	.byte	0x12
	.long	0xcc
	.uleb128 0x4
	.long	.LASF52
	.byte	0x5
	.byte	0xb4
	.byte	0x12
	.long	0xcc
	.uleb128 0x4
	.long	.LASF53
	.byte	0x5
	.byte	0xc5
	.byte	0x12
	.long	0xcc
	.uleb128 0x6
	.long	0x126
	.uleb128 0x4
	.long	.LASF54
	.byte	0x6
	.byte	0x18
	.byte	0x12
	.long	0x140
	.uleb128 0x4
	.long	.LASF55
	.byte	0x6
	.byte	0x19
	.byte	0x13
	.long	0x15f
	.uleb128 0x4
	.long	.LASF56
	.byte	0x6
	.byte	0x1a
	.byte	0x13
	.long	0x17e
	.uleb128 0x4
	.long	.LASF57
	.byte	0x6
	.byte	0x1b
	.byte	0x13
	.long	0x19b
	.uleb128 0x1c
	.long	.LASF155
	.byte	0x10
	.byte	0x7
	.byte	0xb
	.byte	0x8
	.long	0x31a
	.uleb128 0x3
	.long	.LASF58
	.byte	0x7
	.byte	0x10
	.byte	0xc
	.long	0x28b
	.byte	0
	.uleb128 0x3
	.long	.LASF59
	.byte	0x7
	.byte	0x15
	.byte	0x15
	.long	0x2b1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF60
	.uleb128 0xc
	.long	0x126
	.long	0x331
	.uleb128 0xd
	.long	0x3a
	.byte	0x3
	.byte	0
	.uleb128 0x2e
	.long	.LASF61
	.byte	0x4
	.value	0x330
	.byte	0xf
	.long	0x33e
	.uleb128 0x6
	.long	0x343
	.uleb128 0x3c
	.long	0x8c
	.long	0x357
	.uleb128 0x1
	.long	0x357
	.uleb128 0x1
	.long	0x357
	.byte	0
	.uleb128 0x6
	.long	0x35c
	.uleb128 0x3d
	.uleb128 0x3e
	.string	"std"
	.byte	0xd
	.value	0x116
	.byte	0xb
	.long	0xc91
	.uleb128 0x2
	.byte	0x8
	.byte	0x7f
	.byte	0xb
	.long	0x98
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0xb
	.long	0xd3
	.uleb128 0x2
	.byte	0x8
	.byte	0x86
	.byte	0xb
	.long	0xc91
	.uleb128 0x2
	.byte	0x8
	.byte	0x89
	.byte	0xb
	.long	0xcae
	.uleb128 0x2
	.byte	0x8
	.byte	0x8c
	.byte	0xb
	.long	0xcc9
	.uleb128 0x2
	.byte	0x8
	.byte	0x8d
	.byte	0xb
	.long	0xcdf
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.byte	0xb
	.long	0xcf5
	.uleb128 0x2
	.byte	0x8
	.byte	0x8f
	.byte	0xb
	.long	0xd0b
	.uleb128 0x2
	.byte	0x8
	.byte	0x91
	.byte	0xb
	.long	0xd36
	.uleb128 0x2
	.byte	0x8
	.byte	0x94
	.byte	0xb
	.long	0xd52
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.byte	0xb
	.long	0xd69
	.uleb128 0x2
	.byte	0x8
	.byte	0x99
	.byte	0xb
	.long	0xd85
	.uleb128 0x2
	.byte	0x8
	.byte	0x9a
	.byte	0xb
	.long	0xda1
	.uleb128 0x2
	.byte	0x8
	.byte	0x9b
	.byte	0xb
	.long	0xdd3
	.uleb128 0x2
	.byte	0x8
	.byte	0x9d
	.byte	0xb
	.long	0xdf4
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.byte	0xb
	.long	0xe15
	.uleb128 0x2
	.byte	0x8
	.byte	0xa3
	.byte	0xb
	.long	0xe28
	.uleb128 0x2
	.byte	0x8
	.byte	0xa5
	.byte	0xb
	.long	0xe35
	.uleb128 0x2
	.byte	0x8
	.byte	0xa6
	.byte	0xb
	.long	0xe47
	.uleb128 0x2
	.byte	0x8
	.byte	0xa7
	.byte	0xb
	.long	0xe67
	.uleb128 0x2
	.byte	0x8
	.byte	0xa8
	.byte	0xb
	.long	0xe87
	.uleb128 0x2
	.byte	0x8
	.byte	0xa9
	.byte	0xb
	.long	0xea7
	.uleb128 0x2
	.byte	0x8
	.byte	0xab
	.byte	0xb
	.long	0xebe
	.uleb128 0x2
	.byte	0x8
	.byte	0xac
	.byte	0xb
	.long	0xee4
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.byte	0x16
	.long	0x10e
	.uleb128 0x2
	.byte	0x8
	.byte	0xf5
	.byte	0x16
	.long	0xf45
	.uleb128 0x2
	.byte	0x8
	.byte	0xf6
	.byte	0x16
	.long	0xf84
	.uleb128 0x2
	.byte	0x8
	.byte	0xf8
	.byte	0x16
	.long	0xfa0
	.uleb128 0x2
	.byte	0x8
	.byte	0xf9
	.byte	0x16
	.long	0xff6
	.uleb128 0x2
	.byte	0x8
	.byte	0xfa
	.byte	0x16
	.long	0xfb6
	.uleb128 0x2
	.byte	0x8
	.byte	0xfb
	.byte	0x16
	.long	0xfd6
	.uleb128 0x2
	.byte	0x8
	.byte	0xfc
	.byte	0x16
	.long	0x1011
	.uleb128 0x18
	.string	"abs"
	.byte	0x9
	.byte	0x4f
	.long	.LASF62
	.long	0x5d
	.long	0x483
	.uleb128 0x1
	.long	0x5d
	.byte	0
	.uleb128 0x18
	.string	"abs"
	.byte	0x9
	.byte	0x4b
	.long	.LASF63
	.long	0x4f
	.long	0x49c
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x18
	.string	"abs"
	.byte	0x9
	.byte	0x47
	.long	.LASF64
	.long	0x56
	.long	0x4b5
	.uleb128 0x1
	.long	0x56
	.byte	0
	.uleb128 0x18
	.string	"abs"
	.byte	0x9
	.byte	0x3d
	.long	.LASF65
	.long	0x107
	.long	0x4ce
	.uleb128 0x1
	.long	0x107
	.byte	0
	.uleb128 0x18
	.string	"abs"
	.byte	0x9
	.byte	0x38
	.long	.LASF66
	.long	0xcc
	.long	0x4e7
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0x18
	.string	"div"
	.byte	0x8
	.byte	0xb1
	.long	.LASF67
	.long	0xd3
	.long	0x505
	.uleb128 0x1
	.long	0xcc
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0x2
	.byte	0xa
	.byte	0x40
	.byte	0xb
	.long	0x152b
	.uleb128 0x2
	.byte	0xa
	.byte	0x8d
	.byte	0xb
	.long	0x151f
	.uleb128 0x2
	.byte	0xa
	.byte	0x8f
	.byte	0xb
	.long	0x153c
	.uleb128 0x2
	.byte	0xa
	.byte	0x90
	.byte	0xb
	.long	0x1553
	.uleb128 0x2
	.byte	0xa
	.byte	0x91
	.byte	0xb
	.long	0x156f
	.uleb128 0x2
	.byte	0xa
	.byte	0x92
	.byte	0xb
	.long	0x1590
	.uleb128 0x2
	.byte	0xa
	.byte	0x93
	.byte	0xb
	.long	0x15ac
	.uleb128 0x2
	.byte	0xa
	.byte	0x94
	.byte	0xb
	.long	0x15c8
	.uleb128 0x2
	.byte	0xa
	.byte	0x95
	.byte	0xb
	.long	0x15e4
	.uleb128 0x2
	.byte	0xa
	.byte	0x96
	.byte	0xb
	.long	0x1601
	.uleb128 0x2
	.byte	0xa
	.byte	0x97
	.byte	0xb
	.long	0x1622
	.uleb128 0x2
	.byte	0xa
	.byte	0x98
	.byte	0xb
	.long	0x1639
	.uleb128 0x2
	.byte	0xa
	.byte	0x99
	.byte	0xb
	.long	0x1646
	.uleb128 0x2
	.byte	0xa
	.byte	0x9a
	.byte	0xb
	.long	0x166c
	.uleb128 0x2
	.byte	0xa
	.byte	0x9b
	.byte	0xb
	.long	0x1692
	.uleb128 0x2
	.byte	0xa
	.byte	0x9c
	.byte	0xb
	.long	0x16ae
	.uleb128 0x2
	.byte	0xa
	.byte	0x9d
	.byte	0xb
	.long	0x16d9
	.uleb128 0x2
	.byte	0xa
	.byte	0x9e
	.byte	0xb
	.long	0x16f5
	.uleb128 0x2
	.byte	0xa
	.byte	0xa0
	.byte	0xb
	.long	0x170c
	.uleb128 0x2
	.byte	0xa
	.byte	0xa2
	.byte	0xb
	.long	0x172e
	.uleb128 0x2
	.byte	0xa
	.byte	0xa3
	.byte	0xb
	.long	0x174f
	.uleb128 0x2
	.byte	0xa
	.byte	0xa4
	.byte	0xb
	.long	0x176b
	.uleb128 0x2
	.byte	0xa
	.byte	0xa6
	.byte	0xb
	.long	0x1791
	.uleb128 0x2
	.byte	0xa
	.byte	0xa9
	.byte	0xb
	.long	0x17b6
	.uleb128 0x2
	.byte	0xa
	.byte	0xac
	.byte	0xb
	.long	0x17dc
	.uleb128 0x2
	.byte	0xa
	.byte	0xae
	.byte	0xb
	.long	0x1801
	.uleb128 0x2
	.byte	0xa
	.byte	0xb0
	.byte	0xb
	.long	0x181d
	.uleb128 0x2
	.byte	0xa
	.byte	0xb2
	.byte	0xb
	.long	0x183d
	.uleb128 0x2
	.byte	0xa
	.byte	0xb3
	.byte	0xb
	.long	0x185e
	.uleb128 0x2
	.byte	0xa
	.byte	0xb4
	.byte	0xb
	.long	0x1879
	.uleb128 0x2
	.byte	0xa
	.byte	0xb5
	.byte	0xb
	.long	0x1894
	.uleb128 0x2
	.byte	0xa
	.byte	0xb6
	.byte	0xb
	.long	0x18af
	.uleb128 0x2
	.byte	0xa
	.byte	0xb7
	.byte	0xb
	.long	0x18ca
	.uleb128 0x2
	.byte	0xa
	.byte	0xb8
	.byte	0xb
	.long	0x18e5
	.uleb128 0x2
	.byte	0xa
	.byte	0xb9
	.byte	0xb
	.long	0x19b1
	.uleb128 0x2
	.byte	0xa
	.byte	0xba
	.byte	0xb
	.long	0x19c7
	.uleb128 0x2
	.byte	0xa
	.byte	0xbb
	.byte	0xb
	.long	0x19e7
	.uleb128 0x2
	.byte	0xa
	.byte	0xbc
	.byte	0xb
	.long	0x1a07
	.uleb128 0x2
	.byte	0xa
	.byte	0xbd
	.byte	0xb
	.long	0x1a27
	.uleb128 0x2
	.byte	0xa
	.byte	0xbe
	.byte	0xb
	.long	0x1a52
	.uleb128 0x2
	.byte	0xa
	.byte	0xbf
	.byte	0xb
	.long	0x1a6d
	.uleb128 0x2
	.byte	0xa
	.byte	0xc1
	.byte	0xb
	.long	0x1a8e
	.uleb128 0x2
	.byte	0xa
	.byte	0xc3
	.byte	0xb
	.long	0x1aaa
	.uleb128 0x2
	.byte	0xa
	.byte	0xc4
	.byte	0xb
	.long	0x1aca
	.uleb128 0x2
	.byte	0xa
	.byte	0xc5
	.byte	0xb
	.long	0x1aeb
	.uleb128 0x2
	.byte	0xa
	.byte	0xc6
	.byte	0xb
	.long	0x1b0c
	.uleb128 0x2
	.byte	0xa
	.byte	0xc7
	.byte	0xb
	.long	0x1b2c
	.uleb128 0x2
	.byte	0xa
	.byte	0xc8
	.byte	0xb
	.long	0x1b43
	.uleb128 0x2
	.byte	0xa
	.byte	0xc9
	.byte	0xb
	.long	0x1b64
	.uleb128 0x2
	.byte	0xa
	.byte	0xca
	.byte	0xb
	.long	0x1b85
	.uleb128 0x2
	.byte	0xa
	.byte	0xcb
	.byte	0xb
	.long	0x1ba6
	.uleb128 0x2
	.byte	0xa
	.byte	0xcc
	.byte	0xb
	.long	0x1bc7
	.uleb128 0x2
	.byte	0xa
	.byte	0xcd
	.byte	0xb
	.long	0x1bdf
	.uleb128 0x2
	.byte	0xa
	.byte	0xce
	.byte	0xb
	.long	0x1bfb
	.uleb128 0x2
	.byte	0xa
	.byte	0xce
	.byte	0xb
	.long	0x1c19
	.uleb128 0x2
	.byte	0xa
	.byte	0xcf
	.byte	0xb
	.long	0x1c37
	.uleb128 0x2
	.byte	0xa
	.byte	0xcf
	.byte	0xb
	.long	0x1c55
	.uleb128 0x2
	.byte	0xa
	.byte	0xd0
	.byte	0xb
	.long	0x1c73
	.uleb128 0x2
	.byte	0xa
	.byte	0xd0
	.byte	0xb
	.long	0x1c91
	.uleb128 0x2
	.byte	0xa
	.byte	0xd1
	.byte	0xb
	.long	0x1caf
	.uleb128 0x2
	.byte	0xa
	.byte	0xd1
	.byte	0xb
	.long	0x1ccd
	.uleb128 0x2
	.byte	0xa
	.byte	0xd2
	.byte	0xb
	.long	0x1ceb
	.uleb128 0x2
	.byte	0xa
	.byte	0xd2
	.byte	0xb
	.long	0x1d0e
	.uleb128 0xf
	.value	0x10b
	.byte	0x16
	.long	0x1d31
	.uleb128 0xf
	.value	0x10c
	.byte	0x16
	.long	0x1d4d
	.uleb128 0xf
	.value	0x10d
	.byte	0x16
	.long	0x1d6e
	.uleb128 0xf
	.value	0x11b
	.byte	0xe
	.long	0x1a8e
	.uleb128 0xf
	.value	0x11e
	.byte	0xe
	.long	0x1791
	.uleb128 0xf
	.value	0x121
	.byte	0xe
	.long	0x17dc
	.uleb128 0xf
	.value	0x124
	.byte	0xe
	.long	0x181d
	.uleb128 0xf
	.value	0x128
	.byte	0xe
	.long	0x1d31
	.uleb128 0xf
	.value	0x129
	.byte	0xe
	.long	0x1d4d
	.uleb128 0xf
	.value	0x12a
	.byte	0xe
	.long	0x1d6e
	.uleb128 0x1f
	.long	.LASF68
	.byte	0xb
	.value	0xa86
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF69
	.byte	0xb
	.value	0xadc
	.byte	0xd
	.uleb128 0x29
	.long	.LASF70
	.byte	0xc
	.byte	0x3f
	.byte	0xd
	.long	0x92a
	.uleb128 0x2f
	.long	.LASF76
	.byte	0x8
	.byte	0xc
	.byte	0x5a
	.byte	0xb
	.long	0x91c
	.uleb128 0x3
	.long	.LASF71
	.byte	0xc
	.byte	0x5c
	.byte	0xd
	.long	0x297
	.byte	0
	.uleb128 0x3f
	.long	.LASF76
	.byte	0xc
	.byte	0x5e
	.byte	0x10
	.long	.LASF78
	.long	0x799
	.long	0x7a4
	.uleb128 0x8
	.long	0x1db0
	.uleb128 0x1
	.long	0x297
	.byte	0
	.uleb128 0x30
	.long	.LASF72
	.byte	0x60
	.long	.LASF74
	.long	0x7b6
	.long	0x7bc
	.uleb128 0x8
	.long	0x1db0
	.byte	0
	.uleb128 0x30
	.long	.LASF73
	.byte	0x61
	.long	.LASF75
	.long	0x7ce
	.long	0x7d4
	.uleb128 0x8
	.long	0x1db0
	.byte	0
	.uleb128 0x40
	.long	.LASF77
	.byte	0xc
	.byte	0x63
	.byte	0xd
	.long	.LASF79
	.long	0x297
	.long	0x7ec
	.long	0x7f2
	.uleb128 0x8
	.long	0x1db5
	.byte	0
	.uleb128 0x1d
	.long	.LASF76
	.byte	0x6b
	.long	.LASF80
	.long	0x804
	.long	0x80a
	.uleb128 0x8
	.long	0x1db0
	.byte	0
	.uleb128 0x1d
	.long	.LASF76
	.byte	0x6d
	.long	.LASF81
	.long	0x81c
	.long	0x827
	.uleb128 0x8
	.long	0x1db0
	.uleb128 0x1
	.long	0x1dba
	.byte	0
	.uleb128 0x1d
	.long	.LASF76
	.byte	0x70
	.long	.LASF82
	.long	0x839
	.long	0x844
	.uleb128 0x8
	.long	0x1db0
	.uleb128 0x1
	.long	0x948
	.byte	0
	.uleb128 0x1d
	.long	.LASF76
	.byte	0x74
	.long	.LASF83
	.long	0x856
	.long	0x861
	.uleb128 0x8
	.long	0x1db0
	.uleb128 0x1
	.long	0x1dbf
	.byte	0
	.uleb128 0x24
	.long	.LASF84
	.byte	0xc
	.byte	0x81
	.byte	0x7
	.long	.LASF85
	.long	0x1dc5
	.long	0x879
	.long	0x884
	.uleb128 0x8
	.long	0x1db0
	.uleb128 0x1
	.long	0x1dba
	.byte	0
	.uleb128 0x24
	.long	.LASF84
	.byte	0xc
	.byte	0x85
	.byte	0x7
	.long	.LASF86
	.long	0x1dc5
	.long	0x89c
	.long	0x8a7
	.uleb128 0x8
	.long	0x1db0
	.uleb128 0x1
	.long	0x1dbf
	.byte	0
	.uleb128 0x1d
	.long	.LASF87
	.byte	0x8c
	.long	.LASF88
	.long	0x8b9
	.long	0x8c4
	.uleb128 0x8
	.long	0x1db0
	.uleb128 0x8
	.long	0x8c
	.byte	0
	.uleb128 0x1d
	.long	.LASF89
	.byte	0x8f
	.long	.LASF90
	.long	0x8d6
	.long	0x8e1
	.uleb128 0x8
	.long	0x1db0
	.uleb128 0x1
	.long	0x1dc5
	.byte	0
	.uleb128 0x41
	.long	.LASF431
	.byte	0xc
	.byte	0x9b
	.byte	0x10
	.long	.LASF459
	.long	0x1d94
	.byte	0x1
	.long	0x8fa
	.long	0x900
	.uleb128 0x8
	.long	0x1db5
	.byte	0
	.uleb128 0x42
	.long	.LASF91
	.byte	0xc
	.byte	0xb0
	.byte	0x7
	.long	.LASF92
	.long	0x1dca
	.byte	0x1
	.long	0x915
	.uleb128 0x8
	.long	0x1db5
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x76b
	.uleb128 0x2
	.byte	0xc
	.byte	0x54
	.byte	0x10
	.long	0x932
	.byte	0
	.uleb128 0x2
	.byte	0xc
	.byte	0x44
	.byte	0x1a
	.long	0x76b
	.uleb128 0x43
	.long	.LASF93
	.byte	0xc
	.byte	0x50
	.byte	0x8
	.long	.LASF94
	.long	0x948
	.uleb128 0x1
	.long	0x76b
	.byte	0
	.uleb128 0x2e
	.long	.LASF95
	.byte	0xd
	.value	0x11c
	.byte	0x1d
	.long	0x1d8f
	.uleb128 0x44
	.long	.LASF492
	.uleb128 0x9
	.long	0x955
	.uleb128 0x29
	.long	.LASF96
	.byte	0xe
	.byte	0xa3
	.byte	0xd
	.long	0x99e
	.uleb128 0x14
	.long	.LASF97
	.byte	0xe
	.byte	0xa5
	.byte	0xf
	.uleb128 0x45
	.long	.LASF104
	.byte	0xe
	.byte	0xe1
	.byte	0x16
	.uleb128 0x14
	.long	.LASF98
	.byte	0xf
	.byte	0x50
	.byte	0xf
	.uleb128 0x1f
	.long	.LASF99
	.byte	0xf
	.value	0x31d
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF100
	.byte	0xf
	.value	0x3a0
	.byte	0x15
	.uleb128 0x14
	.long	.LASF101
	.byte	0x10
	.byte	0x40
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.long	.LASF102
	.byte	0x11
	.byte	0x31
	.byte	0xd
	.uleb128 0x14
	.long	.LASF101
	.byte	0xe
	.byte	0x36
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF103
	.byte	0x11
	.value	0x20e
	.byte	0xd
	.uleb128 0x31
	.long	.LASF105
	.byte	0x11
	.value	0x357
	.byte	0x14
	.uleb128 0x14
	.long	.LASF106
	.byte	0x12
	.byte	0x32
	.byte	0xd
	.uleb128 0x2
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.long	0x2c2
	.uleb128 0x2
	.byte	0x13
	.byte	0x30
	.byte	0xb
	.long	0x2ce
	.uleb128 0x2
	.byte	0x13
	.byte	0x31
	.byte	0xb
	.long	0x2da
	.uleb128 0x2
	.byte	0x13
	.byte	0x32
	.byte	0xb
	.long	0x2e6
	.uleb128 0x2
	.byte	0x13
	.byte	0x34
	.byte	0xb
	.long	0x1e7b
	.uleb128 0x2
	.byte	0x13
	.byte	0x35
	.byte	0xb
	.long	0x1e87
	.uleb128 0x2
	.byte	0x13
	.byte	0x36
	.byte	0xb
	.long	0x1e93
	.uleb128 0x2
	.byte	0x13
	.byte	0x37
	.byte	0xb
	.long	0x1e9f
	.uleb128 0x2
	.byte	0x13
	.byte	0x39
	.byte	0xb
	.long	0x1e1b
	.uleb128 0x2
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.long	0x1e27
	.uleb128 0x2
	.byte	0x13
	.byte	0x3b
	.byte	0xb
	.long	0x1e33
	.uleb128 0x2
	.byte	0x13
	.byte	0x3c
	.byte	0xb
	.long	0x1e3f
	.uleb128 0x2
	.byte	0x13
	.byte	0x3e
	.byte	0xb
	.long	0x1ef3
	.uleb128 0x2
	.byte	0x13
	.byte	0x3f
	.byte	0xb
	.long	0x1edb
	.uleb128 0x2
	.byte	0x13
	.byte	0x41
	.byte	0xb
	.long	0x1deb
	.uleb128 0x2
	.byte	0x13
	.byte	0x42
	.byte	0xb
	.long	0x1df7
	.uleb128 0x2
	.byte	0x13
	.byte	0x43
	.byte	0xb
	.long	0x1e03
	.uleb128 0x2
	.byte	0x13
	.byte	0x44
	.byte	0xb
	.long	0x1e0f
	.uleb128 0x2
	.byte	0x13
	.byte	0x46
	.byte	0xb
	.long	0x1eab
	.uleb128 0x2
	.byte	0x13
	.byte	0x47
	.byte	0xb
	.long	0x1eb7
	.uleb128 0x2
	.byte	0x13
	.byte	0x48
	.byte	0xb
	.long	0x1ec3
	.uleb128 0x2
	.byte	0x13
	.byte	0x49
	.byte	0xb
	.long	0x1ecf
	.uleb128 0x2
	.byte	0x13
	.byte	0x4b
	.byte	0xb
	.long	0x1e4b
	.uleb128 0x2
	.byte	0x13
	.byte	0x4c
	.byte	0xb
	.long	0x1e57
	.uleb128 0x2
	.byte	0x13
	.byte	0x4d
	.byte	0xb
	.long	0x1e63
	.uleb128 0x2
	.byte	0x13
	.byte	0x4e
	.byte	0xb
	.long	0x1e6f
	.uleb128 0x2
	.byte	0x13
	.byte	0x50
	.byte	0xb
	.long	0x1eff
	.uleb128 0x2
	.byte	0x13
	.byte	0x51
	.byte	0xb
	.long	0x1ee7
	.uleb128 0x2
	.byte	0x14
	.byte	0x35
	.byte	0xb
	.long	0x1f0b
	.uleb128 0x2
	.byte	0x14
	.byte	0x36
	.byte	0xb
	.long	0x2051
	.uleb128 0x2
	.byte	0x14
	.byte	0x37
	.byte	0xb
	.long	0x206c
	.uleb128 0x14
	.long	.LASF107
	.byte	0x15
	.byte	0x30
	.byte	0xb
	.uleb128 0x2
	.byte	0x16
	.byte	0x62
	.byte	0xb
	.long	0x1374
	.uleb128 0x2
	.byte	0x16
	.byte	0x63
	.byte	0xb
	.long	0x13d0
	.uleb128 0x2
	.byte	0x16
	.byte	0x65
	.byte	0xb
	.long	0x2084
	.uleb128 0x2
	.byte	0x16
	.byte	0x66
	.byte	0xb
	.long	0x2096
	.uleb128 0x2
	.byte	0x16
	.byte	0x67
	.byte	0xb
	.long	0x20ac
	.uleb128 0x2
	.byte	0x16
	.byte	0x68
	.byte	0xb
	.long	0x20c3
	.uleb128 0x2
	.byte	0x16
	.byte	0x69
	.byte	0xb
	.long	0x20da
	.uleb128 0x2
	.byte	0x16
	.byte	0x6a
	.byte	0xb
	.long	0x20f0
	.uleb128 0x2
	.byte	0x16
	.byte	0x6b
	.byte	0xb
	.long	0x2107
	.uleb128 0x2
	.byte	0x16
	.byte	0x6c
	.byte	0xb
	.long	0x2128
	.uleb128 0x2
	.byte	0x16
	.byte	0x6d
	.byte	0xb
	.long	0x2149
	.uleb128 0x2
	.byte	0x16
	.byte	0x71
	.byte	0xb
	.long	0x2165
	.uleb128 0x2
	.byte	0x16
	.byte	0x72
	.byte	0xb
	.long	0x218b
	.uleb128 0x2
	.byte	0x16
	.byte	0x74
	.byte	0xb
	.long	0x21ac
	.uleb128 0x2
	.byte	0x16
	.byte	0x75
	.byte	0xb
	.long	0x21cd
	.uleb128 0x2
	.byte	0x16
	.byte	0x76
	.byte	0xb
	.long	0x21ee
	.uleb128 0x2
	.byte	0x16
	.byte	0x78
	.byte	0xb
	.long	0x2205
	.uleb128 0x2
	.byte	0x16
	.byte	0x79
	.byte	0xb
	.long	0x221c
	.uleb128 0x2
	.byte	0x16
	.byte	0x7e
	.byte	0xb
	.long	0x2229
	.uleb128 0x2
	.byte	0x16
	.byte	0x83
	.byte	0xb
	.long	0x223b
	.uleb128 0x2
	.byte	0x16
	.byte	0x84
	.byte	0xb
	.long	0x2251
	.uleb128 0x2
	.byte	0x16
	.byte	0x85
	.byte	0xb
	.long	0x226c
	.uleb128 0x2
	.byte	0x16
	.byte	0x87
	.byte	0xb
	.long	0x227e
	.uleb128 0x2
	.byte	0x16
	.byte	0x88
	.byte	0xb
	.long	0x2295
	.uleb128 0x2
	.byte	0x16
	.byte	0x8b
	.byte	0xb
	.long	0x22bb
	.uleb128 0x2
	.byte	0x16
	.byte	0x8d
	.byte	0xb
	.long	0x22c7
	.uleb128 0x2
	.byte	0x16
	.byte	0x8f
	.byte	0xb
	.long	0x22dd
	.uleb128 0x31
	.long	.LASF108
	.byte	0xd
	.value	0x12e
	.byte	0x41
	.uleb128 0x46
	.string	"_V2"
	.byte	0x36
	.value	0x25c
	.byte	0x14
	.uleb128 0x32
	.long	.LASF414
	.long	0xc4c
	.uleb128 0x47
	.long	.LASF109
	.byte	0x1
	.byte	0x17
	.value	0x272
	.byte	0xb
	.byte	0x1
	.long	0xc46
	.uleb128 0x33
	.long	.LASF109
	.value	0x276
	.long	.LASF111
	.long	0xbdd
	.long	0xbe3
	.uleb128 0x8
	.long	0x22f9
	.byte	0
	.uleb128 0x33
	.long	.LASF110
	.value	0x277
	.long	.LASF112
	.long	0xbf6
	.long	0xc01
	.uleb128 0x8
	.long	0x22f9
	.uleb128 0x8
	.long	0x8c
	.byte	0
	.uleb128 0x48
	.long	.LASF109
	.byte	0x17
	.value	0x27a
	.byte	0x7
	.long	.LASF113
	.byte	0x1
	.byte	0x1
	.long	0xc18
	.long	0xc23
	.uleb128 0x8
	.long	0x22f9
	.uleb128 0x1
	.long	0x2303
	.byte	0
	.uleb128 0x49
	.long	.LASF84
	.byte	0x17
	.value	0x27b
	.byte	0xd
	.long	.LASF114
	.long	0x2308
	.byte	0x1
	.byte	0x1
	.long	0xc3a
	.uleb128 0x8
	.long	0x22f9
	.uleb128 0x1
	.long	0x2303
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xbbb
	.byte	0
	.uleb128 0x2
	.byte	0x18
	.byte	0x52
	.byte	0xb
	.long	0x2319
	.uleb128 0x2
	.byte	0x18
	.byte	0x53
	.byte	0xb
	.long	0x230d
	.uleb128 0x2
	.byte	0x18
	.byte	0x54
	.byte	0xb
	.long	0x151f
	.uleb128 0x2
	.byte	0x18
	.byte	0x5c
	.byte	0xb
	.long	0x232a
	.uleb128 0x2
	.byte	0x18
	.byte	0x65
	.byte	0xb
	.long	0x2345
	.uleb128 0x2
	.byte	0x18
	.byte	0x68
	.byte	0xb
	.long	0x2360
	.uleb128 0x2
	.byte	0x18
	.byte	0x69
	.byte	0xb
	.long	0x2376
	.uleb128 0x4a
	.long	.LASF196
	.byte	0x2
	.byte	0x4a
	.byte	0x19
	.long	0xbbb
	.byte	0
	.uleb128 0x5
	.long	.LASF116
	.byte	0x4
	.value	0x25a
	.byte	0xc
	.long	0x8c
	.long	0xca8
	.uleb128 0x1
	.long	0xca8
	.byte	0
	.uleb128 0x6
	.long	0xcad
	.uleb128 0x4b
	.uleb128 0x15
	.long	.LASF115
	.byte	0x4
	.value	0x25f
	.byte	0x12
	.long	.LASF115
	.long	0x8c
	.long	0xcc9
	.uleb128 0x1
	.long	0xca8
	.byte	0
	.uleb128 0x7
	.long	.LASF117
	.byte	0x4
	.byte	0x66
	.byte	0xf
	.long	0x56
	.long	0xcdf
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x7
	.long	.LASF118
	.byte	0x4
	.byte	0x69
	.byte	0xc
	.long	0x8c
	.long	0xcf5
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x7
	.long	.LASF119
	.byte	0x4
	.byte	0x6c
	.byte	0x11
	.long	0xcc
	.long	0xd0b
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x5
	.long	.LASF120
	.byte	0x4
	.value	0x33c
	.byte	0xe
	.long	0x297
	.long	0xd36
	.uleb128 0x1
	.long	0x357
	.uleb128 0x1
	.long	0x357
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x331
	.byte	0
	.uleb128 0x4c
	.string	"div"
	.byte	0x4
	.value	0x35c
	.byte	0xe
	.long	0x98
	.long	0xd52
	.uleb128 0x1
	.long	0x8c
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x5
	.long	.LASF121
	.byte	0x4
	.value	0x281
	.byte	0xe
	.long	0x2bd
	.long	0xd69
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x5
	.long	.LASF122
	.byte	0x4
	.value	0x35e
	.byte	0xf
	.long	0xd3
	.long	0xd85
	.uleb128 0x1
	.long	0xcc
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0x5
	.long	.LASF123
	.byte	0x4
	.value	0x3a2
	.byte	0xc
	.long	0x8c
	.long	0xda1
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF124
	.byte	0x4
	.value	0x3ad
	.byte	0xf
	.long	0x2e
	.long	0xdc2
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x6
	.long	0xdc7
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.long	.LASF125
	.uleb128 0x9
	.long	0xdc7
	.uleb128 0x5
	.long	.LASF126
	.byte	0x4
	.value	0x3a5
	.byte	0xc
	.long	0x8c
	.long	0xdf4
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x4
	.value	0x346
	.long	0xe15
	.uleb128 0x1
	.long	0x297
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x331
	.byte	0
	.uleb128 0x4d
	.long	.LASF127
	.byte	0x4
	.value	0x276
	.byte	0xd
	.long	0xe28
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x2a
	.long	.LASF230
	.byte	0x4
	.value	0x1c6
	.byte	0xc
	.long	0x8c
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x4
	.value	0x1c8
	.long	0xe47
	.uleb128 0x1
	.long	0x139
	.byte	0
	.uleb128 0x7
	.long	.LASF130
	.byte	0x4
	.byte	0x76
	.byte	0xf
	.long	0x56
	.long	0xe62
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0xe62
	.byte	0
	.uleb128 0x6
	.long	0x2bd
	.uleb128 0x7
	.long	.LASF131
	.byte	0x4
	.byte	0xb1
	.byte	0x11
	.long	0xcc
	.long	0xe87
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0xe62
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x7
	.long	.LASF132
	.byte	0x4
	.byte	0xb5
	.byte	0x1a
	.long	0x3a
	.long	0xea7
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0xe62
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x5
	.long	.LASF133
	.byte	0x4
	.value	0x317
	.byte	0xc
	.long	0x8c
	.long	0xebe
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x5
	.long	.LASF134
	.byte	0x4
	.value	0x3b1
	.byte	0xf
	.long	0x2e
	.long	0xedf
	.uleb128 0x1
	.long	0x2bd
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x6
	.long	0xdce
	.uleb128 0x5
	.long	.LASF135
	.byte	0x4
	.value	0x3a9
	.byte	0xc
	.long	0x8c
	.long	0xf00
	.uleb128 0x1
	.long	0x2bd
	.uleb128 0x1
	.long	0xdc7
	.byte	0
	.uleb128 0x4e
	.long	.LASF136
	.byte	0xd
	.value	0x130
	.byte	0xb
	.long	0xf84
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0xb
	.long	0x10e
	.uleb128 0x2
	.byte	0x8
	.byte	0xd8
	.byte	0xb
	.long	0xf84
	.uleb128 0x2
	.byte	0x8
	.byte	0xe3
	.byte	0xb
	.long	0xfa0
	.uleb128 0x2
	.byte	0x8
	.byte	0xe4
	.byte	0xb
	.long	0xfb6
	.uleb128 0x2
	.byte	0x8
	.byte	0xe5
	.byte	0xb
	.long	0xfd6
	.uleb128 0x2
	.byte	0x8
	.byte	0xe7
	.byte	0xb
	.long	0xff6
	.uleb128 0x2
	.byte	0x8
	.byte	0xe8
	.byte	0xb
	.long	0x1011
	.uleb128 0x18
	.string	"div"
	.byte	0x8
	.byte	0xd5
	.long	.LASF137
	.long	0x10e
	.long	0xf63
	.uleb128 0x1
	.long	0x107
	.uleb128 0x1
	.long	0x107
	.byte	0
	.uleb128 0x2
	.byte	0xa
	.byte	0xfb
	.byte	0xb
	.long	0x1d31
	.uleb128 0xf
	.value	0x104
	.byte	0xb
	.long	0x1d4d
	.uleb128 0xf
	.value	0x105
	.byte	0xb
	.long	0x1d6e
	.uleb128 0x14
	.long	.LASF138
	.byte	0x19
	.byte	0x25
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.long	.LASF139
	.byte	0x4
	.value	0x362
	.byte	0x1e
	.long	0x10e
	.long	0xfa0
	.uleb128 0x1
	.long	0x107
	.uleb128 0x1
	.long	0x107
	.byte	0
	.uleb128 0x7
	.long	.LASF140
	.byte	0x4
	.byte	0x71
	.byte	0x24
	.long	0x107
	.long	0xfb6
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x7
	.long	.LASF141
	.byte	0x4
	.byte	0xc9
	.byte	0x16
	.long	0x107
	.long	0xfd6
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0xe62
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x7
	.long	.LASF142
	.byte	0x4
	.byte	0xce
	.byte	0x1f
	.long	0x31a
	.long	0xff6
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0xe62
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x7
	.long	.LASF143
	.byte	0x4
	.byte	0x7c
	.byte	0xe
	.long	0x4f
	.long	0x1011
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0xe62
	.byte	0
	.uleb128 0x7
	.long	.LASF144
	.byte	0x4
	.byte	0x7f
	.byte	0x14
	.long	0x5d
	.long	0x102c
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0xe62
	.byte	0
	.uleb128 0x2
	.byte	0x1a
	.byte	0x27
	.byte	0xc
	.long	0xc91
	.uleb128 0x2
	.byte	0x1a
	.byte	0x2b
	.byte	0xe
	.long	0xcae
	.uleb128 0x2
	.byte	0x1a
	.byte	0x2e
	.byte	0xe
	.long	0xe15
	.uleb128 0x2
	.byte	0x1a
	.byte	0x33
	.byte	0xc
	.long	0x98
	.uleb128 0x2
	.byte	0x1a
	.byte	0x34
	.byte	0xc
	.long	0xd3
	.uleb128 0x2
	.byte	0x1a
	.byte	0x36
	.byte	0xc
	.long	0x46a
	.uleb128 0x2
	.byte	0x1a
	.byte	0x36
	.byte	0xc
	.long	0x483
	.uleb128 0x2
	.byte	0x1a
	.byte	0x36
	.byte	0xc
	.long	0x49c
	.uleb128 0x2
	.byte	0x1a
	.byte	0x36
	.byte	0xc
	.long	0x4b5
	.uleb128 0x2
	.byte	0x1a
	.byte	0x36
	.byte	0xc
	.long	0x4ce
	.uleb128 0x2
	.byte	0x1a
	.byte	0x37
	.byte	0xc
	.long	0xcc9
	.uleb128 0x2
	.byte	0x1a
	.byte	0x38
	.byte	0xc
	.long	0xcdf
	.uleb128 0x2
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0xcf5
	.uleb128 0x2
	.byte	0x1a
	.byte	0x3a
	.byte	0xc
	.long	0xd0b
	.uleb128 0x2
	.byte	0x1a
	.byte	0x3c
	.byte	0xc
	.long	0xf45
	.uleb128 0x2
	.byte	0x1a
	.byte	0x3c
	.byte	0xc
	.long	0x4e7
	.uleb128 0x2
	.byte	0x1a
	.byte	0x3c
	.byte	0xc
	.long	0xd36
	.uleb128 0x2
	.byte	0x1a
	.byte	0x3e
	.byte	0xc
	.long	0xd52
	.uleb128 0x2
	.byte	0x1a
	.byte	0x40
	.byte	0xc
	.long	0xd69
	.uleb128 0x2
	.byte	0x1a
	.byte	0x43
	.byte	0xc
	.long	0xd85
	.uleb128 0x2
	.byte	0x1a
	.byte	0x44
	.byte	0xc
	.long	0xda1
	.uleb128 0x2
	.byte	0x1a
	.byte	0x45
	.byte	0xc
	.long	0xdd3
	.uleb128 0x2
	.byte	0x1a
	.byte	0x47
	.byte	0xc
	.long	0xdf4
	.uleb128 0x2
	.byte	0x1a
	.byte	0x48
	.byte	0xc
	.long	0xe28
	.uleb128 0x2
	.byte	0x1a
	.byte	0x4a
	.byte	0xc
	.long	0xe35
	.uleb128 0x2
	.byte	0x1a
	.byte	0x4b
	.byte	0xc
	.long	0xe47
	.uleb128 0x2
	.byte	0x1a
	.byte	0x4c
	.byte	0xc
	.long	0xe67
	.uleb128 0x2
	.byte	0x1a
	.byte	0x4d
	.byte	0xc
	.long	0xe87
	.uleb128 0x2
	.byte	0x1a
	.byte	0x4e
	.byte	0xc
	.long	0xea7
	.uleb128 0x2
	.byte	0x1a
	.byte	0x50
	.byte	0xc
	.long	0xebe
	.uleb128 0x2
	.byte	0x1a
	.byte	0x51
	.byte	0xc
	.long	0xee4
	.uleb128 0x4f
	.long	.LASF493
	.byte	0x18
	.byte	0x1b
	.byte	0
	.long	0x1159
	.uleb128 0x25
	.long	.LASF145
	.long	0x139
	.byte	0
	.uleb128 0x25
	.long	.LASF146
	.long	0x139
	.byte	0x4
	.uleb128 0x25
	.long	.LASF147
	.long	0x297
	.byte	0x8
	.uleb128 0x25
	.long	.LASF148
	.long	0x297
	.byte	0x10
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x1c
	.byte	0xe
	.byte	0x1
	.long	.LASF149
	.long	0x11a1
	.uleb128 0x50
	.byte	0x4
	.byte	0x1c
	.byte	0x11
	.byte	0x3
	.long	0x1186
	.uleb128 0x34
	.long	.LASF150
	.byte	0x12
	.byte	0x12
	.long	0x139
	.uleb128 0x34
	.long	.LASF151
	.byte	0x13
	.byte	0xa
	.long	0x321
	.byte	0
	.uleb128 0x3
	.long	.LASF152
	.byte	0x1c
	.byte	0xf
	.byte	0x7
	.long	0x8c
	.byte	0
	.uleb128 0x3
	.long	.LASF153
	.byte	0x1c
	.byte	0x14
	.byte	0x5
	.long	0x1166
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF154
	.byte	0x1c
	.byte	0x15
	.byte	0x3
	.long	0x1159
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x10
	.byte	0x1d
	.byte	0xa
	.byte	0x10
	.long	0x11d5
	.uleb128 0x3
	.long	.LASF157
	.byte	0x1d
	.byte	0xc
	.byte	0xb
	.long	0x273
	.byte	0
	.uleb128 0x3
	.long	.LASF158
	.byte	0x1d
	.byte	0xd
	.byte	0xf
	.long	0x11a1
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF159
	.byte	0x1d
	.byte	0xe
	.byte	0x3
	.long	0x11ad
	.uleb128 0x4
	.long	.LASF160
	.byte	0x1e
	.byte	0x5
	.byte	0x19
	.long	0x11ed
	.uleb128 0x1c
	.long	.LASF161
	.byte	0xd8
	.byte	0x1f
	.byte	0x31
	.byte	0x8
	.long	0x1374
	.uleb128 0x3
	.long	.LASF162
	.byte	0x1f
	.byte	0x33
	.byte	0x7
	.long	0x8c
	.byte	0
	.uleb128 0x3
	.long	.LASF163
	.byte	0x1f
	.byte	0x36
	.byte	0x9
	.long	0x2bd
	.byte	0x8
	.uleb128 0x3
	.long	.LASF164
	.byte	0x1f
	.byte	0x37
	.byte	0x9
	.long	0x2bd
	.byte	0x10
	.uleb128 0x3
	.long	.LASF165
	.byte	0x1f
	.byte	0x38
	.byte	0x9
	.long	0x2bd
	.byte	0x18
	.uleb128 0x3
	.long	.LASF166
	.byte	0x1f
	.byte	0x39
	.byte	0x9
	.long	0x2bd
	.byte	0x20
	.uleb128 0x3
	.long	.LASF167
	.byte	0x1f
	.byte	0x3a
	.byte	0x9
	.long	0x2bd
	.byte	0x28
	.uleb128 0x3
	.long	.LASF168
	.byte	0x1f
	.byte	0x3b
	.byte	0x9
	.long	0x2bd
	.byte	0x30
	.uleb128 0x3
	.long	.LASF169
	.byte	0x1f
	.byte	0x3c
	.byte	0x9
	.long	0x2bd
	.byte	0x38
	.uleb128 0x3
	.long	.LASF170
	.byte	0x1f
	.byte	0x3d
	.byte	0x9
	.long	0x2bd
	.byte	0x40
	.uleb128 0x3
	.long	.LASF171
	.byte	0x1f
	.byte	0x40
	.byte	0x9
	.long	0x2bd
	.byte	0x48
	.uleb128 0x3
	.long	.LASF172
	.byte	0x1f
	.byte	0x41
	.byte	0x9
	.long	0x2bd
	.byte	0x50
	.uleb128 0x3
	.long	.LASF173
	.byte	0x1f
	.byte	0x42
	.byte	0x9
	.long	0x2bd
	.byte	0x58
	.uleb128 0x3
	.long	.LASF174
	.byte	0x1f
	.byte	0x44
	.byte	0x16
	.long	0x138d
	.byte	0x60
	.uleb128 0x3
	.long	.LASF175
	.byte	0x1f
	.byte	0x46
	.byte	0x14
	.long	0x1392
	.byte	0x68
	.uleb128 0x3
	.long	.LASF176
	.byte	0x1f
	.byte	0x48
	.byte	0x7
	.long	0x8c
	.byte	0x70
	.uleb128 0x3
	.long	.LASF177
	.byte	0x1f
	.byte	0x49
	.byte	0x7
	.long	0x8c
	.byte	0x74
	.uleb128 0x3
	.long	.LASF178
	.byte	0x1f
	.byte	0x4a
	.byte	0xb
	.long	0x273
	.byte	0x78
	.uleb128 0x3
	.long	.LASF179
	.byte	0x1f
	.byte	0x4d
	.byte	0x12
	.long	0x11a
	.byte	0x80
	.uleb128 0x3
	.long	.LASF180
	.byte	0x1f
	.byte	0x4e
	.byte	0xf
	.long	0x14c
	.byte	0x82
	.uleb128 0x3
	.long	.LASF181
	.byte	0x1f
	.byte	0x4f
	.byte	0x8
	.long	0x1397
	.byte	0x83
	.uleb128 0x3
	.long	.LASF182
	.byte	0x1f
	.byte	0x51
	.byte	0xf
	.long	0x13a7
	.byte	0x88
	.uleb128 0x3
	.long	.LASF183
	.byte	0x1f
	.byte	0x59
	.byte	0xd
	.long	0x27f
	.byte	0x90
	.uleb128 0x3
	.long	.LASF184
	.byte	0x1f
	.byte	0x5b
	.byte	0x17
	.long	0x13b1
	.byte	0x98
	.uleb128 0x3
	.long	.LASF185
	.byte	0x1f
	.byte	0x5c
	.byte	0x19
	.long	0x13bb
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF186
	.byte	0x1f
	.byte	0x5d
	.byte	0x14
	.long	0x1392
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF187
	.byte	0x1f
	.byte	0x5e
	.byte	0x9
	.long	0x297
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF188
	.byte	0x1f
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF189
	.byte	0x1f
	.byte	0x60
	.byte	0x7
	.long	0x8c
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF190
	.byte	0x1f
	.byte	0x62
	.byte	0x8
	.long	0x13c0
	.byte	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF191
	.byte	0x20
	.byte	0x7
	.byte	0x19
	.long	0x11ed
	.uleb128 0x51
	.long	.LASF494
	.byte	0x1f
	.byte	0x2b
	.byte	0xe
	.uleb128 0x2b
	.long	.LASF192
	.uleb128 0x6
	.long	0x1388
	.uleb128 0x6
	.long	0x11ed
	.uleb128 0xc
	.long	0x126
	.long	0x13a7
	.uleb128 0xd
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x1380
	.uleb128 0x2b
	.long	.LASF193
	.uleb128 0x6
	.long	0x13ac
	.uleb128 0x2b
	.long	.LASF194
	.uleb128 0x6
	.long	0x13b6
	.uleb128 0xc
	.long	0x126
	.long	0x13d0
	.uleb128 0xd
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	.LASF195
	.byte	0x21
	.byte	0x54
	.byte	0x12
	.long	0x11d5
	.uleb128 0x9
	.long	0x13d0
	.uleb128 0x6
	.long	0x1374
	.uleb128 0xe
	.long	.LASF197
	.byte	0x22
	.byte	0x20
	.byte	0xb
	.long	0x93
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11INDENT_SIZE
	.uleb128 0x1c
	.long	.LASF198
	.byte	0x18
	.byte	0x22
	.byte	0x25
	.byte	0x8
	.long	0x143e
	.uleb128 0x3
	.long	.LASF199
	.byte	0x22
	.byte	0x27
	.byte	0x11
	.long	0x121
	.byte	0
	.uleb128 0x23
	.string	"str"
	.byte	0x22
	.byte	0x28
	.byte	0xb
	.long	0x2bd
	.byte	0x8
	.uleb128 0x3
	.long	.LASF200
	.byte	0x22
	.byte	0x2a
	.byte	0x9
	.long	0x8c
	.byte	0x10
	.uleb128 0x3
	.long	.LASF201
	.byte	0x22
	.byte	0x2b
	.byte	0x9
	.long	0x8c
	.byte	0x14
	.byte	0
	.uleb128 0x1c
	.long	.LASF202
	.byte	0x90
	.byte	0x23
	.byte	0x1a
	.byte	0x8
	.long	0x150f
	.uleb128 0x3
	.long	.LASF203
	.byte	0x23
	.byte	0x1f
	.byte	0xd
	.long	0x22b
	.byte	0
	.uleb128 0x3
	.long	.LASF204
	.byte	0x23
	.byte	0x24
	.byte	0xd
	.long	0x24f
	.byte	0x8
	.uleb128 0x3
	.long	.LASF205
	.byte	0x23
	.byte	0x2c
	.byte	0xf
	.long	0x267
	.byte	0x10
	.uleb128 0x3
	.long	.LASF206
	.byte	0x23
	.byte	0x2d
	.byte	0xe
	.long	0x25b
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x23
	.byte	0x2f
	.byte	0xd
	.long	0x237
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF208
	.byte	0x23
	.byte	0x30
	.byte	0xd
	.long	0x243
	.byte	0x20
	.uleb128 0x3
	.long	.LASF209
	.byte	0x23
	.byte	0x32
	.byte	0x9
	.long	0x8c
	.byte	0x24
	.uleb128 0x3
	.long	.LASF210
	.byte	0x23
	.byte	0x34
	.byte	0xd
	.long	0x22b
	.byte	0x28
	.uleb128 0x3
	.long	.LASF211
	.byte	0x23
	.byte	0x39
	.byte	0xd
	.long	0x273
	.byte	0x30
	.uleb128 0x3
	.long	.LASF212
	.byte	0x23
	.byte	0x3d
	.byte	0x11
	.long	0x299
	.byte	0x38
	.uleb128 0x3
	.long	.LASF213
	.byte	0x23
	.byte	0x3f
	.byte	0x10
	.long	0x2a5
	.byte	0x40
	.uleb128 0x3
	.long	.LASF214
	.byte	0x23
	.byte	0x4a
	.byte	0x15
	.long	0x2f2
	.byte	0x48
	.uleb128 0x3
	.long	.LASF215
	.byte	0x23
	.byte	0x4b
	.byte	0x15
	.long	0x2f2
	.byte	0x58
	.uleb128 0x3
	.long	.LASF216
	.byte	0x23
	.byte	0x4c
	.byte	0x15
	.long	0x2f2
	.byte	0x68
	.uleb128 0x3
	.long	.LASF217
	.byte	0x23
	.byte	0x59
	.byte	0x17
	.long	0x150f
	.byte	0x78
	.byte	0
	.uleb128 0xc
	.long	0x2b1
	.long	0x151f
	.uleb128 0xd
	.long	0x3a
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF218
	.byte	0x24
	.byte	0x14
	.byte	0x16
	.long	0x139
	.uleb128 0x4
	.long	.LASF219
	.byte	0x25
	.byte	0x6
	.byte	0x15
	.long	0x11a1
	.uleb128 0x9
	.long	0x152b
	.uleb128 0x5
	.long	.LASF220
	.byte	0x26
	.value	0x11d
	.byte	0xf
	.long	0x151f
	.long	0x1553
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x5
	.long	.LASF221
	.byte	0x26
	.value	0x2e8
	.byte	0xf
	.long	0x151f
	.long	0x156a
	.uleb128 0x1
	.long	0x156a
	.byte	0
	.uleb128 0x6
	.long	0x11e1
	.uleb128 0x5
	.long	.LASF222
	.byte	0x26
	.value	0x305
	.byte	0x11
	.long	0xdc2
	.long	0x1590
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0x8c
	.uleb128 0x1
	.long	0x156a
	.byte	0
	.uleb128 0x5
	.long	.LASF223
	.byte	0x26
	.value	0x2f6
	.byte	0xf
	.long	0x151f
	.long	0x15ac
	.uleb128 0x1
	.long	0xdc7
	.uleb128 0x1
	.long	0x156a
	.byte	0
	.uleb128 0x5
	.long	.LASF224
	.byte	0x26
	.value	0x30c
	.byte	0xc
	.long	0x8c
	.long	0x15c8
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x156a
	.byte	0
	.uleb128 0x5
	.long	.LASF225
	.byte	0x26
	.value	0x24c
	.byte	0xc
	.long	0x8c
	.long	0x15e4
	.uleb128 0x1
	.long	0x156a
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x5
	.long	.LASF226
	.byte	0x26
	.value	0x253
	.byte	0xc
	.long	0x8c
	.long	0x1601
	.uleb128 0x1
	.long	0x156a
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x10
	.byte	0
	.uleb128 0x15
	.long	.LASF227
	.byte	0x26
	.value	0x291
	.byte	0xc
	.long	.LASF228
	.long	0x8c
	.long	0x1622
	.uleb128 0x1
	.long	0x156a
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF229
	.byte	0x26
	.value	0x2e9
	.byte	0xf
	.long	0x151f
	.long	0x1639
	.uleb128 0x1
	.long	0x156a
	.byte	0
	.uleb128 0x2a
	.long	.LASF231
	.byte	0x26
	.value	0x2ef
	.byte	0xf
	.long	0x151f
	.uleb128 0x5
	.long	.LASF232
	.byte	0x26
	.value	0x134
	.byte	0xf
	.long	0x2e
	.long	0x1667
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x1667
	.byte	0
	.uleb128 0x6
	.long	0x152b
	.uleb128 0x5
	.long	.LASF233
	.byte	0x26
	.value	0x129
	.byte	0xf
	.long	0x2e
	.long	0x1692
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x1667
	.byte	0
	.uleb128 0x5
	.long	.LASF234
	.byte	0x26
	.value	0x125
	.byte	0xc
	.long	0x8c
	.long	0x16a9
	.uleb128 0x1
	.long	0x16a9
	.byte	0
	.uleb128 0x6
	.long	0x1537
	.uleb128 0x5
	.long	.LASF235
	.byte	0x26
	.value	0x152
	.byte	0xf
	.long	0x2e
	.long	0x16d4
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0x16d4
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x1667
	.byte	0
	.uleb128 0x6
	.long	0x121
	.uleb128 0x5
	.long	.LASF236
	.byte	0x26
	.value	0x2f7
	.byte	0xf
	.long	0x151f
	.long	0x16f5
	.uleb128 0x1
	.long	0xdc7
	.uleb128 0x1
	.long	0x156a
	.byte	0
	.uleb128 0x5
	.long	.LASF237
	.byte	0x26
	.value	0x2fd
	.byte	0xf
	.long	0x151f
	.long	0x170c
	.uleb128 0x1
	.long	0xdc7
	.byte	0
	.uleb128 0x5
	.long	.LASF238
	.byte	0x26
	.value	0x25d
	.byte	0xc
	.long	0x8c
	.long	0x172e
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x10
	.byte	0
	.uleb128 0x15
	.long	.LASF239
	.byte	0x26
	.value	0x298
	.byte	0xc
	.long	.LASF240
	.long	0x8c
	.long	0x174f
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF241
	.byte	0x26
	.value	0x314
	.byte	0xf
	.long	0x151f
	.long	0x176b
	.uleb128 0x1
	.long	0x151f
	.uleb128 0x1
	.long	0x156a
	.byte	0
	.uleb128 0x5
	.long	.LASF242
	.byte	0x26
	.value	0x265
	.byte	0xc
	.long	0x8c
	.long	0x178c
	.uleb128 0x1
	.long	0x156a
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x178c
	.byte	0
	.uleb128 0x6
	.long	0x1124
	.uleb128 0x15
	.long	.LASF243
	.byte	0x26
	.value	0x2c7
	.byte	0xc
	.long	.LASF244
	.long	0x8c
	.long	0x17b6
	.uleb128 0x1
	.long	0x156a
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x178c
	.byte	0
	.uleb128 0x5
	.long	.LASF245
	.byte	0x26
	.value	0x272
	.byte	0xc
	.long	0x8c
	.long	0x17dc
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x178c
	.byte	0
	.uleb128 0x15
	.long	.LASF246
	.byte	0x26
	.value	0x2ce
	.byte	0xc
	.long	.LASF247
	.long	0x8c
	.long	0x1801
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x178c
	.byte	0
	.uleb128 0x5
	.long	.LASF248
	.byte	0x26
	.value	0x26d
	.byte	0xc
	.long	0x8c
	.long	0x181d
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x178c
	.byte	0
	.uleb128 0x15
	.long	.LASF249
	.byte	0x26
	.value	0x2cb
	.byte	0xc
	.long	.LASF250
	.long	0x8c
	.long	0x183d
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x178c
	.byte	0
	.uleb128 0x5
	.long	.LASF251
	.byte	0x26
	.value	0x12e
	.byte	0xf
	.long	0x2e
	.long	0x185e
	.uleb128 0x1
	.long	0x2bd
	.uleb128 0x1
	.long	0xdc7
	.uleb128 0x1
	.long	0x1667
	.byte	0
	.uleb128 0x7
	.long	.LASF252
	.byte	0x26
	.byte	0x61
	.byte	0x11
	.long	0xdc2
	.long	0x1879
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xedf
	.byte	0
	.uleb128 0x7
	.long	.LASF253
	.byte	0x26
	.byte	0x6a
	.byte	0xc
	.long	0x8c
	.long	0x1894
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xedf
	.byte	0
	.uleb128 0x7
	.long	.LASF254
	.byte	0x26
	.byte	0x83
	.byte	0xc
	.long	0x8c
	.long	0x18af
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xedf
	.byte	0
	.uleb128 0x7
	.long	.LASF255
	.byte	0x26
	.byte	0x57
	.byte	0x11
	.long	0xdc2
	.long	0x18ca
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xedf
	.byte	0
	.uleb128 0x7
	.long	.LASF256
	.byte	0x26
	.byte	0xbc
	.byte	0xf
	.long	0x2e
	.long	0x18e5
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xedf
	.byte	0
	.uleb128 0x5
	.long	.LASF257
	.byte	0x26
	.value	0x354
	.byte	0xf
	.long	0x2e
	.long	0x190b
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x190b
	.byte	0
	.uleb128 0x6
	.long	0x19ac
	.uleb128 0x52
	.string	"tm"
	.byte	0x38
	.byte	0x27
	.byte	0x7
	.byte	0x8
	.long	0x19ac
	.uleb128 0x3
	.long	.LASF258
	.byte	0x27
	.byte	0x9
	.byte	0x7
	.long	0x8c
	.byte	0
	.uleb128 0x3
	.long	.LASF259
	.byte	0x27
	.byte	0xa
	.byte	0x7
	.long	0x8c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF260
	.byte	0x27
	.byte	0xb
	.byte	0x7
	.long	0x8c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF261
	.byte	0x27
	.byte	0xc
	.byte	0x7
	.long	0x8c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF262
	.byte	0x27
	.byte	0xd
	.byte	0x7
	.long	0x8c
	.byte	0x10
	.uleb128 0x3
	.long	.LASF263
	.byte	0x27
	.byte	0xe
	.byte	0x7
	.long	0x8c
	.byte	0x14
	.uleb128 0x3
	.long	.LASF264
	.byte	0x27
	.byte	0xf
	.byte	0x7
	.long	0x8c
	.byte	0x18
	.uleb128 0x3
	.long	.LASF265
	.byte	0x27
	.byte	0x10
	.byte	0x7
	.long	0x8c
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF266
	.byte	0x27
	.byte	0x11
	.byte	0x7
	.long	0x8c
	.byte	0x20
	.uleb128 0x3
	.long	.LASF267
	.byte	0x27
	.byte	0x14
	.byte	0xc
	.long	0xcc
	.byte	0x28
	.uleb128 0x3
	.long	.LASF268
	.byte	0x27
	.byte	0x15
	.byte	0xf
	.long	0x121
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.long	0x1910
	.uleb128 0x7
	.long	.LASF269
	.byte	0x26
	.byte	0xdf
	.byte	0xf
	.long	0x2e
	.long	0x19c7
	.uleb128 0x1
	.long	0xedf
	.byte	0
	.uleb128 0x7
	.long	.LASF270
	.byte	0x26
	.byte	0x65
	.byte	0x11
	.long	0xdc2
	.long	0x19e7
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x7
	.long	.LASF271
	.byte	0x26
	.byte	0x6d
	.byte	0xc
	.long	0x8c
	.long	0x1a07
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x7
	.long	.LASF272
	.byte	0x26
	.byte	0x5c
	.byte	0x11
	.long	0xdc2
	.long	0x1a27
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF273
	.byte	0x26
	.value	0x158
	.byte	0xf
	.long	0x2e
	.long	0x1a4d
	.uleb128 0x1
	.long	0x2bd
	.uleb128 0x1
	.long	0x1a4d
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x1667
	.byte	0
	.uleb128 0x6
	.long	0xedf
	.uleb128 0x7
	.long	.LASF274
	.byte	0x26
	.byte	0xc0
	.byte	0xf
	.long	0x2e
	.long	0x1a6d
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xedf
	.byte	0
	.uleb128 0x5
	.long	.LASF275
	.byte	0x26
	.value	0x17a
	.byte	0xf
	.long	0x56
	.long	0x1a89
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x1a89
	.byte	0
	.uleb128 0x6
	.long	0xdc2
	.uleb128 0x5
	.long	.LASF276
	.byte	0x26
	.value	0x17f
	.byte	0xe
	.long	0x4f
	.long	0x1aaa
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x1a89
	.byte	0
	.uleb128 0x7
	.long	.LASF277
	.byte	0x26
	.byte	0xda
	.byte	0x11
	.long	0xdc2
	.long	0x1aca
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x1a89
	.byte	0
	.uleb128 0x5
	.long	.LASF278
	.byte	0x26
	.value	0x1ad
	.byte	0x11
	.long	0xcc
	.long	0x1aeb
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x1a89
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x5
	.long	.LASF279
	.byte	0x26
	.value	0x1b2
	.byte	0x1a
	.long	0x3a
	.long	0x1b0c
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x1a89
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x7
	.long	.LASF280
	.byte	0x26
	.byte	0x87
	.byte	0xf
	.long	0x2e
	.long	0x1b2c
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF281
	.byte	0x26
	.value	0x121
	.byte	0xc
	.long	0x8c
	.long	0x1b43
	.uleb128 0x1
	.long	0x151f
	.byte	0
	.uleb128 0x5
	.long	.LASF282
	.byte	0x26
	.value	0x103
	.byte	0xc
	.long	0x8c
	.long	0x1b64
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF283
	.byte	0x26
	.value	0x107
	.byte	0x11
	.long	0xdc2
	.long	0x1b85
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF284
	.byte	0x26
	.value	0x10c
	.byte	0x11
	.long	0xdc2
	.long	0x1ba6
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF285
	.byte	0x26
	.value	0x110
	.byte	0x11
	.long	0xdc2
	.long	0x1bc7
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xdc7
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF286
	.byte	0x26
	.value	0x25a
	.byte	0xc
	.long	0x8c
	.long	0x1bdf
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x10
	.byte	0
	.uleb128 0x15
	.long	.LASF287
	.byte	0x26
	.value	0x295
	.byte	0xc
	.long	.LASF288
	.long	0x8c
	.long	0x1bfb
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x10
	.byte	0
	.uleb128 0x12
	.long	.LASF289
	.byte	0xa2
	.byte	0x1d
	.long	.LASF289
	.long	0xedf
	.long	0x1c19
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xdc7
	.byte	0
	.uleb128 0x12
	.long	.LASF289
	.byte	0xa0
	.byte	0x17
	.long	.LASF289
	.long	0xdc2
	.long	0x1c37
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xdc7
	.byte	0
	.uleb128 0x12
	.long	.LASF290
	.byte	0xc6
	.byte	0x1d
	.long	.LASF290
	.long	0xedf
	.long	0x1c55
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xedf
	.byte	0
	.uleb128 0x12
	.long	.LASF290
	.byte	0xc4
	.byte	0x17
	.long	.LASF290
	.long	0xdc2
	.long	0x1c73
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xedf
	.byte	0
	.uleb128 0x12
	.long	.LASF291
	.byte	0xac
	.byte	0x1d
	.long	.LASF291
	.long	0xedf
	.long	0x1c91
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xdc7
	.byte	0
	.uleb128 0x12
	.long	.LASF291
	.byte	0xaa
	.byte	0x17
	.long	.LASF291
	.long	0xdc2
	.long	0x1caf
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xdc7
	.byte	0
	.uleb128 0x12
	.long	.LASF292
	.byte	0xd1
	.byte	0x1d
	.long	.LASF292
	.long	0xedf
	.long	0x1ccd
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xedf
	.byte	0
	.uleb128 0x12
	.long	.LASF292
	.byte	0xcf
	.byte	0x17
	.long	.LASF292
	.long	0xdc2
	.long	0x1ceb
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xedf
	.byte	0
	.uleb128 0x12
	.long	.LASF293
	.byte	0xfa
	.byte	0x1d
	.long	.LASF293
	.long	0xedf
	.long	0x1d0e
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0xdc7
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x12
	.long	.LASF293
	.byte	0xf8
	.byte	0x17
	.long	.LASF293
	.long	0xdc2
	.long	0x1d31
	.uleb128 0x1
	.long	0xdc2
	.uleb128 0x1
	.long	0xdc7
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF294
	.byte	0x26
	.value	0x181
	.byte	0x14
	.long	0x5d
	.long	0x1d4d
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x1a89
	.byte	0
	.uleb128 0x5
	.long	.LASF295
	.byte	0x26
	.value	0x1ba
	.byte	0x16
	.long	0x107
	.long	0x1d6e
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x1a89
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x5
	.long	.LASF296
	.byte	0x26
	.value	0x1c1
	.byte	0x1f
	.long	0x31a
	.long	0x1d8f
	.uleb128 0x1
	.long	0xedf
	.uleb128 0x1
	.long	0x1a89
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x53
	.long	.LASF495
	.uleb128 0xa
	.byte	0x1
	.byte	0x2
	.long	.LASF297
	.uleb128 0xa
	.byte	0x1
	.byte	0x7
	.long	.LASF298
	.uleb128 0xa
	.byte	0x2
	.byte	0x10
	.long	.LASF299
	.uleb128 0xa
	.byte	0x4
	.byte	0x10
	.long	.LASF300
	.uleb128 0x6
	.long	0x76b
	.uleb128 0x6
	.long	0x91c
	.uleb128 0x19
	.long	0x91c
	.uleb128 0x54
	.byte	0x8
	.long	0x76b
	.uleb128 0x19
	.long	0x76b
	.uleb128 0x6
	.long	0x95a
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.long	.LASF301
	.uleb128 0x29
	.long	.LASF302
	.byte	0x28
	.byte	0x27
	.byte	0xb
	.long	0x1deb
	.uleb128 0x55
	.byte	0x12
	.byte	0x3a
	.byte	0x18
	.long	0x9c0
	.byte	0
	.uleb128 0x4
	.long	.LASF303
	.byte	0x29
	.byte	0x18
	.byte	0x13
	.long	0x153
	.uleb128 0x4
	.long	.LASF304
	.byte	0x29
	.byte	0x19
	.byte	0x14
	.long	0x172
	.uleb128 0x4
	.long	.LASF305
	.byte	0x29
	.byte	0x1a
	.byte	0x14
	.long	0x18f
	.uleb128 0x4
	.long	.LASF306
	.byte	0x29
	.byte	0x1b
	.byte	0x14
	.long	0x1a7
	.uleb128 0x4
	.long	.LASF307
	.byte	0x2a
	.byte	0x2b
	.byte	0x18
	.long	0x1b3
	.uleb128 0x4
	.long	.LASF308
	.byte	0x2a
	.byte	0x2c
	.byte	0x19
	.long	0x1cb
	.uleb128 0x4
	.long	.LASF309
	.byte	0x2a
	.byte	0x2d
	.byte	0x19
	.long	0x1e3
	.uleb128 0x4
	.long	.LASF310
	.byte	0x2a
	.byte	0x2e
	.byte	0x19
	.long	0x1fb
	.uleb128 0x4
	.long	.LASF311
	.byte	0x2a
	.byte	0x31
	.byte	0x19
	.long	0x1bf
	.uleb128 0x4
	.long	.LASF312
	.byte	0x2a
	.byte	0x32
	.byte	0x1a
	.long	0x1d7
	.uleb128 0x4
	.long	.LASF313
	.byte	0x2a
	.byte	0x33
	.byte	0x1a
	.long	0x1ef
	.uleb128 0x4
	.long	.LASF314
	.byte	0x2a
	.byte	0x34
	.byte	0x1a
	.long	0x207
	.uleb128 0x4
	.long	.LASF315
	.byte	0x2a
	.byte	0x3a
	.byte	0x15
	.long	0x14c
	.uleb128 0x4
	.long	.LASF316
	.byte	0x2a
	.byte	0x3c
	.byte	0x12
	.long	0xcc
	.uleb128 0x4
	.long	.LASF317
	.byte	0x2a
	.byte	0x3d
	.byte	0x12
	.long	0xcc
	.uleb128 0x4
	.long	.LASF318
	.byte	0x2a
	.byte	0x3e
	.byte	0x12
	.long	0xcc
	.uleb128 0x4
	.long	.LASF319
	.byte	0x2a
	.byte	0x47
	.byte	0x17
	.long	0x132
	.uleb128 0x4
	.long	.LASF320
	.byte	0x2a
	.byte	0x49
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF321
	.byte	0x2a
	.byte	0x4a
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF322
	.byte	0x2a
	.byte	0x4b
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF323
	.byte	0x2a
	.byte	0x57
	.byte	0x12
	.long	0xcc
	.uleb128 0x4
	.long	.LASF324
	.byte	0x2a
	.byte	0x5a
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF325
	.byte	0x2a
	.byte	0x65
	.byte	0x14
	.long	0x213
	.uleb128 0x4
	.long	.LASF326
	.byte	0x2a
	.byte	0x66
	.byte	0x15
	.long	0x21f
	.uleb128 0x1c
	.long	.LASF327
	.byte	0x60
	.byte	0x2b
	.byte	0x33
	.byte	0x8
	.long	0x2051
	.uleb128 0x3
	.long	.LASF328
	.byte	0x2b
	.byte	0x37
	.byte	0x9
	.long	0x2bd
	.byte	0
	.uleb128 0x3
	.long	.LASF329
	.byte	0x2b
	.byte	0x38
	.byte	0x9
	.long	0x2bd
	.byte	0x8
	.uleb128 0x3
	.long	.LASF330
	.byte	0x2b
	.byte	0x3e
	.byte	0x9
	.long	0x2bd
	.byte	0x10
	.uleb128 0x3
	.long	.LASF331
	.byte	0x2b
	.byte	0x44
	.byte	0x9
	.long	0x2bd
	.byte	0x18
	.uleb128 0x3
	.long	.LASF332
	.byte	0x2b
	.byte	0x45
	.byte	0x9
	.long	0x2bd
	.byte	0x20
	.uleb128 0x3
	.long	.LASF333
	.byte	0x2b
	.byte	0x46
	.byte	0x9
	.long	0x2bd
	.byte	0x28
	.uleb128 0x3
	.long	.LASF334
	.byte	0x2b
	.byte	0x47
	.byte	0x9
	.long	0x2bd
	.byte	0x30
	.uleb128 0x3
	.long	.LASF335
	.byte	0x2b
	.byte	0x48
	.byte	0x9
	.long	0x2bd
	.byte	0x38
	.uleb128 0x3
	.long	.LASF336
	.byte	0x2b
	.byte	0x49
	.byte	0x9
	.long	0x2bd
	.byte	0x40
	.uleb128 0x3
	.long	.LASF337
	.byte	0x2b
	.byte	0x4a
	.byte	0x9
	.long	0x2bd
	.byte	0x48
	.uleb128 0x3
	.long	.LASF338
	.byte	0x2b
	.byte	0x4b
	.byte	0x8
	.long	0x126
	.byte	0x50
	.uleb128 0x3
	.long	.LASF339
	.byte	0x2b
	.byte	0x4c
	.byte	0x8
	.long	0x126
	.byte	0x51
	.uleb128 0x3
	.long	.LASF340
	.byte	0x2b
	.byte	0x4e
	.byte	0x8
	.long	0x126
	.byte	0x52
	.uleb128 0x3
	.long	.LASF341
	.byte	0x2b
	.byte	0x50
	.byte	0x8
	.long	0x126
	.byte	0x53
	.uleb128 0x3
	.long	.LASF342
	.byte	0x2b
	.byte	0x52
	.byte	0x8
	.long	0x126
	.byte	0x54
	.uleb128 0x3
	.long	.LASF343
	.byte	0x2b
	.byte	0x54
	.byte	0x8
	.long	0x126
	.byte	0x55
	.uleb128 0x3
	.long	.LASF344
	.byte	0x2b
	.byte	0x5b
	.byte	0x8
	.long	0x126
	.byte	0x56
	.uleb128 0x3
	.long	.LASF345
	.byte	0x2b
	.byte	0x5c
	.byte	0x8
	.long	0x126
	.byte	0x57
	.uleb128 0x3
	.long	.LASF346
	.byte	0x2b
	.byte	0x5f
	.byte	0x8
	.long	0x126
	.byte	0x58
	.uleb128 0x3
	.long	.LASF347
	.byte	0x2b
	.byte	0x61
	.byte	0x8
	.long	0x126
	.byte	0x59
	.uleb128 0x3
	.long	.LASF348
	.byte	0x2b
	.byte	0x63
	.byte	0x8
	.long	0x126
	.byte	0x5a
	.uleb128 0x3
	.long	.LASF349
	.byte	0x2b
	.byte	0x65
	.byte	0x8
	.long	0x126
	.byte	0x5b
	.uleb128 0x3
	.long	.LASF350
	.byte	0x2b
	.byte	0x6c
	.byte	0x8
	.long	0x126
	.byte	0x5c
	.uleb128 0x3
	.long	.LASF351
	.byte	0x2b
	.byte	0x6d
	.byte	0x8
	.long	0x126
	.byte	0x5d
	.byte	0
	.uleb128 0x7
	.long	.LASF352
	.byte	0x2b
	.byte	0x7a
	.byte	0xe
	.long	0x2bd
	.long	0x206c
	.uleb128 0x1
	.long	0x8c
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x35
	.long	.LASF353
	.byte	0x2b
	.byte	0x7d
	.byte	0x16
	.long	0x2078
	.uleb128 0x6
	.long	0x1f0b
	.uleb128 0xa
	.byte	0x10
	.byte	0x7
	.long	.LASF354
	.uleb128 0x1e
	.long	.LASF355
	.byte	0x21
	.value	0x312
	.long	0x2096
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x7
	.long	.LASF356
	.byte	0x21
	.byte	0xb2
	.byte	0xc
	.long	0x8c
	.long	0x20ac
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x5
	.long	.LASF357
	.byte	0x21
	.value	0x314
	.byte	0xc
	.long	0x8c
	.long	0x20c3
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x5
	.long	.LASF358
	.byte	0x21
	.value	0x316
	.byte	0xc
	.long	0x8c
	.long	0x20da
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x7
	.long	.LASF359
	.byte	0x21
	.byte	0xe6
	.byte	0xc
	.long	0x8c
	.long	0x20f0
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x5
	.long	.LASF360
	.byte	0x21
	.value	0x201
	.byte	0xc
	.long	0x8c
	.long	0x2107
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x5
	.long	.LASF361
	.byte	0x21
	.value	0x2f8
	.byte	0xc
	.long	0x8c
	.long	0x2123
	.uleb128 0x1
	.long	0x13e1
	.uleb128 0x1
	.long	0x2123
	.byte	0
	.uleb128 0x6
	.long	0x13d0
	.uleb128 0x5
	.long	.LASF362
	.byte	0x21
	.value	0x250
	.byte	0xe
	.long	0x2bd
	.long	0x2149
	.uleb128 0x1
	.long	0x2bd
	.uleb128 0x1
	.long	0x8c
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x5
	.long	.LASF363
	.byte	0x21
	.value	0x102
	.byte	0xe
	.long	0x13e1
	.long	0x2165
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x5
	.long	.LASF364
	.byte	0x21
	.value	0x2a3
	.byte	0xf
	.long	0x2e
	.long	0x218b
	.uleb128 0x1
	.long	0x297
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x5
	.long	.LASF365
	.byte	0x21
	.value	0x109
	.byte	0xe
	.long	0x13e1
	.long	0x21ac
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x5
	.long	.LASF366
	.byte	0x21
	.value	0x2c9
	.byte	0xc
	.long	0x8c
	.long	0x21cd
	.uleb128 0x1
	.long	0x13e1
	.uleb128 0x1
	.long	0xcc
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x5
	.long	.LASF367
	.byte	0x21
	.value	0x2fd
	.byte	0xc
	.long	0x8c
	.long	0x21e9
	.uleb128 0x1
	.long	0x13e1
	.uleb128 0x1
	.long	0x21e9
	.byte	0
	.uleb128 0x6
	.long	0x13dc
	.uleb128 0x5
	.long	.LASF368
	.byte	0x21
	.value	0x2ce
	.byte	0x11
	.long	0xcc
	.long	0x2205
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x5
	.long	.LASF369
	.byte	0x21
	.value	0x202
	.byte	0xc
	.long	0x8c
	.long	0x221c
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x2a
	.long	.LASF370
	.byte	0x21
	.value	0x208
	.byte	0xc
	.long	0x8c
	.uleb128 0x1e
	.long	.LASF371
	.byte	0x21
	.value	0x324
	.long	0x223b
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x7
	.long	.LASF372
	.byte	0x21
	.byte	0x98
	.byte	0xc
	.long	0x8c
	.long	0x2251
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x7
	.long	.LASF373
	.byte	0x21
	.byte	0x9a
	.byte	0xc
	.long	0x8c
	.long	0x226c
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x1e
	.long	.LASF374
	.byte	0x21
	.value	0x2d3
	.long	0x227e
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x1e
	.long	.LASF375
	.byte	0x21
	.value	0x148
	.long	0x2295
	.uleb128 0x1
	.long	0x13e1
	.uleb128 0x1
	.long	0x2bd
	.byte	0
	.uleb128 0x5
	.long	.LASF376
	.byte	0x21
	.value	0x14c
	.byte	0xc
	.long	0x8c
	.long	0x22bb
	.uleb128 0x1
	.long	0x13e1
	.uleb128 0x1
	.long	0x2bd
	.uleb128 0x1
	.long	0x8c
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x35
	.long	.LASF377
	.byte	0x21
	.byte	0xbc
	.byte	0xe
	.long	0x13e1
	.uleb128 0x7
	.long	.LASF378
	.byte	0x21
	.byte	0xcd
	.byte	0xe
	.long	0x2bd
	.long	0x22dd
	.uleb128 0x1
	.long	0x2bd
	.byte	0
	.uleb128 0x5
	.long	.LASF379
	.byte	0x21
	.value	0x29c
	.byte	0xc
	.long	0x8c
	.long	0x22f9
	.uleb128 0x1
	.long	0x8c
	.uleb128 0x1
	.long	0x13e1
	.byte	0
	.uleb128 0x6
	.long	0xbbb
	.uleb128 0x9
	.long	0x22f9
	.uleb128 0x19
	.long	0xc46
	.uleb128 0x19
	.long	0xbbb
	.uleb128 0x4
	.long	.LASF380
	.byte	0x2c
	.byte	0x26
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF381
	.byte	0x2d
	.byte	0x30
	.byte	0x1a
	.long	0x2325
	.uleb128 0x6
	.long	0x18a
	.uleb128 0x7
	.long	.LASF382
	.byte	0x2c
	.byte	0x9f
	.byte	0xc
	.long	0x8c
	.long	0x2345
	.uleb128 0x1
	.long	0x151f
	.uleb128 0x1
	.long	0x230d
	.byte	0
	.uleb128 0x7
	.long	.LASF383
	.byte	0x2d
	.byte	0x37
	.byte	0xf
	.long	0x151f
	.long	0x2360
	.uleb128 0x1
	.long	0x151f
	.uleb128 0x1
	.long	0x2319
	.byte	0
	.uleb128 0x7
	.long	.LASF384
	.byte	0x2d
	.byte	0x34
	.byte	0x12
	.long	0x2319
	.long	0x2376
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x7
	.long	.LASF385
	.byte	0x2c
	.byte	0x9b
	.byte	0x11
	.long	0x230d
	.long	0x238c
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x56
	.long	0xc84
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0xc
	.long	0x12d
	.long	0x23ab
	.uleb128 0xd
	.long	0x3a
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.long	0x239b
	.uleb128 0xe
	.long	.LASF386
	.byte	0x2e
	.byte	0x3
	.byte	0xc
	.long	0x23ab
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12STD_LOG_NAME
	.uleb128 0x36
	.long	.LASF403
	.byte	0x7
	.long	0x139
	.byte	0x2e
	.byte	0x9
	.long	0x23f6
	.uleb128 0x20
	.long	.LASF387
	.byte	0
	.uleb128 0x20
	.long	.LASF388
	.byte	0x1
	.uleb128 0x20
	.long	.LASF389
	.byte	0x2
	.uleb128 0x20
	.long	.LASF390
	.byte	0x3
	.uleb128 0x57
	.long	.LASF391
	.value	0x29a
	.byte	0
	.uleb128 0x2f
	.long	.LASF392
	.byte	0x18
	.byte	0x2f
	.byte	0xb
	.byte	0x7
	.long	0x24bd
	.uleb128 0x3
	.long	.LASF393
	.byte	0x2f
	.byte	0xe
	.byte	0xd
	.long	0x8c
	.byte	0
	.uleb128 0x3
	.long	.LASF394
	.byte	0x2f
	.byte	0x10
	.byte	0xd
	.long	0x8c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF395
	.byte	0x2f
	.byte	0x11
	.byte	0xd
	.long	0x8c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF396
	.byte	0x2f
	.byte	0x12
	.byte	0x15
	.long	0x121
	.byte	0x10
	.uleb128 0x58
	.long	.LASF392
	.byte	0x2f
	.byte	0x14
	.byte	0x9
	.long	.LASF397
	.long	0x244b
	.long	0x2456
	.uleb128 0x8
	.long	0x24c2
	.uleb128 0x1
	.long	0x24cc
	.byte	0
	.uleb128 0x59
	.long	.LASF84
	.byte	0x2f
	.byte	0x15
	.byte	0x19
	.long	.LASF398
	.long	0x24d1
	.long	0x246e
	.long	0x2479
	.uleb128 0x8
	.long	0x24c2
	.uleb128 0x1
	.long	0x24cc
	.byte	0
	.uleb128 0x5a
	.long	.LASF392
	.byte	0x2f
	.byte	0x18
	.byte	0x9
	.long	.LASF399
	.byte	0x1
	.long	0x248f
	.byte	0
	.long	0x249f
	.uleb128 0x8
	.long	0x24c2
	.uleb128 0x1
	.long	0x8c
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x5b
	.long	.LASF400
	.byte	0x2f
	.byte	0x19
	.byte	0x9
	.long	.LASF401
	.byte	0x1
	.long	0x24b1
	.byte	0
	.uleb128 0x8
	.long	0x24c2
	.uleb128 0x8
	.long	0x8c
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x23f6
	.uleb128 0x6
	.long	0x23f6
	.uleb128 0x9
	.long	0x24c2
	.uleb128 0x19
	.long	0x24bd
	.uleb128 0x19
	.long	0x23f6
	.uleb128 0xe
	.long	.LASF402
	.byte	0x30
	.byte	0x3
	.byte	0xb
	.long	0x93
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6CRINGE
	.uleb128 0x36
	.long	.LASF404
	.byte	0x5
	.long	0x8c
	.byte	0x30
	.byte	0x5
	.long	0x250f
	.uleb128 0x20
	.long	.LASF405
	.byte	0
	.uleb128 0x37
	.long	.LASF406
	.sleb128 -1
	.uleb128 0x37
	.long	.LASF407
	.sleb128 -2
	.byte	0
	.uleb128 0x5c
	.long	.LASF433
	.long	0x297
	.uleb128 0x26
	.long	0xbe3
	.long	.LASF408
	.long	0x2529
	.long	0x2533
	.uleb128 0x27
	.long	.LASF410
	.long	0x22fe
	.byte	0
	.uleb128 0x26
	.long	0xbca
	.long	.LASF409
	.long	0x2544
	.long	0x254e
	.uleb128 0x27
	.long	.LASF410
	.long	0x22fe
	.byte	0
	.uleb128 0x5d
	.long	.LASF411
	.byte	0x31
	.byte	0x45
	.byte	0xd
	.long	0x256f
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x139
	.uleb128 0x1
	.long	0x121
	.byte	0
	.uleb128 0x5
	.long	.LASF412
	.byte	0x32
	.value	0x1a3
	.byte	0xe
	.long	0x2bd
	.long	0x2586
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x26
	.long	0x249f
	.long	.LASF413
	.long	0x2597
	.long	0x25a1
	.uleb128 0x27
	.long	.LASF410
	.long	0x24c7
	.byte	0
	.uleb128 0x32
	.long	.LASF415
	.long	0x263d
	.uleb128 0x24
	.long	.LASF416
	.byte	0x33
	.byte	0x33
	.byte	0xd
	.long	.LASF417
	.long	0x8c
	.long	0x25c2
	.long	0x25d3
	.uleb128 0x8
	.long	0x263d
	.uleb128 0x1
	.long	0x8c
	.uleb128 0x1
	.long	0x121
	.uleb128 0x10
	.byte	0
	.uleb128 0x5e
	.string	"log"
	.byte	0x33
	.byte	0x24
	.byte	0xe
	.long	.LASF496
	.byte	0x1
	.long	0x25e8
	.long	0x25f4
	.uleb128 0x8
	.long	0x263d
	.uleb128 0x1
	.long	0x121
	.uleb128 0x10
	.byte	0
	.uleb128 0x24
	.long	.LASF418
	.byte	0x33
	.byte	0x2a
	.byte	0xf
	.long	.LASF419
	.long	0x297
	.long	0x260c
	.long	0x262b
	.uleb128 0x8
	.long	0x263d
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x5f
	.long	.LASF497
	.byte	0x33
	.byte	0x19
	.byte	0x18
	.long	.LASF498
	.long	0x26fc
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	0x25a1
	.uleb128 0x26
	.long	0x2479
	.long	.LASF420
	.long	0x2653
	.long	0x2675
	.uleb128 0x27
	.long	.LASF410
	.long	0x24c7
	.uleb128 0x60
	.string	"lvl"
	.byte	0x2f
	.byte	0x18
	.byte	0x1c
	.long	0x8c
	.uleb128 0x61
	.long	.LASF421
	.byte	0x2f
	.byte	0x18
	.byte	0x2d
	.long	0x121
	.byte	0
	.uleb128 0x5
	.long	.LASF422
	.byte	0x21
	.value	0x15e
	.byte	0xc
	.long	0x8c
	.long	0x2692
	.uleb128 0x1
	.long	0x13e1
	.uleb128 0x1
	.long	0x121
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF423
	.byte	0x34
	.byte	0x7a
	.byte	0xc
	.long	0x8c
	.long	0x26a8
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x5
	.long	.LASF424
	.byte	0x21
	.value	0x22c
	.byte	0xc
	.long	0x8c
	.long	0x26bf
	.uleb128 0x1
	.long	0x8c
	.byte	0
	.uleb128 0x15
	.long	.LASF425
	.byte	0x21
	.value	0x1b7
	.byte	0xc
	.long	.LASF426
	.long	0x8c
	.long	0x26e0
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x121
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF427
	.byte	0x4
	.value	0x227
	.byte	0xe
	.long	0x297
	.long	0x26fc
	.uleb128 0x1
	.long	0x297
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x19
	.long	0x25a1
	.uleb128 0x7
	.long	.LASF202
	.byte	0x35
	.byte	0xcd
	.byte	0xc
	.long	0x8c
	.long	0x271c
	.uleb128 0x1
	.long	0x121
	.uleb128 0x1
	.long	0x271c
	.byte	0
	.uleb128 0x6
	.long	0x143e
	.uleb128 0x5
	.long	.LASF428
	.byte	0x21
	.value	0x164
	.byte	0xc
	.long	0x8c
	.long	0x2739
	.uleb128 0x1
	.long	0x121
	.uleb128 0x10
	.byte	0
	.uleb128 0x62
	.long	.LASF499
	.quad	.LFB2958
	.quad	.LFE2958-.LFB2958
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x63
	.long	.LASF500
	.quad	.LFB2957
	.quad	.LFE2957-.LFB2957
	.uleb128 0x1
	.byte	0x9c
	.long	0x278a
	.uleb128 0x16
	.long	.LASF429
	.value	0x1ac
	.byte	0x5
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LASF430
	.value	0x1ac
	.byte	0x5
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF432
	.value	0x19c
	.long	.LASF436
	.long	0x8c
	.quad	.LFB2290
	.quad	.LFE2290-.LFB2290
	.uleb128 0x1
	.byte	0x9c
	.long	0x27f0
	.uleb128 0x17
	.string	"buf"
	.value	0x19c
	.byte	0x1e
	.long	0x27f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x17
	.string	"val"
	.value	0x19c
	.byte	0x2b
	.long	0x27f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x11
	.long	.LASF434
	.long	0x280a
	.uleb128 0x9
	.byte	0x3
	.quad	.LC36
	.uleb128 0x2c
	.string	"n"
	.value	0x1a3
	.byte	0x9
	.long	0x8c
	.uleb128 0x2
	.byte	0x7c
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	0x13fc
	.uleb128 0x6
	.long	0x56
	.uleb128 0xc
	.long	0x12d
	.long	0x280a
	.uleb128 0xd
	.long	0x3a
	.byte	0x25
	.byte	0
	.uleb128 0x9
	.long	0x27fa
	.uleb128 0x21
	.long	.LASF435
	.value	0x193
	.long	.LASF437
	.long	0x8c
	.quad	.LFB2289
	.quad	.LFE2289-.LFB2289
	.uleb128 0x1
	.byte	0x9c
	.long	0x2857
	.uleb128 0x17
	.string	"buf"
	.value	0x193
	.byte	0x19
	.long	0x27f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF434
	.long	0x2867
	.uleb128 0x9
	.byte	0x3
	.quad	.LC35
	.byte	0
	.uleb128 0xc
	.long	0x12d
	.long	0x2867
	.uleb128 0xd
	.long	0x3a
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.long	0x2857
	.uleb128 0x21
	.long	.LASF438
	.value	0x188
	.long	.LASF439
	.long	0x8c
	.quad	.LFB2288
	.quad	.LFE2288-.LFB2288
	.uleb128 0x1
	.byte	0x9c
	.long	0x28b4
	.uleb128 0x17
	.string	"buf"
	.value	0x188
	.byte	0x1a
	.long	0x27f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF434
	.long	0x28c4
	.uleb128 0x9
	.byte	0x3
	.quad	.LC34
	.byte	0
	.uleb128 0xc
	.long	0x12d
	.long	0x28c4
	.uleb128 0xd
	.long	0x3a
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.long	0x28b4
	.uleb128 0x28
	.long	.LASF440
	.value	0x175
	.long	.LASF441
	.quad	.LFB2287
	.quad	.LFE2287-.LFB2287
	.uleb128 0x1
	.byte	0x9c
	.long	0x293d
	.uleb128 0x17
	.string	"buf"
	.value	0x175
	.byte	0x25
	.long	0x27f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x16
	.long	.LASF442
	.value	0x175
	.byte	0x2f
	.long	0x126
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x11
	.long	.LASF434
	.long	0x294d
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.uleb128 0x64
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2c
	.string	"n"
	.value	0x17b
	.byte	0xd
	.long	0x8c
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x12d
	.long	0x294d
	.uleb128 0xd
	.long	0x3a
	.byte	0x29
	.byte	0
	.uleb128 0x9
	.long	0x293d
	.uleb128 0x28
	.long	.LASF443
	.value	0x151
	.long	.LASF444
	.quad	.LFB2286
	.quad	.LFE2286-.LFB2286
	.uleb128 0x1
	.byte	0x9c
	.long	0x29a4
	.uleb128 0x17
	.string	"buf"
	.value	0x151
	.byte	0x20
	.long	0x27f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x11
	.long	.LASF434
	.long	0x29b4
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x2c
	.string	"n"
	.value	0x155
	.byte	0x9
	.long	0x8c
	.uleb128 0x2
	.byte	0x7c
	.sleb128 -32
	.byte	0
	.uleb128 0xc
	.long	0x12d
	.long	0x29b4
	.uleb128 0xd
	.long	0x3a
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.long	0x29a4
	.uleb128 0x21
	.long	.LASF445
	.value	0x135
	.long	.LASF446
	.long	0x8c
	.quad	.LFB2285
	.quad	.LFE2285-.LFB2285
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a33
	.uleb128 0x17
	.string	"buf"
	.value	0x135
	.byte	0x19
	.long	0x27f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x16
	.long	.LASF447
	.value	0x135
	.byte	0x22
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x38
	.long	.LASF448
	.value	0x137
	.long	0x23f6
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0x11
	.long	.LASF449
	.long	0x2a43
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.uleb128 0x11
	.long	.LASF434
	.long	0x2a58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0xc
	.long	0x12d
	.long	0x2a43
	.uleb128 0xd
	.long	0x3a
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.long	0x2a33
	.uleb128 0xc
	.long	0x12d
	.long	0x2a58
	.uleb128 0xd
	.long	0x3a
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.long	0x2a48
	.uleb128 0x21
	.long	.LASF445
	.value	0x127
	.long	.LASF450
	.long	0x8c
	.quad	.LFB2284
	.quad	.LFE2284-.LFB2284
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ac4
	.uleb128 0x17
	.string	"buf"
	.value	0x127
	.byte	0x19
	.long	0x27f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x16
	.long	.LASF451
	.value	0x127
	.byte	0x2a
	.long	0x121
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x38
	.long	.LASF452
	.value	0x129
	.long	0x23f6
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.uleb128 0x11
	.long	.LASF449
	.long	0x2a43
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.uleb128 0x28
	.long	.LASF453
	.value	0x120
	.long	.LASF454
	.quad	.LFB2283
	.quad	.LFE2283-.LFB2283
	.uleb128 0x1
	.byte	0x9c
	.long	0x2af5
	.uleb128 0x16
	.long	.LASF201
	.value	0x120
	.byte	0x15
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF455
	.value	0x119
	.long	.LASF456
	.quad	.LFB2282
	.quad	.LFE2282-.LFB2282
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b35
	.uleb128 0x16
	.long	.LASF457
	.value	0x119
	.byte	0x18
	.long	0x13e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF201
	.value	0x119
	.byte	0x22
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x65
	.long	.LASF501
	.byte	0x1
	.value	0x111
	.byte	0x6
	.long	.LASF502
	.quad	.LFB2281
	.quad	.LFE2281-.LFB2281
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.long	.LASF458
	.byte	0xfc
	.byte	0x5
	.long	.LASF460
	.long	0x8c
	.quad	.LFB2280
	.quad	.LFE2280-.LFB2280
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bae
	.uleb128 0x1b
	.string	"s1"
	.byte	0xfc
	.byte	0x1e
	.long	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"s2"
	.byte	0xfc
	.byte	0x2e
	.long	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF461
	.byte	0xfc
	.byte	0x36
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.string	"i"
	.byte	0xfe
	.byte	0x9
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF462
	.byte	0xf0
	.byte	0x5
	.long	.LASF463
	.long	0x8c
	.quad	.LFB2279
	.quad	.LFE2279-.LFB2279
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c09
	.uleb128 0x1b
	.string	"s1"
	.byte	0xf0
	.byte	0x1b
	.long	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"s2"
	.byte	0xf0
	.byte	0x2b
	.long	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF461
	.byte	0xf0
	.byte	0x33
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x13
	.string	"i"
	.byte	0xf2
	.byte	0x9
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1a
	.long	.LASF464
	.byte	0xe5
	.byte	0x5
	.long	.LASF465
	.long	0x8c
	.quad	.LFB2278
	.quad	.LFE2278-.LFB2278
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c55
	.uleb128 0x1b
	.string	"s1"
	.byte	0xe5
	.byte	0x1a
	.long	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"s2"
	.byte	0xe5
	.byte	0x2a
	.long	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"i"
	.byte	0xe7
	.byte	0x9
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2d
	.long	.LASF466
	.byte	0xc8
	.long	.LASF467
	.quad	.LFB2277
	.quad	.LFE2277-.LFB2277
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c84
	.uleb128 0xb
	.long	.LASF468
	.byte	0xc8
	.byte	0x1b
	.long	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF469
	.byte	0xbd
	.byte	0x7
	.long	.LASF470
	.long	0x2bd
	.quad	.LFB2276
	.quad	.LFE2276-.LFB2276
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cc3
	.uleb128 0x1b
	.string	"s"
	.byte	0xbd
	.byte	0x1e
	.long	0x121
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x13
	.string	"n"
	.byte	0xc2
	.byte	0x9
	.long	0x8c
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF471
	.byte	0xaa
	.long	.LASF472
	.quad	.LFB2275
	.quad	.LFE2275-.LFB2275
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d1a
	.uleb128 0xb
	.long	.LASF199
	.byte	0xaa
	.byte	0x1c
	.long	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF447
	.byte	0xaa
	.byte	0x2d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF442
	.byte	0xaa
	.byte	0x38
	.long	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"i"
	.byte	0xaf
	.byte	0xe
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF471
	.byte	0x9b
	.long	.LASF473
	.quad	.LFB2274
	.quad	.LFE2274-.LFB2274
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d57
	.uleb128 0xb
	.long	.LASF199
	.byte	0x9b
	.byte	0x1c
	.long	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF442
	.byte	0x9b
	.byte	0x29
	.long	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.long	.LASF474
	.byte	0x88
	.byte	0x8
	.long	.LASF475
	.long	0x2e
	.quad	.LFB2273
	.quad	.LFE2273-.LFB2273
	.uleb128 0x1
	.byte	0x9c
	.long	0x2db4
	.uleb128 0xb
	.long	.LASF476
	.byte	0x88
	.byte	0x1f
	.long	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF477
	.byte	0x88
	.byte	0x2a
	.long	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.long	.LASF200
	.byte	0x1
	.byte	0x8d
	.byte	0xc
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"i"
	.byte	0x8e
	.byte	0xc
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF478
	.byte	0x5f
	.byte	0xe
	.long	.LASF479
	.long	0x16d4
	.quad	.LFB2272
	.quad	.LFE2272-.LFB2272
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e42
	.uleb128 0xb
	.long	.LASF199
	.byte	0x5f
	.byte	0x30
	.long	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF200
	.byte	0x5f
	.byte	0x3f
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.long	.LASF480
	.byte	0x1
	.byte	0x64
	.byte	0x12
	.long	0x16d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF449
	.long	0x2e52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0xe
	.long	.LASF481
	.byte	0x1
	.byte	0x67
	.byte	0xc
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF482
	.byte	0x1
	.byte	0x68
	.byte	0x9
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.string	"i"
	.byte	0x69
	.byte	0xc
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xc
	.long	0x12d
	.long	0x2e52
	.uleb128 0xd
	.long	0x3a
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.long	0x2e42
	.uleb128 0x1a
	.long	.LASF483
	.byte	0x32
	.byte	0xe
	.long	.LASF484
	.long	0x16d4
	.quad	.LFB2271
	.quad	.LFE2271-.LFB2271
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ee5
	.uleb128 0xb
	.long	.LASF199
	.byte	0x32
	.byte	0x2b
	.long	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF200
	.byte	0x32
	.byte	0x3a
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.long	.LASF480
	.byte	0x1
	.byte	0x37
	.byte	0x12
	.long	0x16d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF449
	.long	0x2ef5
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0xe
	.long	.LASF481
	.byte	0x1
	.byte	0x3a
	.byte	0xc
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF482
	.byte	0x1
	.byte	0x3b
	.byte	0x9
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.string	"i"
	.byte	0x3c
	.byte	0xc
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xc
	.long	0x12d
	.long	0x2ef5
	.uleb128 0xd
	.long	0x3a
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.long	0x2ee5
	.uleb128 0x66
	.long	.LASF485
	.byte	0x1
	.byte	0xa
	.byte	0x7
	.long	.LASF486
	.long	0x2bd
	.quad	.LFB2270
	.quad	.LFE2270-.LFB2270
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF487
	.byte	0xa
	.byte	0x1f
	.long	0x121
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x13
	.string	"txt"
	.byte	0xe
	.byte	0xb
	.long	0x13e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0xe
	.long	.LASF488
	.byte	0x1
	.byte	0x16
	.byte	0x11
	.long	0x143e
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -208
	.uleb128 0xe
	.long	.LASF489
	.byte	0x1
	.byte	0x1f
	.byte	0xb
	.long	0x2bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x11
	.long	.LASF449
	.long	0x2a43
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0xe
	.long	.LASF461
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0xe
	.long	.LASF490
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.long	0x2bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 38
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 27
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 23
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
	.uleb128 0x34
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 28
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.uleb128 0x5e
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
	.uleb128 0x5f
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
	.uleb128 0x60
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x61
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
	.uleb128 0x62
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
	.uleb128 0x63
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
	.uleb128 0x64
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x65
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x66
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF217:
	.string	"__glibc_reserved"
.LASF64:
	.string	"_ZSt3absd"
.LASF62:
	.string	"_ZSt3abse"
.LASF63:
	.string	"_ZSt3absf"
.LASF360:
	.string	"fgetc"
.LASF54:
	.string	"int8_t"
.LASF489:
	.string	"txt_buffer"
.LASF216:
	.string	"st_ctim"
.LASF99:
	.string	"__cust_iswap"
.LASF391:
	.string	"RELEASE"
.LASF437:
	.string	"_Z10BufferLookP6Buffer"
.LASF9:
	.string	"size_t"
.LASF389:
	.string	"DEBUG"
.LASF362:
	.string	"fgets"
.LASF260:
	.string	"tm_hour"
.LASF153:
	.string	"__value"
.LASF212:
	.string	"st_blksize"
.LASF213:
	.string	"st_blocks"
.LASF419:
	.string	"_ZN6Logger7CAL_LOGEmmPKcS1_i"
.LASF193:
	.string	"_IO_codecvt"
.LASF33:
	.string	"__uint_least8_t"
.LASF173:
	.string	"_IO_save_end"
.LASF449:
	.string	"__func__"
.LASF139:
	.string	"lldiv"
.LASF203:
	.string	"st_dev"
.LASF98:
	.string	"__cust_imove"
.LASF256:
	.string	"wcscspn"
.LASF353:
	.string	"localeconv"
.LASF44:
	.string	"__gid_t"
.LASF72:
	.string	"_M_addref"
.LASF77:
	.string	"_M_get"
.LASF144:
	.string	"strtold"
.LASF215:
	.string	"st_mtim"
.LASF470:
	.string	"_Z10SkipSpacesPKc"
.LASF141:
	.string	"strtoll"
.LASF113:
	.string	"_ZNSt8ios_base4InitC4ERKS0_"
.LASF166:
	.string	"_IO_write_base"
.LASF378:
	.string	"tmpnam"
.LASF10:
	.string	"div_t"
.LASF496:
	.string	"_ZN6Logger3logEPKcz"
.LASF418:
	.string	"CAL_LOG"
.LASF182:
	.string	"_lock"
.LASF115:
	.string	"at_quick_exit"
.LASF331:
	.string	"int_curr_symbol"
.LASF100:
	.string	"__cust_access"
.LASF315:
	.string	"int_fast8_t"
.LASF289:
	.string	"wcschr"
.LASF474:
	.string	"CountLines"
.LASF342:
	.string	"n_cs_precedes"
.LASF202:
	.string	"stat"
.LASF61:
	.string	"__compar_fn_t"
.LASF471:
	.string	"RemoveComments"
.LASF171:
	.string	"_IO_save_base"
.LASF233:
	.string	"mbrtowc"
.LASF280:
	.string	"wcsxfrm"
.LASF140:
	.string	"atoll"
.LASF338:
	.string	"int_frac_digits"
.LASF78:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EPv"
.LASF361:
	.string	"fgetpos"
.LASF157:
	.string	"__pos"
.LASF175:
	.string	"_chain"
.LASF254:
	.string	"wcscoll"
.LASF355:
	.string	"clearerr"
.LASF179:
	.string	"_cur_column"
.LASF321:
	.string	"uint_fast32_t"
.LASF336:
	.string	"positive_sign"
.LASF453:
	.string	"setindent"
.LASF464:
	.string	"stricmp"
.LASF104:
	.string	"__cust"
.LASF24:
	.string	"__uint8_t"
.LASF42:
	.string	"__dev_t"
.LASF492:
	.string	"type_info"
.LASF486:
	.string	"_Z10GetSrcFilePKc"
.LASF117:
	.string	"atof"
.LASF118:
	.string	"atoi"
.LASF119:
	.string	"atol"
.LASF150:
	.string	"__wch"
.LASF291:
	.string	"wcsrchr"
.LASF333:
	.string	"mon_decimal_point"
.LASF13:
	.string	"long int"
.LASF388:
	.string	"DEBUG_ALL"
.LASF439:
	.string	"_Z11BufferGetChP6Buffer"
.LASF85:
	.string	"_ZNSt15__exception_ptr13exception_ptraSERKS0_"
.LASF266:
	.string	"tm_isdst"
.LASF248:
	.string	"vwprintf"
.LASF135:
	.string	"wctomb"
.LASF192:
	.string	"_IO_marker"
.LASF195:
	.string	"fpos_t"
.LASF393:
	.string	"old_level"
.LASF110:
	.string	"~Init"
.LASF383:
	.string	"towctrans"
.LASF96:
	.string	"ranges"
.LASF401:
	.string	"_ZN14FunctionLoggerD4Ev"
.LASF230:
	.string	"rand"
.LASF423:
	.string	"tolower"
.LASF409:
	.string	"_ZNSt8ios_base4InitC1Ev"
.LASF219:
	.string	"mbstate_t"
.LASF196:
	.string	"__ioinit"
.LASF482:
	.string	"number_of_characters_in_line"
.LASF95:
	.string	"nullptr_t"
.LASF411:
	.string	"__assert_fail"
.LASF265:
	.string	"tm_yday"
.LASF142:
	.string	"strtoull"
.LASF51:
	.string	"__blksize_t"
.LASF303:
	.string	"uint8_t"
.LASF161:
	.string	"_IO_FILE"
.LASF372:
	.string	"remove"
.LASF194:
	.string	"_IO_wide_data"
.LASF207:
	.string	"st_uid"
.LASF380:
	.string	"wctype_t"
.LASF84:
	.string	"operator="
.LASF240:
	.string	"__isoc99_swscanf"
.LASF221:
	.string	"fgetwc"
.LASF231:
	.string	"getwchar"
.LASF35:
	.string	"__uint_least16_t"
.LASF222:
	.string	"fgetws"
.LASF20:
	.string	"unsigned char"
.LASF354:
	.string	"__int128 unsigned"
.LASF343:
	.string	"n_sep_by_space"
.LASF443:
	.string	"BufferSkipSpaces"
.LASF356:
	.string	"fclose"
.LASF293:
	.string	"wmemchr"
.LASF299:
	.string	"char16_t"
.LASF427:
	.string	"realloc"
.LASF228:
	.string	"__isoc99_fwscanf"
.LASF15:
	.string	"7lldiv_t"
.LASF253:
	.string	"wcscmp"
.LASF129:
	.string	"srand"
.LASF238:
	.string	"swprintf"
.LASF53:
	.string	"__syscall_slong_t"
.LASF290:
	.string	"wcspbrk"
.LASF93:
	.string	"rethrow_exception"
.LASF467:
	.string	"_Z8ShowLinePKc"
.LASF485:
	.string	"GetSrcFile"
.LASF478:
	.string	"SplitBufferIntoLines"
.LASF442:
	.string	"terminator"
.LASF122:
	.string	"ldiv"
.LASF137:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF465:
	.string	"_Z7stricmpPKcS0_"
.LASF466:
	.string	"ShowLine"
.LASF47:
	.string	"__nlink_t"
.LASF385:
	.string	"wctype"
.LASF313:
	.string	"uint_least32_t"
.LASF271:
	.string	"wcsncmp"
.LASF494:
	.string	"_IO_lock_t"
.LASF27:
	.string	"__uint16_t"
.LASF432:
	.string	"BufferGetDouble"
.LASF345:
	.string	"n_sign_posn"
.LASF112:
	.string	"_ZNSt8ios_base4InitD4Ev"
.LASF499:
	.string	"_GLOBAL__sub_I__Z10GetSrcFilePKc"
.LASF284:
	.string	"wmemmove"
.LASF107:
	.string	"numbers"
.LASF11:
	.string	"5div_t"
.LASF369:
	.string	"getc"
.LASF46:
	.string	"__mode_t"
.LASF259:
	.string	"tm_min"
.LASF229:
	.string	"getwc"
.LASF163:
	.string	"_IO_read_ptr"
.LASF287:
	.string	"wscanf"
.LASF334:
	.string	"mon_thousands_sep"
.LASF241:
	.string	"ungetwc"
.LASF146:
	.string	"fp_offset"
.LASF368:
	.string	"ftell"
.LASF114:
	.string	"_ZNSt8ios_base4InitaSERKS0_"
.LASF232:
	.string	"mbrlen"
.LASF337:
	.string	"negative_sign"
.LASF476:
	.string	"text"
.LASF346:
	.string	"int_p_cs_precedes"
.LASF226:
	.string	"fwprintf"
.LASF174:
	.string	"_markers"
.LASF480:
	.string	"lines_array"
.LASF296:
	.string	"wcstoull"
.LASF457:
	.string	"file"
.LASF261:
	.string	"tm_mday"
.LASF435:
	.string	"BufferLook"
.LASF156:
	.string	"_G_fpos_t"
.LASF39:
	.string	"__uint_least64_t"
.LASF491:
	.string	"GNU C++20 11.3.0 -mtune=generic -march=x86-64 -g -std=c++20 -fstrict-overflow -fstack-protector -fcheck-new -fsized-deallocation -fno-omit-frame-pointer -fPIE -fsanitize=address,leak -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF255:
	.string	"wcscpy"
.LASF428:
	.string	"printf"
.LASF245:
	.string	"vswprintf"
.LASF132:
	.string	"strtoul"
.LASF382:
	.string	"iswctype"
.LASF199:
	.string	"buffer"
.LASF285:
	.string	"wmemset"
.LASF90:
	.string	"_ZNSt15__exception_ptr13exception_ptr4swapERS0_"
.LASF250:
	.string	"__isoc99_vwscanf"
.LASF111:
	.string	"_ZNSt8ios_base4InitC4Ev"
.LASF225:
	.string	"fwide"
.LASF19:
	.string	"char"
.LASF298:
	.string	"char8_t"
.LASF314:
	.string	"uint_least64_t"
.LASF258:
	.string	"tm_sec"
.LASF91:
	.string	"__cxa_exception_type"
.LASF183:
	.string	"_offset"
.LASF272:
	.string	"wcsncpy"
.LASF208:
	.string	"st_gid"
.LASF237:
	.string	"putwchar"
.LASF86:
	.string	"_ZNSt15__exception_ptr13exception_ptraSEOS0_"
.LASF282:
	.string	"wmemcmp"
.LASF461:
	.string	"number_of_ch"
.LASF31:
	.string	"__uint64_t"
.LASF121:
	.string	"getenv"
.LASF430:
	.string	"__priority"
.LASF312:
	.string	"uint_least16_t"
.LASF2:
	.string	"long unsigned int"
.LASF17:
	.string	"lldiv_t"
.LASF80:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4Ev"
.LASF198:
	.string	"Buffer"
.LASF29:
	.string	"__uint32_t"
.LASF73:
	.string	"_M_release"
.LASF177:
	.string	"_flags2"
.LASF455:
	.string	"fsetindent"
.LASF309:
	.string	"int_least32_t"
.LASF211:
	.string	"st_size"
.LASF302:
	.string	"__gnu_debug"
.LASF37:
	.string	"__uint_least32_t"
.LASF12:
	.string	"6ldiv_t"
.LASF165:
	.string	"_IO_read_base"
.LASF310:
	.string	"int_least64_t"
.LASF468:
	.string	"line"
.LASF242:
	.string	"vfwprintf"
.LASF56:
	.string	"int32_t"
.LASF410:
	.string	"this"
.LASF300:
	.string	"char32_t"
.LASF190:
	.string	"_unused2"
.LASF479:
	.string	"_Z20SplitBufferIntoLinesPKcm"
.LASF134:
	.string	"wcstombs"
.LASF267:
	.string	"tm_gmtoff"
.LASF475:
	.string	"_Z10CountLinesPKcc"
.LASF324:
	.string	"uintptr_t"
.LASF341:
	.string	"p_sep_by_space"
.LASF79:
	.string	"_ZNKSt15__exception_ptr13exception_ptr6_M_getEv"
.LASF4:
	.string	"__float128"
.LASF440:
	.string	"BufferSkipCommentLine"
.LASF403:
	.string	"LoggingLevels"
.LASF178:
	.string	"_old_offset"
.LASF367:
	.string	"fsetpos"
.LASF349:
	.string	"int_n_sep_by_space"
.LASF52:
	.string	"__blkcnt_t"
.LASF502:
	.string	"_Z11ClearBufferv"
.LASF429:
	.string	"__initialize_p"
.LASF444:
	.string	"_Z16BufferSkipSpacesP6Buffer"
.LASF45:
	.string	"__ino_t"
.LASF201:
	.string	"indent"
.LASF481:
	.string	"current_line"
.LASF16:
	.string	"long long int"
.LASF154:
	.string	"__mbstate_t"
.LASF283:
	.string	"wmemcpy"
.LASF262:
	.string	"tm_mon"
.LASF102:
	.string	"__cmp_cat"
.LASF59:
	.string	"tv_nsec"
.LASF463:
	.string	"_Z8strnicmpPKcS0_i"
.LASF462:
	.string	"strnicmp"
.LASF186:
	.string	"_freeres_list"
.LASF397:
	.string	"_ZN14FunctionLoggerC4ERKS_"
.LASF278:
	.string	"wcstol"
.LASF6:
	.string	"double"
.LASF488:
	.string	"txt_data"
.LASF97:
	.string	"__cust_swap"
.LASF168:
	.string	"_IO_write_end"
.LASF425:
	.string	"sscanf"
.LASF498:
	.string	"_ZN6Logger11getInstanceEv"
.LASF206:
	.string	"st_mode"
.LASF326:
	.string	"uintmax_t"
.LASF281:
	.string	"wctob"
.LASF407:
	.string	"BAD_ARGUMENT"
.LASF105:
	.string	"__cmp_alg"
.LASF145:
	.string	"gp_offset"
.LASF412:
	.string	"strerror"
.LASF387:
	.string	"FULL_MAXIMUM_ULTRA_TOTAL_FUCKING_LOGGING"
.LASF458:
	.string	"strnicmprus"
.LASF5:
	.string	"float"
.LASF495:
	.string	"decltype(nullptr)"
.LASF76:
	.string	"exception_ptr"
.LASF344:
	.string	"p_sign_posn"
.LASF322:
	.string	"uint_fast64_t"
.LASF40:
	.string	"__intmax_t"
.LASF169:
	.string	"_IO_buf_base"
.LASF451:
	.string	"string"
.LASF21:
	.string	"unsigned int"
.LASF406:
	.string	"FAILURE"
.LASF371:
	.string	"perror"
.LASF484:
	.string	"_Z21DivideBufferIntoLinesPcm"
.LASF323:
	.string	"intptr_t"
.LASF274:
	.string	"wcsspn"
.LASF431:
	.string	"operator bool"
.LASF209:
	.string	"__pad0"
.LASF366:
	.string	"fseek"
.LASF188:
	.string	"__pad5"
.LASF376:
	.string	"setvbuf"
.LASF441:
	.string	"_Z21BufferSkipCommentLineP6Bufferc"
.LASF417:
	.string	"_ZN6Logger9LogMsgRetEiPKcz"
.LASF133:
	.string	"system"
.LASF316:
	.string	"int_fast16_t"
.LASF381:
	.string	"wctrans_t"
.LASF147:
	.string	"overflow_arg_area"
.LASF373:
	.string	"rename"
.LASF162:
	.string	"_flags"
.LASF210:
	.string	"st_rdev"
.LASF109:
	.string	"Init"
.LASF189:
	.string	"_mode"
.LASF87:
	.string	"~exception_ptr"
.LASF328:
	.string	"decimal_point"
.LASF243:
	.string	"vfwscanf"
.LASF370:
	.string	"getchar"
.LASF184:
	.string	"_codecvt"
.LASF152:
	.string	"__count"
.LASF205:
	.string	"st_nlink"
.LASF297:
	.string	"bool"
.LASF311:
	.string	"uint_least8_t"
.LASF357:
	.string	"feof"
.LASF307:
	.string	"int_least8_t"
.LASF3:
	.string	"__unknown__"
.LASF390:
	.string	"INTERMEDIATE"
.LASF421:
	.string	"func_name"
.LASF483:
	.string	"DivideBufferIntoLines"
.LASF220:
	.string	"btowc"
.LASF128:
	.string	"qsort"
.LASF288:
	.string	"__isoc99_wscanf"
.LASF325:
	.string	"intmax_t"
.LASF7:
	.string	"long double"
.LASF236:
	.string	"putwc"
.LASF501:
	.string	"ClearBuffer"
.LASF191:
	.string	"FILE"
.LASF436:
	.string	"_Z15BufferGetDoubleP6BufferPd"
.LASF317:
	.string	"int_fast32_t"
.LASF14:
	.string	"ldiv_t"
.LASF155:
	.string	"timespec"
.LASF416:
	.string	"LogMsgRet"
.LASF151:
	.string	"__wchb"
.LASF120:
	.string	"bsearch"
.LASF413:
	.string	"_ZN14FunctionLoggerD1Ev"
.LASF22:
	.string	"__int8_t"
.LASF408:
	.string	"_ZNSt8ios_base4InitD1Ev"
.LASF500:
	.string	"__static_initialization_and_destruction_0"
.LASF447:
	.string	"size"
.LASF60:
	.string	"long long unsigned int"
.LASF89:
	.string	"swap"
.LASF148:
	.string	"reg_save_area"
.LASF294:
	.string	"wcstold"
.LASF347:
	.string	"int_p_sep_by_space"
.LASF304:
	.string	"uint16_t"
.LASF295:
	.string	"wcstoll"
.LASF48:
	.string	"__off_t"
.LASF292:
	.string	"wcsstr"
.LASF415:
	.string	"Logger"
.LASF420:
	.string	"_ZN14FunctionLoggerC1EiPKc"
.LASF82:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EDn"
.LASF94:
	.string	"_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE"
.LASF375:
	.string	"setbuf"
.LASF66:
	.string	"_ZSt3absl"
.LASF273:
	.string	"wcsrtombs"
.LASF34:
	.string	"__int_least16_t"
.LASF318:
	.string	"int_fast64_t"
.LASF187:
	.string	"_freeres_buf"
.LASF264:
	.string	"tm_wday"
.LASF126:
	.string	"mbtowc"
.LASF200:
	.string	"number_of_lines"
.LASF65:
	.string	"_ZSt3absx"
.LASF405:
	.string	"SUCCESS"
.LASF234:
	.string	"mbsinit"
.LASF239:
	.string	"swscanf"
.LASF275:
	.string	"wcstod"
.LASF276:
	.string	"wcstof"
.LASF277:
	.string	"wcstok"
.LASF108:
	.string	"__cxx11"
.LASF308:
	.string	"int_least16_t"
.LASF469:
	.string	"SkipSpaces"
.LASF67:
	.string	"_ZSt3divll"
.LASF386:
	.string	"STD_LOG_NAME"
.LASF8:
	.string	"quot"
.LASF160:
	.string	"__FILE"
.LASF25:
	.string	"__int16_t"
.LASF319:
	.string	"uint_fast8_t"
.LASF172:
	.string	"_IO_backup_base"
.LASF352:
	.string	"setlocale"
.LASF181:
	.string	"_shortbuf"
.LASF247:
	.string	"__isoc99_vswscanf"
.LASF227:
	.string	"fwscanf"
.LASF218:
	.string	"wint_t"
.LASF301:
	.string	"__int128"
.LASF414:
	.string	"ios_base"
.LASF49:
	.string	"__off64_t"
.LASF446:
	.string	"_Z10BufferCtorP6Bufferi"
.LASF92:
	.string	"_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv"
.LASF363:
	.string	"fopen"
.LASF497:
	.string	"getInstance"
.LASF28:
	.string	"__int32_t"
.LASF384:
	.string	"wctrans"
.LASF329:
	.string	"thousands_sep"
.LASF244:
	.string	"__isoc99_vfwscanf"
.LASF68:
	.string	"__swappable_details"
.LASF123:
	.string	"mblen"
.LASF374:
	.string	"rewind"
.LASF185:
	.string	"_wide_data"
.LASF170:
	.string	"_IO_buf_end"
.LASF269:
	.string	"wcslen"
.LASF422:
	.string	"fprintf"
.LASF130:
	.string	"strtod"
.LASF143:
	.string	"strtof"
.LASF103:
	.string	"__cmp_cust"
.LASF131:
	.string	"strtol"
.LASF106:
	.string	"__debug"
.LASF339:
	.string	"frac_digits"
.LASF404:
	.string	"ReturnStatus"
.LASF358:
	.string	"ferror"
.LASF332:
	.string	"currency_symbol"
.LASF26:
	.string	"short int"
.LASF71:
	.string	"_M_exception_object"
.LASF306:
	.string	"uint64_t"
.LASF257:
	.string	"wcsftime"
.LASF158:
	.string	"__state"
.LASF448:
	.string	"func_311"
.LASF55:
	.string	"int16_t"
.LASF116:
	.string	"atexit"
.LASF459:
	.string	"_ZNKSt15__exception_ptr13exception_ptrcvbEv"
.LASF38:
	.string	"__int_least64_t"
.LASF180:
	.string	"_vtable_offset"
.LASF335:
	.string	"mon_grouping"
.LASF450:
	.string	"_Z10BufferCtorP6BufferPKc"
.LASF41:
	.string	"__uintmax_t"
.LASF252:
	.string	"wcscat"
.LASF438:
	.string	"BufferGetCh"
.LASF377:
	.string	"tmpfile"
.LASF149:
	.string	"11__mbstate_t"
.LASF348:
	.string	"int_n_cs_precedes"
.LASF392:
	.string	"FunctionLogger"
.LASF424:
	.string	"putchar"
.LASF350:
	.string	"int_p_sign_posn"
.LASF23:
	.string	"signed char"
.LASF69:
	.string	"__swappable_with_details"
.LASF268:
	.string	"tm_zone"
.LASF30:
	.string	"__int64_t"
.LASF379:
	.string	"ungetc"
.LASF399:
	.string	"_ZN14FunctionLoggerC4EiPKc"
.LASF249:
	.string	"vwscanf"
.LASF251:
	.string	"wcrtomb"
.LASF327:
	.string	"lconv"
.LASF43:
	.string	"__uid_t"
.LASF487:
	.string	"file_direction"
.LASF164:
	.string	"_IO_read_end"
.LASF124:
	.string	"mbstowcs"
.LASF395:
	.string	"current_indent"
.LASF270:
	.string	"wcsncat"
.LASF452:
	.string	"func_297"
.LASF81:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4ERKS0_"
.LASF477:
	.string	"end_of_line"
.LASF456:
	.string	"_Z10fsetindentP8_IO_FILEi"
.LASF433:
	.string	"__dso_handle"
.LASF305:
	.string	"uint32_t"
.LASF351:
	.string	"int_n_sign_posn"
.LASF159:
	.string	"__fpos_t"
.LASF176:
	.string	"_fileno"
.LASF320:
	.string	"uint_fast16_t"
.LASF224:
	.string	"fputws"
.LASF246:
	.string	"vswscanf"
.LASF235:
	.string	"mbsrtowcs"
.LASF472:
	.string	"_Z14RemoveCommentsPcjc"
.LASF75:
	.string	"_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv"
.LASF36:
	.string	"__int_least32_t"
.LASF445:
	.string	"BufferCtor"
.LASF88:
	.string	"_ZNSt15__exception_ptr13exception_ptrD4Ev"
.LASF223:
	.string	"fputwc"
.LASF340:
	.string	"p_cs_precedes"
.LASF263:
	.string	"tm_year"
.LASF83:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EOS0_"
.LASF18:
	.string	"short unsigned int"
.LASF32:
	.string	"__int_least8_t"
.LASF394:
	.string	"guard_level"
.LASF364:
	.string	"fread"
.LASF400:
	.string	"~FunctionLogger"
.LASF138:
	.string	"__ops"
.LASF473:
	.string	"_Z14RemoveCommentsPcc"
.LASF101:
	.string	"__detail"
.LASF167:
	.string	"_IO_write_ptr"
.LASF460:
	.string	"_Z11strnicmprusPKcS0_i"
.LASF434:
	.string	"__PRETTY_FUNCTION__"
.LASF70:
	.string	"__exception_ptr"
.LASF197:
	.string	"INDENT_SIZE"
.LASF57:
	.string	"int64_t"
.LASF74:
	.string	"_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv"
.LASF204:
	.string	"st_ino"
.LASF490:
	.string	"temp"
.LASF402:
	.string	"CRINGE"
.LASF50:
	.string	"__time_t"
.LASF330:
	.string	"grouping"
.LASF454:
	.string	"_Z9setindenti"
.LASF286:
	.string	"wprintf"
.LASF398:
	.string	"_ZN14FunctionLoggeraSERKS_"
.LASF359:
	.string	"fflush"
.LASF58:
	.string	"tv_sec"
.LASF127:
	.string	"quick_exit"
.LASF125:
	.string	"wchar_t"
.LASF493:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF396:
	.string	"function_name"
.LASF426:
	.string	"__isoc99_sscanf"
.LASF136:
	.string	"__gnu_cxx"
.LASF279:
	.string	"wcstoul"
.LASF214:
	.string	"st_atim"
.LASF365:
	.string	"freopen"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd"
.LASF0:
	.string	"../ATC/Buffer/my_buffer.cpp"
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
