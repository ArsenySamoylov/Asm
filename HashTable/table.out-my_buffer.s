	.file	"my_buffer.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"int BufferLook(Buffer*)"
.LC1:
	.string	"./ATC/Buffer/my_buffer.cpp"
.LC2:
	.string	"buf"
	.text
	.p2align 4
	.type	_Z10BufferLookP6Buffer.part.0, @function
_Z10BufferLookP6Buffer.part.0:
.LFB2343:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	leaq	.LC0(%rip), %rcx
	movl	$405, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	__assert_fail@PLT
	.cfi_endproc
.LFE2343:
	.size	_Z10BufferLookP6Buffer.part.0, .-_Z10BufferLookP6Buffer.part.0
	.section	.rodata.str1.1
.LC3:
	.string	"rb"
.LC4:
	.string	"\033[91mCan't open file %s\n\033[0m"
.LC5:
	.string	"GetSrcFile"
	.text
	.p2align 4
	.globl	_Z10GetSrcFilePKc
	.type	_Z10GetSrcFilePKc, @function
_Z10GetSrcFilePKc:
.LFB1840:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$168, %rsp
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L17
	leaq	.LC3(%rip), %rsi
	movq	%rdi, %rbp
	call	fopen@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L18
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	call	stat@PLT
	cmpq	$0, 48(%rsp)
	jle	.L19
	call	_ZN6Logger11getInstanceEv@PLT
	movl	$31, %r9d
	movl	$1, %edx
	leaq	.LC5(%rip), %r8
	movq	%rax, %rdi
	movq	48(%rsp), %rax
	leaq	.LC1(%rip), %rcx
	leaq	1(%rax), %rsi
	call	_ZN6Logger7CAL_LOGEmmPKcS1_i@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L17
	movq	48(%rsp), %rdx
	movq	%r12, %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rbp, %rdi
	leaq	1(%rax), %rsi
	movq	%rax, %rbx
	call	realloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L20
.L10:
	movb	$0, 0(%r13,%rbx)
	movq	%r12, %rdi
	call	fclose@PLT
.L4:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L21
	addq	$168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L18:
	.cfi_restore_state
	movq	%rbp, %rdx
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L17:
	xorl	%r13d, %r13d
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L19:
	movq	%r12, %rdi
	xorl	%r13d, %r13d
	call	fclose@PLT
	jmp	.L4
.L21:
	call	__stack_chk_fail@PLT
.L20:
	movq	%rbp, %r13
	jmp	.L10
	.cfi_endproc
.LFE1840:
	.size	_Z10GetSrcFilePKc, .-_Z10GetSrcFilePKc
	.section	.rodata.str1.1
.LC6:
	.string	"DivideBufferIntoLines"
	.text
	.p2align 4
	.globl	_Z21DivideBufferIntoLinesPcm
	.type	_Z21DivideBufferIntoLinesPcm, @function
_Z21DivideBufferIntoLinesPcm:
.LFB1841:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L44
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rsi, %rsi
	je	.L26
	movq	%rdi, %rbx
	call	_ZN6Logger11getInstanceEv@PLT
	leaq	1(%rbp), %rsi
	movl	$55, %r9d
	leaq	.LC6(%rip), %r8
	movq	%rax, %rdi
	leaq	.LC1(%rip), %rcx
	movl	$8, %edx
	call	_ZN6Logger7CAL_LOGEmmPKcS1_i@PLT
	testq	%rax, %rax
	je	.L26
	movzbl	(%rbx), %esi
	testb	%sil, %sil
	je	.L27
	xorl	%edx, %edx
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L28:
	cmpb	$10, -1(%rbx,%rcx)
	jne	.L29
	movslq	%edi, %rdi
	movb	$0, -1(%rbx,%rcx)
	subq	%rdi, %rdx
	addq	%rbx, %rdx
	movq	%rdx, (%rax,%r8,8)
	movzbl	(%rbx,%rcx), %esi
	testb	%sil, %sil
	je	.L27
.L47:
	addq	$1, %r8
	xorl	%edi, %edi
.L32:
	movq	%rcx, %rdx
.L33:
	leaq	1(%rdx), %rcx
	cmpb	$13, %sil
	jne	.L28
	movb	$32, -1(%rbx,%rcx)
.L29:
	movzbl	(%rbx,%rcx), %esi
	testb	%sil, %sil
	jne	.L31
	movslq	%edi, %rdi
	subq	%rdi, %rdx
	addq	%rbx, %rdx
	movq	%rdx, (%rax,%r8,8)
	movzbl	(%rbx,%rcx), %esi
	testb	%sil, %sil
	jne	.L47
.L27:
	movq	$0, (%rax,%rbp,8)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	.cfi_restore_state
	addl	$1, %edi
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L26:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1841:
	.size	_Z21DivideBufferIntoLinesPcm, .-_Z21DivideBufferIntoLinesPcm
	.section	.rodata.str1.1
.LC7:
	.string	"SplitBufferIntoLines"
	.text
	.p2align 4
	.globl	_Z20SplitBufferIntoLinesPKcm
	.type	_Z20SplitBufferIntoLinesPKcm, @function
_Z20SplitBufferIntoLinesPKcm:
.LFB1842:
	.cfi_startproc
	endbr64
	testq	%rsi, %rsi
	je	.L69
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rdi, %rdi
	je	.L52
	movq	%rsi, %rbp
	call	_ZN6Logger11getInstanceEv@PLT
	leaq	1(%rbp), %rsi
	movl	$100, %r9d
	leaq	.LC7(%rip), %r8
	movq	%rax, %rdi
	leaq	.LC1(%rip), %rcx
	movl	$8, %edx
	call	_ZN6Logger7CAL_LOGEmmPKcS1_i@PLT
	testq	%rax, %rax
	je	.L52
	movzbl	(%rbx), %ecx
	testb	%cl, %cl
	je	.L53
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L54:
	movzbl	1(%rbx,%rdx), %ecx
	testb	%cl, %cl
	je	.L72
	addl	$1, %esi
.L57:
	movq	%rdi, %rdx
.L58:
	leaq	1(%rdx), %rdi
	cmpb	$10, %cl
	jne	.L54
.L72:
	movslq	%esi, %rsi
	subq	%rsi, %rdx
	addq	%rbx, %rdx
	movq	%rdx, (%rax,%r8,8)
	movzbl	(%rbx,%rdi), %ecx
	testb	%cl, %cl
	je	.L53
	addq	$1, %r8
	xorl	%esi, %esi
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L53:
	movq	$0, (%rax,%rbp,8)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L69:
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1842:
	.size	_Z20SplitBufferIntoLinesPKcm, .-_Z20SplitBufferIntoLinesPKcm
	.p2align 4
	.globl	_Z10CountLinesPKcc
	.type	_Z10CountLinesPKcc, @function
_Z10CountLinesPKcc:
.LFB1843:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L80
	movzbl	(%rdi), %edx
	testb	%dl, %dl
	je	.L80
	addq	$1, %rdi
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L78:
	movzbl	(%rdi), %eax
	cmpb	%dl, %sil
	je	.L75
	testb	%al, %al
	jne	.L77
	addq	$1, %r8
.L73:
	movq	%r8, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	addq	$1, %r8
	testb	%al, %al
	je	.L73
.L77:
	addq	$1, %rdi
	movl	%eax, %edx
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L80:
	xorl	%r8d, %r8d
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE1843:
	.size	_Z10CountLinesPKcc, .-_Z10CountLinesPKcc
	.p2align 4
	.globl	_Z14RemoveCommentsPcc
	.type	_Z14RemoveCommentsPcc, @function
_Z14RemoveCommentsPcc:
.LFB1844:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	jne	.L96
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L87:
	cmpb	%al, %sil
	jne	.L86
	movb	$0, (%rdi)
.L86:
	addq	$1, %rdi
.L96:
	movzbl	(%rdi), %eax
	testb	%al, %al
	jne	.L87
.L95:
	ret
	.cfi_endproc
.LFE1844:
	.size	_Z14RemoveCommentsPcc, .-_Z14RemoveCommentsPcc
	.p2align 4
	.globl	_Z14RemoveCommentsPcjc
	.type	_Z14RemoveCommentsPcjc, @function
_Z14RemoveCommentsPcjc:
.LFB1845:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L108
	testl	%esi, %esi
	je	.L108
	movl	%esi, %esi
	leaq	(%rdi,%rsi), %rax
	.p2align 4,,10
	.p2align 3
.L100:
	cmpb	%dl, (%rdi)
	jne	.L99
	movb	$0, (%rdi)
.L99:
	addq	$1, %rdi
	cmpq	%rax, %rdi
	jne	.L100
.L108:
	ret
	.cfi_endproc
.LFE1845:
	.size	_Z14RemoveCommentsPcjc, .-_Z14RemoveCommentsPcjc
	.section	.rodata.str1.1
.LC8:
	.string	"%*[ \t\n\013]%n"
	.text
	.p2align 4
	.globl	_Z10SkipSpacesPKc
	.type	_Z10SkipSpacesPKc, @function
_Z10SkipSpacesPKc:
.LFB1846:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L112
	leaq	4(%rsp), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rdi, %rbx
	movl	$0, 4(%rsp)
	call	__isoc99_sscanf@PLT
	movslq	4(%rsp), %rax
	addq	%rbx, %rax
.L109:
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L114
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L112:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L109
.L114:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1846:
	.size	_Z10SkipSpacesPKc, .-_Z10SkipSpacesPKc
	.section	.rodata.str1.1
.LC9:
	.string	"\\n"
.LC10:
	.string	"\\t"
.LC11:
	.string	"\\b"
.LC12:
	.string	"\\r"
.LC13:
	.string	"\\0"
	.text
	.p2align 4
	.globl	_Z8ShowLinePKc
	.type	_Z8ShowLinePKc, @function
_Z8ShowLinePKc:
.LFB1847:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movsbl	(%rdi), %edi
	testb	%dil, %dil
	je	.L116
	leaq	.L119(%rip), %rbx
	leaq	.LC12(%rip), %r13
	leaq	.LC11(%rip), %r12
	leaq	.LC10(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L125:
	leal	-8(%rdi), %eax
	cmpb	$24, %al
	ja	.L117
	movzbl	%al, %eax
	movslq	(%rbx,%rax,4), %rax
	addq	%rbx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L119:
	.long	.L123-.L119
	.long	.L122-.L119
	.long	.L121-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L120-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L117-.L119
	.long	.L118-.L119
	.text
	.p2align 4,,10
	.p2align 3
.L117:
	movq	stdout(%rip), %rsi
	call	putc@PLT
	.p2align 4,,10
	.p2align 3
.L124:
	movsbl	1(%r14), %edi
	addq	$1, %r14
	testb	%dil, %dil
	jne	.L125
.L116:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	.LC13(%rip), %rdi
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
	.p2align 4,,10
	.p2align 3
.L118:
	.cfi_restore_state
	movq	stdout(%rip), %rsi
	movl	$95, %edi
	call	putc@PLT
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L120:
	movq	%r13, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L121:
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L122:
	movq	%rbp, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L123:
	movq	%r12, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L124
	.cfi_endproc
.LFE1847:
	.size	_Z8ShowLinePKc, .-_Z8ShowLinePKc
	.p2align 4
	.globl	_Z7stricmpPKcS0_
	.type	_Z7stricmpPKcS0_, @function
_Z7stricmpPKcS0_:
.LFB1848:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movzbl	(%rdi), %eax
	testb	%al, %al
	jne	.L132
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L136:
	movl	%ebx, %edi
	call	tolower@PLT
	movl	%r13d, %edi
	movl	%eax, %r12d
	call	tolower@PLT
	cmpl	%eax, %r12d
	jne	.L133
	addq	$1, %rbp
	movzbl	(%r14,%rbp), %eax
	testb	%al, %al
	je	.L143
.L132:
	movsbl	(%r15,%rbp), %r13d
	movsbl	%al, %ebx
	testb	%r13b, %r13b
	jne	.L136
.L133:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebx, %eax
	subl	%r13d, %eax
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
.L143:
	.cfi_restore_state
	movsbl	(%r15,%rbp), %r13d
	xorl	%ebx, %ebx
	jmp	.L133
.L142:
	movsbl	(%rsi), %r13d
	xorl	%ebx, %ebx
	jmp	.L133
	.cfi_endproc
.LFE1848:
	.size	_Z7stricmpPKcS0_, .-_Z7stricmpPKcS0_
	.p2align 4
	.globl	_Z8strnicmpPKcS0_i
	.type	_Z8strnicmpPKcS0_i, @function
_Z8strnicmpPKcS0_i:
.LFB1849:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movsbl	(%rdi), %eax
	movsbl	(%rsi), %ebp
	testb	%al, %al
	je	.L153
	movl	%edx, %r15d
	testl	%edx, %edx
	je	.L145
	testb	%bpl, %bpl
	leaq	1(%rdi), %r14
	leaq	1(%rsi), %r13
	setne	%dl
	testb	%dl, %dl
	jne	.L150
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L148:
	movsbl	(%r14), %eax
	movsbl	0(%r13), %ebp
	subl	$1, %r15d
	testb	%al, %al
	je	.L153
	addq	$1, %r14
	addq	$1, %r13
	testl	%r15d, %r15d
	je	.L145
	testb	%bpl, %bpl
	je	.L145
.L150:
	movsbl	%al, %ebx
	movl	%ebx, %edi
	call	tolower@PLT
	movl	%ebp, %edi
	movl	%eax, %r12d
	call	tolower@PLT
	cmpl	%eax, %r12d
	je	.L148
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebx, %eax
	subl	%ebp, %eax
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
.L153:
	.cfi_restore_state
	xorl	%eax, %eax
.L145:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	subl	%ebp, %eax
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
	.cfi_endproc
.LFE1849:
	.size	_Z8strnicmpPKcS0_i, .-_Z8strnicmpPKcS0_i
	.p2align 4
	.globl	_Z11strnicmprusPKcS0_i
	.type	_Z11strnicmprusPKcS0_i, @function
_Z11strnicmprusPKcS0_i:
.LFB1850:
	.cfi_startproc
	endbr64
	movsbl	(%rdi), %eax
	movsbl	(%rsi), %ecx
	movq	%rdi, %r10
	testb	%al, %al
	je	.L173
	testl	%edx, %edx
	je	.L166
	movl	$1, %edi
	testb	%cl, %cl
	je	.L166
	.p2align 4,,10
	.p2align 3
.L167:
	cmpb	%cl, %al
	je	.L169
	subl	%ecx, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovs	%eax, %ecx
	cmpl	$32, %ecx
	jne	.L165
.L169:
	movsbl	(%r10,%rdi), %eax
	movsbl	(%rsi,%rdi), %ecx
	testb	%al, %al
	je	.L173
	cmpl	%edi, %edx
	setne	%r9b
	testb	%cl, %cl
	setne	%r8b
	addq	$1, %rdi
	testb	%r8b, %r9b
	jne	.L167
.L166:
	subl	%ecx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	cmpl	$32, %edx
	movl	$0, %edx
	cmove	%edx, %eax
.L165:
	ret
	.p2align 4,,10
	.p2align 3
.L173:
	xorl	%eax, %eax
	jmp	.L166
	.cfi_endproc
.LFE1850:
	.size	_Z11strnicmprusPKcS0_i, .-_Z11strnicmprusPKcS0_i
	.p2align 4
	.globl	_Z11ClearBufferv
	.type	_Z11ClearBufferv, @function
_Z11ClearBufferv:
.LFB1851:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L181:
	movq	stdin(%rip), %rdi
	call	getc@PLT
	cmpl	$10, %eax
	jne	.L181
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1851:
	.size	_Z11ClearBufferv, .-_Z11ClearBufferv
	.section	.rodata.str1.1
.LC14:
	.string	""
.LC15:
	.string	"%*s"
	.text
	.p2align 4
	.globl	_Z10fsetindentP8_IO_FILEi
	.type	_Z10fsetindentP8_IO_FILEi, @function
_Z10fsetindentP8_IO_FILEi:
.LFB1852:
	.cfi_startproc
	endbr64
	leal	(%rsi,%rsi), %ecx
	leaq	.LC14(%rip), %r8
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	.LC15(%rip), %rdx
	jmp	__fprintf_chk@PLT
	.cfi_endproc
.LFE1852:
	.size	_Z10fsetindentP8_IO_FILEi, .-_Z10fsetindentP8_IO_FILEi
	.p2align 4
	.globl	_Z9setindenti
	.type	_Z9setindenti, @function
_Z9setindenti:
.LFB1853:
	.cfi_startproc
	endbr64
	leal	(%rdi,%rdi), %edx
	leaq	.LC14(%rip), %rcx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC15(%rip), %rsi
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE1853:
	.size	_Z9setindenti, .-_Z9setindenti
	.section	.rodata.str1.1
.LC16:
	.string	"BufferCtor"
.LC17:
	.string	"%s:%d::CHECK: buf is false\n"
.LC18:
	.string	"Failed (%s:%d, %s:%d)"
.LC19:
	.string	"%s:%d returned SUCCESS "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4
	.globl	_Z10BufferCtorP6BufferPKc
	.type	_Z10BufferCtorP6BufferPKc, @function
_Z10BufferCtorP6BufferPKc:
.LFB1854:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1854
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	.cfi_offset 14, -24
	movq	%rsi, %r14
	movl	$1, %esi
	pushq	%r13
	.cfi_offset 13, -32
	leaq	-64(%rbp), %r13
	pushq	%r12
	.cfi_offset 12, -40
	leaq	.LC16(%rip), %r12
	pushq	%rbx
	movq	%r12, %rdx
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movq	%r13, %rdi
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
.LEHB0:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE0:
	testq	%rbx, %rbx
	je	.L194
	movabsq	$4294967297, %rax
	movq	%r14, (%rbx)
	movq	%r14, 8(%rbx)
	movq	%rax, 16(%rbx)
.LEHB1:
	call	_ZN6Logger11getInstanceEv@PLT
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	movl	$306, %r8d
	movq	%r12, %rcx
	xorl	%esi, %esi
	leaq	.LC19(%rip), %rdx
	xorl	%eax, %eax
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	movl	%eax, %r12d
.L188:
	movq	%r13, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L195
	leaq	-32(%rbp), %rsp
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L194:
	.cfi_restore_state
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	movl	$298, %ecx
	movq	%r12, %rdx
	xorl	%eax, %eax
	leaq	.LC17(%rip), %rsi
	call	_ZN6Logger3logEPKcz@PLT
	call	_ZN6Logger11getInstanceEv@PLT
	call	_ZN6Logger11getInstanceEv@PLT
	subq	$8, %rsp
	movq	%rax, %rdi
	movq	%r12, %r9
	movl	$298, %r8d
	pushq	$298
	leaq	.LC1(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	xorl	%eax, %eax
	movl	$-1, %esi
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
.LEHE1:
	movl	%eax, %r12d
	popq	%rax
	popq	%rdx
	jmp	.L188
.L195:
	call	__stack_chk_fail@PLT
.L191:
	endbr64
	movq	%rax, %rbx
	jmp	.L189
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1854:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1854-.LLSDACSB1854
.LLSDACSB1854:
	.uleb128 .LEHB0-.LFB1854
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1854
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L191-.LFB1854
	.uleb128 0
.LLSDACSE1854:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1854
	.type	_Z10BufferCtorP6BufferPKc.cold, @function
_Z10BufferCtorP6BufferPKc.cold:
.LFSB1854:
.L189:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -48
	.cfi_offset 6, -16
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	movq	%r13, %rdi
	vzeroupper
	call	_ZN14FunctionLoggerD1Ev@PLT
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE1854:
	.section	.gcc_except_table
.LLSDAC1854:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1854-.LLSDACSBC1854
.LLSDACSBC1854:
	.uleb128 .LEHB2-.LCOLDB20
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC1854:
	.section	.text.unlikely
	.text
	.size	_Z10BufferCtorP6BufferPKc, .-_Z10BufferCtorP6BufferPKc
	.section	.text.unlikely
	.size	_Z10BufferCtorP6BufferPKc.cold, .-_Z10BufferCtorP6BufferPKc.cold
.LCOLDE20:
	.text
.LHOTE20:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC21:
	.string	"ASSERTLOG:: Condition (%s) is false\n"
	.align 8
.LC22:
	.string	"\033[93mASSERTLOG:: \033[0mCondition\033[95m (%s) \033[0mis \033[91mfalse\n\033[0m"
	.section	.rodata.str1.1
.LC23:
	.string	"int BufferCtor(Buffer*, int)"
.LC24:
	.string	"\t%s:%d, function: %s\n"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"It matches to error: (code %d) %s\n\n"
	.align 8
.LC26:
	.string	"Shutting down the system (%s:%d)"
	.section	.text.unlikely
.LCOLDB27:
	.text
.LHOTB27:
	.p2align 4
	.globl	_Z10BufferCtorP6Bufferi
	.type	_Z10BufferCtorP6Bufferi, @function
_Z10BufferCtorP6Bufferi:
.LFB1855:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1855
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	leaq	.LC16(%rip), %r13
	pushq	%r12
	movq	%r13, %rdx
	.cfi_offset 12, -48
	movl	%esi, %r12d
	movl	$1, %esi
	pushq	%rbx
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, %r15
.LEHB3:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE3:
	testq	%rbx, %rbx
	je	.L208
.LEHB4:
	call	_ZN6Logger11getInstanceEv@PLT
	movslq	%r12d, %rsi
	movq	%rax, %rdi
	leaq	.LC1(%rip), %r12
	movl	$314, %r9d
	leaq	.LC16(%rip), %r8
	movq	%r12, %rcx
	movl	$1, %edx
	call	_ZN6Logger7CAL_LOGEmmPKcS1_i@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.L209
	movq	%rax, 8(%rbx)
	movabsq	$4294967297, %rax
	movq	%rax, 16(%rbx)
	call	_ZN6Logger11getInstanceEv@PLT
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	movl	$322, %r8d
	movq	%r13, %rcx
	xorl	%esi, %esi
	leaq	.LC19(%rip), %rdx
	xorl	%eax, %eax
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	movl	%eax, %r12d
.L198:
	movq	%r15, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L210
	leaq	-40(%rbp), %rsp
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L209:
	.cfi_restore_state
	call	_ZN6Logger11getInstanceEv@PLT
	call	_ZN6Logger11getInstanceEv@PLT
	subq	$8, %rsp
	movq	%rax, %rdi
	leaq	.LC16(%rip), %r9
	movl	$315, %r8d
	pushq	$315
.L207:
	movq	%r12, %rcx
	leaq	.LC18(%rip), %rdx
	movl	$-1, %esi
	xorl	%eax, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	movl	%eax, %r12d
	popq	%rax
	popq	%rdx
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L208:
	.cfi_escape 0x2e,0
	call	_ZN6Logger11getInstanceEv@PLT
	leaq	.LC2(%rip), %r12
	movq	%rax, %rdi
	xorl	%eax, %eax
	movq	%r12, %rdx
	leaq	.LC21(%rip), %rsi
	call	_ZN6Logger3logEPKcz@PLT
	movq	%r12, %rdx
	leaq	.LC22(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	call	_ZN6Logger11getInstanceEv@PLT
	leaq	.LC1(%rip), %r12
	movq	%rax, %rdi
	xorl	%eax, %eax
	movl	$312, %ecx
	leaq	.LC24(%rip), %r14
	leaq	.LC23(%rip), %r8
	movq	%r12, %rdx
	movq	%r14, %rsi
	call	_ZN6Logger3logEPKcz@PLT
	leaq	.LC23(%rip), %r8
	movq	%r12, %rdx
	movq	%r14, %rsi
	xorl	%eax, %eax
	movl	$312, %ecx
	movl	$1, %edi
	call	__printf_chk@PLT
	call	_ZN6Logger11getInstanceEv@PLT
	movl	$14, %edi
	movq	%rax, %r14
	call	strerror@PLT
	movl	$14, %edx
	leaq	.LC25(%rip), %rsi
	movq	%r14, %rdi
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	_ZN6Logger3logEPKcz@PLT
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	movl	$312, %ecx
	movq	%r13, %rdx
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rsi
	call	_ZN6Logger3logEPKcz@PLT
	call	_ZN6Logger11getInstanceEv@PLT
	call	_ZN6Logger11getInstanceEv@PLT
.LEHE4:
	subq	$8, %rsp
	movq	%rax, %rdi
	movq	%r13, %r9
	movl	$312, %r8d
	pushq	$312
	jmp	.L207
.L210:
	call	__stack_chk_fail@PLT
.L202:
	endbr64
	movq	%rax, %r12
	jmp	.L200
	.section	.gcc_except_table
.LLSDA1855:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1855-.LLSDACSB1855
.LLSDACSB1855:
	.uleb128 .LEHB3-.LFB1855
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1855
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L202-.LFB1855
	.uleb128 0
.LLSDACSE1855:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1855
	.type	_Z10BufferCtorP6Bufferi.cold, @function
_Z10BufferCtorP6Bufferi.cold:
.LFSB1855:
.L200:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	movq	%r15, %rdi
	vzeroupper
	call	_ZN14FunctionLoggerD1Ev@PLT
	movq	%r12, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
	.cfi_endproc
.LFE1855:
	.section	.gcc_except_table
.LLSDAC1855:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1855-.LLSDACSBC1855
.LLSDACSBC1855:
	.uleb128 .LEHB5-.LCOLDB27
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC1855:
	.section	.text.unlikely
	.text
	.size	_Z10BufferCtorP6Bufferi, .-_Z10BufferCtorP6Bufferi
	.section	.text.unlikely
	.size	_Z10BufferCtorP6Bufferi.cold, .-_Z10BufferCtorP6Bufferi.cold
.LCOLDE27:
	.text
.LHOTE27:
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"void BufferSkipSpaces(Buffer*)"
	.section	.rodata.str1.1
.LC29:
	.string	"%*[ \t\013]%n"
	.text
	.p2align 4
	.globl	_Z16BufferSkipSpacesP6Buffer
	.type	_Z16BufferSkipSpacesP6Buffer, @function
_Z16BufferSkipSpacesP6Buffer:
.LFB1856:
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L225
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movl	$0, 4(%rsp)
	leaq	4(%rsp), %r12
	leaq	.LC29(%rip), %rbp
	movzbl	(%rdi), %eax
	leal	-9(%rax), %edx
	cmpb	$2, %dl
	ja	.L222
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L214:
	movslq	4(%rsp), %rdx
	addl	%edx, 20(%rbx)
	movl	$0, 4(%rsp)
	addq	%rdx, %rdi
	movq	%rdi, 8(%rbx)
.L215:
	movzbl	(%rdi), %eax
	leal	-9(%rax), %edx
	cmpb	$2, %dl
	jbe	.L221
.L222:
	cmpb	$32, %al
	jne	.L211
.L221:
	xorl	%eax, %eax
	movq	%r12, %rdx
	movq	%rbp, %rsi
	call	__isoc99_sscanf@PLT
	movq	8(%rbx), %rdi
	cmpb	$10, (%rdi)
	jne	.L214
	movslq	4(%rsp), %rax
	addl	$1, 16(%rbx)
	movl	$1, 20(%rbx)
	leaq	1(%rdi,%rax), %rdi
	movq	%rdi, 8(%rbx)
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L211:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L226
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
.L225:
	.cfi_restore_state
	leaq	.LC28(%rip), %rcx
	movl	$339, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L226:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1856:
	.size	_Z16BufferSkipSpacesP6Buffer, .-_Z16BufferSkipSpacesP6Buffer
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"void BufferSkipCommentLine(Buffer*, char)"
	.section	.rodata.str1.1
.LC31:
	.string	"%*[^\n]%n"
	.text
	.p2align 4
	.globl	_Z21BufferSkipCommentLineP6Bufferc
	.type	_Z21BufferSkipCommentLineP6Bufferc, @function
_Z21BufferSkipCommentLineP6Bufferc:
.LFB1857:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L233
	movq	%rdi, %rbx
	movl	%esi, %ebp
	call	_Z16BufferSkipSpacesP6Buffer
	movq	8(%rbx), %rdi
	cmpb	(%rdi), %bpl
	je	.L234
.L227:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L235
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L234:
	.cfi_restore_state
	leaq	4(%rsp), %rdx
	leaq	.LC31(%rip), %rsi
	xorl	%eax, %eax
	movl	$0, 4(%rsp)
	call	__isoc99_sscanf@PLT
	movslq	4(%rsp), %rax
	addl	$1, 16(%rbx)
	movl	$1, 20(%rbx)
	addq	$1, %rax
	addq	%rax, 8(%rbx)
	jmp	.L227
.L233:
	leaq	.LC30(%rip), %rcx
	movl	$375, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L235:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1857:
	.size	_Z21BufferSkipCommentLineP6Bufferc, .-_Z21BufferSkipCommentLineP6Bufferc
	.section	.rodata.str1.1
.LC32:
	.string	"int BufferGetCh(Buffer*)"
	.text
	.p2align 4
	.globl	_Z11BufferGetChP6Buffer
	.type	_Z11BufferGetChP6Buffer, @function
_Z11BufferGetChP6Buffer:
.LFB1858:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	testq	%rdi, %rdi
	je	.L239
	movq	%rdi, %rbx
	call	_Z16BufferSkipSpacesP6Buffer
	movq	8(%rbx), %rax
	addl	$1, 20(%rbx)
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbx)
	movsbl	(%rax), %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L239:
	.cfi_restore_state
	leaq	.LC32(%rip), %rcx
	movl	$394, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE1858:
	.size	_Z11BufferGetChP6Buffer, .-_Z11BufferGetChP6Buffer
	.p2align 4
	.globl	_Z10BufferLookP6Buffer
	.type	_Z10BufferLookP6Buffer, @function
_Z10BufferLookP6Buffer:
.LFB1859:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	testq	%rdi, %rdi
	je	.L243
	movq	%rdi, %rbx
	call	_Z16BufferSkipSpacesP6Buffer
	movq	8(%rbx), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movsbl	(%rax), %eax
	ret
.L243:
	.cfi_restore_state
	call	_Z10BufferLookP6Buffer.part.0
	.cfi_endproc
.LFE1859:
	.size	_Z10BufferLookP6Buffer, .-_Z10BufferLookP6Buffer
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"int BufferGetDouble(Buffer*, double*)"
	.section	.rodata.str1.1
.LC34:
	.string	"%lg%n"
	.text
	.p2align 4
	.globl	_Z15BufferGetDoubleP6BufferPd
	.type	_Z15BufferGetDoubleP6BufferPd, @function
_Z15BufferGetDoubleP6BufferPd:
.LFB1860:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L250
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movq	%rsi, %rdx
	xorl	%eax, %eax
	leaq	4(%rsp), %rcx
	leaq	.LC34(%rip), %rsi
	movl	$0, 4(%rsp)
	call	__isoc99_sscanf@PLT
	testl	%eax, %eax
	je	.L251
	movslq	4(%rsp), %rdx
	addq	%rdx, 8(%rbx)
	addl	%edx, 20(%rbx)
	movq	%rdx, %rax
.L244:
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L252
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L251:
	.cfi_restore_state
	movl	4(%rsp), %eax
	jmp	.L244
.L250:
	leaq	.LC33(%rip), %rcx
	movl	$414, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L252:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1860:
	.size	_Z15BufferGetDoubleP6BufferPd, .-_Z15BufferGetDoubleP6BufferPd
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z10GetSrcFilePKc, @function
_GLOBAL__sub_I__Z10GetSrcFilePKc:
.LFB2342:
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
.LFE2342:
	.size	_GLOBAL__sub_I__Z10GetSrcFilePKc, .-_GLOBAL__sub_I__Z10GetSrcFilePKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z10GetSrcFilePKc
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
