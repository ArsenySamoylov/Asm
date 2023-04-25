	.file	"List.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"./src/List.cpp"
.LC1:
	.string	"\033[93m(%s:%d)\033[0m Null list\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"\033[93m(%s:%d)\033[0m List number_of_elements == %lu, but last_node(%p) or first_node(%p) is not NULL"
	.align 8
.LC3:
	.string	"\033[93m(%s:%d)\033[0m In list last(%p) or first(%p) element is NULL, but number_of_elements = %lu, not 0\n"
	.text
	.p2align 4
	.globl	_Z9CheckListPK4List
	.type	_Z9CheckListPK4List, @function
_Z9CheckListPK4List:
.LFB7313:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.L16
	movq	16(%rdi), %rax
	movq	8(%rdi), %r8
	movq	(%rdi), %r9
	testq	%rax, %rax
	jne	.L4
	testq	%r8, %r8
	jne	.L5
	testq	%r9, %r9
	jne	.L5
.L1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
	testq	%r8, %r8
	je	.L6
	testq	%r9, %r9
	je	.L6
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$24, %ecx
	leaq	.LC0(%rip), %rdx
	pushq	%r9
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	movq	%r8, %r9
	xorl	%r8d, %r8d
.L14:
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	movl	$-1, %eax
	popq	%rdx
	.cfi_def_cfa_offset 16
	jmp	.L1
.L6:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$32, %ecx
	leaq	.LC0(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC3(%rip), %rsi
	jmp	.L14
.L16:
	.cfi_restore_state
	movl	$18, %ecx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	$-1, %eax
	jmp	.L1
	.cfi_endproc
.LFE7313:
	.size	_Z9CheckListPK4List, .-_Z9CheckListPK4List
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"int AddElementToList(List*, const data*)"
	.section	.rodata.str1.1
.LC5:
	.string	"element"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"\033[93m(%s:%d)\033[0m CheckList failed on %p list\n"
	.section	.rodata.str1.1
.LC7:
	.string	"new_node"
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"\033[93m(%s:%d)\033[0m Ebat`, %p node supposed to be last node in list '%p', but it has not NULL ptrt to next node '%p'\n"
	.text
	.p2align 4
	.globl	_Z16AddElementToListP4ListPKDv4_x
	.type	_Z16AddElementToListP4ListPKDv4_x, @function
_Z16AddElementToListP4ListPKDv4_x:
.LFB7314:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
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
	testq	%rsi, %rsi
	je	.L28
	movq	%rdi, %rbx
	movq	%rsi, %r13
	call	_Z9CheckListPK4List
	movl	%eax, %r12d
	testl	%eax, %eax
	jne	.L29
	movl	$24, %esi
	movl	$1, %edi
	call	calloc@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L30
	movq	8(%rbx), %r14
	testq	%r14, %r14
	je	.L31
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L23
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	movq	%rbx, %r9
	movq	%r14, %r8
	movl	$67, %ecx
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC0(%rip), %rdx
	leaq	.LC8(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	popq	%rax
	.cfi_def_cfa_offset 56
	popq	%rdx
	.cfi_def_cfa_offset 48
.L23:
	movq	%rbp, (%r14)
	addq	$1, 16(%rbx)
	movq	%rbp, 8(%rbx)
	movq	%r14, 8(%rbp)
	movq	%r13, 16(%rbp)
.L17:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%r12d, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	.cfi_restore_state
	movq	%rax, 8(%rbx)
	movq	%rax, (%rbx)
	movq	%r13, 16(%rax)
	movl	%r12d, %eax
	addq	$1, 16(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	.cfi_restore_state
	movq	%rbx, %r8
	movl	$44, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC6(%rip), %rsi
	movl	$-1, %r12d
	call	__printf_chk@PLT
	jmp	.L17
.L30:
	leaq	.LC4(%rip), %rcx
	movl	$48, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	__assert_fail@PLT
.L28:
	leaq	.LC4(%rip), %rcx
	movl	$43, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7314:
	.size	_Z16AddElementToListP4ListPKDv4_x, .-_Z16AddElementToListP4ListPKDv4_x
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"Node* FindElementInList(const List*, const data*)"
	.text
	.p2align 4
	.globl	_Z17FindElementInListPK4ListPKDv4_x
	.type	_Z17FindElementInListPK4ListPKDv4_x, @function
_Z17FindElementInListPK4ListPKDv4_x:
.LFB7315:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	testq	%rsi, %rsi
	je	.L48
	movq	%rdi, %rbx
	movq	%rsi, %r12
	call	_Z9CheckListPK4List
	testl	%eax, %eax
	jne	.L49
	cmpq	$0, 16(%rbx)
	je	.L37
	movq	(%rbx), %rax
	vmovdqu	(%r12), %ymm1
	testq	%rax, %rax
	jne	.L36
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L50:
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L46
.L36:
	movq	16(%rax), %rdx
	vpcmpeqb	(%rdx), %ymm1, %ymm0
	vpmovmskb	%ymm0, %edx
	cmpl	$-1, %edx
	jne	.L50
.L46:
	vzeroupper
.L32:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	.cfi_restore_state
	leaq	-16(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	.cfi_restore_state
	movq	%rbx, %r8
	movl	$89, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC6(%rip), %rsi
	call	__printf_chk@PLT
	xorl	%eax, %eax
	jmp	.L32
.L48:
	leaq	.LC9(%rip), %rcx
	movl	$88, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7315:
	.size	_Z17FindElementInListPK4ListPKDv4_x, .-_Z17FindElementInListPK4ListPKDv4_x
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"\033[93m(%s:%d)\033[0m EBAT!!! NULL node, (number_of_elements in list: %lu, element number: %lu\n"
	.align 8
.LC11:
	.string	"\033[93m(%s:%d)\033[0m Error mismatch for last node (%p != %p) in list %p\n"
	.text
	.p2align 4
	.globl	_Z10DeleteListP4List
	.type	_Z10DeleteListP4List, @function
_Z10DeleteListP4List:
.LFB7316:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	call	_Z9CheckListPK4List
	testl	%eax, %eax
	jne	.L62
	movq	16(%r12), %r8
	movq	(%r12), %rbp
	movl	%eax, %r13d
	movq	8(%r12), %r14
	cmpq	$1, %r8
	jbe	.L54
	testq	%rbp, %rbp
	je	.L59
	movl	$1, %ebx
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L57:
	testq	%rbp, %rbp
	je	.L55
.L56:
	movq	%rbp, %rdi
	movq	0(%rbp), %rbp
	call	free@PLT
	movq	16(%r12), %r8
	movq	%rbx, %r9
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jb	.L57
.L54:
	cmpq	%rbp, %r14
	je	.L58
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	leaq	.LC0(%rip), %rdx
	movq	%r14, %r9
	xorl	%eax, %eax
	pushq	%r12
	.cfi_def_cfa_offset 64
	movq	%rbp, %r8
	movl	$142, %ecx
	movl	$1, %edi
	leaq	.LC11(%rip), %rsi
	call	__printf_chk@PLT
	popq	%rax
	.cfi_def_cfa_offset 56
	popq	%rdx
	.cfi_def_cfa_offset 48
.L58:
	movq	%rbp, %rdi
	call	free@PLT
	movq	$0, (%r12)
	movq	$0, 16(%r12)
	movq	$0, 8(%r12)
.L51:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%r13d, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L59:
	.cfi_restore_state
	xorl	%r9d, %r9d
.L55:
	movl	$-1, %r13d
	movl	$129, %ecx
	xorl	%eax, %eax
	movl	$1, %edi
	leaq	.LC0(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	call	__printf_chk@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%r13d, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L62:
	.cfi_restore_state
	movq	%r12, %r8
	movl	$120, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC6(%rip), %rsi
	movl	$-1, %r13d
	call	__printf_chk@PLT
	jmp	.L51
	.cfi_endproc
.LFE7316:
	.size	_Z10DeleteListP4List, .-_Z10DeleteListP4List
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z9CheckListPK4List, @function
_GLOBAL__sub_I__Z9CheckListPK4List:
.LFB7799:
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
.LFE7799:
	.size	_GLOBAL__sub_I__Z9CheckListPK4List, .-_GLOBAL__sub_I__Z9CheckListPK4List
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z9CheckListPK4List
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
