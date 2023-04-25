	.file	"Measurements.cpp"
	.text
	.section	.text._Z11hash8_crc32PKDv4_x,"axG",@progbits,_Z11hash8_crc32PKDv4_x,comdat
	.p2align 4
	.weak	_Z11hash8_crc32PKDv4_x
	.type	_Z11hash8_crc32PKDv4_x, @function
_Z11hash8_crc32PKDv4_x:
.LFB7313:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
#APP
# 22 "./include/HashFunctions.hpp" 1
	
         .intel_syntax noprefix
          cmp %rdi, 0x0
          je .end
          
          xor %rax, %rax

          crc32 %rax, qword ptr [%rdi + 0x00 ]
          crc32 %rax, qword ptr [%rdi + 0x08 ]
          crc32 %rax, qword ptr [%rdi + 0x10 ]
          crc32 %rax, qword ptr [%rdi + 0x18 ]
        .end:
       
        .att_syntax prefix
        
# 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE7313:
	.size	_Z11hash8_crc32PKDv4_x, .-_Z11hash8_crc32PKDv4_x
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"int MesureHashFunction(HashTable*, const processed_data*, hash_func_ptr, const char*, FILE*)"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"./src/Measurements.cpp"
.LC2:
	.string	"src_data"
.LC3:
	.string	"file"
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"\033[93m(%s:%d)\033[0m Couldn't set HashTable with function '%s'\n"
	.section	.rodata.str1.1
.LC5:
	.string	"DUMP.txt"
.LC6:
	.string	" %c%lu"
	.text
	.p2align 4
	.type	_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE, @function
_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE:
.LFB7315:
	.cfi_startproc
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
	testq	%rsi, %rsi
	je	.L14
	movq	%r8, %r13
	testq	%r8, %r8
	je	.L15
	movq	%rdi, %r12
	movq	%rcx, %rbp
	call	_Z12SetHashTableP9HashTablePK14processed_dataPFjPKDv4_xE@PLT
	movl	%eax, %r15d
	testl	%eax, %eax
	jne	.L16
	movq	%rbp, %rdi
	movq	%r13, %rsi
	leaq	16(%r12), %rbp
	xorl	%ebx, %ebx
	call	fputs@PLT
	leaq	.LC6(%rip), %r14
	cmpq	$0, 2424(%r12)
	je	.L10
	.p2align 4,,10
	.p2align 3
.L9:
	movq	0(%rbp), %r8
	movl	$44, %ecx
	movq	%r14, %rdx
	movq	%r13, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	addq	$1, %rbx
	addq	$24, %rbp
	call	__fprintf_chk@PLT
	cmpq	%rbx, 2424(%r12)
	ja	.L9
.L10:
	movq	%r13, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	%r12, %rdi
	leaq	.LC5(%rip), %rsi
	call	_Z13DumpHashTableP9HashTablePKc@PLT
	movq	%r12, %rdi
	call	_Z15DeleteHashTableP9HashTable@PLT
.L3:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r15d, %eax
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
.L16:
	.cfi_restore_state
	movq	%rbp, %r8
	movl	$58, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$-1, %r15d
	call	__printf_chk@PLT
	jmp	.L3
.L15:
	leaq	.LC0(%rip), %rcx
	movl	$54, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	__assert_fail@PLT
.L14:
	leaq	.LC0(%rip), %rcx
	movl	$51, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7315:
	.size	_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE, .-_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"int MakeMeasurments(const processed_data*, const char*)"
	.section	.rodata.str1.1
.LC8:
	.string	"path_to_result_file"
.LC9:
	.string	"wb"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"\033[93m(%s:%d)\033[0m Couldn't open file '%s'\n"
	.section	.rodata.str1.1
.LC11:
	.string	"&hash1_always_1"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"\033[93m(%s:%d)\033[0m Couldn't measure '%s' function\n"
	.section	.rodata.str1.1
.LC13:
	.string	"&hash2_ascii"
.LC14:
	.string	"&hash3_strlen"
.LC15:
	.string	"&hash4_hash_sum"
.LC16:
	.string	"&hash5_rol"
.LC17:
	.string	"&hash6_ror"
.LC18:
	.string	"&hash7_djb2"
.LC19:
	.string	"&hash8_crc32"
.LC20:
	.string	"&GetCRCHash"
	.text
	.p2align 4
	.globl	_Z15MakeMeasurmentsPK14processed_dataPKc
	.type	_Z15MakeMeasurmentsPK14processed_dataPKc, @function
_Z15MakeMeasurmentsPK14processed_dataPKc:
.LFB7314:
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
	subq	$2456, %rsp
	.cfi_def_cfa_offset 2496
	movq	%fs:40, %rax
	movq	%rax, 2440(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L59
	movq	%rsi, %r12
	testq	%rsi, %rsi
	je	.L60
	movq	%rdi, %rbp
	leaq	.LC9(%rip), %rsi
	movq	%r12, %rdi
	call	fopen@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L61
	xorl	%eax, %eax
	movq	%rsp, %rdi
	movl	$304, %ecx
	movq	%rsp, %r12
	rep stosq
	leaq	1+.LC11(%rip), %r13
	movq	%rbx, %r8
	movq	%rbp, %rsi
	movq	_Z14hash1_always_1PKDv4_x@GOTPCREL(%rip), %rdx
	movq	%r13, %rcx
	movq	%r12, %rdi
	movq	$101, 2424(%rsp)
	call	_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE
	testl	%eax, %eax
	jne	.L62
.L22:
	leaq	1+.LC13(%rip), %r13
	movq	%rbx, %r8
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	_Z11hash2_asciiPKDv4_x@GOTPCREL(%rip), %rdx
	movq	%r13, %rcx
	call	_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE
	testl	%eax, %eax
	jne	.L63
.L23:
	leaq	1+.LC14(%rip), %r13
	movq	%rbx, %r8
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	_Z12hash3_strlenPKDv4_x@GOTPCREL(%rip), %rdx
	movq	%r13, %rcx
	call	_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE
	testl	%eax, %eax
	jne	.L64
.L24:
	leaq	1+.LC15(%rip), %r13
	movq	%rbx, %r8
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	_Z14hash4_hash_sumPKDv4_x@GOTPCREL(%rip), %rdx
	movq	%r13, %rcx
	call	_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE
	testl	%eax, %eax
	jne	.L65
.L25:
	leaq	1+.LC16(%rip), %r13
	movq	%rbx, %r8
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	_Z9hash5_rolPKDv4_x@GOTPCREL(%rip), %rdx
	movq	%r13, %rcx
	call	_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE
	testl	%eax, %eax
	jne	.L66
.L26:
	leaq	1+.LC17(%rip), %r13
	movq	%rbx, %r8
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	_Z9hash6_rorPKDv4_x@GOTPCREL(%rip), %rdx
	movq	%r13, %rcx
	call	_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE
	testl	%eax, %eax
	jne	.L67
.L27:
	leaq	1+.LC18(%rip), %r13
	movq	%rbx, %r8
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	_Z10hash7_djb2PKDv4_x@GOTPCREL(%rip), %rdx
	movq	%r13, %rcx
	call	_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE
	testl	%eax, %eax
	jne	.L68
.L28:
	leaq	1+.LC19(%rip), %r13
	movq	%rbx, %r8
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%r13, %rcx
	leaq	_Z11hash8_crc32PKDv4_x(%rip), %rdx
	call	_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE
	testl	%eax, %eax
	jne	.L69
.L29:
	movq	%rbx, %r8
	movq	_Z10GetCRCHashPKDv4_x@GOTPCREL(%rip), %rdx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	leaq	1+.LC20(%rip), %rbx
	movq	%rbx, %rcx
	call	_ZL18MesureHashFunctionP9HashTablePK14processed_dataPFjPKDv4_xEPKcP8_IO_FILE
	testl	%eax, %eax
	jne	.L70
.L17:
	movq	2440(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L71
	addq	$2456, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	.cfi_restore_state
	movq	%r13, %r8
	movl	$33, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	call	__printf_chk@PLT
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L70:
	movq	%rbx, %r8
	movl	$43, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	call	__printf_chk@PLT
	xorl	%eax, %eax
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L69:
	movq	%r13, %r8
	movl	$42, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	call	__printf_chk@PLT
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L68:
	movq	%r13, %r8
	movl	$40, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	call	__printf_chk@PLT
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L67:
	movq	%r13, %r8
	movl	$38, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	call	__printf_chk@PLT
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L66:
	movq	%r13, %r8
	movl	$37, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	call	__printf_chk@PLT
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L65:
	movq	%r13, %r8
	movl	$36, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	call	__printf_chk@PLT
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L64:
	movq	%r13, %r8
	movl	$35, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	call	__printf_chk@PLT
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L63:
	movq	%r13, %r8
	movl	$34, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	call	__printf_chk@PLT
	jmp	.L23
.L61:
	movq	%r12, %r8
	movl	$27, %ecx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	call	__printf_chk@PLT
	orl	$-1, %eax
	jmp	.L17
.L60:
	leaq	.LC7(%rip), %rcx
	movl	$22, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L59:
	leaq	.LC7(%rip), %rcx
	movl	$21, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L71:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE7314:
	.size	_Z15MakeMeasurmentsPK14processed_dataPKc, .-_Z15MakeMeasurmentsPK14processed_dataPKc
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"int MeasureFindingTime(const processed_data*, const processed_data*)"
	.section	.rodata.str1.1
.LC22:
	.string	"test_data"
	.text
	.p2align 4
	.globl	_Z18MeasureFindingTimePK14processed_dataS1_
	.type	_Z18MeasureFindingTimePK14processed_dataS1_, @function
_Z18MeasureFindingTimePK14processed_dataS1_:
.LFB7316:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.L76
	testq	%rsi, %rsi
	je	.L77
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L76:
	.cfi_restore_state
	leaq	.LC21(%rip), %rcx
	movl	$89, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L77:
	leaq	.LC21(%rip), %rcx
	movl	$90, %edx
	leaq	.LC1(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE7316:
	.size	_Z18MeasureFindingTimePK14processed_dataS1_, .-_Z18MeasureFindingTimePK14processed_dataS1_
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z15MakeMeasurmentsPK14processed_dataPKc, @function
_GLOBAL__sub_I__Z15MakeMeasurmentsPK14processed_dataPKc:
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
	.size	_GLOBAL__sub_I__Z15MakeMeasurmentsPK14processed_dataPKc, .-_GLOBAL__sub_I__Z15MakeMeasurmentsPK14processed_dataPKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z15MakeMeasurmentsPK14processed_dataPKc
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
