	.file	"Utils.cpp"
	.text
.Ltext0:
	.file 0 "/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd" "../ATC/Utils/Utils.cpp"
	.section	.rodata
	.align 32
	.type	_ZL11INDENT_SIZE, @object
	.size	_ZL11INDENT_SIZE, 4
_ZL11INDENT_SIZE:
	.long	2
	.zero	60
	.globl	__asan_stack_malloc_1
.LC0:
	.string	"1 32 24 5 ptr:8"
	.text
	.globl	_Z6MsgRetiPKcz
	.type	_Z6MsgRetiPKcz, @function
_Z6MsgRetiPKcz:
.LASANPC13:
.LFB13:
	.file 1 "../ATC/Utils/Utils.cpp"
	.loc 1 7 5
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
	movl	%edi, -308(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L5
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L5:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r13
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L1
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L1
	movq	%rax, %rbx
.L1:
	leaq	96(%rbx), %rax
	movq	$1102416563, (%rbx)
	leaq	.LC0(%rip), %rdx
	movq	%rdx, 8(%rbx)
	leaq	.LASANPC13(%rip), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 9 22
	movl	$16, -64(%rax)
	movl	$48, -60(%rax)
	leaq	16(%rbp), %rcx
	movq	%rcx, -56(%rax)
	leaq	-208(%rbp), %rsi
	movq	%rsi, -48(%rax)
	.loc 1 11 13
	leaq	-64(%rax), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf@PLT
	.loc 1 15 12
	movl	-308(%rbp), %eax
	movl	%eax, %edx
	.loc 1 7 5
	cmpq	%rbx, %r13
	je	.L2
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L3
.L2:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L3:
	.loc 1 16 5
	movl	%edx, %eax
	addq	$296, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_Z6MsgRetiPKcz, .-_Z6MsgRetiPKcz
	.section	.rodata
.LC1:
	.string	"1 32 24 6 ptr:20"
	.text
	.globl	_Z8MsgNoRetPKcz
	.type	_Z8MsgNoRetPKcz, @function
_Z8MsgNoRetPKcz:
.LASANPC14:
.LFB14:
	.loc 1 19 5
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
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L11
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L11:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r13
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L7
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L7
	movq	%rax, %rbx
.L7:
	leaq	96(%rbx), %rax
	movq	$1102416563, (%rbx)
	leaq	.LC1(%rip), %rdx
	movq	%rdx, 8(%rbx)
	leaq	.LASANPC14(%rip), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 21 22
	movl	$8, -64(%rax)
	movl	$48, -60(%rax)
	leaq	16(%rbp), %rcx
	movq	%rcx, -56(%rax)
	leaq	-208(%rbp), %rsi
	movq	%rsi, -48(%rax)
	.loc 1 23 13
	leaq	-64(%rax), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf@PLT
	.loc 1 27 5
	nop
	.loc 1 19 5
	cmpq	%rbx, %r13
	je	.L8
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L9
.L8:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L9:
	.loc 1 28 5
	addq	$296, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	_Z8MsgNoRetPKcz, .-_Z8MsgNoRetPKcz
	.section	.rodata
	.align 32
	.type	_ZL21SYSTEM_COMMAND_LENGTH, @object
	.size	_ZL21SYSTEM_COMMAND_LENGTH, 4
_ZL21SYSTEM_COMMAND_LENGTH:
	.long	256
	.zero	60
	.globl	__asan_stack_malloc_3
	.align 8
.LC2:
	.string	"2 48 24 6 ptr:36 112 272 14 system_command"
	.align 32
.LC3:
	.string	"format"
	.zero	57
	.align 32
.LC4:
	.string	"SYSTEM"
	.zero	57
	.align 32
.LC5:
	.string	"\033[91mASSERT\033[0m %s: Dyrachok, (%s) - is wrong condition (in line %d)\n"
	.zero	58
	.text
	.globl	_Z6SYSTEMPKcz
	.type	_Z6SYSTEMPKcz, @function
_Z6SYSTEMPKcz:
.LASANPC15:
.LFB15:
	.loc 1 33 5
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
	subq	$672, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -696(%rbp)
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L17
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L17:
	leaq	-688(%rbp), %r12
	movq	%r12, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L13
	movl	$448, %edi
	call	__asan_stack_malloc_3@PLT
	testq	%rax, %rax
	je	.L13
	movq	%rax, %r12
.L13:
	leaq	480(%r12), %rax
	movq	%rax, %r13
	movq	$1102416563, (%r12)
	leaq	.LC2(%rip), %rax
	movq	%rax, 8(%r12)
	leaq	.LASANPC15(%rip), %rax
	movq	%rax, 16(%r12)
	movq	%r12, %rbx
	shrq	$3, %rbx
	movl	$-235802127, 2147450880(%rbx)
	movl	$61937, 2147450884(%rbx)
	movl	$-218959360, 2147450888(%rbx)
	movl	$62194, 2147450892(%rbx)
	movl	$-202116109, 2147450928(%rbx)
	movl	$-202116109, 2147450932(%rbx)
	.loc 1 33 5
	movq	%fs:40, %rax
	movq	%rax, -216(%rbp)
	xorl	%eax, %eax
	.loc 1 34 10
	cmpq	$0, -696(%rbp)
	jne	.L18
	.loc 1 34 32 discriminator 1
	movl	$34, %ecx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L18:
	.loc 1 37 22
	movl	$8, -432(%r13)
	movl	$48, -428(%r13)
	leaq	16(%rbp), %rax
	movq	%rax, -424(%r13)
	leaq	-208(%rbp), %rax
	movq	%rax, -416(%r13)
	.loc 1 39 10
	leaq	-368(%r13), %rax
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
	movl	$272, %edx
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
	je	.L19
	movl	$272, %esi
	movq	%rax, %rdi
	call	__asan_report_store_n@PLT
.L19:
	movq	$0, -368(%r13)
	movq	$0, -360(%r13)
	leaq	-352(%r13), %rdx
	movl	$0, %eax
	movl	$32, %ecx
	movq	%rdx, %rdi
	rep stosq
	.loc 1 40 15
	leaq	-432(%r13), %rcx
	movq	-696(%rbp), %rdx
	leaq	-368(%r13), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	vsnprintf@PLT
	.loc 1 45 19
	leaq	-368(%r13), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 45 34
	movl	%eax, %edx
	.loc 1 33 5
	cmpq	%r12, %r14
	je	.L14
	movq	$1172321806, (%r12)
	movabsq	$-723401728380766731, %rsi
	movabsq	$-723401728380766731, %rdi
	movq	%rsi, 2147450880(%rbx)
	movq	%rdi, 2147450888(%rbx)
	movq	%rsi, 2147450896(%rbx)
	movq	%rdi, 2147450904(%rbx)
	movq	%rsi, 2147450912(%rbx)
	movq	%rdi, 2147450920(%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450928(%rbx)
	movq	504(%r12), %rax
	movb	$0, (%rax)
	jmp	.L15
.L14:
	movq	$0, 2147450880(%rbx)
	movq	$0, 2147450888(%rbx)
	movq	$0, 2147450928(%rbx)
.L15:
	.loc 1 46 5
	movq	-216(%rbp), %rax
	subq	%fs:40, %rax
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	movl	%edx, %eax
	addq	$672, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_Z6SYSTEMPKcz, .-_Z6SYSTEMPKcz
	.section	.rodata
.LC6:
	.string	"1 32 24 6 ptr:50"
	.text
	.globl	_Z13LogMsgNullRetPKcz
	.type	_Z13LogMsgNullRetPKcz, @function
_Z13LogMsgNullRetPKcz:
.LASANPC16:
.LFB16:
	.loc 1 49 5
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
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L26
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L26:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r13
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L22
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L22
	movq	%rax, %rbx
.L22:
	leaq	96(%rbx), %rax
	movq	$1102416563, (%rbx)
	leaq	.LC6(%rip), %rdx
	movq	%rdx, 8(%rbx)
	leaq	.LASANPC16(%rip), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 51 22
	movl	$8, -64(%rax)
	movl	$48, -60(%rax)
	leaq	16(%rbp), %rcx
	movq	%rcx, -56(%rax)
	leaq	-208(%rbp), %rsi
	movq	%rsi, -48(%rax)
	.loc 1 53 13
	leaq	-64(%rax), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf@PLT
	.loc 1 57 12
	movl	$0, %eax
	movq	%rax, %rdx
	.loc 1 49 5
	cmpq	%rbx, %r13
	je	.L23
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L24
.L23:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L24:
	.loc 1 58 5
	movq	%rdx, %rax
	addq	$296, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	_Z13LogMsgNullRetPKcz, .-_Z13LogMsgNullRetPKcz
	.section	.rodata
.LC7:
	.string	"../ATC/Utils/Utils.cpp"
	.section	.data.rel.local,"aw"
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC7
	.long	30
	.long	11
	.section	.rodata
.LC8:
	.string	"../ATC/Buffer/my_buffer.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC8
	.long	32
	.long	11
	.section	.rodata
.LC9:
	.string	"SYSTEM_COMMAND_LENGTH"
.LC10:
	.string	"INDENT_SIZE"
.LC11:
	.string	"*.LC3"
.LC12:
	.string	"*.LC4"
.LC13:
	.string	"*.LC5"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 320
.LASAN0:
	.quad	_ZL21SYSTEM_COMMAND_LENGTH
	.quad	4
	.quad	64
	.quad	.LC9
	.quad	.LC7
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	_ZL11INDENT_SIZE
	.quad	4
	.quad	64
	.quad	.LC10
	.quad	.LC7
	.quad	0
	.quad	.LASANLOC2
	.quad	0
	.quad	.LC3
	.quad	7
	.quad	64
	.quad	.LC11
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	7
	.quad	64
	.quad	.LC12
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	70
	.quad	128
	.quad	.LC13
	.quad	.LC7
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$5, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$5, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 2 "<built-in>"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stdarg.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 5 "/usr/include/stdlib.h"
	.file 6 "/usr/include/c++/11/cstdlib"
	.file 7 "/usr/include/c++/11/bits/std_abs.h"
	.file 8 "/usr/include/c++/11/stdlib.h"
	.file 9 "../ATC/Buffer/my_buffer.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/x86_64-linux-gnu/c++/11/bits/c++config.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9cb
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x17
	.long	.LASF83
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x7
	.long	.LASF8
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.long	0x3a
	.uleb128 0x18
	.long	.LASF84
	.long	0x43
	.uleb128 0xe
	.long	0x5a
	.long	0x53
	.uleb128 0x13
	.long	0x53
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x19
	.long	.LASF85
	.byte	0x18
	.byte	0x2
	.byte	0
	.long	0x8f
	.uleb128 0xb
	.long	.LASF2
	.long	0x8f
	.byte	0
	.uleb128 0xb
	.long	.LASF3
	.long	0x8f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF4
	.long	0x96
	.byte	0x8
	.uleb128 0xb
	.long	.LASF5
	.long	0x96
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x1a
	.byte	0x8
	.uleb128 0x7
	.long	.LASF9
	.byte	0x3
	.byte	0x63
	.byte	0x18
	.long	0x2e
	.uleb128 0x7
	.long	.LASF10
	.byte	0x4
	.byte	0xd1
	.byte	0x1b
	.long	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF11
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF14
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.long	0xcc
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x6
	.long	0xe4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0xc
	.long	0xe4
	.uleb128 0x6
	.long	0xeb
	.uleb128 0x3
	.byte	0x20
	.byte	0x3
	.long	.LASF17
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF18
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF19
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF20
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF21
	.uleb128 0xf
	.byte	0x8
	.byte	0x3c
	.long	.LASF24
	.long	0x13b
	.uleb128 0x10
	.long	.LASF22
	.byte	0x3d
	.byte	0x9
	.long	0xcc
	.uleb128 0x11
	.string	"rem"
	.byte	0x3e
	.byte	0x9
	.long	0xcc
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x5
	.byte	0x3f
	.byte	0x5
	.long	0x118
	.uleb128 0xf
	.byte	0x10
	.byte	0x44
	.long	.LASF25
	.long	0x16a
	.uleb128 0x10
	.long	.LASF22
	.byte	0x45
	.byte	0xe
	.long	0xd8
	.uleb128 0x11
	.string	"rem"
	.byte	0x46
	.byte	0xe
	.long	0xd8
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF26
	.byte	0x5
	.byte	0x47
	.byte	0x5
	.long	0x147
	.uleb128 0xf
	.byte	0x10
	.byte	0x4e
	.long	.LASF27
	.long	0x199
	.uleb128 0x10
	.long	.LASF22
	.byte	0x4f
	.byte	0x13
	.long	0x199
	.uleb128 0x11
	.string	"rem"
	.byte	0x50
	.byte	0x13
	.long	0x199
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF28
	.uleb128 0x7
	.long	.LASF29
	.byte	0x5
	.byte	0x51
	.byte	0x5
	.long	0x176
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF30
	.uleb128 0x1c
	.long	.LASF31
	.byte	0x5
	.value	0x330
	.byte	0xf
	.long	0x1c0
	.uleb128 0x6
	.long	0x1c5
	.uleb128 0x1d
	.long	0xcc
	.long	0x1d9
	.uleb128 0x1
	.long	0x1d9
	.uleb128 0x1
	.long	0x1d9
	.byte	0
	.uleb128 0x6
	.long	0x1de
	.uleb128 0x1e
	.uleb128 0x1f
	.string	"std"
	.byte	0xb
	.value	0x116
	.byte	0xb
	.long	0x37e
	.uleb128 0x2
	.byte	0x6
	.byte	0x7f
	.byte	0xb
	.long	0x13b
	.uleb128 0x2
	.byte	0x6
	.byte	0x80
	.byte	0xb
	.long	0x16a
	.uleb128 0x2
	.byte	0x6
	.byte	0x86
	.byte	0xb
	.long	0x37e
	.uleb128 0x2
	.byte	0x6
	.byte	0x89
	.byte	0xb
	.long	0x39b
	.uleb128 0x2
	.byte	0x6
	.byte	0x8c
	.byte	0xb
	.long	0x3b6
	.uleb128 0x2
	.byte	0x6
	.byte	0x8d
	.byte	0xb
	.long	0x3cb
	.uleb128 0x2
	.byte	0x6
	.byte	0x8e
	.byte	0xb
	.long	0x3e0
	.uleb128 0x2
	.byte	0x6
	.byte	0x8f
	.byte	0xb
	.long	0x3f5
	.uleb128 0x2
	.byte	0x6
	.byte	0x91
	.byte	0xb
	.long	0x420
	.uleb128 0x2
	.byte	0x6
	.byte	0x94
	.byte	0xb
	.long	0x43c
	.uleb128 0x2
	.byte	0x6
	.byte	0x96
	.byte	0xb
	.long	0x453
	.uleb128 0x2
	.byte	0x6
	.byte	0x99
	.byte	0xb
	.long	0x46f
	.uleb128 0x2
	.byte	0x6
	.byte	0x9a
	.byte	0xb
	.long	0x48b
	.uleb128 0x2
	.byte	0x6
	.byte	0x9b
	.byte	0xb
	.long	0x4bd
	.uleb128 0x2
	.byte	0x6
	.byte	0x9d
	.byte	0xb
	.long	0x4de
	.uleb128 0x2
	.byte	0x6
	.byte	0xa0
	.byte	0xb
	.long	0x4fe
	.uleb128 0x2
	.byte	0x6
	.byte	0xa3
	.byte	0xb
	.long	0x511
	.uleb128 0x2
	.byte	0x6
	.byte	0xa5
	.byte	0xb
	.long	0x51e
	.uleb128 0x2
	.byte	0x6
	.byte	0xa6
	.byte	0xb
	.long	0x52f
	.uleb128 0x2
	.byte	0x6
	.byte	0xa7
	.byte	0xb
	.long	0x54e
	.uleb128 0x2
	.byte	0x6
	.byte	0xa8
	.byte	0xb
	.long	0x56d
	.uleb128 0x2
	.byte	0x6
	.byte	0xa9
	.byte	0xb
	.long	0x58c
	.uleb128 0x2
	.byte	0x6
	.byte	0xab
	.byte	0xb
	.long	0x5a3
	.uleb128 0x2
	.byte	0x6
	.byte	0xac
	.byte	0xb
	.long	0x5c9
	.uleb128 0x2
	.byte	0x6
	.byte	0xf0
	.byte	0x16
	.long	0x1a0
	.uleb128 0x2
	.byte	0x6
	.byte	0xf5
	.byte	0x16
	.long	0x62a
	.uleb128 0x2
	.byte	0x6
	.byte	0xf6
	.byte	0x16
	.long	0x644
	.uleb128 0x2
	.byte	0x6
	.byte	0xf8
	.byte	0x16
	.long	0x660
	.uleb128 0x2
	.byte	0x6
	.byte	0xf9
	.byte	0x16
	.long	0x6b3
	.uleb128 0x2
	.byte	0x6
	.byte	0xfa
	.byte	0x16
	.long	0x675
	.uleb128 0x2
	.byte	0x6
	.byte	0xfb
	.byte	0x16
	.long	0x694
	.uleb128 0x2
	.byte	0x6
	.byte	0xfc
	.byte	0x16
	.long	0x6cd
	.uleb128 0x8
	.string	"abs"
	.byte	0x4f
	.long	.LASF32
	.long	0x111
	.long	0x304
	.uleb128 0x1
	.long	0x111
	.byte	0
	.uleb128 0x8
	.string	"abs"
	.byte	0x4b
	.long	.LASF33
	.long	0x103
	.long	0x31c
	.uleb128 0x1
	.long	0x103
	.byte	0
	.uleb128 0x8
	.string	"abs"
	.byte	0x47
	.long	.LASF34
	.long	0x10a
	.long	0x334
	.uleb128 0x1
	.long	0x10a
	.byte	0
	.uleb128 0x8
	.string	"abs"
	.byte	0x3d
	.long	.LASF35
	.long	0x199
	.long	0x34c
	.uleb128 0x1
	.long	0x199
	.byte	0
	.uleb128 0x8
	.string	"abs"
	.byte	0x38
	.long	.LASF36
	.long	0xd8
	.long	0x364
	.uleb128 0x1
	.long	0xd8
	.byte	0
	.uleb128 0x14
	.string	"div"
	.byte	0xb1
	.long	.LASF59
	.long	0x16a
	.uleb128 0x1
	.long	0xd8
	.uleb128 0x1
	.long	0xd8
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF37
	.byte	0x5
	.value	0x25a
	.byte	0xc
	.long	0xcc
	.long	0x395
	.uleb128 0x1
	.long	0x395
	.byte	0
	.uleb128 0x6
	.long	0x39a
	.uleb128 0x20
	.uleb128 0x21
	.long	.LASF38
	.byte	0x5
	.value	0x25f
	.byte	0x12
	.long	.LASF38
	.long	0xcc
	.long	0x3b6
	.uleb128 0x1
	.long	0x395
	.byte	0
	.uleb128 0x5
	.long	.LASF39
	.byte	0x66
	.byte	0xf
	.long	0x10a
	.long	0x3cb
	.uleb128 0x1
	.long	0xf0
	.byte	0
	.uleb128 0x5
	.long	.LASF40
	.byte	0x69
	.byte	0xc
	.long	0xcc
	.long	0x3e0
	.uleb128 0x1
	.long	0xf0
	.byte	0
	.uleb128 0x5
	.long	.LASF41
	.byte	0x6c
	.byte	0x11
	.long	0xd8
	.long	0x3f5
	.uleb128 0x1
	.long	0xf0
	.byte	0
	.uleb128 0x4
	.long	.LASF42
	.byte	0x5
	.value	0x33c
	.byte	0xe
	.long	0x96
	.long	0x420
	.uleb128 0x1
	.long	0x1d9
	.uleb128 0x1
	.long	0x1d9
	.uleb128 0x1
	.long	0xa4
	.uleb128 0x1
	.long	0xa4
	.uleb128 0x1
	.long	0x1b3
	.byte	0
	.uleb128 0x22
	.string	"div"
	.byte	0x5
	.value	0x35c
	.byte	0xe
	.long	0x13b
	.long	0x43c
	.uleb128 0x1
	.long	0xcc
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0x4
	.long	.LASF43
	.byte	0x5
	.value	0x281
	.byte	0xe
	.long	0xdf
	.long	0x453
	.uleb128 0x1
	.long	0xf0
	.byte	0
	.uleb128 0x4
	.long	.LASF44
	.byte	0x5
	.value	0x35e
	.byte	0xf
	.long	0x16a
	.long	0x46f
	.uleb128 0x1
	.long	0xd8
	.uleb128 0x1
	.long	0xd8
	.byte	0
	.uleb128 0x4
	.long	.LASF45
	.byte	0x5
	.value	0x3a2
	.byte	0xc
	.long	0xcc
	.long	0x48b
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0xa4
	.byte	0
	.uleb128 0x4
	.long	.LASF46
	.byte	0x5
	.value	0x3ad
	.byte	0xf
	.long	0xa4
	.long	0x4ac
	.uleb128 0x1
	.long	0x4ac
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0xa4
	.byte	0
	.uleb128 0x6
	.long	0x4b1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF47
	.uleb128 0xc
	.long	0x4b1
	.uleb128 0x4
	.long	.LASF48
	.byte	0x5
	.value	0x3a5
	.byte	0xc
	.long	0xcc
	.long	0x4de
	.uleb128 0x1
	.long	0x4ac
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0xa4
	.byte	0
	.uleb128 0x15
	.long	.LASF50
	.value	0x346
	.long	0x4fe
	.uleb128 0x1
	.long	0x96
	.uleb128 0x1
	.long	0xa4
	.uleb128 0x1
	.long	0xa4
	.uleb128 0x1
	.long	0x1b3
	.byte	0
	.uleb128 0x23
	.long	.LASF49
	.byte	0x5
	.value	0x276
	.byte	0xd
	.long	0x511
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0x24
	.long	.LASF86
	.byte	0x5
	.value	0x1c6
	.byte	0xc
	.long	0xcc
	.uleb128 0x15
	.long	.LASF51
	.value	0x1c8
	.long	0x52f
	.uleb128 0x1
	.long	0x8f
	.byte	0
	.uleb128 0x5
	.long	.LASF52
	.byte	0x76
	.byte	0xf
	.long	0x10a
	.long	0x549
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0x549
	.byte	0
	.uleb128 0x6
	.long	0xdf
	.uleb128 0x5
	.long	.LASF53
	.byte	0xb1
	.byte	0x11
	.long	0xd8
	.long	0x56d
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0x549
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0x5
	.long	.LASF54
	.byte	0xb5
	.byte	0x1a
	.long	0x53
	.long	0x58c
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0x549
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0x4
	.long	.LASF55
	.byte	0x5
	.value	0x317
	.byte	0xc
	.long	0xcc
	.long	0x5a3
	.uleb128 0x1
	.long	0xf0
	.byte	0
	.uleb128 0x4
	.long	.LASF56
	.byte	0x5
	.value	0x3b1
	.byte	0xf
	.long	0xa4
	.long	0x5c4
	.uleb128 0x1
	.long	0xdf
	.uleb128 0x1
	.long	0x5c4
	.uleb128 0x1
	.long	0xa4
	.byte	0
	.uleb128 0x6
	.long	0x4b8
	.uleb128 0x4
	.long	.LASF57
	.byte	0x5
	.value	0x3a9
	.byte	0xc
	.long	0xcc
	.long	0x5e5
	.uleb128 0x1
	.long	0xdf
	.uleb128 0x1
	.long	0x4b1
	.byte	0
	.uleb128 0x25
	.long	.LASF58
	.byte	0xb
	.value	0x130
	.byte	0xb
	.long	0x644
	.uleb128 0x2
	.byte	0x6
	.byte	0xc8
	.byte	0xb
	.long	0x1a0
	.uleb128 0x2
	.byte	0x6
	.byte	0xd8
	.byte	0xb
	.long	0x644
	.uleb128 0x2
	.byte	0x6
	.byte	0xe3
	.byte	0xb
	.long	0x660
	.uleb128 0x2
	.byte	0x6
	.byte	0xe4
	.byte	0xb
	.long	0x675
	.uleb128 0x2
	.byte	0x6
	.byte	0xe5
	.byte	0xb
	.long	0x694
	.uleb128 0x2
	.byte	0x6
	.byte	0xe7
	.byte	0xb
	.long	0x6b3
	.uleb128 0x2
	.byte	0x6
	.byte	0xe8
	.byte	0xb
	.long	0x6cd
	.uleb128 0x14
	.string	"div"
	.byte	0xd5
	.long	.LASF60
	.long	0x1a0
	.uleb128 0x1
	.long	0x199
	.uleb128 0x1
	.long	0x199
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF61
	.byte	0x5
	.value	0x362
	.byte	0x1e
	.long	0x1a0
	.long	0x660
	.uleb128 0x1
	.long	0x199
	.uleb128 0x1
	.long	0x199
	.byte	0
	.uleb128 0x5
	.long	.LASF62
	.byte	0x71
	.byte	0x24
	.long	0x199
	.long	0x675
	.uleb128 0x1
	.long	0xf0
	.byte	0
	.uleb128 0x5
	.long	.LASF63
	.byte	0xc9
	.byte	0x16
	.long	0x199
	.long	0x694
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0x549
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0x5
	.long	.LASF64
	.byte	0xce
	.byte	0x1f
	.long	0x1ac
	.long	0x6b3
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0x549
	.uleb128 0x1
	.long	0xcc
	.byte	0
	.uleb128 0x5
	.long	.LASF65
	.byte	0x7c
	.byte	0xe
	.long	0x103
	.long	0x6cd
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0x549
	.byte	0
	.uleb128 0x5
	.long	.LASF66
	.byte	0x7f
	.byte	0x14
	.long	0x111
	.long	0x6e7
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0x549
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x27
	.byte	0xc
	.long	0x37e
	.uleb128 0x2
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.long	0x39b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0xe
	.long	0x4fe
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.byte	0xc
	.long	0x13b
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.byte	0xc
	.long	0x16a
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.byte	0xc
	.long	0x2ec
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.byte	0xc
	.long	0x304
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.byte	0xc
	.long	0x31c
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.byte	0xc
	.long	0x334
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.byte	0xc
	.long	0x34c
	.uleb128 0x2
	.byte	0x8
	.byte	0x37
	.byte	0xc
	.long	0x3b6
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0xc
	.long	0x3cb
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.byte	0xc
	.long	0x3e0
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.byte	0xc
	.long	0x3f5
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.byte	0xc
	.long	0x62a
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.byte	0xc
	.long	0x364
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.byte	0xc
	.long	0x420
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.byte	0xc
	.long	0x43c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0xc
	.long	0x453
	.uleb128 0x2
	.byte	0x8
	.byte	0x43
	.byte	0xc
	.long	0x46f
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0xc
	.long	0x48b
	.uleb128 0x2
	.byte	0x8
	.byte	0x45
	.byte	0xc
	.long	0x4bd
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.byte	0xc
	.long	0x4de
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0xc
	.long	0x511
	.uleb128 0x2
	.byte	0x8
	.byte	0x4a
	.byte	0xc
	.long	0x51e
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.byte	0xc
	.long	0x52f
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.byte	0xc
	.long	0x54e
	.uleb128 0x2
	.byte	0x8
	.byte	0x4d
	.byte	0xc
	.long	0x56d
	.uleb128 0x2
	.byte	0x8
	.byte	0x4e
	.byte	0xc
	.long	0x58c
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0xc
	.long	0x5a3
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.byte	0xc
	.long	0x5c9
	.uleb128 0x12
	.long	.LASF67
	.byte	0x9
	.byte	0x20
	.byte	0xb
	.long	0xd3
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11INDENT_SIZE
	.uleb128 0x26
	.long	.LASF87
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.byte	0x1e
	.byte	0xb
	.long	0xd3
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL21SYSTEM_COMMAND_LENGTH
	.uleb128 0x4
	.long	.LASF69
	.byte	0xa
	.value	0x17e
	.byte	0xc
	.long	0xcc
	.long	0x836
	.uleb128 0x1
	.long	0xdf
	.uleb128 0x1
	.long	0xa4
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0x836
	.byte	0
	.uleb128 0x6
	.long	0x5a
	.uleb128 0x4
	.long	.LASF70
	.byte	0xa
	.value	0x164
	.byte	0xc
	.long	0xcc
	.long	0x853
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x9
	.byte	0
	.uleb128 0x4
	.long	.LASF71
	.byte	0xa
	.value	0x173
	.byte	0xc
	.long	0xcc
	.long	0x86f
	.uleb128 0x1
	.long	0xf0
	.uleb128 0x1
	.long	0x836
	.byte	0
	.uleb128 0x16
	.long	.LASF72
	.byte	0x30
	.byte	0x13
	.long	.LASF74
	.long	0x7f5
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b2
	.uleb128 0xa
	.long	.LASF76
	.byte	0x30
	.byte	0x2d
	.long	0xf0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x9
	.uleb128 0xd
	.string	"ptr"
	.byte	0x32
	.long	0x98
	.uleb128 0x2
	.byte	0x70
	.sleb128 -64
	.byte	0
	.uleb128 0x16
	.long	.LASF73
	.byte	0x20
	.byte	0x5
	.long	.LASF75
	.long	0xcc
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x919
	.uleb128 0xa
	.long	.LASF76
	.byte	0x20
	.byte	0x18
	.long	0xf0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x9
	.uleb128 0x27
	.long	.LASF88
	.long	0x929
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0xd
	.string	"ptr"
	.byte	0x24
	.long	0x98
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -432
	.uleb128 0x12
	.long	.LASF77
	.byte	0x1
	.byte	0x27
	.byte	0xa
	.long	0x92e
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -368
	.byte	0
	.uleb128 0xe
	.long	0xeb
	.long	0x929
	.uleb128 0x13
	.long	0x53
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	0x919
	.uleb128 0xe
	.long	0xe4
	.long	0x93f
	.uleb128 0x28
	.long	0x53
	.value	0x10f
	.byte	0
	.uleb128 0x29
	.long	.LASF78
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.long	.LASF80
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x97f
	.uleb128 0xa
	.long	.LASF76
	.byte	0x12
	.byte	0x1c
	.long	0xf0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x9
	.uleb128 0xd
	.string	"ptr"
	.byte	0x14
	.long	0x98
	.uleb128 0x2
	.byte	0x70
	.sleb128 -64
	.byte	0
	.uleb128 0x2a
	.long	.LASF79
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.long	.LASF81
	.long	0xcc
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.long	.LASF82
	.byte	0x6
	.byte	0x11
	.long	0xcc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0xa
	.long	.LASF76
	.byte	0x6
	.byte	0x2b
	.long	0xf0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x9
	.uleb128 0xd
	.string	"ptr"
	.byte	0x8
	.long	0x98
	.uleb128 0x2
	.byte	0x70
	.sleb128 -64
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
	.sleb128 5
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
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x9
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x15
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
.LASF67:
	.string	"INDENT_SIZE"
.LASF36:
	.string	"_ZSt3absl"
.LASF87:
	.string	"decltype(nullptr)"
.LASF50:
	.string	"qsort"
.LASF66:
	.string	"strtold"
.LASF72:
	.string	"LogMsgNullRet"
.LASF81:
	.string	"_Z6MsgRetiPKcz"
.LASF38:
	.string	"at_quick_exit"
.LASF35:
	.string	"_ZSt3absx"
.LASF63:
	.string	"strtoll"
.LASF46:
	.string	"mbstowcs"
.LASF71:
	.string	"vprintf"
.LASF74:
	.string	"_Z13LogMsgNullRetPKcz"
.LASF10:
	.string	"size_t"
.LASF42:
	.string	"bsearch"
.LASF37:
	.string	"atexit"
.LASF59:
	.string	"_ZSt3divll"
.LASF80:
	.string	"_Z8MsgNoRetPKcz"
.LASF28:
	.string	"long long int"
.LASF9:
	.string	"va_list"
.LASF14:
	.string	"short int"
.LASF17:
	.string	"__unknown__"
.LASF43:
	.string	"getenv"
.LASF86:
	.string	"rand"
.LASF83:
	.string	"GNU C++20 11.3.0 -mtune=generic -march=x86-64 -g -std=c++20 -fstrict-overflow -fstack-protector -fcheck-new -fsized-deallocation -fno-omit-frame-pointer -fPIE -fsanitize=address,leak -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF13:
	.string	"signed char"
.LASF19:
	.string	"float"
.LASF48:
	.string	"mbtowc"
.LASF76:
	.string	"format"
.LASF52:
	.string	"strtod"
.LASF15:
	.string	"long int"
.LASF78:
	.string	"MsgNoRet"
.LASF27:
	.string	"7lldiv_t"
.LASF70:
	.string	"printf"
.LASF60:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF53:
	.string	"strtol"
.LASF2:
	.string	"gp_offset"
.LASF57:
	.string	"wctomb"
.LASF39:
	.string	"atof"
.LASF77:
	.string	"system_command"
.LASF11:
	.string	"unsigned char"
.LASF56:
	.string	"wcstombs"
.LASF40:
	.string	"atoi"
.LASF21:
	.string	"long double"
.LASF54:
	.string	"strtoul"
.LASF73:
	.string	"SYSTEM"
.LASF41:
	.string	"atol"
.LASF49:
	.string	"quick_exit"
.LASF23:
	.string	"div_t"
.LASF58:
	.string	"__gnu_cxx"
.LASF64:
	.string	"strtoull"
.LASF25:
	.string	"6ldiv_t"
.LASF30:
	.string	"long long unsigned int"
.LASF62:
	.string	"atoll"
.LASF3:
	.string	"fp_offset"
.LASF7:
	.string	"unsigned int"
.LASF45:
	.string	"mblen"
.LASF26:
	.string	"ldiv_t"
.LASF44:
	.string	"ldiv"
.LASF82:
	.string	"return_value"
.LASF22:
	.string	"quot"
.LASF12:
	.string	"short unsigned int"
.LASF5:
	.string	"reg_save_area"
.LASF69:
	.string	"vsnprintf"
.LASF47:
	.string	"wchar_t"
.LASF16:
	.string	"char"
.LASF18:
	.string	"__float128"
.LASF75:
	.string	"_Z6SYSTEMPKcz"
.LASF65:
	.string	"strtof"
.LASF88:
	.string	"__func__"
.LASF55:
	.string	"system"
.LASF79:
	.string	"MsgRet"
.LASF6:
	.string	"long unsigned int"
.LASF84:
	.string	"__builtin_va_list"
.LASF20:
	.string	"double"
.LASF4:
	.string	"overflow_arg_area"
.LASF68:
	.string	"SYSTEM_COMMAND_LENGTH"
.LASF29:
	.string	"lldiv_t"
.LASF61:
	.string	"lldiv"
.LASF31:
	.string	"__compar_fn_t"
.LASF8:
	.string	"__gnuc_va_list"
.LASF24:
	.string	"5div_t"
.LASF85:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF51:
	.string	"srand"
.LASF34:
	.string	"_ZSt3absd"
.LASF32:
	.string	"_ZSt3abse"
.LASF33:
	.string	"_ZSt3absf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"../ATC/Utils/Utils.cpp"
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
