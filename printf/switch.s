	.file	"switch.cpp"
	.text
	.section	.rodata
	.align 4
	.type	_ZL3GLA, @object
	.size	_ZL3GLA, 4
_ZL3GLA:
	.zero	4
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	endbr64
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$37, %eax
	je	.L13
	cmpl	$37, %eax
	jl	.L14
	cmpl	$120, %eax
	jg	.L14
	cmpl	$98, %eax
	jl	.L14
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L14
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L5(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L5(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L5:
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.long	.L14-.L5
	.text
.L13:
	nop
	jmp	.L11
.L14:
	nop
.L11:
	movl	$0, %eax
	popq	%rbp
.LCFI2:
	ret
.LFE0:
	.size	main, .-main
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
