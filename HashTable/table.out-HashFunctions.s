	.file	"HashFunctions.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"index_ hash1_always_1(const data*)"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"./src/HashFunctions.cpp"
.LC2:
	.string	"key"
	.text
	.p2align 4
	.globl	_Z14hash1_always_1PKDv4_x
	.type	_Z14hash1_always_1PKDv4_x, @function
_Z14hash1_always_1PKDv4_x:
.LFB7314:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L7
	movl	$1, %eax
	ret
.L7:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC0(%rip), %rcx
	movl	$15, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7314:
	.size	_Z14hash1_always_1PKDv4_x, .-_Z14hash1_always_1PKDv4_x
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"index_ hash2_ascii(const data*)"
	.text
	.p2align 4
	.globl	_Z11hash2_asciiPKDv4_x
	.type	_Z11hash2_asciiPKDv4_x, @function
_Z11hash2_asciiPKDv4_x:
.LFB7315:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L13
	movsbl	(%rdi), %eax
	ret
.L13:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC3(%rip), %rcx
	movl	$21, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7315:
	.size	_Z11hash2_asciiPKDv4_x, .-_Z11hash2_asciiPKDv4_x
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"index_ hash3_strlen(const data*)"
	.text
	.p2align 4
	.globl	_Z12hash3_strlenPKDv4_x
	.type	_Z12hash3_strlenPKDv4_x, @function
_Z12hash3_strlenPKDv4_x:
.LFB7316:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.L17
	call	strlen@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L17:
	.cfi_restore_state
	leaq	.LC4(%rip), %rcx
	movl	$27, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7316:
	.size	_Z12hash3_strlenPKDv4_x, .-_Z12hash3_strlenPKDv4_x
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"index_ hash4_hash_sum(const data*)"
	.text
	.p2align 4
	.globl	_Z14hash4_hash_sumPKDv4_x
	.type	_Z14hash4_hash_sumPKDv4_x, @function
_Z14hash4_hash_sumPKDv4_x:
.LFB7317:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rdi, %rdi
	je	.L27
	movsbl	(%rdi), %r12d
	movq	%rdi, %rbx
	call	strlen@PLT
	subq	$1, %rax
	je	.L18
	.p2align 4,,10
	.p2align 3
.L21:
	movsbl	(%rbx,%rax), %edx
	addl	%edx, %r12d
	subq	$1, %rax
	jne	.L21
.L18:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L27:
	.cfi_restore_state
	leaq	.LC5(%rip), %rcx
	movl	$33, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7317:
	.size	_Z14hash4_hash_sumPKDv4_x, .-_Z14hash4_hash_sumPKDv4_x
	.section	.rodata.str1.1
.LC6:
	.string	"index_ hash5_rol(const data*)"
	.text
	.p2align 4
	.globl	_Z9hash5_rolPKDv4_x
	.type	_Z9hash5_rolPKDv4_x, @function
_Z9hash5_rolPKDv4_x:
.LFB7318:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L29
	movsbl	(%rdi), %edx
	xorl	%eax, %eax
	testb	%dl, %dl
	je	.L37
	.p2align 4,,10
	.p2align 3
.L30:
	roll	%eax
	addq	$1, %rdi
	xorl	%edx, %eax
	movsbl	(%rdi), %edx
	testb	%dl, %dl
	jne	.L30
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	ret
.L29:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC6(%rip), %rcx
	movl	$46, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7318:
	.size	_Z9hash5_rolPKDv4_x, .-_Z9hash5_rolPKDv4_x
	.section	.rodata.str1.1
.LC7:
	.string	"index_ hash6_ror(const data*)"
	.text
	.p2align 4
	.globl	_Z9hash6_rorPKDv4_x
	.type	_Z9hash6_rorPKDv4_x, @function
_Z9hash6_rorPKDv4_x:
.LFB7319:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L39
	movsbl	(%rdi), %edx
	xorl	%eax, %eax
	testb	%dl, %dl
	je	.L47
	.p2align 4,,10
	.p2align 3
.L40:
	rorl	%eax
	addq	$1, %rdi
	xorl	%edx, %eax
	movsbl	(%rdi), %edx
	testb	%dl, %dl
	jne	.L40
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	ret
.L39:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC7(%rip), %rcx
	movl	$59, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7319:
	.size	_Z9hash6_rorPKDv4_x, .-_Z9hash6_rorPKDv4_x
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"index_ hash7_djb2(const data*)"
	.text
	.p2align 4
	.globl	_Z10hash7_djb2PKDv4_x
	.type	_Z10hash7_djb2PKDv4_x, @function
_Z10hash7_djb2PKDv4_x:
.LFB7320:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L49
	movsbl	(%rdi), %edx
	leaq	1(%rdi), %rcx
	movl	$5381, %eax
	testb	%dl, %dl
	je	.L57
	.p2align 4,,10
	.p2align 3
.L50:
	movl	%eax, %esi
	addq	$1, %rcx
	sall	$5, %esi
	addl	%esi, %eax
	addl	%edx, %eax
	movsbl	-1(%rcx), %edx
	testb	%dl, %dl
	jne	.L50
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	ret
.L49:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC8(%rip), %rcx
	movl	$73, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7320:
	.size	_Z10hash7_djb2PKDv4_x, .-_Z10hash7_djb2PKDv4_x
	.p2align 4
	.globl	_Z10GetCRCHashPKDv4_x
	.type	_Z10GetCRCHashPKDv4_x, @function
_Z10GetCRCHashPKDv4_x:
.LFB7323:
	.cfi_startproc
	endbr64
	testq	%rdi, %rdi
	je	.L63
	movsbl	(%rdi), %esi
	xorl	%eax, %eax
	testb	%sil, %sil
	je	.L64
	.p2align 4,,10
	.p2align 3
.L62:
	movl	$7, %ecx
	.p2align 4,,10
	.p2align 3
.L61:
	movl	%esi, %edx
	sarl	%cl, %edx
	andl	$1, %edx
	leal	(%rdx,%rax,2), %eax
	movl	%eax, %edx
	xorl	$79764919, %edx
	testl	$67108864, %eax
	cmovne	%edx, %eax
	subl	$1, %ecx
	jnb	.L61
	movsbl	1(%rdi), %esi
	addq	$1, %rdi
	testb	%sil, %sil
	jne	.L62
	ret
.L63:
	xorl	%eax, %eax
	ret
.L64:
	ret
	.cfi_endproc
.LFE7323:
	.size	_Z10GetCRCHashPKDv4_x, .-_Z10GetCRCHashPKDv4_x
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z14hash1_always_1PKDv4_x, @function
_GLOBAL__sub_I__Z14hash1_always_1PKDv4_x:
.LFB7805:
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
.LFE7805:
	.size	_GLOBAL__sub_I__Z14hash1_always_1PKDv4_x, .-_GLOBAL__sub_I__Z14hash1_always_1PKDv4_x
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z14hash1_always_1PKDv4_x
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
