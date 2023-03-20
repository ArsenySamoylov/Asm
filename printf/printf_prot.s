	.file	"printf_prot.cpp"
# GNU C++17 (Ubuntu 11.3.0-1ubuntu1~22.04) version 11.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"(LOX)"
.LC1:
	.string	"Hello, %d, %o, %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# argc, argc
	movq	%rsi, -16(%rbp)	# argv, argv
# printf_prot.cpp:9:     my_printf("Hello, %d, %o, %s", 10, 8, "(LOX)");
	leaq	.LC0(%rip), %rax	#, tmp84
	movq	%rax, %rcx	# tmp84,
	movl	$8, %edx	#,
	movl	$10, %esi	#,
	leaq	.LC1(%rip), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	movl	$0, %eax	#,
	call	_Z9my_printfPKcz	#
# printf_prot.cpp:10:     return 0;
	movl	$0, %eax	#, _3
# printf_prot.cpp:11:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC2:
	.string	"%x(binary)"
.LC3:
	.string	"%d"
.LC4:
	.string	"%o"
.LC5:
	.string	"%s"
.LC6:
	.string	"%x"
	.text
	.globl	_Z9my_printfPKcz
	.type	_Z9my_printfPKcz, @function
_Z9my_printfPKcz:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$256, %rsp	#,
	movq	%rdi, -248(%rbp)	# format, format
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L4	#,
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L4:
# printf_prot.cpp:14:     {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp174
	movq	%rax, -184(%rbp)	# tmp174, D.2942
	xorl	%eax, %eax	# tmp174
# printf_prot.cpp:15:     va_list ap{};
	movq	$0, -208(%rbp)	#, ap
	movq	$0, -200(%rbp)	#, ap
	movq	$0, -192(%rbp)	#, ap
# printf_prot.cpp:16:     va_start(ap, format);
	movl	$8, -208(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -204(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp177
	movq	%rax, -200(%rbp)	# tmp177, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp178
	movq	%rax, -192(%rbp)	# tmp178, MEM[(struct [1] *)&ap].reg_save_area
# printf_prot.cpp:18:     while(*format != '\0')
	jmp	.L5	#
.L8:
# printf_prot.cpp:22:             putchar(*format++);
	movq	-248(%rbp), %rax	# format, format.0_1
	leaq	1(%rax), %rdx	#, tmp142
	movq	%rdx, -248(%rbp)	# tmp142, format
# printf_prot.cpp:22:             putchar(*format++);
	movzbl	(%rax), %eax	# *format.0_1, _2
# printf_prot.cpp:22:             putchar(*format++);
	movsbl	%al, %eax	# _2, _3
	movl	%eax, %edi	# _3,
	call	putchar@PLT	#
.L6:
# printf_prot.cpp:21:         while(*format != '%' && *format != '\0')
	movq	-248(%rbp), %rax	# format, tmp143
	movzbl	(%rax), %eax	# *format_12, _4
# printf_prot.cpp:21:         while(*format != '%' && *format != '\0')
	cmpb	$37, %al	#, _4
	je	.L7	#,
# printf_prot.cpp:21:         while(*format != '%' && *format != '\0')
	movq	-248(%rbp), %rax	# format, tmp144
	movzbl	(%rax), %eax	# *format_12, _5
# printf_prot.cpp:21:         while(*format != '%' && *format != '\0')
	testb	%al, %al	# _5
	jne	.L8	#,
.L7:
# printf_prot.cpp:25:         if (*format == '%')
	movq	-248(%rbp), %rax	# format, tmp145
	movzbl	(%rax), %eax	# *format_12, _6
# printf_prot.cpp:25:         if (*format == '%')
	cmpb	$37, %al	#, _6
	jne	.L5	#,
# printf_prot.cpp:27:             format++;
	addq	$1, -248(%rbp)	#, format
# printf_prot.cpp:29:             switch (*format)
	movq	-248(%rbp), %rax	# format, tmp146
	movzbl	(%rax), %eax	# *format_25, _7
	movsbl	%al, %eax	# _7, _8
# printf_prot.cpp:29:             switch (*format)
	cmpl	$37, %eax	#, _8
	je	.L9	#,
	cmpl	$37, %eax	#, _8
	jl	.L10	#,
	cmpl	$120, %eax	#, _8
	jg	.L10	#,
	cmpl	$98, %eax	#, _8
	jl	.L10	#,
	subl	$98, %eax	#, tmp147
	cmpl	$22, %eax	#, tmp147
	ja	.L10	#,
	movl	%eax, %eax	# tmp147, tmp148
	leaq	0(,%rax,4), %rdx	#, tmp149
	leaq	.L12(%rip), %rax	#, tmp150
	movl	(%rdx,%rax), %eax	#, tmp151
	cltq
	leaq	.L12(%rip), %rdx	#, tmp154
	addq	%rdx, %rax	# tmp154, tmp153
	notrack jmp	*%rax	# tmp153
	.section	.rodata
	.align 4
	.align 4
.L12:
	.long	.L17-.L12
	.long	.L16-.L12
	.long	.L15-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L14-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L13-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L10-.L12
	.long	.L11-.L12
	.text
.L9:
# printf_prot.cpp:32:                     putchar('%');
	movl	$37, %edi	#,
	call	putchar@PLT	#
# printf_prot.cpp:33:                     break;
	jmp	.L18	#
.L17:
# printf_prot.cpp:37:                     int temp = va_arg(ap, int);
	movl	-208(%rbp), %eax	# MEM[(struct  *)&ap].gp_offset, D.2873
	cmpl	$47, %eax	#, D.2873
	ja	.L19	#,
	movq	-192(%rbp), %rax	# MEM[(struct  *)&ap].reg_save_area, D.2875
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2876
	movl	%edx, %edx	# D.2876, D.2877
	addq	%rdx, %rax	# D.2877, D.2880
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2878
	addl	$8, %edx	#, D.2879
	movl	%edx, -208(%rbp)	# D.2879, MEM[(struct  *)&ap].gp_offset
	jmp	.L20	#
.L19:
	movq	-200(%rbp), %rax	# MEM[(struct  *)&ap].overflow_arg_area, D.2880
	leaq	8(%rax), %rdx	#, D.2881
	movq	%rdx, -200(%rbp)	# D.2881, MEM[(struct  *)&ap].overflow_arg_area
.L20:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.1_54], tmp155
	movl	%eax, -220(%rbp)	# tmp155, temp
# printf_prot.cpp:38:                     printf("%x(binary)", temp);
	movl	-220(%rbp), %eax	# temp, tmp156
	movl	%eax, %esi	# tmp156,
	leaq	.LC2(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	movl	$0, %eax	#,
	call	printf@PLT	#
# printf_prot.cpp:39:                     break;
	jmp	.L18	#
.L16:
# printf_prot.cpp:44:                     int temp = va_arg(ap, int);
	movl	-208(%rbp), %eax	# MEM[(struct  *)&ap].gp_offset, D.2885
	cmpl	$47, %eax	#, D.2885
	ja	.L21	#,
	movq	-192(%rbp), %rax	# MEM[(struct  *)&ap].reg_save_area, D.2887
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2888
	movl	%edx, %edx	# D.2888, D.2889
	addq	%rdx, %rax	# D.2889, D.2892
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2890
	addl	$8, %edx	#, D.2891
	movl	%edx, -208(%rbp)	# D.2891, MEM[(struct  *)&ap].gp_offset
	jmp	.L22	#
.L21:
	movq	-200(%rbp), %rax	# MEM[(struct  *)&ap].overflow_arg_area, D.2892
	leaq	8(%rax), %rdx	#, D.2893
	movq	%rdx, -200(%rbp)	# D.2893, MEM[(struct  *)&ap].overflow_arg_area
.L22:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.2_55], tmp158
	movl	%eax, -224(%rbp)	# tmp158, temp
# printf_prot.cpp:45:                     putchar(temp);
	movl	-224(%rbp), %eax	# temp, tmp159
	movl	%eax, %edi	# tmp159,
	call	putchar@PLT	#
# printf_prot.cpp:46:                     break;
	jmp	.L18	#
.L15:
# printf_prot.cpp:51:                     int temp = va_arg(ap, int);
	movl	-208(%rbp), %eax	# MEM[(struct  *)&ap].gp_offset, D.2897
	cmpl	$47, %eax	#, D.2897
	ja	.L23	#,
	movq	-192(%rbp), %rax	# MEM[(struct  *)&ap].reg_save_area, D.2899
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2900
	movl	%edx, %edx	# D.2900, D.2901
	addq	%rdx, %rax	# D.2901, D.2904
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2902
	addl	$8, %edx	#, D.2903
	movl	%edx, -208(%rbp)	# D.2903, MEM[(struct  *)&ap].gp_offset
	jmp	.L24	#
.L23:
	movq	-200(%rbp), %rax	# MEM[(struct  *)&ap].overflow_arg_area, D.2904
	leaq	8(%rax), %rdx	#, D.2905
	movq	%rdx, -200(%rbp)	# D.2905, MEM[(struct  *)&ap].overflow_arg_area
.L24:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.3_56], tmp160
	movl	%eax, -228(%rbp)	# tmp160, temp
# printf_prot.cpp:52:                     printf("%d", temp);
	movl	-228(%rbp), %eax	# temp, tmp161
	movl	%eax, %esi	# tmp161,
	leaq	.LC3(%rip), %rax	#, tmp162
	movq	%rax, %rdi	# tmp162,
	movl	$0, %eax	#,
	call	printf@PLT	#
# printf_prot.cpp:53:                     break;
	jmp	.L18	#
.L14:
# printf_prot.cpp:58:                     int temp = va_arg(ap, int);
	movl	-208(%rbp), %eax	# MEM[(struct  *)&ap].gp_offset, D.2909
	cmpl	$47, %eax	#, D.2909
	ja	.L25	#,
	movq	-192(%rbp), %rax	# MEM[(struct  *)&ap].reg_save_area, D.2911
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2912
	movl	%edx, %edx	# D.2912, D.2913
	addq	%rdx, %rax	# D.2913, D.2916
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2914
	addl	$8, %edx	#, D.2915
	movl	%edx, -208(%rbp)	# D.2915, MEM[(struct  *)&ap].gp_offset
	jmp	.L26	#
.L25:
	movq	-200(%rbp), %rax	# MEM[(struct  *)&ap].overflow_arg_area, D.2916
	leaq	8(%rax), %rdx	#, D.2917
	movq	%rdx, -200(%rbp)	# D.2917, MEM[(struct  *)&ap].overflow_arg_area
.L26:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.4_57], tmp163
	movl	%eax, -232(%rbp)	# tmp163, temp
# printf_prot.cpp:59:                     printf("%o", temp);
	movl	-232(%rbp), %eax	# temp, tmp164
	movl	%eax, %esi	# tmp164,
	leaq	.LC4(%rip), %rax	#, tmp165
	movq	%rax, %rdi	# tmp165,
	movl	$0, %eax	#,
	call	printf@PLT	#
# printf_prot.cpp:60:                     break;
	jmp	.L18	#
.L13:
# printf_prot.cpp:65:                     char* temp = va_arg(ap, char*);
	movl	-208(%rbp), %eax	# MEM[(struct  *)&ap].gp_offset, D.2921
	cmpl	$47, %eax	#, D.2921
	ja	.L27	#,
	movq	-192(%rbp), %rax	# MEM[(struct  *)&ap].reg_save_area, D.2923
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2924
	movl	%edx, %edx	# D.2924, D.2925
	addq	%rdx, %rax	# D.2925, D.2928
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2926
	addl	$8, %edx	#, D.2927
	movl	%edx, -208(%rbp)	# D.2927, MEM[(struct  *)&ap].gp_offset
	jmp	.L28	#
.L27:
	movq	-200(%rbp), %rax	# MEM[(struct  *)&ap].overflow_arg_area, D.2928
	leaq	8(%rax), %rdx	#, D.2929
	movq	%rdx, -200(%rbp)	# D.2929, MEM[(struct  *)&ap].overflow_arg_area
.L28:
	movq	(%rax), %rax	# MEM[(char * * {ref-all})addr.5_58], tmp166
	movq	%rax, -216(%rbp)	# tmp166, temp
# printf_prot.cpp:66:                     printf("%s", temp);
	movq	-216(%rbp), %rax	# temp, tmp167
	movq	%rax, %rsi	# tmp167,
	leaq	.LC5(%rip), %rax	#, tmp168
	movq	%rax, %rdi	# tmp168,
	movl	$0, %eax	#,
	call	printf@PLT	#
# printf_prot.cpp:67:                     break;
	jmp	.L18	#
.L11:
# printf_prot.cpp:72:                     int temp = va_arg(ap, int);
	movl	-208(%rbp), %eax	# MEM[(struct  *)&ap].gp_offset, D.2933
	cmpl	$47, %eax	#, D.2933
	ja	.L29	#,
	movq	-192(%rbp), %rax	# MEM[(struct  *)&ap].reg_save_area, D.2935
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2936
	movl	%edx, %edx	# D.2936, D.2937
	addq	%rdx, %rax	# D.2937, D.2940
	movl	-208(%rbp), %edx	# MEM[(struct  *)&ap].gp_offset, D.2938
	addl	$8, %edx	#, D.2939
	movl	%edx, -208(%rbp)	# D.2939, MEM[(struct  *)&ap].gp_offset
	jmp	.L30	#
.L29:
	movq	-200(%rbp), %rax	# MEM[(struct  *)&ap].overflow_arg_area, D.2940
	leaq	8(%rax), %rdx	#, D.2941
	movq	%rdx, -200(%rbp)	# D.2941, MEM[(struct  *)&ap].overflow_arg_area
.L30:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.6_59], tmp169
	movl	%eax, -236(%rbp)	# tmp169, temp
# printf_prot.cpp:73:                     printf("%x", temp);
	movl	-236(%rbp), %eax	# temp, tmp170
	movl	%eax, %esi	# tmp170,
	leaq	.LC6(%rip), %rax	#, tmp171
	movq	%rax, %rdi	# tmp171,
	movl	$0, %eax	#,
	call	printf@PLT	#
# printf_prot.cpp:74:                     break;
	jmp	.L18	#
.L10:
# printf_prot.cpp:78:                     putchar('%');
	movl	$37, %edi	#,
	call	putchar@PLT	#
# printf_prot.cpp:79:                     putchar(*format);
	movq	-248(%rbp), %rax	# format, tmp172
	movzbl	(%rax), %eax	# *format_25, _9
# printf_prot.cpp:79:                     putchar(*format);
	movsbl	%al, %eax	# _9, _10
	movl	%eax, %edi	# _10,
	call	putchar@PLT	#
# printf_prot.cpp:80:                     break;
	nop	
.L18:
# printf_prot.cpp:83:             format++;
	addq	$1, -248(%rbp)	#, format
.L5:
# printf_prot.cpp:18:     while(*format != '\0')
	movq	-248(%rbp), %rax	# format, tmp173
	movzbl	(%rax), %eax	# *format_13, _11
# printf_prot.cpp:18:     while(*format != '\0')
	testb	%al, %al	# _11
	jne	.L6	#,
# printf_prot.cpp:88:     return;
	nop	
# printf_prot.cpp:89:     }
	movq	-184(%rbp), %rax	# D.2942, tmp175
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp175
	je	.L33	#,
	call	__stack_chk_fail@PLT	#
.L33:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	_Z9my_printfPKcz, .-_Z9my_printfPKcz
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
