	.file	"SomeStuff.cpp"
	.text
.Ltext0:
	.file 0 "/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd" "../ATC/RandomStuff/SomeStuff.cpp"
	.section	.rodata
	.align 32
	.type	_ZL11INDENT_SIZE, @object
	.size	_ZL11INDENT_SIZE, 4
_ZL11INDENT_SIZE:
	.long	2
	.zero	60
	.globl	__asan_stack_malloc_1
.LC0:
	.string	"1 32 32 3 s:8"
	.align 32
.LC1:
	.string	"%d"
	.zero	61
	.text
	.globl	_Z16ShowCharInBinaryc
	.type	_Z16ShowCharInBinaryc, @function
_Z16ShowCharInBinaryc:
.LASANPC13:
.LFB13:
	.file 1 "../ATC/RandomStuff/SomeStuff.cpp"
	.loc 1 6 5
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
	addq	$-128, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, %eax
	movb	%al, -148(%rbp)
	leaq	-128(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L1
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L1
	movq	%rax, %rbx
.L1:
	leaq	96(%rbx), %rax
	movq	%rax, %r12
	movq	$1102416563, (%rbx)
	leaq	.LC0(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC13(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r13
	shrq	$3, %r13
	movl	$-235802127, 2147450880(%r13)
	movl	$-202116109, 2147450888(%r13)
	.loc 1 7 10
	movzbl	-148(%rbp), %eax
	movb	%al, -137(%rbp)
	.loc 1 8 9
	leaq	-64(%r12), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	testb	%dl, %dl
	setle	%dl
	andl	%edx, %ecx
	movl	%ecx, %esi
	movl	$32, %edx
	subq	$1, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	andl	$7, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%edi, %edx
	orl	%esi, %edx
	testb	%dl, %dl
	je	.L5
	movl	$32, %esi
	movq	%rax, %rdi
	call	__asan_report_store_n@PLT
.L5:
	movq	$0, -64(%r12)
	movq	$0, -56(%r12)
	movq	$0, -48(%r12)
	movq	$0, -40(%r12)
.LBB2:
	.loc 1 9 13
	movl	$0, -136(%rbp)
	.loc 1 9 5
	jmp	.L6
.L8:
	.loc 1 11 21 discriminator 3
	movzbl	-137(%rbp), %eax
	movl	%eax, %edx
	sarb	$7, %dl
	shrb	$7, %dl
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movsbl	%al, %ecx
	.loc 1 11 14 discriminator 3
	leaq	-64(%r12), %rdx
	movl	-136(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L7
	.loc 1 11 14 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_store4@PLT
.L7:
	.loc 1 11 14 discriminator 3
	movl	-136(%rbp), %eax
	cltq
	movl	%ecx, -64(%r12,%rax,4)
	.loc 1 12 14 is_stmt 1 discriminator 3
	movzbl	-137(%rbp), %eax
	movl	%eax, %edx
	shrb	$7, %dl
	addl	%edx, %eax
	sarb	%al
	movb	%al, -137(%rbp)
	.loc 1 9 5 discriminator 3
	addl	$1, -136(%rbp)
.L6:
	.loc 1 9 22 discriminator 1
	cmpl	$7, -136(%rbp)
	jle	.L8
.LBE2:
.LBB3:
	.loc 1 16 14
	movl	$0, -132(%rbp)
	.loc 1 16 5
	jmp	.L9
.L11:
	.loc 1 17 25
	movl	$7, %eax
	subl	-132(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 17 15
	leaq	-64(%r12), %rdx
	movslq	%ecx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L10
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L10:
	movslq	%ecx, %rax
	movl	-64(%r12,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 16 5
	addl	$1, -132(%rbp)
.L9:
	.loc 1 16 21 discriminator 1
	cmpl	$7, -132(%rbp)
	jle	.L11
.LBE3:
	.loc 1 19 11
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 20 5
	nop
	.loc 1 6 5
	cmpq	%rbx, %r14
	je	.L2
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r13)
	movl	$-168430091, 2147450888(%r13)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L3
.L2:
	movl	$0, 2147450880(%r13)
	movl	$0, 2147450888(%r13)
.L3:
	.loc 1 20 5
	subq	$-128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_Z16ShowCharInBinaryc, .-_Z16ShowCharInBinaryc
	.globl	_Z6printlPKcc
	.type	_Z6printlPKcc, @function
_Z6printlPKcc:
.LASANPC14:
.LFB14:
	.loc 1 23 5
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
	.loc 1 24 9
	movl	$-1, -4(%rbp)
	.loc 1 26 22
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10SkipSpacesPKc@PLT
	movq	%rax, -24(%rbp)
	.loc 1 28 5
	jmp	.L13
.L17:
	.loc 1 29 36
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 1 29 30
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
	je	.L14
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L14:
	movzbl	(%rax), %eax
	.loc 1 29 29
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	%eax, -4(%rbp)
.L13:
	.loc 1 28 12
	movq	-24(%rbp), %rax
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
	je	.L15
	movq	%rax, %rdi
	call	__asan_report_load1@PLT
.L15:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 28 26
	testb	%al, %al
	je	.L16
	.loc 1 28 29 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 28 26 discriminator 1
	cmpb	%al, -28(%rbp)
	jne	.L17
.L16:
	.loc 1 31 25
	movl	$10, %edi
	call	putchar@PLT
	movl	%eax, -4(%rbp)
	.loc 1 33 12
	movl	-4(%rbp), %eax
	.loc 1 34 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	_Z6printlPKcc, .-_Z6printlPKcc
	.section	.rodata
.LC2:
	.string	"../ATC/Buffer/my_buffer.h"
	.section	.data.rel.local,"aw"
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC2
	.long	32
	.long	11
	.section	.rodata
.LC3:
	.string	"INDENT_SIZE"
	.align 8
.LC4:
	.string	"../ATC/RandomStuff/SomeStuff.cpp"
.LC5:
	.string	"*.LC1"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 128
.LASAN0:
	.quad	_ZL11INDENT_SIZE
	.quad	4
	.quad	64
	.quad	.LC3
	.quad	.LC4
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	.LC1
	.quad	3
	.quad	64
	.quad	.LC5
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$2, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$2, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 3 "/usr/include/stdlib.h"
	.file 4 "/usr/include/c++/11/cstdlib"
	.file 5 "/usr/include/c++/11/bits/std_abs.h"
	.file 6 "/usr/include/c++/11/stdlib.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "../ATC/Buffer/my_buffer.h"
	.file 9 "/usr/include/x86_64-linux-gnu/c++/11/bits/c++config.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8c3
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x12
	.long	.LASF70
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x2
	.byte	0xd1
	.byte	0x1b
	.long	0x3a
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x13
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.long	0x66
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.long	0x7e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x9
	.long	0x7e
	.uleb128 0x6
	.long	0x85
	.uleb128 0x3
	.byte	0x20
	.byte	0x3
	.long	.LASF10
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF14
	.uleb128 0xa
	.byte	0x8
	.byte	0x3c
	.long	.LASF18
	.long	0xd5
	.uleb128 0xb
	.long	.LASF15
	.byte	0x3d
	.byte	0x9
	.long	0x66
	.uleb128 0xc
	.string	"rem"
	.byte	0x3e
	.byte	0x9
	.long	0x66
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF17
	.byte	0x3
	.byte	0x3f
	.byte	0x5
	.long	0xb2
	.uleb128 0xa
	.byte	0x10
	.byte	0x44
	.long	.LASF19
	.long	0x104
	.uleb128 0xb
	.long	.LASF15
	.byte	0x45
	.byte	0xe
	.long	0x72
	.uleb128 0xc
	.string	"rem"
	.byte	0x46
	.byte	0xe
	.long	0x72
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF20
	.byte	0x3
	.byte	0x47
	.byte	0x5
	.long	0xe1
	.uleb128 0xa
	.byte	0x10
	.byte	0x4e
	.long	.LASF21
	.long	0x133
	.uleb128 0xb
	.long	.LASF15
	.byte	0x4f
	.byte	0x13
	.long	0x133
	.uleb128 0xc
	.string	"rem"
	.byte	0x50
	.byte	0x13
	.long	0x133
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF22
	.uleb128 0x8
	.long	.LASF23
	.byte	0x3
	.byte	0x51
	.byte	0x5
	.long	0x110
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF24
	.uleb128 0x15
	.long	.LASF25
	.byte	0x3
	.value	0x330
	.byte	0xf
	.long	0x15a
	.uleb128 0x6
	.long	0x15f
	.uleb128 0x16
	.long	0x66
	.long	0x173
	.uleb128 0x1
	.long	0x173
	.uleb128 0x1
	.long	0x173
	.byte	0
	.uleb128 0x6
	.long	0x178
	.uleb128 0x17
	.uleb128 0x18
	.string	"std"
	.byte	0x9
	.value	0x116
	.byte	0xb
	.long	0x318
	.uleb128 0x2
	.byte	0x4
	.byte	0x7f
	.byte	0xb
	.long	0xd5
	.uleb128 0x2
	.byte	0x4
	.byte	0x80
	.byte	0xb
	.long	0x104
	.uleb128 0x2
	.byte	0x4
	.byte	0x86
	.byte	0xb
	.long	0x318
	.uleb128 0x2
	.byte	0x4
	.byte	0x89
	.byte	0xb
	.long	0x335
	.uleb128 0x2
	.byte	0x4
	.byte	0x8c
	.byte	0xb
	.long	0x350
	.uleb128 0x2
	.byte	0x4
	.byte	0x8d
	.byte	0xb
	.long	0x365
	.uleb128 0x2
	.byte	0x4
	.byte	0x8e
	.byte	0xb
	.long	0x37a
	.uleb128 0x2
	.byte	0x4
	.byte	0x8f
	.byte	0xb
	.long	0x38f
	.uleb128 0x2
	.byte	0x4
	.byte	0x91
	.byte	0xb
	.long	0x3ba
	.uleb128 0x2
	.byte	0x4
	.byte	0x94
	.byte	0xb
	.long	0x3d6
	.uleb128 0x2
	.byte	0x4
	.byte	0x96
	.byte	0xb
	.long	0x3ed
	.uleb128 0x2
	.byte	0x4
	.byte	0x99
	.byte	0xb
	.long	0x409
	.uleb128 0x2
	.byte	0x4
	.byte	0x9a
	.byte	0xb
	.long	0x425
	.uleb128 0x2
	.byte	0x4
	.byte	0x9b
	.byte	0xb
	.long	0x457
	.uleb128 0x2
	.byte	0x4
	.byte	0x9d
	.byte	0xb
	.long	0x478
	.uleb128 0x2
	.byte	0x4
	.byte	0xa0
	.byte	0xb
	.long	0x498
	.uleb128 0x2
	.byte	0x4
	.byte	0xa3
	.byte	0xb
	.long	0x4ab
	.uleb128 0x2
	.byte	0x4
	.byte	0xa5
	.byte	0xb
	.long	0x4b8
	.uleb128 0x2
	.byte	0x4
	.byte	0xa6
	.byte	0xb
	.long	0x4c9
	.uleb128 0x2
	.byte	0x4
	.byte	0xa7
	.byte	0xb
	.long	0x4e8
	.uleb128 0x2
	.byte	0x4
	.byte	0xa8
	.byte	0xb
	.long	0x507
	.uleb128 0x2
	.byte	0x4
	.byte	0xa9
	.byte	0xb
	.long	0x526
	.uleb128 0x2
	.byte	0x4
	.byte	0xab
	.byte	0xb
	.long	0x53d
	.uleb128 0x2
	.byte	0x4
	.byte	0xac
	.byte	0xb
	.long	0x563
	.uleb128 0x2
	.byte	0x4
	.byte	0xf0
	.byte	0x16
	.long	0x13a
	.uleb128 0x2
	.byte	0x4
	.byte	0xf5
	.byte	0x16
	.long	0x5c4
	.uleb128 0x2
	.byte	0x4
	.byte	0xf6
	.byte	0x16
	.long	0x5de
	.uleb128 0x2
	.byte	0x4
	.byte	0xf8
	.byte	0x16
	.long	0x5fa
	.uleb128 0x2
	.byte	0x4
	.byte	0xf9
	.byte	0x16
	.long	0x64d
	.uleb128 0x2
	.byte	0x4
	.byte	0xfa
	.byte	0x16
	.long	0x60f
	.uleb128 0x2
	.byte	0x4
	.byte	0xfb
	.byte	0x16
	.long	0x62e
	.uleb128 0x2
	.byte	0x4
	.byte	0xfc
	.byte	0x16
	.long	0x667
	.uleb128 0x7
	.string	"abs"
	.byte	0x4f
	.long	.LASF26
	.long	0xab
	.long	0x29e
	.uleb128 0x1
	.long	0xab
	.byte	0
	.uleb128 0x7
	.string	"abs"
	.byte	0x4b
	.long	.LASF27
	.long	0x9d
	.long	0x2b6
	.uleb128 0x1
	.long	0x9d
	.byte	0
	.uleb128 0x7
	.string	"abs"
	.byte	0x47
	.long	.LASF28
	.long	0xa4
	.long	0x2ce
	.uleb128 0x1
	.long	0xa4
	.byte	0
	.uleb128 0x7
	.string	"abs"
	.byte	0x3d
	.long	.LASF29
	.long	0x133
	.long	0x2e6
	.uleb128 0x1
	.long	0x133
	.byte	0
	.uleb128 0x7
	.string	"abs"
	.byte	0x38
	.long	.LASF30
	.long	0x72
	.long	0x2fe
	.uleb128 0x1
	.long	0x72
	.byte	0
	.uleb128 0x10
	.string	"div"
	.byte	0xb1
	.long	.LASF53
	.long	0x104
	.uleb128 0x1
	.long	0x72
	.uleb128 0x1
	.long	0x72
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF31
	.byte	0x3
	.value	0x25a
	.byte	0xc
	.long	0x66
	.long	0x32f
	.uleb128 0x1
	.long	0x32f
	.byte	0
	.uleb128 0x6
	.long	0x334
	.uleb128 0x19
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x3
	.value	0x25f
	.byte	0x12
	.long	.LASF32
	.long	0x66
	.long	0x350
	.uleb128 0x1
	.long	0x32f
	.byte	0
	.uleb128 0x5
	.long	.LASF33
	.byte	0x66
	.byte	0xf
	.long	0xa4
	.long	0x365
	.uleb128 0x1
	.long	0x8a
	.byte	0
	.uleb128 0x5
	.long	.LASF34
	.byte	0x69
	.byte	0xc
	.long	0x66
	.long	0x37a
	.uleb128 0x1
	.long	0x8a
	.byte	0
	.uleb128 0x5
	.long	.LASF35
	.byte	0x6c
	.byte	0x11
	.long	0x72
	.long	0x38f
	.uleb128 0x1
	.long	0x8a
	.byte	0
	.uleb128 0x4
	.long	.LASF36
	.byte	0x3
	.value	0x33c
	.byte	0xe
	.long	0x48
	.long	0x3ba
	.uleb128 0x1
	.long	0x173
	.uleb128 0x1
	.long	0x173
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x14d
	.byte	0
	.uleb128 0x1b
	.string	"div"
	.byte	0x3
	.value	0x35c
	.byte	0xe
	.long	0xd5
	.long	0x3d6
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x66
	.byte	0
	.uleb128 0x4
	.long	.LASF37
	.byte	0x3
	.value	0x281
	.byte	0xe
	.long	0x79
	.long	0x3ed
	.uleb128 0x1
	.long	0x8a
	.byte	0
	.uleb128 0x4
	.long	.LASF38
	.byte	0x3
	.value	0x35e
	.byte	0xf
	.long	0x104
	.long	0x409
	.uleb128 0x1
	.long	0x72
	.uleb128 0x1
	.long	0x72
	.byte	0
	.uleb128 0x4
	.long	.LASF39
	.byte	0x3
	.value	0x3a2
	.byte	0xc
	.long	0x66
	.long	0x425
	.uleb128 0x1
	.long	0x8a
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x4
	.long	.LASF40
	.byte	0x3
	.value	0x3ad
	.byte	0xf
	.long	0x2e
	.long	0x446
	.uleb128 0x1
	.long	0x446
	.uleb128 0x1
	.long	0x8a
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x6
	.long	0x44b
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF41
	.uleb128 0x9
	.long	0x44b
	.uleb128 0x4
	.long	.LASF42
	.byte	0x3
	.value	0x3a5
	.byte	0xc
	.long	0x66
	.long	0x478
	.uleb128 0x1
	.long	0x446
	.uleb128 0x1
	.long	0x8a
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x11
	.long	.LASF44
	.value	0x346
	.long	0x498
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x14d
	.byte	0
	.uleb128 0x1c
	.long	.LASF43
	.byte	0x3
	.value	0x276
	.byte	0xd
	.long	0x4ab
	.uleb128 0x1
	.long	0x66
	.byte	0
	.uleb128 0x1d
	.long	.LASF71
	.byte	0x3
	.value	0x1c6
	.byte	0xc
	.long	0x66
	.uleb128 0x11
	.long	.LASF45
	.value	0x1c8
	.long	0x4c9
	.uleb128 0x1
	.long	0x41
	.byte	0
	.uleb128 0x5
	.long	.LASF46
	.byte	0x76
	.byte	0xf
	.long	0xa4
	.long	0x4e3
	.uleb128 0x1
	.long	0x8a
	.uleb128 0x1
	.long	0x4e3
	.byte	0
	.uleb128 0x6
	.long	0x79
	.uleb128 0x5
	.long	.LASF47
	.byte	0xb1
	.byte	0x11
	.long	0x72
	.long	0x507
	.uleb128 0x1
	.long	0x8a
	.uleb128 0x1
	.long	0x4e3
	.uleb128 0x1
	.long	0x66
	.byte	0
	.uleb128 0x5
	.long	.LASF48
	.byte	0xb5
	.byte	0x1a
	.long	0x3a
	.long	0x526
	.uleb128 0x1
	.long	0x8a
	.uleb128 0x1
	.long	0x4e3
	.uleb128 0x1
	.long	0x66
	.byte	0
	.uleb128 0x4
	.long	.LASF49
	.byte	0x3
	.value	0x317
	.byte	0xc
	.long	0x66
	.long	0x53d
	.uleb128 0x1
	.long	0x8a
	.byte	0
	.uleb128 0x4
	.long	.LASF50
	.byte	0x3
	.value	0x3b1
	.byte	0xf
	.long	0x2e
	.long	0x55e
	.uleb128 0x1
	.long	0x79
	.uleb128 0x1
	.long	0x55e
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x6
	.long	0x452
	.uleb128 0x4
	.long	.LASF51
	.byte	0x3
	.value	0x3a9
	.byte	0xc
	.long	0x66
	.long	0x57f
	.uleb128 0x1
	.long	0x79
	.uleb128 0x1
	.long	0x44b
	.byte	0
	.uleb128 0x1e
	.long	.LASF52
	.byte	0x9
	.value	0x130
	.byte	0xb
	.long	0x5de
	.uleb128 0x2
	.byte	0x4
	.byte	0xc8
	.byte	0xb
	.long	0x13a
	.uleb128 0x2
	.byte	0x4
	.byte	0xd8
	.byte	0xb
	.long	0x5de
	.uleb128 0x2
	.byte	0x4
	.byte	0xe3
	.byte	0xb
	.long	0x5fa
	.uleb128 0x2
	.byte	0x4
	.byte	0xe4
	.byte	0xb
	.long	0x60f
	.uleb128 0x2
	.byte	0x4
	.byte	0xe5
	.byte	0xb
	.long	0x62e
	.uleb128 0x2
	.byte	0x4
	.byte	0xe7
	.byte	0xb
	.long	0x64d
	.uleb128 0x2
	.byte	0x4
	.byte	0xe8
	.byte	0xb
	.long	0x667
	.uleb128 0x10
	.string	"div"
	.byte	0xd5
	.long	.LASF54
	.long	0x13a
	.uleb128 0x1
	.long	0x133
	.uleb128 0x1
	.long	0x133
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF55
	.byte	0x3
	.value	0x362
	.byte	0x1e
	.long	0x13a
	.long	0x5fa
	.uleb128 0x1
	.long	0x133
	.uleb128 0x1
	.long	0x133
	.byte	0
	.uleb128 0x5
	.long	.LASF56
	.byte	0x71
	.byte	0x24
	.long	0x133
	.long	0x60f
	.uleb128 0x1
	.long	0x8a
	.byte	0
	.uleb128 0x5
	.long	.LASF57
	.byte	0xc9
	.byte	0x16
	.long	0x133
	.long	0x62e
	.uleb128 0x1
	.long	0x8a
	.uleb128 0x1
	.long	0x4e3
	.uleb128 0x1
	.long	0x66
	.byte	0
	.uleb128 0x5
	.long	.LASF58
	.byte	0xce
	.byte	0x1f
	.long	0x146
	.long	0x64d
	.uleb128 0x1
	.long	0x8a
	.uleb128 0x1
	.long	0x4e3
	.uleb128 0x1
	.long	0x66
	.byte	0
	.uleb128 0x5
	.long	.LASF59
	.byte	0x7c
	.byte	0xe
	.long	0x9d
	.long	0x667
	.uleb128 0x1
	.long	0x8a
	.uleb128 0x1
	.long	0x4e3
	.byte	0
	.uleb128 0x5
	.long	.LASF60
	.byte	0x7f
	.byte	0x14
	.long	0xab
	.long	0x681
	.uleb128 0x1
	.long	0x8a
	.uleb128 0x1
	.long	0x4e3
	.byte	0
	.uleb128 0x2
	.byte	0x6
	.byte	0x27
	.byte	0xc
	.long	0x318
	.uleb128 0x2
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.long	0x335
	.uleb128 0x2
	.byte	0x6
	.byte	0x2e
	.byte	0xe
	.long	0x498
	.uleb128 0x2
	.byte	0x6
	.byte	0x33
	.byte	0xc
	.long	0xd5
	.uleb128 0x2
	.byte	0x6
	.byte	0x34
	.byte	0xc
	.long	0x104
	.uleb128 0x2
	.byte	0x6
	.byte	0x36
	.byte	0xc
	.long	0x286
	.uleb128 0x2
	.byte	0x6
	.byte	0x36
	.byte	0xc
	.long	0x29e
	.uleb128 0x2
	.byte	0x6
	.byte	0x36
	.byte	0xc
	.long	0x2b6
	.uleb128 0x2
	.byte	0x6
	.byte	0x36
	.byte	0xc
	.long	0x2ce
	.uleb128 0x2
	.byte	0x6
	.byte	0x36
	.byte	0xc
	.long	0x2e6
	.uleb128 0x2
	.byte	0x6
	.byte	0x37
	.byte	0xc
	.long	0x350
	.uleb128 0x2
	.byte	0x6
	.byte	0x38
	.byte	0xc
	.long	0x365
	.uleb128 0x2
	.byte	0x6
	.byte	0x39
	.byte	0xc
	.long	0x37a
	.uleb128 0x2
	.byte	0x6
	.byte	0x3a
	.byte	0xc
	.long	0x38f
	.uleb128 0x2
	.byte	0x6
	.byte	0x3c
	.byte	0xc
	.long	0x5c4
	.uleb128 0x2
	.byte	0x6
	.byte	0x3c
	.byte	0xc
	.long	0x2fe
	.uleb128 0x2
	.byte	0x6
	.byte	0x3c
	.byte	0xc
	.long	0x3ba
	.uleb128 0x2
	.byte	0x6
	.byte	0x3e
	.byte	0xc
	.long	0x3d6
	.uleb128 0x2
	.byte	0x6
	.byte	0x40
	.byte	0xc
	.long	0x3ed
	.uleb128 0x2
	.byte	0x6
	.byte	0x43
	.byte	0xc
	.long	0x409
	.uleb128 0x2
	.byte	0x6
	.byte	0x44
	.byte	0xc
	.long	0x425
	.uleb128 0x2
	.byte	0x6
	.byte	0x45
	.byte	0xc
	.long	0x457
	.uleb128 0x2
	.byte	0x6
	.byte	0x47
	.byte	0xc
	.long	0x478
	.uleb128 0x2
	.byte	0x6
	.byte	0x48
	.byte	0xc
	.long	0x4ab
	.uleb128 0x2
	.byte	0x6
	.byte	0x4a
	.byte	0xc
	.long	0x4b8
	.uleb128 0x2
	.byte	0x6
	.byte	0x4b
	.byte	0xc
	.long	0x4c9
	.uleb128 0x2
	.byte	0x6
	.byte	0x4c
	.byte	0xc
	.long	0x4e8
	.uleb128 0x2
	.byte	0x6
	.byte	0x4d
	.byte	0xc
	.long	0x507
	.uleb128 0x2
	.byte	0x6
	.byte	0x4e
	.byte	0xc
	.long	0x526
	.uleb128 0x2
	.byte	0x6
	.byte	0x50
	.byte	0xc
	.long	0x53d
	.uleb128 0x2
	.byte	0x6
	.byte	0x51
	.byte	0xc
	.long	0x563
	.uleb128 0xd
	.long	.LASF66
	.byte	0x8
	.byte	0x20
	.byte	0xb
	.long	0x6d
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11INDENT_SIZE
	.uleb128 0x4
	.long	.LASF61
	.byte	0x7
	.value	0x22c
	.byte	0xc
	.long	0x66
	.long	0x7a6
	.uleb128 0x1
	.long	0x66
	.byte	0
	.uleb128 0x1f
	.long	.LASF62
	.byte	0x8
	.byte	0x11
	.byte	0x7
	.long	.LASF72
	.long	0x79
	.long	0x7c0
	.uleb128 0x1
	.long	0x8a
	.byte	0
	.uleb128 0x4
	.long	.LASF63
	.byte	0x7
	.value	0x164
	.byte	0xc
	.long	0x66
	.long	0x7d8
	.uleb128 0x1
	.long	0x8a
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.byte	0x16
	.byte	0x5
	.long	.LASF74
	.long	0x66
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x82a
	.uleb128 0xe
	.long	.LASF64
	.byte	0x16
	.byte	0x19
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF65
	.byte	0x16
	.byte	0x24
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.long	.LASF67
	.byte	0x1
	.byte	0x18
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF75
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.long	.LASF76
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ba
	.uleb128 0xe
	.long	.LASF68
	.byte	0x5
	.byte	0x1c
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0xd
	.long	.LASF69
	.byte	0x1
	.byte	0x7
	.byte	0xa
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -153
	.uleb128 0xf
	.string	"s"
	.byte	0x8
	.byte	0x9
	.long	0x8ba
	.uleb128 0x2
	.byte	0x7c
	.sleb128 -64
	.uleb128 0x23
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x89a
	.uleb128 0xf
	.string	"i"
	.byte	0x9
	.byte	0xd
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x24
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xf
	.string	"i"
	.byte	0x10
	.byte	0xe
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x66
	.uleb128 0x26
	.long	0x3a
	.byte	0x7
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x15
	.byte	0
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
	.uleb128 0x1b
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
.LASF67:
	.string	"flag_error"
.LASF66:
	.string	"INDENT_SIZE"
.LASF30:
	.string	"_ZSt3absl"
.LASF44:
	.string	"qsort"
.LASF60:
	.string	"strtold"
.LASF32:
	.string	"at_quick_exit"
.LASF29:
	.string	"_ZSt3absx"
.LASF57:
	.string	"strtoll"
.LASF40:
	.string	"mbstowcs"
.LASF69:
	.string	"temp"
.LASF7:
	.string	"short int"
.LASF16:
	.string	"size_t"
.LASF36:
	.string	"bsearch"
.LASF31:
	.string	"atexit"
.LASF53:
	.string	"_ZSt3divll"
.LASF61:
	.string	"putchar"
.LASF75:
	.string	"ShowCharInBinary"
.LASF10:
	.string	"__unknown__"
.LASF37:
	.string	"getenv"
.LASF71:
	.string	"rand"
.LASF70:
	.string	"GNU C++20 11.3.0 -mtune=generic -march=x86-64 -g -std=c++20 -fstrict-overflow -fstack-protector -fcheck-new -fsized-deallocation -fno-omit-frame-pointer -fPIE -fsanitize=address,leak -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF64:
	.string	"line"
.LASF6:
	.string	"signed char"
.LASF12:
	.string	"float"
.LASF42:
	.string	"mbtowc"
.LASF22:
	.string	"long long int"
.LASF72:
	.string	"_Z10SkipSpacesPKc"
.LASF46:
	.string	"strtod"
.LASF8:
	.string	"long int"
.LASF21:
	.string	"7lldiv_t"
.LASF63:
	.string	"printf"
.LASF54:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF47:
	.string	"strtol"
.LASF73:
	.string	"printl"
.LASF51:
	.string	"wctomb"
.LASF65:
	.string	"terminator"
.LASF33:
	.string	"atof"
.LASF4:
	.string	"unsigned char"
.LASF50:
	.string	"wcstombs"
.LASF14:
	.string	"long double"
.LASF48:
	.string	"strtoul"
.LASF34:
	.string	"atoi"
.LASF43:
	.string	"quick_exit"
.LASF17:
	.string	"div_t"
.LASF52:
	.string	"__gnu_cxx"
.LASF58:
	.string	"strtoull"
.LASF19:
	.string	"6ldiv_t"
.LASF24:
	.string	"long long unsigned int"
.LASF56:
	.string	"atoll"
.LASF3:
	.string	"unsigned int"
.LASF35:
	.string	"atol"
.LASF39:
	.string	"mblen"
.LASF62:
	.string	"SkipSpaces"
.LASF38:
	.string	"ldiv"
.LASF15:
	.string	"quot"
.LASF5:
	.string	"short unsigned int"
.LASF41:
	.string	"wchar_t"
.LASF9:
	.string	"char"
.LASF74:
	.string	"_Z6printlPKcc"
.LASF11:
	.string	"__float128"
.LASF20:
	.string	"ldiv_t"
.LASF59:
	.string	"strtof"
.LASF49:
	.string	"system"
.LASF2:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF68:
	.string	"mask"
.LASF23:
	.string	"lldiv_t"
.LASF55:
	.string	"lldiv"
.LASF76:
	.string	"_Z16ShowCharInBinaryc"
.LASF25:
	.string	"__compar_fn_t"
.LASF18:
	.string	"5div_t"
.LASF45:
	.string	"srand"
.LASF28:
	.string	"_ZSt3absd"
.LASF26:
	.string	"_ZSt3abse"
.LASF27:
	.string	"_ZSt3absf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"../ATC/RandomStuff/SomeStuff.cpp"
.LASF1:
	.string	"/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd"
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
