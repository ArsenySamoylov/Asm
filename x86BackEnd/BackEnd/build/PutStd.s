	.file	"PutStd.cpp"
	.text
.Ltext0:
	.file 0 "/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd" "../Common/StandartAWP/PutStd.cpp"
	.section	.rodata
	.align 32
	.type	_ZL12NOT_DECLARED, @object
	.size	_ZL12NOT_DECLARED, 4
_ZL12NOT_DECLARED:
	.long	-111
	.zero	60
	.align 32
	.type	_ZL11NOT_A_LABEL, @object
	.size	_ZL11NOT_A_LABEL, 4
_ZL11NOT_A_LABEL:
	.long	-9
	.zero	60
	.align 32
.LC0:
	.string	"if"
	.zero	61
	.align 32
.LC1:
	.string	"else"
	.zero	59
	.align 32
.LC2:
	.string	"while"
	.zero	58
	.align 32
.LC3:
	.string	"return"
	.zero	57
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	_ZL12INSTRUCTIONS, @object
	.size	_ZL12INSTRUCTIONS, 32
_ZL12INSTRUCTIONS:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.zero	32
	.section	.rodata
	.align 32
.LC4:
	.string	"fout"
	.zero	59
	.align 32
.LC5:
	.string	"fin"
	.zero	60
	.align 32
.LC6:
	.string	"sin"
	.zero	60
	.align 32
.LC7:
	.string	"cos"
	.zero	60
	.align 32
.LC8:
	.string	"pow"
	.zero	60
	.section	.data.rel.ro.local
	.align 32
	.type	_ZL16NATIVE_FUNCTIONS, @object
	.size	_ZL16NATIVE_FUNCTIONS, 80
_ZL16NATIVE_FUNCTIONS:
	.quad	.LC4
	.long	0
	.long	1
	.quad	.LC5
	.long	1
	.long	1
	.quad	.LC6
	.long	2
	.long	1
	.quad	.LC7
	.long	3
	.long	1
	.quad	.LC8
	.long	4
	.long	2
	.zero	48
	.section	.rodata
	.align 32
	.type	_ZL33NUMBER_OF_NATIVE_FUNCTIONS_STRUCT, @object
	.size	_ZL33NUMBER_OF_NATIVE_FUNCTIONS_STRUCT, 4
_ZL33NUMBER_OF_NATIVE_FUNCTIONS_STRUCT:
	.long	5
	.zero	60
	.align 32
.LC9:
	.string	"extern"
	.zero	57
	.align 32
.LC10:
	.string	"var"
	.zero	60
	.section	.data.rel.ro.local
	.align 32
	.type	_ZL14INITIALIZATORS, @object
	.size	_ZL14INITIALIZATORS, 16
_ZL14INITIALIZATORS:
	.quad	.LC9
	.quad	.LC10
	.zero	48
	.section	.rodata
	.align 32
.LC11:
	.string	"double"
	.zero	57
	.align 32
.LC12:
	.string	"void"
	.zero	59
	.section	.data.rel.ro.local
	.align 32
	.type	_ZL18FUNCTION_RET_TYPES, @object
	.size	_ZL18FUNCTION_RET_TYPES, 16
_ZL18FUNCTION_RET_TYPES:
	.quad	.LC11
	.quad	.LC12
	.zero	48
	.section	.rodata
	.align 32
	.type	_ZL9OPERATORS, @object
	.size	_ZL9OPERATORS, 9
_ZL9OPERATORS:
	.string	"+-/*<<>>"
	.zero	55
	.align 32
	.type	_ZL7COMMENT, @object
	.size	_ZL7COMMENT, 1
_ZL7COMMENT:
	.byte	35
	.zero	63
	.align 32
.LC13:
	.string	"main"
	.zero	59
	.section	.data.rel.ro.local
	.align 32
	.type	_ZL9MAIN_NAME, @object
	.size	_ZL9MAIN_NAME, 8
_ZL9MAIN_NAME:
	.quad	.LC13
	.zero	56
	.section	.rodata
	.align 32
	.type	_ZL24MAX_FUNCTION_NAME_LENGTH, @object
	.size	_ZL24MAX_FUNCTION_NAME_LENGTH, 4
_ZL24MAX_FUNCTION_NAME_LENGTH:
	.long	256
	.zero	60
	.align 32
	.type	_ZL15MAX_WORD_LENGTH, @object
	.size	_ZL15MAX_WORD_LENGTH, 4
_ZL15MAX_WORD_LENGTH:
	.long	256
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
	.bss
	.align 32
	.type	_ZL8STD_FILE, @object
	.size	_ZL8STD_FILE, 8
_ZL8STD_FILE:
	.zero	64
	.align 32
	.type	_ZL10STRING_ARR, @object
	.size	_ZL10STRING_ARR, 8
_ZL10STRING_ARR:
	.zero	64
	.globl	STD_FUNCTION_RET_TYPE
	.section	.rodata
	.align 32
.LC14:
	.string	"TYPE"
	.zero	59
	.align 32
.LC15:
	.string	"VOID"
	.zero	59
	.section	.data.rel.local,"aw"
	.align 32
	.type	STD_FUNCTION_RET_TYPE, @object
	.size	STD_FUNCTION_RET_TYPE, 16
STD_FUNCTION_RET_TYPE:
	.quad	.LC14
	.quad	.LC15
	.zero	48
	.globl	NATIVE_FUNCTIONS_STD
	.section	.rodata
	.align 32
.LC16:
	.string	"OUT"
	.zero	60
	.align 32
.LC17:
	.string	"IN"
	.zero	61
	.align 32
.LC18:
	.string	"SIN"
	.zero	60
	.align 32
.LC19:
	.string	"COS"
	.zero	60
	.align 32
.LC20:
	.string	"POW"
	.zero	60
	.section	.data.rel.local
	.align 32
	.type	NATIVE_FUNCTIONS_STD, @object
	.size	NATIVE_FUNCTIONS_STD, 40
NATIVE_FUNCTIONS_STD:
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.zero	56
	.section	.rodata
	.align 32
.LC21:
	.string	"program"
	.zero	56
	.align 32
.LC22:
	.string	"ASSERTLOG:: Condition (%s) is false\n"
	.zero	59
	.align 32
.LC23:
	.string	"\033[93mASSERTLOG:: \033[0mCondition\033[95m (%s) \033[0mis \033[91mfalse\n\033[0m"
	.zero	32
	.align 32
.LC24:
	.string	"int PutProgramToStdAWP(const Program*, const char*)"
	.zero	44
	.align 32
.LC25:
	.string	"../Common/StandartAWP/PutStd.cpp"
	.zero	63
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
	.string	"PutProgramToStdAWP"
	.zero	45
	.align 32
.LC29:
	.string	"Shutting down the system (%s:%d)"
	.zero	63
	.align 32
.LC30:
	.string	"echo LOX\n"
	.zero	54
	.align 32
.LC31:
	.string	"Failed (%s:%d, %s:%d)"
	.zero	42
	.align 32
.LC32:
	.string	"file_name"
	.zero	54
	.align 32
.LC33:
	.string	"w"
	.zero	62
	.align 32
.LC34:
	.string	"\t%s: "
	.zero	58
	.align 32
.LC35:
	.string	"Couldn't open file %s\n"
	.zero	41
	.align 32
.LC36:
	.string	" (%s:%d)\n"
	.zero	54
	.text
	.globl	_Z18PutProgramToStdAWPPK7ProgramPKc
	.type	_Z18PutProgramToStdAWPPK7ProgramPKc, @function
_Z18PutProgramToStdAWPPK7ProgramPKc:
.LASANPC2270:
.LFB2270:
	.file 1 "../Common/StandartAWP/PutStd.cpp"
	.loc 1 31 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 32 10
	cmpq	$0, -24(%rbp)
	jne	.L2
	.loc 1 32 47 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 32 53 discriminator 1
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 32 113 discriminator 1
	leaq	.LC21(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 32 261 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 32 267 discriminator 1
	leaq	.LC24(%rip), %r8
	movl	$32, %ecx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 32 363 discriminator 1
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 32 472 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rbx
	.loc 1 32 478 discriminator 1
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 32 27 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 32 33 discriminator 1
	movl	$32, %ecx
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 32 91 discriminator 1
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 32 133 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 32 155 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 32 168 discriminator 1
	subq	$8, %rsp
	pushq	$32
	leaq	.LC28(%rip), %r9
	movl	$32, %r8d
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	addq	$16, %rsp
	.loc 1 32 256 discriminator 1
	jmp	.L3
.L2:
	.loc 1 33 10
	cmpq	$0, -32(%rbp)
	jne	.L4
	.loc 1 33 49 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 33 55 discriminator 1
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 33 117 discriminator 1
	leaq	.LC32(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 33 267 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 33 273 discriminator 1
	leaq	.LC24(%rip), %r8
	movl	$33, %ecx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 33 369 discriminator 1
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 33 478 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rbx
	.loc 1 33 484 discriminator 1
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 33 27 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 33 33 discriminator 1
	movl	$33, %ecx
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 33 91 discriminator 1
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 33 133 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 33 155 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 33 168 discriminator 1
	subq	$8, %rsp
	pushq	$33
	leaq	.LC28(%rip), %r9
	movl	$33, %r8d
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	addq	$16, %rsp
	.loc 1 33 256 discriminator 1
	jmp	.L3
.L4:
	.loc 1 35 22
	movq	-32(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	.loc 1 35 14
	movq	%rax, _ZL8STD_FILE(%rip)
	.loc 1 36 9
	movq	_ZL8STD_FILE(%rip), %rax
	.loc 1 36 5
	testq	%rax, %rax
	jne	.L5
	.loc 1 38 17
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 38 45
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 38 91
	movl	$38, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 39 16
	movl	$-1, %eax
	jmp	.L3
.L5:
	.loc 1 42 27
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L6
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L6:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 42 16
	movq	%rax, _ZL10STRING_ARR(%rip)
	.loc 1 44 27
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L7
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L7:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 44 17
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 44 33
	testl	%eax, %eax
	setne	%al
	.loc 1 44 5
	testb	%al, %al
	je	.L8
	.loc 1 45 16
	movl	$-1, %eax
	jmp	.L3
.L8:
	.loc 1 47 11
	movq	_ZL8STD_FILE(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 49 12
	movl	$0, %eax
.L3:
	.loc 1 50 5
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2270:
	.size	_Z18PutProgramToStdAWPPK7ProgramPKc, .-_Z18PutProgramToStdAWPPK7ProgramPKc
	.section	.rodata
	.align 32
.LC37:
	.string	"token"
	.zero	58
	.align 32
.LC38:
	.string	"{ NIL } "
	.zero	55
	.align 32
.LC39:
	.string	"{ %lg } "
	.zero	55
	.align 32
.LC40:
	.string	"{ \"%s\" } "
	.zero	54
	.align 32
.LC41:
	.string	"{ ST "
	.zero	58
	.align 32
.LC42:
	.string	"} "
	.zero	61
	.align 32
.LC43:
	.string	"{ PARAM "
	.zero	55
	.align 32
.LC44:
	.string	"{ CALL "
	.zero	56
	.align 32
.LC45:
	.string	"{ \"%s\" "
	.zero	56
	.align 32
.LC46:
	.string	"{ FUNC "
	.zero	56
	.align 32
.LC47:
	.string	"{ %s "
	.zero	58
	.align 32
.LC48:
	.string	"{ VAR "
	.zero	57
	.align 32
.LC49:
	.string	"{ EQ "
	.zero	58
	.align 32
.LC50:
	.string	"PutToken"
	.zero	55
	.align 32
.LC51:
	.string	"Ebat, assigment must have left token, as varible"
	.zero	47
	.align 32
.LC52:
	.string	"Wrong type"
	.zero	53
	.text
	.type	_ZL8PutTokenPK5Token, @function
_ZL8PutTokenPK5Token:
.LASANPC2271:
.LFB2271:
	.loc 1 53 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 56 13
	movq	_ZL10STRING_ARR(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC37(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 1 58 5
	cmpq	$0, -40(%rbp)
	jne	.L10
	.loc 1 60 17
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 61 16
	movl	$0, %eax
	jmp	.L11
.L10:
.LBB2:
	.loc 1 64 20
	movq	-40(%rbp), %rax
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
	je	.L12
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L12:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 64 5
	cmpl	$61, %eax
	ja	.L13
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L15(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L15(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L15:
	.long	.L13-.L15
	.long	.L27-.L15
	.long	.L26-.L15
	.long	.L25-.L15
	.long	.L24-.L15
	.long	.L23-.L15
	.long	.L22-.L15
	.long	.L21-.L15
	.long	.L20-.L15
	.long	.L19-.L15
	.long	.L18-.L15
	.long	.L17-.L15
	.long	.L16-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L14-.L15
	.text
.L20:
.LBB3:
	.loc 1 67 47
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L28
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L28:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 67 21
	movq	%rax, %xmm0
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	_ZL8stdprintPKcz
	.loc 1 68 19
	movl	$0, %eax
	jmp	.L11
.L22:
	.loc 1 71 71
	movq	_ZL10STRING_ARR(%rip), %rcx
	.loc 1 71 62
	movq	-40(%rbp), %rax
	addq	$24, %rax
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
	je	.L29
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L29:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 1 71 71
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 71 22
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L30
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L30:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 72 20
	movl	$0, %eax
	jmp	.L11
.L27:
	.loc 1 75 22
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 77 34
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L31
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L31:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 77 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 78 33
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L32
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L32:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 78 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 80 22
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 82 20
	movl	$0, %eax
	jmp	.L11
.L16:
	.loc 1 85 21
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 87 34
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L33
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L33:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 87 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 88 33
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L34
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L34:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 88 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 90 22
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 92 20
	movl	$0, %eax
	jmp	.L11
.L18:
.LBB4:
	.loc 1 96 22
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 99 24
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L35
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L35:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 100 71
	movq	_ZL10STRING_ARR(%rip), %rcx
	.loc 1 100 62
	movq	-16(%rbp), %rax
	addq	$24, %rax
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
	je	.L36
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L36:
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 1 100 71
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 100 25
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L37
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L37:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 103 37
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L38
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L38:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 103 29
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 106 36
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L39
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L39:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 106 29
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 108 25
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 110 29
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 110 21
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 111 21
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 113 20
	movl	$0, %eax
	jmp	.L11
.L19:
.LBE4:
.LBB5:
	.loc 1 118 22
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 121 24
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L41
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L41:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 122 71
	movq	_ZL10STRING_ARR(%rip), %rcx
	.loc 1 122 62
	movq	-8(%rbp), %rax
	addq	$24, %rax
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
	je	.L42
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L42:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 1 122 71
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 122 25
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L43
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L43:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 125 37
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L44
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L44:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 125 29
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 128 36
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L45
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L45:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 128 29
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 130 25
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 132 29
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L46
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L46:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 132 21
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 133 21
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 135 20
	movl	$0, %eax
	jmp	.L11
.L24:
.LBE5:
	.loc 1 140 67
	movq	-40(%rbp), %rax
	addq	$24, %rax
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
	je	.L47
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L47:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 140 22
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	STD_FUNCTION_RET_TYPE(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L48
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L48:
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	STD_FUNCTION_RET_TYPE(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 148 21
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 150 20
	movl	$0, %eax
	jmp	.L11
.L26:
	.loc 1 154 34
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL14PutInstructionPK5Token
	.loc 1 154 40
	jmp	.L11
.L17:
	.loc 1 157 37
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL17PutNativeFunctionPK5Token
	.loc 1 157 43
	jmp	.L11
.L25:
	.loc 1 160 21
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 163 33
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L49
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L49:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 163 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 166 33
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L50
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L50:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 166 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 168 21
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 170 20
	movl	$0, %eax
	jmp	.L11
.L23:
	.loc 1 173 31
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL11PutOperatorPK5Token
	.loc 1 173 37
	jmp	.L11
.L14:
.LBB6:
	.loc 1 177 21
	leaq	.LC49(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 180 24
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L51
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L51:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 182 26
	movq	-32(%rbp), %rax
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
	je	.L52
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L52:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 182 17
	cmpl	$7, %eax
	je	.L53
	.loc 1 184 29
	leaq	.LC50(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 184 57
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 184 119
	movl	$184, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 185 28
	movl	$-1, %eax
	jmp	.L11
.L53:
	.loc 1 188 25
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 191 24
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L54
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L54:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 193 25
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 195 21
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 197 20
	movl	$0, %eax
	jmp	.L11
.L21:
.LBE6:
	.loc 1 202 70
	movq	_ZL10STRING_ARR(%rip), %rcx
	.loc 1 202 61
	movq	-40(%rbp), %rax
	addq	$24, %rax
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
	je	.L55
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L55:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 1 202 70
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 202 21
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L56
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L56:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 204 20
	movl	$0, %eax
	jmp	.L11
.L13:
	.loc 1 207 21
	leaq	.LC50(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 207 49
	leaq	.LC52(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 207 73
	movl	$207, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 209 23
	movq	_ZL10STRING_ARR(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 1 211 20
	movl	$-1, %eax
.L11:
.LBE3:
.LBE2:
	.loc 1 217 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2271:
	.size	_ZL8PutTokenPK5Token, .-_ZL8PutTokenPK5Token
	.section	.rodata
	.align 32
.LC53:
	.string	"int PutInstruction(const Token*)"
	.zero	63
	.align 32
.LC54:
	.string	"PutInstruction"
	.zero	49
	.align 32
.LC55:
	.string	"Ebat, not a instruction token"
	.zero	34
	.align 32
.LC56:
	.string	"{ IF "
	.zero	58
	.align 32
.LC57:
	.string	"{ ELSE "
	.zero	56
	.align 32
.LC58:
	.string	"{ RET "
	.zero	57
	.text
	.type	_ZL14PutInstructionPK5Token, @function
_ZL14PutInstructionPK5Token:
.LASANPC2272:
.LFB2272:
	.loc 1 220 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	.loc 1 221 10
	cmpq	$0, -24(%rbp)
	jne	.L58
	.loc 1 221 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 221 51 discriminator 1
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 221 109 discriminator 1
	leaq	.LC37(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 221 255 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 221 261 discriminator 1
	leaq	.LC53(%rip), %r8
	movl	$221, %ecx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 221 358 discriminator 1
	leaq	.LC53(%rip), %rax
	movq	%rax, %rcx
	movl	$221, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 221 468 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rbx
	.loc 1 221 474 discriminator 1
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 221 27 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 221 33 discriminator 1
	movl	$221, %ecx
	leaq	.LC54(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 221 92 discriminator 1
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 221 134 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 221 156 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 221 169 discriminator 1
	subq	$8, %rsp
	pushq	$221
	leaq	.LC54(%rip), %r9
	movl	$221, %r8d
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	addq	$16, %rsp
	.loc 1 221 259 discriminator 1
	jmp	.L59
.L58:
	.loc 1 223 16
	movq	-24(%rbp), %rax
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
	je	.L60
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L60:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 223 5
	cmpl	$2, %eax
	je	.L61
	.loc 1 225 17
	leaq	.LC54(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 225 45
	leaq	.LC55(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 225 88
	movl	$225, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 226 19
	movq	_ZL10STRING_ARR(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 1 227 16
	movl	$-1, %eax
	jmp	.L59
.L61:
	.loc 1 230 25
	movq	-24(%rbp), %rax
	addq	$24, %rax
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
	je	.L62
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L62:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 230 5
	cmpl	$3, %eax
	je	.L63
	cmpl	$3, %eax
	jg	.L64
	cmpl	$2, %eax
	je	.L65
	cmpl	$2, %eax
	jg	.L64
	testl	%eax, %eax
	je	.L65
	cmpl	$1, %eax
	je	.L66
	jmp	.L64
.L65:
	.loc 1 234 21
	leaq	.LC56(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 237 33
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L67
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L67:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 237 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 240 33
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L68
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L68:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 240 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 242 21
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 244 20
	movl	$0, %eax
	jmp	.L59
.L66:
	.loc 1 247 21
	leaq	.LC57(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 250 34
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L69
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L69:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 250 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 253 33
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L70
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L70:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 253 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 255 21
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 257 20
	movl	$0, %eax
	jmp	.L59
.L63:
	.loc 1 260 21
	leaq	.LC58(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 263 33
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L71
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L71:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 263 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 266 25
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 268 21
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 270 20
	movl	$0, %eax
	jmp	.L59
.L64:
	.loc 1 273 19
	leaq	.LC52(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 275 23
	movq	_ZL10STRING_ARR(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 1 277 20
	movl	$-1, %eax
.L59:
	.loc 1 283 5
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2272:
	.size	_ZL14PutInstructionPK5Token, .-_ZL14PutInstructionPK5Token
	.section	.rodata
	.align 32
.LC59:
	.string	"int PutNativeFunction(const Token*)"
	.zero	60
	.align 32
.LC60:
	.string	"PutNativeFunction"
	.zero	46
	.align 32
.LC61:
	.string	"Ebat, not a native function token"
	.zero	62
	.text
	.type	_ZL17PutNativeFunctionPK5Token, @function
_ZL17PutNativeFunctionPK5Token:
.LASANPC2273:
.LFB2273:
	.loc 1 286 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	.loc 1 287 10
	cmpq	$0, -24(%rbp)
	jne	.L73
	.loc 1 287 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 287 51 discriminator 1
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 287 109 discriminator 1
	leaq	.LC37(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 287 255 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 287 261 discriminator 1
	leaq	.LC59(%rip), %r8
	movl	$287, %ecx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 287 358 discriminator 1
	leaq	.LC59(%rip), %rax
	movq	%rax, %rcx
	movl	$287, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 287 468 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rbx
	.loc 1 287 474 discriminator 1
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 287 27 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 287 33 discriminator 1
	movl	$287, %ecx
	leaq	.LC60(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 287 92 discriminator 1
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 287 134 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 1 287 156 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 287 169 discriminator 1
	subq	$8, %rsp
	pushq	$287
	leaq	.LC60(%rip), %r9
	movl	$287, %r8d
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	addq	$16, %rsp
	.loc 1 287 259 discriminator 1
	jmp	.L74
.L73:
	.loc 1 289 16
	movq	-24(%rbp), %rax
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
	je	.L75
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L75:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 289 5
	cmpl	$11, %eax
	je	.L76
	.loc 1 291 17
	leaq	.LC60(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 291 45
	leaq	.LC61(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 291 92
	movl	$291, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 292 19
	movq	_ZL10STRING_ARR(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 1 293 16
	movl	$-1, %eax
	jmp	.L74
.L76:
	.loc 1 296 25
	movq	-24(%rbp), %rax
	addq	$24, %rax
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
	je	.L77
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L77:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 296 5
	cmpl	$1, %eax
	jg	.L78
	testl	%eax, %eax
	jns	.L79
	jmp	.L80
.L78:
	subl	$2, %eax
	cmpl	$2, %eax
	ja	.L80
	.loc 1 302 65
	movq	-24(%rbp), %rax
	addq	$24, %rax
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
	je	.L81
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L81:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 302 21
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	NATIVE_FUNCTIONS_STD(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L82
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L82:
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	NATIVE_FUNCTIONS_STD(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 305 34
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L83
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L83:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 305 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 306 33
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L84
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L84:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 306 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 311 21
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 313 20
	movl	$0, %eax
	jmp	.L74
.L79:
	.loc 1 317 65
	movq	-24(%rbp), %rax
	addq	$24, %rax
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
	je	.L85
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L85:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 317 21
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	NATIVE_FUNCTIONS_STD(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L86
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L86:
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	NATIVE_FUNCTIONS_STD(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 320 25
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 322 34
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L87
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L87:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 322 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 323 33
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L88
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L88:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 323 25
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 325 25
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 327 21
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 329 21
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 331 20
	movl	$0, %eax
	jmp	.L74
.L80:
	.loc 1 334 21
	leaq	.LC60(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 334 49
	leaq	.LC52(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 334 73
	movl	$334, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 336 23
	movq	_ZL10STRING_ARR(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 1 338 20
	movl	$-1, %eax
.L74:
	.loc 1 344 5
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2273:
	.size	_ZL17PutNativeFunctionPK5Token, .-_ZL17PutNativeFunctionPK5Token
	.section	.rodata
	.align 32
.LC62:
	.string	"int PutOperator(const Token*)"
	.zero	34
	.align 32
.LC63:
	.string	"PutOperator"
	.zero	52
	.align 32
.LC64:
	.string	"Ebat, not a operator token"
	.zero	37
	.text
	.type	_ZL11PutOperatorPK5Token, @function
_ZL11PutOperatorPK5Token:
.LASANPC2274:
.LFB2274:
	.loc 1 347 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	.loc 1 348 10
	cmpq	$0, -24(%rbp)
	jne	.L90
	.loc 1 348 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 348 51 discriminator 1
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 348 109 discriminator 1
	leaq	.LC37(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 348 255 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 348 261 discriminator 1
	leaq	.LC62(%rip), %r8
	movl	$348, %ecx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 348 358 discriminator 1
	leaq	.LC62(%rip), %rax
	movq	%rax, %rcx
	movl	$348, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 348 468 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rbx
	.loc 1 348 474 discriminator 1
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 348 27 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 348 33 discriminator 1
	movl	$348, %ecx
	leaq	.LC63(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 348 92 discriminator 1
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 348 115 discriminator 1
	movl	$-2, %eax
	jmp	.L91
.L90:
	.loc 1 350 16
	movq	-24(%rbp), %rax
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
	call	__asan_report_load4@PLT
.L92:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 350 5
	cmpl	$5, %eax
	je	.L93
	.loc 1 352 17
	leaq	.LC63(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 352 45
	leaq	.LC64(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 352 85
	movl	$352, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 353 19
	movq	_ZL10STRING_ARR(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 1 354 16
	movl	$-1, %eax
	jmp	.L91
.L93:
	.loc 1 357 25
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%cl
	testb	%al, %al
	setle	%al
	andl	%ecx, %eax
	testb	%al, %al
	je	.L94
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L94:
	movq	-24(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %eax
	.loc 1 357 5
	cmpl	$62, %eax
	seta	%dl
	testb	%dl, %dl
	jne	.L95
	movabsq	$5764796639034212368, %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L95
	.loc 1 367 58
	movq	-24(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 1 367 17
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_ZL17MathOperatorToStdi
	movq	%rax, %rsi
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 369 30
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L96
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L96:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 369 21
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 370 29
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L97
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L97:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 370 21
	movq	%rax, %rdi
	call	_ZL8PutTokenPK5Token
	.loc 1 372 17
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8stdprintPKcz
	.loc 1 374 16
	movl	$0, %eax
	jmp	.L91
.L95:
	.loc 1 377 15
	leaq	.LC52(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 379 19
	movq	_ZL10STRING_ARR(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 1 381 16
	movl	$-1, %eax
.L91:
	.loc 1 387 5
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2274:
	.size	_ZL11PutOperatorPK5Token, .-_ZL11PutOperatorPK5Token
	.section	.rodata
	.align 32
.LC65:
	.string	"ADD"
	.zero	60
	.align 32
.LC66:
	.string	"SUB"
	.zero	60
	.align 32
.LC67:
	.string	"DIV"
	.zero	60
	.align 32
.LC68:
	.string	"MUL"
	.zero	60
	.align 32
.LC69:
	.string	"IS_GT"
	.zero	58
	.align 32
.LC70:
	.string	"IS_BT"
	.zero	58
	.align 32
.LC71:
	.string	"NOT SUPPORTED MATH OPERATOR"
	.zero	36
	.text
	.type	_ZL17MathOperatorToStdi, @function
_ZL17MathOperatorToStdi:
.LASANPC2275:
.LFB2275:
	.loc 1 390 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 391 5
	cmpl	$4, -4(%rbp)
	je	.L99
	cmpl	$4, -4(%rbp)
	jl	.L100
	cmpl	$62, -4(%rbp)
	jg	.L100
	cmpl	$42, -4(%rbp)
	jl	.L100
	movl	-4(%rbp), %eax
	subl	$42, %eax
	cmpl	$20, %eax
	ja	.L100
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L102(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L102(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L102:
	.long	.L107-.L102
	.long	.L106-.L102
	.long	.L100-.L102
	.long	.L105-.L102
	.long	.L100-.L102
	.long	.L104-.L102
	.long	.L100-.L102
	.long	.L100-.L102
	.long	.L100-.L102
	.long	.L100-.L102
	.long	.L100-.L102
	.long	.L100-.L102
	.long	.L100-.L102
	.long	.L100-.L102
	.long	.L100-.L102
	.long	.L100-.L102
	.long	.L100-.L102
	.long	.L100-.L102
	.long	.L103-.L102
	.long	.L100-.L102
	.long	.L101-.L102
	.text
.L106:
	.loc 1 393 26
	leaq	.LC65(%rip), %rax
	jmp	.L108
.L105:
	.loc 1 394 26
	leaq	.LC66(%rip), %rax
	jmp	.L108
.L104:
	.loc 1 395 26
	leaq	.LC67(%rip), %rax
	jmp	.L108
.L107:
	.loc 1 396 26
	leaq	.LC68(%rip), %rax
	jmp	.L108
.L99:
	.loc 1 397 26
	leaq	.LC20(%rip), %rax
	jmp	.L108
.L101:
	.loc 1 399 29
	leaq	.LC69(%rip), %rax
	jmp	.L108
.L103:
	.loc 1 400 27
	leaq	.LC70(%rip), %rax
	jmp	.L108
.L100:
	.loc 1 402 25
	leaq	.LC71(%rip), %rax
.L108:
	.loc 1 408 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2275:
	.size	_ZL17MathOperatorToStdi, .-_ZL17MathOperatorToStdi
	.globl	__asan_stack_malloc_1
	.section	.rodata
.LC72:
	.string	"1 32 24 3 ptr"
	.align 32
.LC73:
	.string	"format"
	.zero	57
	.align 32
.LC74:
	.string	"void stdprint(const char*, ...)"
	.zero	32
	.align 32
.LC75:
	.string	"stdprint"
	.zero	55
	.text
	.type	_ZL8stdprintPKcz, @function
_ZL8stdprintPKcz:
.LASANPC2276:
.LFB2276:
	.loc 1 411 5
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
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testb	%al, %al
	je	.L113
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.L113:
	leaq	-304(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L109
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L109
	movq	%rax, %rbx
.L109:
	leaq	96(%rbx), %rax
	movq	$1102416563, (%rbx)
	leaq	.LC72(%rip), %rdx
	movq	%rdx, 8(%rbx)
	leaq	.LASANPC2276(%rip), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 412 10
	cmpq	$0, -312(%rbp)
	jne	.L114
	.loc 1 412 46 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 412 52 discriminator 1
	leaq	.LC73(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 412 111 discriminator 1
	leaq	.LC73(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 412 258 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 412 264 discriminator 1
	leaq	.LC74(%rip), %r8
	movl	$412, %ecx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 412 361 discriminator 1
	leaq	.LC74(%rip), %rax
	movq	%rax, %rcx
	movl	$412, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 412 471 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 1 412 477 discriminator 1
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 412 27 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 412 33 discriminator 1
	movl	$412, %ecx
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 412 92 discriminator 1
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 412 108 discriminator 1
	jmp	.L112
.L114:
	.loc 1 414 13
	leaq	-64(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%sil
	testb	%cl, %cl
	setle	%cl
	andl	%ecx, %esi
	movl	%esi, %edi
	movl	$24, %ecx
	subq	$1, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	%rsi, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	setne	%r8b
	andl	$7, %esi
	cmpb	%cl, %sil
	setge	%cl
	andl	%r8d, %ecx
	orl	%edi, %ecx
	testb	%cl, %cl
	je	.L116
	movl	$24, %esi
	movq	%rdx, %rdi
	call	__asan_report_store_n@PLT
.L116:
	movq	$0, -64(%rax)
	movq	$0, -56(%rax)
	movq	$0, -48(%rax)
	.loc 1 415 22
	movl	$8, -64(%rax)
	movl	$48, -60(%rax)
	leaq	16(%rbp), %rdi
	movq	%rdi, -56(%rax)
	leaq	-208(%rbp), %rdx
	movq	%rdx, -48(%rax)
	.loc 1 417 13
	movq	_ZL8STD_FILE(%rip), %rcx
	leaq	-64(%rax), %rdx
	movq	-312(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	vfprintf@PLT
	.loc 1 421 5
	nop
.L112:
	.loc 1 411 5
	cmpq	%rbx, %r14
	je	.L110
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L111
.L110:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L111:
	.loc 1 422 5
	addq	$288, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2276:
	.size	_ZL8stdprintPKcz, .-_ZL8stdprintPKcz
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LASANPC2943:
.LFB2943:
	.loc 1 422 5
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
	.loc 1 422 5
	cmpl	$1, -4(%rbp)
	jne	.L121
	.loc 1 422 5 is_stmt 0 discriminator 1
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	__asan_before_dynamic_init@PLT
	cmpl	$65535, -8(%rbp)
	jne	.L120
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
.L120:
	.loc 2 74 25 is_stmt 0 discriminator 1
	call	__asan_after_dynamic_init@PLT
.L121:
	.loc 1 422 5 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2943:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_STD_FUNCTION_RET_TYPE, @function
_GLOBAL__sub_I_STD_FUNCTION_RET_TYPE:
.LASANPC2944:
.LFB2944:
	.loc 1 422 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 422 5
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2944:
	.size	_GLOBAL__sub_I_STD_FUNCTION_RET_TYPE, .-_GLOBAL__sub_I_STD_FUNCTION_RET_TYPE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_STD_FUNCTION_RET_TYPE
	.globl	__odr_asan.NATIVE_FUNCTIONS_STD
	.bss
	.type	__odr_asan.NATIVE_FUNCTIONS_STD, @object
	.size	__odr_asan.NATIVE_FUNCTIONS_STD, 1
__odr_asan.NATIVE_FUNCTIONS_STD:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC25
	.long	17
	.long	13
	.globl	__odr_asan.STD_FUNCTION_RET_TYPE
	.bss
	.type	__odr_asan.STD_FUNCTION_RET_TYPE, @object
	.size	__odr_asan.STD_FUNCTION_RET_TYPE, 1
__odr_asan.STD_FUNCTION_RET_TYPE:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC25
	.long	16
	.long	13
	.align 16
	.type	.LASANLOC3, @object
	.size	.LASANLOC3, 16
.LASANLOC3:
	.quad	.LC25
	.long	14
	.long	21
	.align 16
	.type	.LASANLOC4, @object
	.size	.LASANLOC4, 16
.LASANLOC4:
	.quad	.LC25
	.long	13
	.long	14
	.section	.rodata
	.align 8
.LC76:
	.string	"../ATC/RandomStuff/CommonEnums.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC5, @object
	.size	.LASANLOC5, 16
.LASANLOC5:
	.quad	.LC76
	.long	3
	.long	11
	.section	.rodata
.LC77:
	.string	"../ATC/Logger/LogConfig.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC6, @object
	.size	.LASANLOC6, 16
.LASANLOC6:
	.quad	.LC77
	.long	3
	.long	12
	.section	.rodata
.LC78:
	.string	"/usr/include/c++/11/iostream"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC7, @object
	.size	.LASANLOC7, 16
.LASANLOC7:
	.quad	.LC78
	.long	74
	.long	25
	.section	.rodata
.LC79:
	.string	"../Common/Grammar.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC8, @object
	.size	.LASANLOC8, 16
.LASANLOC8:
	.quad	.LC79
	.long	80
	.long	11
	.align 16
	.type	.LASANLOC9, @object
	.size	.LASANLOC9, 16
.LASANLOC9:
	.quad	.LC79
	.long	79
	.long	11
	.align 16
	.type	.LASANLOC10, @object
	.size	.LASANLOC10, 16
.LASANLOC10:
	.quad	.LC79
	.long	77
	.long	19
	.align 16
	.type	.LASANLOC11, @object
	.size	.LASANLOC11, 16
.LASANLOC11:
	.quad	.LC79
	.long	75
	.long	12
	.align 16
	.type	.LASANLOC12, @object
	.size	.LASANLOC12, 16
.LASANLOC12:
	.quad	.LC79
	.long	60
	.long	12
	.align 16
	.type	.LASANLOC13, @object
	.size	.LASANLOC13, 16
.LASANLOC13:
	.quad	.LC79
	.long	58
	.long	19
	.align 16
	.type	.LASANLOC14, @object
	.size	.LASANLOC14, 16
.LASANLOC14:
	.quad	.LC79
	.long	54
	.long	19
	.align 16
	.type	.LASANLOC15, @object
	.size	.LASANLOC15, 16
.LASANLOC15:
	.quad	.LC79
	.long	48
	.long	11
	.align 16
	.type	.LASANLOC16, @object
	.size	.LASANLOC16, 16
.LASANLOC16:
	.quad	.LC79
	.long	40
	.long	28
	.align 16
	.type	.LASANLOC17, @object
	.size	.LASANLOC17, 16
.LASANLOC17:
	.quad	.LC79
	.long	15
	.long	19
	.section	.rodata
	.align 8
.LC80:
	.string	"../Common/Structures/Tabels/Tabels.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC18, @object
	.size	.LASANLOC18, 16
.LASANLOC18:
	.quad	.LC80
	.long	8
	.long	11
	.align 16
	.type	.LASANLOC19, @object
	.size	.LASANLOC19, 16
.LASANLOC19:
	.quad	.LC80
	.long	7
	.long	11
	.section	.rodata
.LC81:
	.string	"NATIVE_FUNCTIONS_STD"
.LC82:
	.string	"STD_FUNCTION_RET_TYPE"
.LC83:
	.string	"STRING_ARR"
.LC84:
	.string	"STD_FILE"
.LC85:
	.string	"CRINGE"
.LC86:
	.string	"STD_LOG_NAME"
.LC87:
	.string	"__ioinit"
.LC88:
	.string	"MAX_WORD_LENGTH"
.LC89:
	.string	"MAX_FUNCTION_NAME_LENGTH"
.LC90:
	.string	"MAIN_NAME"
.LC91:
	.string	"COMMENT"
.LC92:
	.string	"OPERATORS"
.LC93:
	.string	"FUNCTION_RET_TYPES"
.LC94:
	.string	"INITIALIZATORS"
	.align 8
.LC95:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS_STRUCT"
.LC96:
	.string	"NATIVE_FUNCTIONS"
.LC97:
	.string	"INSTRUCTIONS"
.LC98:
	.string	"NOT_A_LABEL"
.LC99:
	.string	"NOT_DECLARED"
.LC100:
	.string	"*.LC43"
.LC101:
	.string	"*.LC27"
.LC102:
	.string	"*.LC19"
.LC103:
	.string	"*.LC24"
.LC104:
	.string	"*.LC52"
.LC105:
	.string	"*.LC17"
.LC106:
	.string	"*.LC48"
.LC107:
	.string	"*.LC37"
.LC108:
	.string	"*.LC54"
.LC109:
	.string	"*.LC64"
.LC110:
	.string	"*.LC28"
.LC111:
	.string	"*.LC39"
.LC112:
	.string	"*.LC69"
.LC113:
	.string	"*.LC22"
.LC114:
	.string	"*.LC56"
.LC115:
	.string	"*.LC36"
.LC116:
	.string	"*.LC63"
.LC117:
	.string	"*.LC23"
.LC118:
	.string	"*.LC5"
.LC119:
	.string	"*.LC41"
.LC120:
	.string	"*.LC42"
.LC121:
	.string	"*.LC2"
.LC122:
	.string	"*.LC49"
.LC123:
	.string	"*.LC13"
.LC124:
	.string	"*.LC71"
.LC125:
	.string	"*.LC25"
.LC126:
	.string	"*.LC73"
.LC127:
	.string	"*.LC45"
.LC128:
	.string	"*.LC30"
.LC129:
	.string	"*.LC75"
.LC130:
	.string	"*.LC29"
.LC131:
	.string	"*.LC15"
.LC132:
	.string	"*.LC47"
.LC133:
	.string	"*.LC4"
.LC134:
	.string	"*.LC50"
.LC135:
	.string	"*.LC65"
.LC136:
	.string	"*.LC46"
.LC137:
	.string	"*.LC40"
.LC138:
	.string	"*.LC0"
.LC139:
	.string	"*.LC10"
.LC140:
	.string	"*.LC38"
.LC141:
	.string	"*.LC55"
.LC142:
	.string	"*.LC34"
.LC143:
	.string	"*.LC59"
.LC144:
	.string	"*.LC67"
.LC145:
	.string	"*.LC8"
.LC146:
	.string	"*.LC6"
.LC147:
	.string	"*.LC70"
.LC148:
	.string	"*.LC9"
.LC149:
	.string	"*.LC62"
.LC150:
	.string	"*.LC44"
.LC151:
	.string	"*.LC53"
.LC152:
	.string	"*.LC58"
.LC153:
	.string	"*.LC51"
.LC154:
	.string	"*.LC32"
.LC155:
	.string	"*.LC3"
.LC156:
	.string	"*.LC1"
.LC157:
	.string	"*.LC66"
.LC158:
	.string	"*.LC20"
.LC159:
	.string	"*.LC16"
.LC160:
	.string	"*.LC68"
.LC161:
	.string	"*.LC35"
.LC162:
	.string	"*.LC60"
.LC163:
	.string	"*.LC33"
.LC164:
	.string	"*.LC11"
.LC165:
	.string	"*.LC31"
.LC166:
	.string	"*.LC7"
.LC167:
	.string	"*.LC21"
.LC168:
	.string	"*.LC61"
.LC169:
	.string	"*.LC14"
.LC170:
	.string	"*.LC12"
.LC171:
	.string	"*.LC26"
.LC172:
	.string	"*.LC74"
.LC173:
	.string	"*.LC18"
.LC174:
	.string	"*.LC57"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 6016
.LASAN0:
	.quad	NATIVE_FUNCTIONS_STD
	.quad	40
	.quad	96
	.quad	.LC81
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC1
	.quad	__odr_asan.NATIVE_FUNCTIONS_STD
	.quad	STD_FUNCTION_RET_TYPE
	.quad	16
	.quad	64
	.quad	.LC82
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC2
	.quad	__odr_asan.STD_FUNCTION_RET_TYPE
	.quad	_ZL10STRING_ARR
	.quad	8
	.quad	64
	.quad	.LC83
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC3
	.quad	0
	.quad	_ZL8STD_FILE
	.quad	8
	.quad	64
	.quad	.LC84
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC4
	.quad	0
	.quad	_ZL6CRINGE
	.quad	4
	.quad	64
	.quad	.LC85
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC5
	.quad	0
	.quad	_ZL12STD_LOG_NAME
	.quad	18
	.quad	64
	.quad	.LC86
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC6
	.quad	0
	.quad	_ZStL8__ioinit
	.quad	1
	.quad	64
	.quad	.LC87
	.quad	.LC25
	.quad	1
	.quad	.LASANLOC7
	.quad	0
	.quad	_ZL15MAX_WORD_LENGTH
	.quad	4
	.quad	64
	.quad	.LC88
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC8
	.quad	0
	.quad	_ZL24MAX_FUNCTION_NAME_LENGTH
	.quad	4
	.quad	64
	.quad	.LC89
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC9
	.quad	0
	.quad	_ZL9MAIN_NAME
	.quad	8
	.quad	64
	.quad	.LC90
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC10
	.quad	0
	.quad	_ZL7COMMENT
	.quad	1
	.quad	64
	.quad	.LC91
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC11
	.quad	0
	.quad	_ZL9OPERATORS
	.quad	9
	.quad	64
	.quad	.LC92
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC12
	.quad	0
	.quad	_ZL18FUNCTION_RET_TYPES
	.quad	16
	.quad	64
	.quad	.LC93
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC13
	.quad	0
	.quad	_ZL14INITIALIZATORS
	.quad	16
	.quad	64
	.quad	.LC94
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC14
	.quad	0
	.quad	_ZL33NUMBER_OF_NATIVE_FUNCTIONS_STRUCT
	.quad	4
	.quad	64
	.quad	.LC95
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC15
	.quad	0
	.quad	_ZL16NATIVE_FUNCTIONS
	.quad	80
	.quad	128
	.quad	.LC96
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC16
	.quad	0
	.quad	_ZL12INSTRUCTIONS
	.quad	32
	.quad	64
	.quad	.LC97
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC17
	.quad	0
	.quad	_ZL11NOT_A_LABEL
	.quad	4
	.quad	64
	.quad	.LC98
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC18
	.quad	0
	.quad	_ZL12NOT_DECLARED
	.quad	4
	.quad	64
	.quad	.LC99
	.quad	.LC25
	.quad	0
	.quad	.LASANLOC19
	.quad	0
	.quad	.LC43
	.quad	9
	.quad	64
	.quad	.LC100
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC27
	.quad	36
	.quad	96
	.quad	.LC101
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC19
	.quad	4
	.quad	64
	.quad	.LC102
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC24
	.quad	52
	.quad	96
	.quad	.LC103
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC52
	.quad	11
	.quad	64
	.quad	.LC104
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC17
	.quad	3
	.quad	64
	.quad	.LC105
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC48
	.quad	7
	.quad	64
	.quad	.LC106
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC37
	.quad	6
	.quad	64
	.quad	.LC107
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC54
	.quad	15
	.quad	64
	.quad	.LC108
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC64
	.quad	27
	.quad	64
	.quad	.LC109
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC28
	.quad	19
	.quad	64
	.quad	.LC110
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC39
	.quad	9
	.quad	64
	.quad	.LC111
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC69
	.quad	6
	.quad	64
	.quad	.LC112
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC22
	.quad	37
	.quad	96
	.quad	.LC113
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC56
	.quad	6
	.quad	64
	.quad	.LC114
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC36
	.quad	10
	.quad	64
	.quad	.LC115
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC63
	.quad	12
	.quad	64
	.quad	.LC116
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC23
	.quad	64
	.quad	96
	.quad	.LC117
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	4
	.quad	64
	.quad	.LC118
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC41
	.quad	6
	.quad	64
	.quad	.LC119
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC42
	.quad	3
	.quad	64
	.quad	.LC120
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	6
	.quad	64
	.quad	.LC121
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC49
	.quad	6
	.quad	64
	.quad	.LC122
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	5
	.quad	64
	.quad	.LC123
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC71
	.quad	28
	.quad	64
	.quad	.LC124
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC25
	.quad	33
	.quad	96
	.quad	.LC125
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC73
	.quad	7
	.quad	64
	.quad	.LC126
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC45
	.quad	8
	.quad	64
	.quad	.LC127
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC30
	.quad	10
	.quad	64
	.quad	.LC128
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC75
	.quad	9
	.quad	64
	.quad	.LC129
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC29
	.quad	33
	.quad	96
	.quad	.LC130
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC15
	.quad	5
	.quad	64
	.quad	.LC131
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.quad	6
	.quad	64
	.quad	.LC132
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	5
	.quad	64
	.quad	.LC133
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC50
	.quad	9
	.quad	64
	.quad	.LC134
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC65
	.quad	4
	.quad	64
	.quad	.LC135
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC46
	.quad	8
	.quad	64
	.quad	.LC136
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC40
	.quad	10
	.quad	64
	.quad	.LC137
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	3
	.quad	64
	.quad	.LC138
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	4
	.quad	64
	.quad	.LC139
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC38
	.quad	9
	.quad	64
	.quad	.LC140
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC55
	.quad	30
	.quad	64
	.quad	.LC141
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC34
	.quad	6
	.quad	64
	.quad	.LC142
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC59
	.quad	36
	.quad	96
	.quad	.LC143
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC67
	.quad	4
	.quad	64
	.quad	.LC144
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	4
	.quad	64
	.quad	.LC145
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	4
	.quad	64
	.quad	.LC146
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC70
	.quad	6
	.quad	64
	.quad	.LC147
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	7
	.quad	64
	.quad	.LC148
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC62
	.quad	30
	.quad	64
	.quad	.LC149
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC44
	.quad	8
	.quad	64
	.quad	.LC150
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC53
	.quad	33
	.quad	96
	.quad	.LC151
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC58
	.quad	7
	.quad	64
	.quad	.LC152
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC51
	.quad	49
	.quad	96
	.quad	.LC153
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC32
	.quad	10
	.quad	64
	.quad	.LC154
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	7
	.quad	64
	.quad	.LC155
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	5
	.quad	64
	.quad	.LC156
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC66
	.quad	4
	.quad	64
	.quad	.LC157
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	4
	.quad	64
	.quad	.LC158
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC16
	.quad	4
	.quad	64
	.quad	.LC159
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC68
	.quad	4
	.quad	64
	.quad	.LC160
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC35
	.quad	23
	.quad	64
	.quad	.LC161
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC60
	.quad	18
	.quad	64
	.quad	.LC162
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC33
	.quad	2
	.quad	64
	.quad	.LC163
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	7
	.quad	64
	.quad	.LC164
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC31
	.quad	22
	.quad	64
	.quad	.LC165
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	4
	.quad	64
	.quad	.LC166
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC21
	.quad	8
	.quad	64
	.quad	.LC167
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC61
	.quad	34
	.quad	96
	.quad	.LC168
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC14
	.quad	5
	.quad	64
	.quad	.LC169
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	5
	.quad	64
	.quad	.LC170
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC26
	.quad	22
	.quad	64
	.quad	.LC171
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC74
	.quad	32
	.quad	64
	.quad	.LC172
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC18
	.quad	4
	.quad	64
	.quad	.LC173
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC57
	.quad	8
	.quad	64
	.quad	.LC174
	.quad	.LC25
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB2945:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$94, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2945:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB2946:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$94, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2946:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 3 "../Common/Structures/Tabels/NameTable.h"
	.file 4 "../Common/Structures/Token/Token.h"
	.file 5 "../Common/Structures/Tabels/Tabels.h"
	.file 6 "../Common/Structures/Program/Program.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stdarg.h"
	.file 9 "<built-in>"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "../Common/Grammar.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 20 "/usr/include/c++/11/cwchar"
	.file 21 "/usr/include/c++/11/type_traits"
	.file 22 "/usr/include/c++/11/bits/exception_ptr.h"
	.file 23 "/usr/include/x86_64-linux-gnu/c++/11/bits/c++config.h"
	.file 24 "/usr/include/c++/11/concepts"
	.file 25 "/usr/include/c++/11/bits/iterator_concepts.h"
	.file 26 "/usr/include/c++/11/bits/ranges_cmp.h"
	.file 27 "/usr/include/c++/11/compare"
	.file 28 "/usr/include/c++/11/debug/debug.h"
	.file 29 "/usr/include/c++/11/cstdint"
	.file 30 "/usr/include/c++/11/clocale"
	.file 31 "/usr/include/c++/11/cstdlib"
	.file 32 "/usr/include/c++/11/numbers"
	.file 33 "/usr/include/c++/11/cstdio"
	.file 34 "/usr/include/c++/11/bits/ios_base.h"
	.file 35 "/usr/include/c++/11/cwctype"
	.file 36 "/usr/include/wchar.h"
	.file 37 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 38 "/usr/include/c++/11/bits/predefined_ops.h"
	.file 39 "/usr/include/c++/11/bits/ptr_traits.h"
	.file 40 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 41 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 42 "/usr/include/stdint.h"
	.file 43 "/usr/include/locale.h"
	.file 44 "/usr/include/stdlib.h"
	.file 45 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
	.file 46 "/usr/include/wctype.h"
	.file 47 "../ATC/Logger/LogConfig.h"
	.file 48 "../ATC/RandomStuff/CommonEnums.h"
	.file 49 "../Common/Utils/LangUtils.h"
	.file 50 "../ATC/Logger/Logger.h"
	.file 51 "/usr/include/string.h"
	.file 52 "/usr/include/c++/11/bits/algorithmfwd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2b76
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x34
	.long	.LASF481
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF53
	.byte	0x7
	.byte	0xd1
	.byte	0x1b
	.long	0x41
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.long	.LASF5
	.uleb128 0x35
	.long	.LASF482
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x15
	.long	.LASF14
	.byte	0x20
	.byte	0x3
	.byte	0xd
	.byte	0x8
	.long	0xcb
	.uleb128 0x3
	.long	.LASF7
	.byte	0x3
	.byte	0xf
	.byte	0x9
	.long	0xcb
	.byte	0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
	.byte	0x10
	.byte	0x9
	.long	0xcb
	.byte	0x4
	.uleb128 0x3
	.long	.LASF9
	.byte	0x3
	.byte	0x12
	.byte	0x9
	.long	0xcb
	.byte	0x8
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x13
	.byte	0x9
	.long	0xcb
	.byte	0xc
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x15
	.byte	0x9
	.long	0xcb
	.byte	0x10
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x16
	.byte	0x9
	.long	0xcb
	.byte	0x14
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x12
	.long	0x152
	.byte	0x18
	.byte	0
	.uleb128 0x36
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.long	0xcb
	.uleb128 0x15
	.long	.LASF15
	.byte	0x38
	.byte	0x4
	.byte	0x16
	.byte	0x8
	.long	0x14d
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x18
	.byte	0xc
	.long	0x278
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x19
	.byte	0xc
	.long	0x278
	.byte	0x8
	.uleb128 0x3
	.long	.LASF7
	.byte	0x4
	.byte	0x1b
	.byte	0x9
	.long	0xcb
	.byte	0x10
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x1d
	.byte	0x10
	.long	0x1da
	.byte	0x18
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x1f
	.byte	0xc
	.long	0x196
	.byte	0x20
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x22
	.byte	0x11
	.long	0x27d
	.byte	0x28
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x24
	.byte	0x9
	.long	0xcb
	.byte	0x30
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x25
	.byte	0x9
	.long	0xcb
	.byte	0x34
	.byte	0
	.uleb128 0x8
	.long	0xd7
	.uleb128 0x6
	.long	0x14d
	.uleb128 0x8
	.long	0x152
	.uleb128 0x15
	.long	.LASF23
	.byte	0x18
	.byte	0x3
	.byte	0x1b
	.byte	0x8
	.long	0x191
	.uleb128 0x3
	.long	.LASF24
	.byte	0x3
	.byte	0x1d
	.byte	0xd
	.long	0x191
	.byte	0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x3
	.byte	0x1e
	.byte	0xc
	.long	0x35
	.byte	0x8
	.uleb128 0x3
	.long	.LASF26
	.byte	0x3
	.byte	0x20
	.byte	0xc
	.long	0x35
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x196
	.uleb128 0x6
	.long	0x62
	.uleb128 0x15
	.long	.LASF27
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.byte	0x8
	.long	0x1d0
	.uleb128 0x1b
	.string	"arr"
	.byte	0x3
	.byte	0x25
	.byte	0x11
	.long	0x1d0
	.byte	0
	.uleb128 0x3
	.long	.LASF28
	.byte	0x3
	.byte	0x27
	.byte	0x9
	.long	0xcb
	.byte	0x8
	.uleb128 0x3
	.long	.LASF29
	.byte	0x3
	.byte	0x28
	.byte	0x9
	.long	0xcb
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	0x1d5
	.uleb128 0x6
	.long	0x15c
	.uleb128 0x37
	.long	.LASF483
	.byte	0x8
	.byte	0x4
	.byte	0x7
	.byte	0x7
	.long	0x260
	.uleb128 0xf
	.long	.LASF30
	.byte	0x4
	.byte	0x9
	.byte	0x9
	.long	0xcb
	.uleb128 0xf
	.long	.LASF31
	.byte	0x4
	.byte	0xa
	.byte	0xa
	.long	0x260
	.uleb128 0xf
	.long	.LASF32
	.byte	0x4
	.byte	0xb
	.byte	0xc
	.long	0x26c
	.uleb128 0xf
	.long	.LASF33
	.byte	0x4
	.byte	0xc
	.byte	0x9
	.long	0xcb
	.uleb128 0xf
	.long	.LASF34
	.byte	0x4
	.byte	0xd
	.byte	0x9
	.long	0xcb
	.uleb128 0xf
	.long	.LASF35
	.byte	0x4
	.byte	0xe
	.byte	0x9
	.long	0xcb
	.uleb128 0xf
	.long	.LASF36
	.byte	0x4
	.byte	0x10
	.byte	0xb
	.long	0x273
	.uleb128 0xf
	.long	.LASF37
	.byte	0x4
	.byte	0x11
	.byte	0x9
	.long	0xcb
	.uleb128 0xf
	.long	.LASF38
	.byte	0x4
	.byte	0x12
	.byte	0x9
	.long	0xcb
	.uleb128 0xf
	.long	.LASF39
	.byte	0x4
	.byte	0x13
	.byte	0x9
	.long	0xcb
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF40
	.uleb128 0x8
	.long	0x260
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.long	.LASF41
	.uleb128 0x6
	.long	0x260
	.uleb128 0x6
	.long	0xd7
	.uleb128 0x6
	.long	0x267
	.uleb128 0x8
	.long	0x27d
	.uleb128 0xc
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12NOT_DECLARED
	.uleb128 0xc
	.long	.LASF43
	.byte	0x5
	.byte	0x8
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11NOT_A_LABEL
	.uleb128 0x15
	.long	.LASF44
	.byte	0x40
	.byte	0x6
	.byte	0x7
	.byte	0x8
	.long	0x329
	.uleb128 0x3
	.long	.LASF45
	.byte	0x6
	.byte	0x9
	.byte	0xc
	.long	0x278
	.byte	0
	.uleb128 0x3
	.long	.LASF46
	.byte	0x6
	.byte	0xa
	.byte	0x9
	.long	0xcb
	.byte	0x8
	.uleb128 0x3
	.long	.LASF47
	.byte	0x6
	.byte	0xc
	.byte	0xc
	.long	0x278
	.byte	0x10
	.uleb128 0x3
	.long	.LASF48
	.byte	0x6
	.byte	0xe
	.byte	0x12
	.long	0x32e
	.byte	0x18
	.uleb128 0x3
	.long	.LASF49
	.byte	0x6
	.byte	0xf
	.byte	0x9
	.long	0xcb
	.byte	0x20
	.uleb128 0x3
	.long	.LASF50
	.byte	0x6
	.byte	0x11
	.byte	0x11
	.long	0x27d
	.byte	0x28
	.uleb128 0x3
	.long	.LASF51
	.byte	0x6
	.byte	0x14
	.byte	0x13
	.long	0x333
	.byte	0x30
	.uleb128 0x3
	.long	.LASF52
	.byte	0x6
	.byte	0x15
	.byte	0x9
	.long	0xcb
	.byte	0x38
	.byte	0
	.uleb128 0x8
	.long	0x2b3
	.uleb128 0x6
	.long	0x27d
	.uleb128 0x6
	.long	0x19b
	.uleb128 0x4
	.long	.LASF54
	.byte	0x8
	.byte	0x28
	.byte	0x1b
	.long	0x344
	.uleb128 0x38
	.long	.LASF484
	.long	0x34d
	.uleb128 0xd
	.long	0x35d
	.long	0x35d
	.uleb128 0xe
	.long	0x41
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF485
	.byte	0x18
	.byte	0x9
	.byte	0
	.long	0x392
	.uleb128 0x1f
	.long	.LASF55
	.long	0x5b
	.byte	0
	.uleb128 0x1f
	.long	.LASF56
	.long	0x5b
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF57
	.long	0x392
	.byte	0x8
	.uleb128 0x1f
	.long	.LASF58
	.long	0x392
	.byte	0x10
	.byte	0
	.uleb128 0x3a
	.byte	0x8
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF59
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.long	.LASF60
	.uleb128 0x4
	.long	.LASF61
	.byte	0xa
	.byte	0x25
	.byte	0x15
	.long	0x3ae
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF62
	.uleb128 0x4
	.long	.LASF63
	.byte	0xa
	.byte	0x26
	.byte	0x17
	.long	0x394
	.uleb128 0x4
	.long	.LASF64
	.byte	0xa
	.byte	0x27
	.byte	0x1a
	.long	0x3cd
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.long	.LASF65
	.uleb128 0x4
	.long	.LASF66
	.byte	0xa
	.byte	0x28
	.byte	0x1c
	.long	0x39b
	.uleb128 0x4
	.long	.LASF67
	.byte	0xa
	.byte	0x29
	.byte	0x14
	.long	0xcb
	.uleb128 0x8
	.long	0x3e0
	.uleb128 0x4
	.long	.LASF68
	.byte	0xa
	.byte	0x2a
	.byte	0x16
	.long	0x5b
	.uleb128 0x4
	.long	.LASF69
	.byte	0xa
	.byte	0x2c
	.byte	0x19
	.long	0x2e
	.uleb128 0x4
	.long	.LASF70
	.byte	0xa
	.byte	0x2d
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF71
	.byte	0xa
	.byte	0x34
	.byte	0x12
	.long	0x3a2
	.uleb128 0x4
	.long	.LASF72
	.byte	0xa
	.byte	0x35
	.byte	0x13
	.long	0x3b5
	.uleb128 0x4
	.long	.LASF73
	.byte	0xa
	.byte	0x36
	.byte	0x13
	.long	0x3c1
	.uleb128 0x4
	.long	.LASF74
	.byte	0xa
	.byte	0x37
	.byte	0x14
	.long	0x3d4
	.uleb128 0x4
	.long	.LASF75
	.byte	0xa
	.byte	0x38
	.byte	0x13
	.long	0x3e0
	.uleb128 0x4
	.long	.LASF76
	.byte	0xa
	.byte	0x39
	.byte	0x14
	.long	0x3f1
	.uleb128 0x4
	.long	.LASF77
	.byte	0xa
	.byte	0x3a
	.byte	0x13
	.long	0x3fd
	.uleb128 0x4
	.long	.LASF78
	.byte	0xa
	.byte	0x3b
	.byte	0x14
	.long	0x409
	.uleb128 0x4
	.long	.LASF79
	.byte	0xa
	.byte	0x48
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF80
	.byte	0xa
	.byte	0x49
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF81
	.byte	0xa
	.byte	0x98
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF82
	.byte	0xa
	.byte	0x99
	.byte	0x12
	.long	0x2e
	.uleb128 0x20
	.byte	0x8
	.byte	0xb
	.byte	0xe
	.byte	0x1
	.long	.LASF368
	.long	0x4ef
	.uleb128 0x3b
	.byte	0x4
	.byte	0xb
	.byte	0x11
	.byte	0x3
	.long	0x4d4
	.uleb128 0xf
	.long	.LASF83
	.byte	0xb
	.byte	0x12
	.byte	0x12
	.long	0x5b
	.uleb128 0xf
	.long	.LASF84
	.byte	0xb
	.byte	0x13
	.byte	0xa
	.long	0x4ef
	.byte	0
	.uleb128 0x3
	.long	.LASF85
	.byte	0xb
	.byte	0xf
	.byte	0x7
	.long	0xcb
	.byte	0
	.uleb128 0x3
	.long	.LASF86
	.byte	0xb
	.byte	0x14
	.byte	0x5
	.long	0x4b2
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	0x260
	.long	0x4ff
	.uleb128 0xe
	.long	0x41
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF87
	.byte	0xb
	.byte	0x15
	.byte	0x3
	.long	0x4a5
	.uleb128 0x15
	.long	.LASF88
	.byte	0x10
	.byte	0xc
	.byte	0xa
	.byte	0x10
	.long	0x533
	.uleb128 0x3
	.long	.LASF89
	.byte	0xc
	.byte	0xc
	.byte	0xb
	.long	0x48d
	.byte	0
	.uleb128 0x3
	.long	.LASF90
	.byte	0xc
	.byte	0xd
	.byte	0xf
	.long	0x4ff
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF91
	.byte	0xc
	.byte	0xe
	.byte	0x3
	.long	0x50b
	.uleb128 0x4
	.long	.LASF92
	.byte	0xd
	.byte	0x5
	.byte	0x19
	.long	0x54b
	.uleb128 0x15
	.long	.LASF93
	.byte	0xd8
	.byte	0xe
	.byte	0x31
	.byte	0x8
	.long	0x6d2
	.uleb128 0x3
	.long	.LASF94
	.byte	0xe
	.byte	0x33
	.byte	0x7
	.long	0xcb
	.byte	0
	.uleb128 0x3
	.long	.LASF95
	.byte	0xe
	.byte	0x36
	.byte	0x9
	.long	0x273
	.byte	0x8
	.uleb128 0x3
	.long	.LASF96
	.byte	0xe
	.byte	0x37
	.byte	0x9
	.long	0x273
	.byte	0x10
	.uleb128 0x3
	.long	.LASF97
	.byte	0xe
	.byte	0x38
	.byte	0x9
	.long	0x273
	.byte	0x18
	.uleb128 0x3
	.long	.LASF98
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.long	0x273
	.byte	0x20
	.uleb128 0x3
	.long	.LASF99
	.byte	0xe
	.byte	0x3a
	.byte	0x9
	.long	0x273
	.byte	0x28
	.uleb128 0x3
	.long	.LASF100
	.byte	0xe
	.byte	0x3b
	.byte	0x9
	.long	0x273
	.byte	0x30
	.uleb128 0x3
	.long	.LASF101
	.byte	0xe
	.byte	0x3c
	.byte	0x9
	.long	0x273
	.byte	0x38
	.uleb128 0x3
	.long	.LASF102
	.byte	0xe
	.byte	0x3d
	.byte	0x9
	.long	0x273
	.byte	0x40
	.uleb128 0x3
	.long	.LASF103
	.byte	0xe
	.byte	0x40
	.byte	0x9
	.long	0x273
	.byte	0x48
	.uleb128 0x3
	.long	.LASF104
	.byte	0xe
	.byte	0x41
	.byte	0x9
	.long	0x273
	.byte	0x50
	.uleb128 0x3
	.long	.LASF105
	.byte	0xe
	.byte	0x42
	.byte	0x9
	.long	0x273
	.byte	0x58
	.uleb128 0x3
	.long	.LASF106
	.byte	0xe
	.byte	0x44
	.byte	0x16
	.long	0x6eb
	.byte	0x60
	.uleb128 0x3
	.long	.LASF107
	.byte	0xe
	.byte	0x46
	.byte	0x14
	.long	0x6f0
	.byte	0x68
	.uleb128 0x3
	.long	.LASF108
	.byte	0xe
	.byte	0x48
	.byte	0x7
	.long	0xcb
	.byte	0x70
	.uleb128 0x3
	.long	.LASF109
	.byte	0xe
	.byte	0x49
	.byte	0x7
	.long	0xcb
	.byte	0x74
	.uleb128 0x3
	.long	.LASF110
	.byte	0xe
	.byte	0x4a
	.byte	0xb
	.long	0x48d
	.byte	0x78
	.uleb128 0x3
	.long	.LASF111
	.byte	0xe
	.byte	0x4d
	.byte	0x12
	.long	0x39b
	.byte	0x80
	.uleb128 0x3
	.long	.LASF112
	.byte	0xe
	.byte	0x4e
	.byte	0xf
	.long	0x3ae
	.byte	0x82
	.uleb128 0x3
	.long	.LASF113
	.byte	0xe
	.byte	0x4f
	.byte	0x8
	.long	0x6f5
	.byte	0x83
	.uleb128 0x3
	.long	.LASF114
	.byte	0xe
	.byte	0x51
	.byte	0xf
	.long	0x705
	.byte	0x88
	.uleb128 0x3
	.long	.LASF115
	.byte	0xe
	.byte	0x59
	.byte	0xd
	.long	0x499
	.byte	0x90
	.uleb128 0x3
	.long	.LASF116
	.byte	0xe
	.byte	0x5b
	.byte	0x17
	.long	0x70f
	.byte	0x98
	.uleb128 0x3
	.long	.LASF117
	.byte	0xe
	.byte	0x5c
	.byte	0x19
	.long	0x719
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF118
	.byte	0xe
	.byte	0x5d
	.byte	0x14
	.long	0x6f0
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF119
	.byte	0xe
	.byte	0x5e
	.byte	0x9
	.long	0x392
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF120
	.byte	0xe
	.byte	0x5f
	.byte	0xa
	.long	0x35
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF121
	.byte	0xe
	.byte	0x60
	.byte	0x7
	.long	0xcb
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF122
	.byte	0xe
	.byte	0x62
	.byte	0x8
	.long	0x71e
	.byte	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF123
	.byte	0xf
	.byte	0x7
	.byte	0x19
	.long	0x54b
	.uleb128 0x3c
	.long	.LASF486
	.byte	0xe
	.byte	0x2b
	.byte	0xe
	.uleb128 0x22
	.long	.LASF124
	.uleb128 0x6
	.long	0x6e6
	.uleb128 0x6
	.long	0x54b
	.uleb128 0xd
	.long	0x260
	.long	0x705
	.uleb128 0xe
	.long	0x41
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x6de
	.uleb128 0x22
	.long	.LASF125
	.uleb128 0x6
	.long	0x70a
	.uleb128 0x22
	.long	.LASF126
	.uleb128 0x6
	.long	0x714
	.uleb128 0xd
	.long	0x260
	.long	0x72e
	.uleb128 0xe
	.long	0x41
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	.LASF127
	.byte	0x10
	.byte	0x34
	.byte	0x18
	.long	0x338
	.uleb128 0x4
	.long	.LASF128
	.byte	0x10
	.byte	0x54
	.byte	0x12
	.long	0x533
	.uleb128 0x8
	.long	0x73a
	.uleb128 0x6
	.long	0x6d2
	.uleb128 0xa
	.byte	0x20
	.byte	0x3
	.long	.LASF129
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.long	.LASF130
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.long	.LASF131
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x5
	.long	0xcb
	.byte	0x11
	.byte	0x3
	.long	0x7ef
	.uleb128 0x9
	.long	.LASF132
	.byte	0x1
	.uleb128 0x9
	.long	.LASF133
	.byte	0x2
	.uleb128 0x9
	.long	.LASF134
	.byte	0x3
	.uleb128 0x9
	.long	.LASF135
	.byte	0x4
	.uleb128 0x9
	.long	.LASF136
	.byte	0x5
	.uleb128 0x9
	.long	.LASF137
	.byte	0x6
	.uleb128 0x9
	.long	.LASF138
	.byte	0x7
	.uleb128 0x9
	.long	.LASF139
	.byte	0x8
	.uleb128 0x9
	.long	.LASF140
	.byte	0x9
	.uleb128 0x9
	.long	.LASF141
	.byte	0xa
	.uleb128 0x9
	.long	.LASF142
	.byte	0xb
	.uleb128 0x9
	.long	.LASF143
	.byte	0xc
	.uleb128 0x9
	.long	.LASF144
	.byte	0x3d
	.uleb128 0x9
	.long	.LASF145
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF146
	.byte	0x7b
	.uleb128 0x9
	.long	.LASF147
	.byte	0x7d
	.uleb128 0x9
	.long	.LASF148
	.byte	0x28
	.uleb128 0x9
	.long	.LASF149
	.byte	0x29
	.uleb128 0x9
	.long	.LASF150
	.byte	0x3b
	.uleb128 0x23
	.long	.LASF151
	.sleb128 -999
	.byte	0
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x7
	.long	0x5b
	.byte	0x11
	.byte	0xe
	.long	0x81d
	.uleb128 0x11
	.string	"IF"
	.byte	0
	.uleb128 0x9
	.long	.LASF154
	.byte	0x1
	.uleb128 0x9
	.long	.LASF155
	.byte	0x2
	.uleb128 0x9
	.long	.LASF156
	.byte	0x3
	.uleb128 0x9
	.long	.LASF157
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	0x282
	.long	0x82d
	.uleb128 0xe
	.long	0x41
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x81d
	.uleb128 0xc
	.long	.LASF158
	.byte	0x11
	.byte	0xf
	.byte	0x13
	.long	0x82d
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12INSTRUCTIONS
	.uleb128 0x15
	.long	.LASF159
	.byte	0x10
	.byte	0x11
	.byte	0x17
	.byte	0x8
	.long	0x87d
	.uleb128 0x1b
	.string	"str"
	.byte	0x11
	.byte	0x19
	.byte	0x11
	.long	0x27d
	.byte	0
	.uleb128 0x3
	.long	.LASF160
	.byte	0x11
	.byte	0x1a
	.byte	0x9
	.long	0xcb
	.byte	0x8
	.uleb128 0x3
	.long	.LASF161
	.byte	0x11
	.byte	0x1b
	.byte	0x9
	.long	0xcb
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x848
	.uleb128 0x1c
	.long	.LASF162
	.byte	0x7
	.long	0x5b
	.byte	0x11
	.byte	0x1e
	.long	0x8b7
	.uleb128 0x9
	.long	.LASF163
	.byte	0
	.uleb128 0x11
	.string	"FIN"
	.byte	0x1
	.uleb128 0x11
	.string	"SIN"
	.byte	0x2
	.uleb128 0x11
	.string	"COS"
	.byte	0x3
	.uleb128 0x11
	.string	"POW"
	.byte	0x4
	.uleb128 0x9
	.long	.LASF164
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0x87d
	.long	0x8c7
	.uleb128 0xe
	.long	0x41
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x8b7
	.uleb128 0xc
	.long	.LASF165
	.byte	0x11
	.byte	0x28
	.byte	0x1c
	.long	0x8c7
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16NATIVE_FUNCTIONS
	.uleb128 0xc
	.long	.LASF166
	.byte	0x11
	.byte	0x30
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL33NUMBER_OF_NATIVE_FUNCTIONS_STRUCT
	.uleb128 0xd
	.long	0x282
	.long	0x908
	.uleb128 0xe
	.long	0x41
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	0x8f8
	.uleb128 0xc
	.long	.LASF167
	.byte	0x11
	.byte	0x36
	.byte	0x13
	.long	0x908
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL14INITIALIZATORS
	.uleb128 0xc
	.long	.LASF168
	.byte	0x11
	.byte	0x3a
	.byte	0x13
	.long	0x908
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL18FUNCTION_RET_TYPES
	.uleb128 0xd
	.long	0x267
	.long	0x949
	.uleb128 0xe
	.long	0x41
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x939
	.uleb128 0xc
	.long	.LASF169
	.byte	0x11
	.byte	0x3c
	.byte	0xc
	.long	0x949
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL9OPERATORS
	.uleb128 0x1c
	.long	.LASF170
	.byte	0x7
	.long	0x5b
	.byte	0x11
	.byte	0x3d
	.long	0x9a4
	.uleb128 0x11
	.string	"ADD"
	.byte	0x2b
	.uleb128 0x11
	.string	"SUB"
	.byte	0x2d
	.uleb128 0x11
	.string	"DIV"
	.byte	0x2f
	.uleb128 0x11
	.string	"MUL"
	.byte	0x2a
	.uleb128 0x11
	.string	"OUT"
	.byte	0x3c
	.uleb128 0x11
	.string	"IN"
	.byte	0x3e
	.uleb128 0x9
	.long	.LASF171
	.byte	0x3e
	.uleb128 0x9
	.long	.LASF172
	.byte	0x3c
	.byte	0
	.uleb128 0xc
	.long	.LASF173
	.byte	0x11
	.byte	0x4b
	.byte	0xc
	.long	0x267
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL7COMMENT
	.uleb128 0xc
	.long	.LASF174
	.byte	0x11
	.byte	0x4d
	.byte	0x13
	.long	0x282
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL9MAIN_NAME
	.uleb128 0xc
	.long	.LASF175
	.byte	0x11
	.byte	0x4f
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL24MAX_FUNCTION_NAME_LENGTH
	.uleb128 0xc
	.long	.LASF176
	.byte	0x11
	.byte	0x50
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL15MAX_WORD_LENGTH
	.uleb128 0x4
	.long	.LASF177
	.byte	0x12
	.byte	0x14
	.byte	0x16
	.long	0x5b
	.uleb128 0x4
	.long	.LASF178
	.byte	0x13
	.byte	0x6
	.byte	0x15
	.long	0x4ff
	.uleb128 0x8
	.long	0xa08
	.uleb128 0x3d
	.string	"std"
	.byte	0x17
	.value	0x116
	.byte	0xb
	.long	0x12b2
	.uleb128 0x2
	.byte	0x14
	.byte	0x40
	.byte	0xb
	.long	0xa08
	.uleb128 0x2
	.byte	0x14
	.byte	0x8d
	.byte	0xb
	.long	0x9fc
	.uleb128 0x2
	.byte	0x14
	.byte	0x8f
	.byte	0xb
	.long	0x12b2
	.uleb128 0x2
	.byte	0x14
	.byte	0x90
	.byte	0xb
	.long	0x12c9
	.uleb128 0x2
	.byte	0x14
	.byte	0x91
	.byte	0xb
	.long	0x12e5
	.uleb128 0x2
	.byte	0x14
	.byte	0x92
	.byte	0xb
	.long	0x1317
	.uleb128 0x2
	.byte	0x14
	.byte	0x93
	.byte	0xb
	.long	0x1333
	.uleb128 0x2
	.byte	0x14
	.byte	0x94
	.byte	0xb
	.long	0x1354
	.uleb128 0x2
	.byte	0x14
	.byte	0x95
	.byte	0xb
	.long	0x1370
	.uleb128 0x2
	.byte	0x14
	.byte	0x96
	.byte	0xb
	.long	0x138d
	.uleb128 0x2
	.byte	0x14
	.byte	0x97
	.byte	0xb
	.long	0x13ae
	.uleb128 0x2
	.byte	0x14
	.byte	0x98
	.byte	0xb
	.long	0x13c5
	.uleb128 0x2
	.byte	0x14
	.byte	0x99
	.byte	0xb
	.long	0x13d2
	.uleb128 0x2
	.byte	0x14
	.byte	0x9a
	.byte	0xb
	.long	0x13f8
	.uleb128 0x2
	.byte	0x14
	.byte	0x9b
	.byte	0xb
	.long	0x141e
	.uleb128 0x2
	.byte	0x14
	.byte	0x9c
	.byte	0xb
	.long	0x143a
	.uleb128 0x2
	.byte	0x14
	.byte	0x9d
	.byte	0xb
	.long	0x1460
	.uleb128 0x2
	.byte	0x14
	.byte	0x9e
	.byte	0xb
	.long	0x147c
	.uleb128 0x2
	.byte	0x14
	.byte	0xa0
	.byte	0xb
	.long	0x1493
	.uleb128 0x2
	.byte	0x14
	.byte	0xa2
	.byte	0xb
	.long	0x14b5
	.uleb128 0x2
	.byte	0x14
	.byte	0xa3
	.byte	0xb
	.long	0x14d6
	.uleb128 0x2
	.byte	0x14
	.byte	0xa4
	.byte	0xb
	.long	0x14f2
	.uleb128 0x2
	.byte	0x14
	.byte	0xa6
	.byte	0xb
	.long	0x1518
	.uleb128 0x2
	.byte	0x14
	.byte	0xa9
	.byte	0xb
	.long	0x153d
	.uleb128 0x2
	.byte	0x14
	.byte	0xac
	.byte	0xb
	.long	0x1563
	.uleb128 0x2
	.byte	0x14
	.byte	0xae
	.byte	0xb
	.long	0x1588
	.uleb128 0x2
	.byte	0x14
	.byte	0xb0
	.byte	0xb
	.long	0x15a4
	.uleb128 0x2
	.byte	0x14
	.byte	0xb2
	.byte	0xb
	.long	0x15c4
	.uleb128 0x2
	.byte	0x14
	.byte	0xb3
	.byte	0xb
	.long	0x15e5
	.uleb128 0x2
	.byte	0x14
	.byte	0xb4
	.byte	0xb
	.long	0x1600
	.uleb128 0x2
	.byte	0x14
	.byte	0xb5
	.byte	0xb
	.long	0x161b
	.uleb128 0x2
	.byte	0x14
	.byte	0xb6
	.byte	0xb
	.long	0x1636
	.uleb128 0x2
	.byte	0x14
	.byte	0xb7
	.byte	0xb
	.long	0x1651
	.uleb128 0x2
	.byte	0x14
	.byte	0xb8
	.byte	0xb
	.long	0x166c
	.uleb128 0x2
	.byte	0x14
	.byte	0xb9
	.byte	0xb
	.long	0x1738
	.uleb128 0x2
	.byte	0x14
	.byte	0xba
	.byte	0xb
	.long	0x174e
	.uleb128 0x2
	.byte	0x14
	.byte	0xbb
	.byte	0xb
	.long	0x176e
	.uleb128 0x2
	.byte	0x14
	.byte	0xbc
	.byte	0xb
	.long	0x178e
	.uleb128 0x2
	.byte	0x14
	.byte	0xbd
	.byte	0xb
	.long	0x17ae
	.uleb128 0x2
	.byte	0x14
	.byte	0xbe
	.byte	0xb
	.long	0x17d9
	.uleb128 0x2
	.byte	0x14
	.byte	0xbf
	.byte	0xb
	.long	0x17f4
	.uleb128 0x2
	.byte	0x14
	.byte	0xc1
	.byte	0xb
	.long	0x1815
	.uleb128 0x2
	.byte	0x14
	.byte	0xc3
	.byte	0xb
	.long	0x1831
	.uleb128 0x2
	.byte	0x14
	.byte	0xc4
	.byte	0xb
	.long	0x1851
	.uleb128 0x2
	.byte	0x14
	.byte	0xc5
	.byte	0xb
	.long	0x1872
	.uleb128 0x2
	.byte	0x14
	.byte	0xc6
	.byte	0xb
	.long	0x1893
	.uleb128 0x2
	.byte	0x14
	.byte	0xc7
	.byte	0xb
	.long	0x18b3
	.uleb128 0x2
	.byte	0x14
	.byte	0xc8
	.byte	0xb
	.long	0x18ca
	.uleb128 0x2
	.byte	0x14
	.byte	0xc9
	.byte	0xb
	.long	0x18eb
	.uleb128 0x2
	.byte	0x14
	.byte	0xca
	.byte	0xb
	.long	0x190c
	.uleb128 0x2
	.byte	0x14
	.byte	0xcb
	.byte	0xb
	.long	0x192d
	.uleb128 0x2
	.byte	0x14
	.byte	0xcc
	.byte	0xb
	.long	0x194e
	.uleb128 0x2
	.byte	0x14
	.byte	0xcd
	.byte	0xb
	.long	0x1966
	.uleb128 0x2
	.byte	0x14
	.byte	0xce
	.byte	0xb
	.long	0x1982
	.uleb128 0x2
	.byte	0x14
	.byte	0xce
	.byte	0xb
	.long	0x19a0
	.uleb128 0x2
	.byte	0x14
	.byte	0xcf
	.byte	0xb
	.long	0x19be
	.uleb128 0x2
	.byte	0x14
	.byte	0xcf
	.byte	0xb
	.long	0x19dc
	.uleb128 0x2
	.byte	0x14
	.byte	0xd0
	.byte	0xb
	.long	0x19fa
	.uleb128 0x2
	.byte	0x14
	.byte	0xd0
	.byte	0xb
	.long	0x1a18
	.uleb128 0x2
	.byte	0x14
	.byte	0xd1
	.byte	0xb
	.long	0x1a36
	.uleb128 0x2
	.byte	0x14
	.byte	0xd1
	.byte	0xb
	.long	0x1a54
	.uleb128 0x2
	.byte	0x14
	.byte	0xd2
	.byte	0xb
	.long	0x1a72
	.uleb128 0x2
	.byte	0x14
	.byte	0xd2
	.byte	0xb
	.long	0x1a95
	.uleb128 0x10
	.value	0x10b
	.byte	0x16
	.long	0x1b39
	.uleb128 0x10
	.value	0x10c
	.byte	0x16
	.long	0x1b55
	.uleb128 0x10
	.value	0x10d
	.byte	0x16
	.long	0x1b76
	.uleb128 0x10
	.value	0x11b
	.byte	0xe
	.long	0x1815
	.uleb128 0x10
	.value	0x11e
	.byte	0xe
	.long	0x1518
	.uleb128 0x10
	.value	0x121
	.byte	0xe
	.long	0x1563
	.uleb128 0x10
	.value	0x124
	.byte	0xe
	.long	0x15a4
	.uleb128 0x10
	.value	0x128
	.byte	0xe
	.long	0x1b39
	.uleb128 0x10
	.value	0x129
	.byte	0xe
	.long	0x1b55
	.uleb128 0x10
	.value	0x12a
	.byte	0xe
	.long	0x1b76
	.uleb128 0x1d
	.long	.LASF179
	.byte	0x15
	.value	0xa86
	.byte	0xd
	.uleb128 0x1d
	.long	.LASF180
	.byte	0x15
	.value	0xadc
	.byte	0xd
	.uleb128 0x24
	.long	.LASF181
	.byte	0x16
	.byte	0x3f
	.byte	0xd
	.long	0xe4b
	.uleb128 0x3e
	.long	.LASF187
	.byte	0x8
	.byte	0x16
	.byte	0x5a
	.byte	0xb
	.long	0xe3d
	.uleb128 0x3
	.long	.LASF182
	.byte	0x16
	.byte	0x5c
	.byte	0xd
	.long	0x392
	.byte	0
	.uleb128 0x3f
	.long	.LASF187
	.byte	0x16
	.byte	0x5e
	.byte	0x10
	.long	.LASF189
	.long	0xcba
	.long	0xcc5
	.uleb128 0xb
	.long	0x1bba
	.uleb128 0x1
	.long	0x392
	.byte	0
	.uleb128 0x27
	.long	.LASF183
	.byte	0x60
	.long	.LASF185
	.long	0xcd7
	.long	0xcdd
	.uleb128 0xb
	.long	0x1bba
	.byte	0
	.uleb128 0x27
	.long	.LASF184
	.byte	0x61
	.long	.LASF186
	.long	0xcef
	.long	0xcf5
	.uleb128 0xb
	.long	0x1bba
	.byte	0
	.uleb128 0x40
	.long	.LASF188
	.byte	0x16
	.byte	0x63
	.byte	0xd
	.long	.LASF190
	.long	0x392
	.long	0xd0d
	.long	0xd13
	.uleb128 0xb
	.long	0x1bbf
	.byte	0
	.uleb128 0x18
	.long	.LASF187
	.byte	0x6b
	.long	.LASF191
	.long	0xd25
	.long	0xd2b
	.uleb128 0xb
	.long	0x1bba
	.byte	0
	.uleb128 0x18
	.long	.LASF187
	.byte	0x6d
	.long	.LASF192
	.long	0xd3d
	.long	0xd48
	.uleb128 0xb
	.long	0x1bba
	.uleb128 0x1
	.long	0x1bc4
	.byte	0
	.uleb128 0x18
	.long	.LASF187
	.byte	0x70
	.long	.LASF193
	.long	0xd5a
	.long	0xd65
	.uleb128 0xb
	.long	0x1bba
	.uleb128 0x1
	.long	0xe69
	.byte	0
	.uleb128 0x18
	.long	.LASF187
	.byte	0x74
	.long	.LASF194
	.long	0xd77
	.long	0xd82
	.uleb128 0xb
	.long	0x1bba
	.uleb128 0x1
	.long	0x1bc9
	.byte	0
	.uleb128 0x25
	.long	.LASF195
	.byte	0x16
	.byte	0x81
	.byte	0x7
	.long	.LASF196
	.long	0x1bcf
	.long	0xd9a
	.long	0xda5
	.uleb128 0xb
	.long	0x1bba
	.uleb128 0x1
	.long	0x1bc4
	.byte	0
	.uleb128 0x25
	.long	.LASF195
	.byte	0x16
	.byte	0x85
	.byte	0x7
	.long	.LASF197
	.long	0x1bcf
	.long	0xdbd
	.long	0xdc8
	.uleb128 0xb
	.long	0x1bba
	.uleb128 0x1
	.long	0x1bc9
	.byte	0
	.uleb128 0x18
	.long	.LASF198
	.byte	0x8c
	.long	.LASF199
	.long	0xdda
	.long	0xde5
	.uleb128 0xb
	.long	0x1bba
	.uleb128 0xb
	.long	0xcb
	.byte	0
	.uleb128 0x18
	.long	.LASF200
	.byte	0x8f
	.long	.LASF201
	.long	0xdf7
	.long	0xe02
	.uleb128 0xb
	.long	0x1bba
	.uleb128 0x1
	.long	0x1bcf
	.byte	0
	.uleb128 0x41
	.long	.LASF475
	.byte	0x16
	.byte	0x9b
	.byte	0x10
	.long	.LASF477
	.long	0x1b9e
	.byte	0x1
	.long	0xe1b
	.long	0xe21
	.uleb128 0xb
	.long	0x1bbf
	.byte	0
	.uleb128 0x42
	.long	.LASF202
	.byte	0x16
	.byte	0xb0
	.byte	0x7
	.long	.LASF203
	.long	0x1bd4
	.byte	0x1
	.long	0xe36
	.uleb128 0xb
	.long	0x1bbf
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xc8c
	.uleb128 0x2
	.byte	0x16
	.byte	0x54
	.byte	0x10
	.long	0xe53
	.byte	0
	.uleb128 0x2
	.byte	0x16
	.byte	0x44
	.byte	0x1a
	.long	0xc8c
	.uleb128 0x43
	.long	.LASF204
	.byte	0x16
	.byte	0x50
	.byte	0x8
	.long	.LASF205
	.long	0xe69
	.uleb128 0x1
	.long	0xc8c
	.byte	0
	.uleb128 0x28
	.long	.LASF206
	.byte	0x17
	.value	0x11c
	.byte	0x1d
	.long	0x56
	.uleb128 0x44
	.long	.LASF487
	.uleb128 0x8
	.long	0xe76
	.uleb128 0x24
	.long	.LASF207
	.byte	0x18
	.byte	0xa3
	.byte	0xd
	.long	0xebf
	.uleb128 0x16
	.long	.LASF208
	.byte	0x18
	.byte	0xa5
	.byte	0xf
	.uleb128 0x45
	.long	.LASF215
	.byte	0x18
	.byte	0xe1
	.byte	0x16
	.uleb128 0x16
	.long	.LASF209
	.byte	0x19
	.byte	0x50
	.byte	0xf
	.uleb128 0x1d
	.long	.LASF210
	.byte	0x19
	.value	0x31d
	.byte	0xd
	.uleb128 0x1d
	.long	.LASF211
	.byte	0x19
	.value	0x3a0
	.byte	0x15
	.uleb128 0x16
	.long	.LASF212
	.byte	0x1a
	.byte	0x40
	.byte	0xd
	.byte	0
	.uleb128 0x16
	.long	.LASF213
	.byte	0x1b
	.byte	0x31
	.byte	0xd
	.uleb128 0x16
	.long	.LASF212
	.byte	0x18
	.byte	0x36
	.byte	0xd
	.uleb128 0x1d
	.long	.LASF214
	.byte	0x1b
	.value	0x20e
	.byte	0xd
	.uleb128 0x29
	.long	.LASF216
	.byte	0x1b
	.value	0x357
	.byte	0x14
	.uleb128 0x16
	.long	.LASF217
	.byte	0x1c
	.byte	0x32
	.byte	0xd
	.uleb128 0x2
	.byte	0x1d
	.byte	0x2f
	.byte	0xb
	.long	0x1bf5
	.uleb128 0x2
	.byte	0x1d
	.byte	0x30
	.byte	0xb
	.long	0x1c01
	.uleb128 0x2
	.byte	0x1d
	.byte	0x31
	.byte	0xb
	.long	0x1c0d
	.uleb128 0x2
	.byte	0x1d
	.byte	0x32
	.byte	0xb
	.long	0x1c19
	.uleb128 0x2
	.byte	0x1d
	.byte	0x34
	.byte	0xb
	.long	0x1cb5
	.uleb128 0x2
	.byte	0x1d
	.byte	0x35
	.byte	0xb
	.long	0x1cc1
	.uleb128 0x2
	.byte	0x1d
	.byte	0x36
	.byte	0xb
	.long	0x1ccd
	.uleb128 0x2
	.byte	0x1d
	.byte	0x37
	.byte	0xb
	.long	0x1cd9
	.uleb128 0x2
	.byte	0x1d
	.byte	0x39
	.byte	0xb
	.long	0x1c55
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3a
	.byte	0xb
	.long	0x1c61
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3b
	.byte	0xb
	.long	0x1c6d
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3c
	.byte	0xb
	.long	0x1c79
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3e
	.byte	0xb
	.long	0x1d2d
	.uleb128 0x2
	.byte	0x1d
	.byte	0x3f
	.byte	0xb
	.long	0x1d15
	.uleb128 0x2
	.byte	0x1d
	.byte	0x41
	.byte	0xb
	.long	0x1c25
	.uleb128 0x2
	.byte	0x1d
	.byte	0x42
	.byte	0xb
	.long	0x1c31
	.uleb128 0x2
	.byte	0x1d
	.byte	0x43
	.byte	0xb
	.long	0x1c3d
	.uleb128 0x2
	.byte	0x1d
	.byte	0x44
	.byte	0xb
	.long	0x1c49
	.uleb128 0x2
	.byte	0x1d
	.byte	0x46
	.byte	0xb
	.long	0x1ce5
	.uleb128 0x2
	.byte	0x1d
	.byte	0x47
	.byte	0xb
	.long	0x1cf1
	.uleb128 0x2
	.byte	0x1d
	.byte	0x48
	.byte	0xb
	.long	0x1cfd
	.uleb128 0x2
	.byte	0x1d
	.byte	0x49
	.byte	0xb
	.long	0x1d09
	.uleb128 0x2
	.byte	0x1d
	.byte	0x4b
	.byte	0xb
	.long	0x1c85
	.uleb128 0x2
	.byte	0x1d
	.byte	0x4c
	.byte	0xb
	.long	0x1c91
	.uleb128 0x2
	.byte	0x1d
	.byte	0x4d
	.byte	0xb
	.long	0x1c9d
	.uleb128 0x2
	.byte	0x1d
	.byte	0x4e
	.byte	0xb
	.long	0x1ca9
	.uleb128 0x2
	.byte	0x1d
	.byte	0x50
	.byte	0xb
	.long	0x1d39
	.uleb128 0x2
	.byte	0x1d
	.byte	0x51
	.byte	0xb
	.long	0x1d21
	.uleb128 0x2
	.byte	0x1e
	.byte	0x35
	.byte	0xb
	.long	0x1d45
	.uleb128 0x2
	.byte	0x1e
	.byte	0x36
	.byte	0xb
	.long	0x1e8b
	.uleb128 0x2
	.byte	0x1e
	.byte	0x37
	.byte	0xb
	.long	0x1ea6
	.uleb128 0x2
	.byte	0x1f
	.byte	0x7f
	.byte	0xb
	.long	0x1ee5
	.uleb128 0x2
	.byte	0x1f
	.byte	0x80
	.byte	0xb
	.long	0x1f19
	.uleb128 0x2
	.byte	0x1f
	.byte	0x86
	.byte	0xb
	.long	0x1f7f
	.uleb128 0x2
	.byte	0x1f
	.byte	0x89
	.byte	0xb
	.long	0x1f9c
	.uleb128 0x2
	.byte	0x1f
	.byte	0x8c
	.byte	0xb
	.long	0x1fb7
	.uleb128 0x2
	.byte	0x1f
	.byte	0x8d
	.byte	0xb
	.long	0x1fcd
	.uleb128 0x2
	.byte	0x1f
	.byte	0x8e
	.byte	0xb
	.long	0x1fe3
	.uleb128 0x2
	.byte	0x1f
	.byte	0x8f
	.byte	0xb
	.long	0x1ff9
	.uleb128 0x2
	.byte	0x1f
	.byte	0x91
	.byte	0xb
	.long	0x2024
	.uleb128 0x2
	.byte	0x1f
	.byte	0x94
	.byte	0xb
	.long	0x2040
	.uleb128 0x2
	.byte	0x1f
	.byte	0x96
	.byte	0xb
	.long	0x2057
	.uleb128 0x2
	.byte	0x1f
	.byte	0x99
	.byte	0xb
	.long	0x2073
	.uleb128 0x2
	.byte	0x1f
	.byte	0x9a
	.byte	0xb
	.long	0x208f
	.uleb128 0x2
	.byte	0x1f
	.byte	0x9b
	.byte	0xb
	.long	0x20b0
	.uleb128 0x2
	.byte	0x1f
	.byte	0x9d
	.byte	0xb
	.long	0x20d1
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa0
	.byte	0xb
	.long	0x20f2
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa3
	.byte	0xb
	.long	0x2105
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa5
	.byte	0xb
	.long	0x2112
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa6
	.byte	0xb
	.long	0x2124
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa7
	.byte	0xb
	.long	0x2144
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa8
	.byte	0xb
	.long	0x2164
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa9
	.byte	0xb
	.long	0x2184
	.uleb128 0x2
	.byte	0x1f
	.byte	0xab
	.byte	0xb
	.long	0x219b
	.uleb128 0x2
	.byte	0x1f
	.byte	0xac
	.byte	0xb
	.long	0x21bc
	.uleb128 0x2
	.byte	0x1f
	.byte	0xf0
	.byte	0x16
	.long	0x1f4d
	.uleb128 0x2
	.byte	0x1f
	.byte	0xf5
	.byte	0x16
	.long	0x1b1d
	.uleb128 0x2
	.byte	0x1f
	.byte	0xf6
	.byte	0x16
	.long	0x21d8
	.uleb128 0x2
	.byte	0x1f
	.byte	0xf8
	.byte	0x16
	.long	0x21f4
	.uleb128 0x2
	.byte	0x1f
	.byte	0xf9
	.byte	0x16
	.long	0x224a
	.uleb128 0x2
	.byte	0x1f
	.byte	0xfa
	.byte	0x16
	.long	0x220a
	.uleb128 0x2
	.byte	0x1f
	.byte	0xfb
	.byte	0x16
	.long	0x222a
	.uleb128 0x2
	.byte	0x1f
	.byte	0xfc
	.byte	0x16
	.long	0x2265
	.uleb128 0x16
	.long	.LASF218
	.byte	0x20
	.byte	0x30
	.byte	0xb
	.uleb128 0x2
	.byte	0x21
	.byte	0x62
	.byte	0xb
	.long	0x6d2
	.uleb128 0x2
	.byte	0x21
	.byte	0x63
	.byte	0xb
	.long	0x73a
	.uleb128 0x2
	.byte	0x21
	.byte	0x65
	.byte	0xb
	.long	0x2287
	.uleb128 0x2
	.byte	0x21
	.byte	0x66
	.byte	0xb
	.long	0x2299
	.uleb128 0x2
	.byte	0x21
	.byte	0x67
	.byte	0xb
	.long	0x22af
	.uleb128 0x2
	.byte	0x21
	.byte	0x68
	.byte	0xb
	.long	0x22c6
	.uleb128 0x2
	.byte	0x21
	.byte	0x69
	.byte	0xb
	.long	0x22dd
	.uleb128 0x2
	.byte	0x21
	.byte	0x6a
	.byte	0xb
	.long	0x22f3
	.uleb128 0x2
	.byte	0x21
	.byte	0x6b
	.byte	0xb
	.long	0x230a
	.uleb128 0x2
	.byte	0x21
	.byte	0x6c
	.byte	0xb
	.long	0x232b
	.uleb128 0x2
	.byte	0x21
	.byte	0x6d
	.byte	0xb
	.long	0x234c
	.uleb128 0x2
	.byte	0x21
	.byte	0x71
	.byte	0xb
	.long	0x2368
	.uleb128 0x2
	.byte	0x21
	.byte	0x72
	.byte	0xb
	.long	0x238e
	.uleb128 0x2
	.byte	0x21
	.byte	0x74
	.byte	0xb
	.long	0x23af
	.uleb128 0x2
	.byte	0x21
	.byte	0x75
	.byte	0xb
	.long	0x23d0
	.uleb128 0x2
	.byte	0x21
	.byte	0x76
	.byte	0xb
	.long	0x23f1
	.uleb128 0x2
	.byte	0x21
	.byte	0x78
	.byte	0xb
	.long	0x2408
	.uleb128 0x2
	.byte	0x21
	.byte	0x79
	.byte	0xb
	.long	0x241f
	.uleb128 0x2
	.byte	0x21
	.byte	0x7e
	.byte	0xb
	.long	0x242c
	.uleb128 0x2
	.byte	0x21
	.byte	0x83
	.byte	0xb
	.long	0x243e
	.uleb128 0x2
	.byte	0x21
	.byte	0x84
	.byte	0xb
	.long	0x2454
	.uleb128 0x2
	.byte	0x21
	.byte	0x85
	.byte	0xb
	.long	0x246f
	.uleb128 0x2
	.byte	0x21
	.byte	0x87
	.byte	0xb
	.long	0x2481
	.uleb128 0x2
	.byte	0x21
	.byte	0x88
	.byte	0xb
	.long	0x2498
	.uleb128 0x2
	.byte	0x21
	.byte	0x8b
	.byte	0xb
	.long	0x24be
	.uleb128 0x2
	.byte	0x21
	.byte	0x8d
	.byte	0xb
	.long	0x24ca
	.uleb128 0x2
	.byte	0x21
	.byte	0x8f
	.byte	0xb
	.long	0x24e0
	.uleb128 0x29
	.long	.LASF219
	.byte	0x17
	.value	0x12e
	.byte	0x41
	.uleb128 0x46
	.string	"_V2"
	.byte	0x34
	.value	0x25c
	.byte	0x14
	.uleb128 0x2a
	.long	.LASF454
	.long	0x126d
	.uleb128 0x47
	.long	.LASF220
	.byte	0x1
	.byte	0x22
	.value	0x272
	.byte	0xb
	.byte	0x1
	.long	0x1267
	.uleb128 0x2b
	.long	.LASF220
	.value	0x276
	.long	.LASF222
	.long	0x11fe
	.long	0x1204
	.uleb128 0xb
	.long	0x24fc
	.byte	0
	.uleb128 0x2b
	.long	.LASF221
	.value	0x277
	.long	.LASF223
	.long	0x1217
	.long	0x1222
	.uleb128 0xb
	.long	0x24fc
	.uleb128 0xb
	.long	0xcb
	.byte	0
	.uleb128 0x48
	.long	.LASF220
	.byte	0x22
	.value	0x27a
	.byte	0x7
	.long	.LASF224
	.byte	0x1
	.byte	0x1
	.long	0x1239
	.long	0x1244
	.uleb128 0xb
	.long	0x24fc
	.uleb128 0x1
	.long	0x2506
	.byte	0
	.uleb128 0x49
	.long	.LASF195
	.byte	0x22
	.value	0x27b
	.byte	0xd
	.long	.LASF225
	.long	0x250b
	.byte	0x1
	.byte	0x1
	.long	0x125b
	.uleb128 0xb
	.long	0x24fc
	.uleb128 0x1
	.long	0x2506
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x11dc
	.byte	0
	.uleb128 0x2
	.byte	0x23
	.byte	0x52
	.byte	0xb
	.long	0x251c
	.uleb128 0x2
	.byte	0x23
	.byte	0x53
	.byte	0xb
	.long	0x2510
	.uleb128 0x2
	.byte	0x23
	.byte	0x54
	.byte	0xb
	.long	0x9fc
	.uleb128 0x2
	.byte	0x23
	.byte	0x5c
	.byte	0xb
	.long	0x252d
	.uleb128 0x2
	.byte	0x23
	.byte	0x65
	.byte	0xb
	.long	0x2548
	.uleb128 0x2
	.byte	0x23
	.byte	0x68
	.byte	0xb
	.long	0x2563
	.uleb128 0x2
	.byte	0x23
	.byte	0x69
	.byte	0xb
	.long	0x2579
	.uleb128 0x4a
	.long	.LASF226
	.byte	0x2
	.byte	0x4a
	.byte	0x19
	.long	0x11dc
	.byte	0
	.uleb128 0x5
	.long	.LASF227
	.byte	0x24
	.value	0x11d
	.byte	0xf
	.long	0x9fc
	.long	0x12c9
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF228
	.byte	0x24
	.value	0x2e8
	.byte	0xf
	.long	0x9fc
	.long	0x12e0
	.uleb128 0x1
	.long	0x12e0
	.byte	0
	.uleb128 0x6
	.long	0x53f
	.uleb128 0x5
	.long	.LASF229
	.byte	0x24
	.value	0x305
	.byte	0x11
	.long	0x1306
	.long	0x1306
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x12e0
	.byte	0
	.uleb128 0x6
	.long	0x130b
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.long	.LASF230
	.uleb128 0x8
	.long	0x130b
	.uleb128 0x5
	.long	.LASF231
	.byte	0x24
	.value	0x2f6
	.byte	0xf
	.long	0x9fc
	.long	0x1333
	.uleb128 0x1
	.long	0x130b
	.uleb128 0x1
	.long	0x12e0
	.byte	0
	.uleb128 0x5
	.long	.LASF232
	.byte	0x24
	.value	0x30c
	.byte	0xc
	.long	0xcb
	.long	0x134f
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x12e0
	.byte	0
	.uleb128 0x6
	.long	0x1312
	.uleb128 0x5
	.long	.LASF233
	.byte	0x24
	.value	0x24c
	.byte	0xc
	.long	0xcb
	.long	0x1370
	.uleb128 0x1
	.long	0x12e0
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF234
	.byte	0x24
	.value	0x253
	.byte	0xc
	.long	0xcb
	.long	0x138d
	.uleb128 0x1
	.long	0x12e0
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x13
	.byte	0
	.uleb128 0x17
	.long	.LASF235
	.byte	0x24
	.value	0x291
	.byte	0xc
	.long	.LASF245
	.long	0xcb
	.long	0x13ae
	.uleb128 0x1
	.long	0x12e0
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF236
	.byte	0x24
	.value	0x2e9
	.byte	0xf
	.long	0x9fc
	.long	0x13c5
	.uleb128 0x1
	.long	0x12e0
	.byte	0
	.uleb128 0x26
	.long	.LASF366
	.byte	0x24
	.value	0x2ef
	.byte	0xf
	.long	0x9fc
	.uleb128 0x5
	.long	.LASF237
	.byte	0x24
	.value	0x134
	.byte	0xf
	.long	0x35
	.long	0x13f3
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x13f3
	.byte	0
	.uleb128 0x6
	.long	0xa08
	.uleb128 0x5
	.long	.LASF238
	.byte	0x24
	.value	0x129
	.byte	0xf
	.long	0x35
	.long	0x141e
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x13f3
	.byte	0
	.uleb128 0x5
	.long	.LASF239
	.byte	0x24
	.value	0x125
	.byte	0xc
	.long	0xcb
	.long	0x1435
	.uleb128 0x1
	.long	0x1435
	.byte	0
	.uleb128 0x6
	.long	0xa14
	.uleb128 0x5
	.long	.LASF240
	.byte	0x24
	.value	0x152
	.byte	0xf
	.long	0x35
	.long	0x1460
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x32e
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x13f3
	.byte	0
	.uleb128 0x5
	.long	.LASF241
	.byte	0x24
	.value	0x2f7
	.byte	0xf
	.long	0x9fc
	.long	0x147c
	.uleb128 0x1
	.long	0x130b
	.uleb128 0x1
	.long	0x12e0
	.byte	0
	.uleb128 0x5
	.long	.LASF242
	.byte	0x24
	.value	0x2fd
	.byte	0xf
	.long	0x9fc
	.long	0x1493
	.uleb128 0x1
	.long	0x130b
	.byte	0
	.uleb128 0x5
	.long	.LASF243
	.byte	0x24
	.value	0x25d
	.byte	0xc
	.long	0xcb
	.long	0x14b5
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x13
	.byte	0
	.uleb128 0x17
	.long	.LASF244
	.byte	0x24
	.value	0x298
	.byte	0xc
	.long	.LASF246
	.long	0xcb
	.long	0x14d6
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF247
	.byte	0x24
	.value	0x314
	.byte	0xf
	.long	0x9fc
	.long	0x14f2
	.uleb128 0x1
	.long	0x9fc
	.uleb128 0x1
	.long	0x12e0
	.byte	0
	.uleb128 0x5
	.long	.LASF248
	.byte	0x24
	.value	0x265
	.byte	0xc
	.long	0xcb
	.long	0x1513
	.uleb128 0x1
	.long	0x12e0
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1513
	.byte	0
	.uleb128 0x6
	.long	0x35d
	.uleb128 0x17
	.long	.LASF249
	.byte	0x24
	.value	0x2c7
	.byte	0xc
	.long	.LASF250
	.long	0xcb
	.long	0x153d
	.uleb128 0x1
	.long	0x12e0
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1513
	.byte	0
	.uleb128 0x5
	.long	.LASF251
	.byte	0x24
	.value	0x272
	.byte	0xc
	.long	0xcb
	.long	0x1563
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1513
	.byte	0
	.uleb128 0x17
	.long	.LASF252
	.byte	0x24
	.value	0x2ce
	.byte	0xc
	.long	.LASF253
	.long	0xcb
	.long	0x1588
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1513
	.byte	0
	.uleb128 0x5
	.long	.LASF254
	.byte	0x24
	.value	0x26d
	.byte	0xc
	.long	0xcb
	.long	0x15a4
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1513
	.byte	0
	.uleb128 0x17
	.long	.LASF255
	.byte	0x24
	.value	0x2cb
	.byte	0xc
	.long	.LASF256
	.long	0xcb
	.long	0x15c4
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1513
	.byte	0
	.uleb128 0x5
	.long	.LASF257
	.byte	0x24
	.value	0x12e
	.byte	0xf
	.long	0x35
	.long	0x15e5
	.uleb128 0x1
	.long	0x273
	.uleb128 0x1
	.long	0x130b
	.uleb128 0x1
	.long	0x13f3
	.byte	0
	.uleb128 0x7
	.long	.LASF258
	.byte	0x24
	.byte	0x61
	.byte	0x11
	.long	0x1306
	.long	0x1600
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x134f
	.byte	0
	.uleb128 0x7
	.long	.LASF259
	.byte	0x24
	.byte	0x6a
	.byte	0xc
	.long	0xcb
	.long	0x161b
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x134f
	.byte	0
	.uleb128 0x7
	.long	.LASF260
	.byte	0x24
	.byte	0x83
	.byte	0xc
	.long	0xcb
	.long	0x1636
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x134f
	.byte	0
	.uleb128 0x7
	.long	.LASF261
	.byte	0x24
	.byte	0x57
	.byte	0x11
	.long	0x1306
	.long	0x1651
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x134f
	.byte	0
	.uleb128 0x7
	.long	.LASF262
	.byte	0x24
	.byte	0xbc
	.byte	0xf
	.long	0x35
	.long	0x166c
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x134f
	.byte	0
	.uleb128 0x5
	.long	.LASF263
	.byte	0x24
	.value	0x354
	.byte	0xf
	.long	0x35
	.long	0x1692
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1692
	.byte	0
	.uleb128 0x6
	.long	0x1733
	.uleb128 0x4b
	.string	"tm"
	.byte	0x38
	.byte	0x25
	.byte	0x7
	.byte	0x8
	.long	0x1733
	.uleb128 0x3
	.long	.LASF264
	.byte	0x25
	.byte	0x9
	.byte	0x7
	.long	0xcb
	.byte	0
	.uleb128 0x3
	.long	.LASF265
	.byte	0x25
	.byte	0xa
	.byte	0x7
	.long	0xcb
	.byte	0x4
	.uleb128 0x3
	.long	.LASF266
	.byte	0x25
	.byte	0xb
	.byte	0x7
	.long	0xcb
	.byte	0x8
	.uleb128 0x3
	.long	.LASF267
	.byte	0x25
	.byte	0xc
	.byte	0x7
	.long	0xcb
	.byte	0xc
	.uleb128 0x3
	.long	.LASF268
	.byte	0x25
	.byte	0xd
	.byte	0x7
	.long	0xcb
	.byte	0x10
	.uleb128 0x3
	.long	.LASF269
	.byte	0x25
	.byte	0xe
	.byte	0x7
	.long	0xcb
	.byte	0x14
	.uleb128 0x3
	.long	.LASF270
	.byte	0x25
	.byte	0xf
	.byte	0x7
	.long	0xcb
	.byte	0x18
	.uleb128 0x3
	.long	.LASF271
	.byte	0x25
	.byte	0x10
	.byte	0x7
	.long	0xcb
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF272
	.byte	0x25
	.byte	0x11
	.byte	0x7
	.long	0xcb
	.byte	0x20
	.uleb128 0x3
	.long	.LASF273
	.byte	0x25
	.byte	0x14
	.byte	0xc
	.long	0x2e
	.byte	0x28
	.uleb128 0x3
	.long	.LASF274
	.byte	0x25
	.byte	0x15
	.byte	0xf
	.long	0x27d
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.long	0x1697
	.uleb128 0x7
	.long	.LASF275
	.byte	0x24
	.byte	0xdf
	.byte	0xf
	.long	0x35
	.long	0x174e
	.uleb128 0x1
	.long	0x134f
	.byte	0
	.uleb128 0x7
	.long	.LASF276
	.byte	0x24
	.byte	0x65
	.byte	0x11
	.long	0x1306
	.long	0x176e
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x7
	.long	.LASF277
	.byte	0x24
	.byte	0x6d
	.byte	0xc
	.long	0xcb
	.long	0x178e
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x7
	.long	.LASF278
	.byte	0x24
	.byte	0x5c
	.byte	0x11
	.long	0x1306
	.long	0x17ae
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF279
	.byte	0x24
	.value	0x158
	.byte	0xf
	.long	0x35
	.long	0x17d4
	.uleb128 0x1
	.long	0x273
	.uleb128 0x1
	.long	0x17d4
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x13f3
	.byte	0
	.uleb128 0x6
	.long	0x134f
	.uleb128 0x7
	.long	.LASF280
	.byte	0x24
	.byte	0xc0
	.byte	0xf
	.long	0x35
	.long	0x17f4
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x134f
	.byte	0
	.uleb128 0x5
	.long	.LASF281
	.byte	0x24
	.value	0x17a
	.byte	0xf
	.long	0x26c
	.long	0x1810
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1810
	.byte	0
	.uleb128 0x6
	.long	0x1306
	.uleb128 0x5
	.long	.LASF282
	.byte	0x24
	.value	0x17f
	.byte	0xe
	.long	0x75e
	.long	0x1831
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1810
	.byte	0
	.uleb128 0x7
	.long	.LASF283
	.byte	0x24
	.byte	0xda
	.byte	0x11
	.long	0x1306
	.long	0x1851
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1810
	.byte	0
	.uleb128 0x5
	.long	.LASF284
	.byte	0x24
	.value	0x1ad
	.byte	0x11
	.long	0x2e
	.long	0x1872
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1810
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF285
	.byte	0x24
	.value	0x1b2
	.byte	0x1a
	.long	0x41
	.long	0x1893
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1810
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x7
	.long	.LASF286
	.byte	0x24
	.byte	0x87
	.byte	0xf
	.long	0x35
	.long	0x18b3
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF287
	.byte	0x24
	.value	0x121
	.byte	0xc
	.long	0xcb
	.long	0x18ca
	.uleb128 0x1
	.long	0x9fc
	.byte	0
	.uleb128 0x5
	.long	.LASF288
	.byte	0x24
	.value	0x103
	.byte	0xc
	.long	0xcb
	.long	0x18eb
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF289
	.byte	0x24
	.value	0x107
	.byte	0x11
	.long	0x1306
	.long	0x190c
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF290
	.byte	0x24
	.value	0x10c
	.byte	0x11
	.long	0x1306
	.long	0x192d
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF291
	.byte	0x24
	.value	0x110
	.byte	0x11
	.long	0x1306
	.long	0x194e
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x130b
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF292
	.byte	0x24
	.value	0x25a
	.byte	0xc
	.long	0xcb
	.long	0x1966
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x13
	.byte	0
	.uleb128 0x17
	.long	.LASF293
	.byte	0x24
	.value	0x295
	.byte	0xc
	.long	.LASF294
	.long	0xcb
	.long	0x1982
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.long	.LASF295
	.byte	0xa2
	.byte	0x1d
	.long	.LASF295
	.long	0x134f
	.long	0x19a0
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x130b
	.byte	0
	.uleb128 0x14
	.long	.LASF295
	.byte	0xa0
	.byte	0x17
	.long	.LASF295
	.long	0x1306
	.long	0x19be
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x130b
	.byte	0
	.uleb128 0x14
	.long	.LASF296
	.byte	0xc6
	.byte	0x1d
	.long	.LASF296
	.long	0x134f
	.long	0x19dc
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x134f
	.byte	0
	.uleb128 0x14
	.long	.LASF296
	.byte	0xc4
	.byte	0x17
	.long	.LASF296
	.long	0x1306
	.long	0x19fa
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x134f
	.byte	0
	.uleb128 0x14
	.long	.LASF297
	.byte	0xac
	.byte	0x1d
	.long	.LASF297
	.long	0x134f
	.long	0x1a18
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x130b
	.byte	0
	.uleb128 0x14
	.long	.LASF297
	.byte	0xaa
	.byte	0x17
	.long	.LASF297
	.long	0x1306
	.long	0x1a36
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x130b
	.byte	0
	.uleb128 0x14
	.long	.LASF298
	.byte	0xd1
	.byte	0x1d
	.long	.LASF298
	.long	0x134f
	.long	0x1a54
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x134f
	.byte	0
	.uleb128 0x14
	.long	.LASF298
	.byte	0xcf
	.byte	0x17
	.long	.LASF298
	.long	0x1306
	.long	0x1a72
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x134f
	.byte	0
	.uleb128 0x14
	.long	.LASF299
	.byte	0xfa
	.byte	0x1d
	.long	.LASF299
	.long	0x134f
	.long	0x1a95
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x130b
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x14
	.long	.LASF299
	.byte	0xf8
	.byte	0x17
	.long	.LASF299
	.long	0x1306
	.long	0x1ab8
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x130b
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x4c
	.long	.LASF300
	.byte	0x17
	.value	0x130
	.byte	0xb
	.long	0x1b39
	.uleb128 0x2
	.byte	0x14
	.byte	0xfb
	.byte	0xb
	.long	0x1b39
	.uleb128 0x10
	.value	0x104
	.byte	0xb
	.long	0x1b55
	.uleb128 0x10
	.value	0x105
	.byte	0xb
	.long	0x1b76
	.uleb128 0x16
	.long	.LASF301
	.byte	0x26
	.byte	0x25
	.byte	0xb
	.uleb128 0x2
	.byte	0x1f
	.byte	0xc8
	.byte	0xb
	.long	0x1f4d
	.uleb128 0x2
	.byte	0x1f
	.byte	0xd8
	.byte	0xb
	.long	0x21d8
	.uleb128 0x2
	.byte	0x1f
	.byte	0xe3
	.byte	0xb
	.long	0x21f4
	.uleb128 0x2
	.byte	0x1f
	.byte	0xe4
	.byte	0xb
	.long	0x220a
	.uleb128 0x2
	.byte	0x1f
	.byte	0xe5
	.byte	0xb
	.long	0x222a
	.uleb128 0x2
	.byte	0x1f
	.byte	0xe7
	.byte	0xb
	.long	0x224a
	.uleb128 0x2
	.byte	0x1f
	.byte	0xe8
	.byte	0xb
	.long	0x2265
	.uleb128 0x4d
	.string	"div"
	.byte	0x1f
	.byte	0xd5
	.byte	0x3
	.long	.LASF488
	.long	0x1f4d
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF302
	.byte	0x24
	.value	0x181
	.byte	0x14
	.long	0x4f
	.long	0x1b55
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1810
	.byte	0
	.uleb128 0x5
	.long	.LASF303
	.byte	0x24
	.value	0x1ba
	.byte	0x16
	.long	0x48
	.long	0x1b76
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1810
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF304
	.byte	0x24
	.value	0x1c1
	.byte	0x1f
	.long	0x1b97
	.long	0x1b97
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x1810
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF305
	.uleb128 0xa
	.byte	0x1
	.byte	0x2
	.long	.LASF306
	.uleb128 0xa
	.byte	0x1
	.byte	0x7
	.long	.LASF307
	.uleb128 0xa
	.byte	0x2
	.byte	0x10
	.long	.LASF308
	.uleb128 0xa
	.byte	0x4
	.byte	0x10
	.long	.LASF309
	.uleb128 0x6
	.long	0xc8c
	.uleb128 0x6
	.long	0xe3d
	.uleb128 0x1e
	.long	0xe3d
	.uleb128 0x4e
	.byte	0x8
	.long	0xc8c
	.uleb128 0x1e
	.long	0xc8c
	.uleb128 0x6
	.long	0xe7b
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.long	.LASF310
	.uleb128 0x24
	.long	.LASF311
	.byte	0x27
	.byte	0x27
	.byte	0xb
	.long	0x1bf5
	.uleb128 0x4f
	.byte	0x1c
	.byte	0x3a
	.byte	0x18
	.long	0xee1
	.byte	0
	.uleb128 0x4
	.long	.LASF312
	.byte	0x28
	.byte	0x18
	.byte	0x12
	.long	0x3a2
	.uleb128 0x4
	.long	.LASF313
	.byte	0x28
	.byte	0x19
	.byte	0x13
	.long	0x3c1
	.uleb128 0x4
	.long	.LASF314
	.byte	0x28
	.byte	0x1a
	.byte	0x13
	.long	0x3e0
	.uleb128 0x4
	.long	.LASF315
	.byte	0x28
	.byte	0x1b
	.byte	0x13
	.long	0x3fd
	.uleb128 0x4
	.long	.LASF316
	.byte	0x29
	.byte	0x18
	.byte	0x13
	.long	0x3b5
	.uleb128 0x4
	.long	.LASF317
	.byte	0x29
	.byte	0x19
	.byte	0x14
	.long	0x3d4
	.uleb128 0x4
	.long	.LASF318
	.byte	0x29
	.byte	0x1a
	.byte	0x14
	.long	0x3f1
	.uleb128 0x4
	.long	.LASF319
	.byte	0x29
	.byte	0x1b
	.byte	0x14
	.long	0x409
	.uleb128 0x4
	.long	.LASF320
	.byte	0x2a
	.byte	0x2b
	.byte	0x18
	.long	0x415
	.uleb128 0x4
	.long	.LASF321
	.byte	0x2a
	.byte	0x2c
	.byte	0x19
	.long	0x42d
	.uleb128 0x4
	.long	.LASF322
	.byte	0x2a
	.byte	0x2d
	.byte	0x19
	.long	0x445
	.uleb128 0x4
	.long	.LASF323
	.byte	0x2a
	.byte	0x2e
	.byte	0x19
	.long	0x45d
	.uleb128 0x4
	.long	.LASF324
	.byte	0x2a
	.byte	0x31
	.byte	0x19
	.long	0x421
	.uleb128 0x4
	.long	.LASF325
	.byte	0x2a
	.byte	0x32
	.byte	0x1a
	.long	0x439
	.uleb128 0x4
	.long	.LASF326
	.byte	0x2a
	.byte	0x33
	.byte	0x1a
	.long	0x451
	.uleb128 0x4
	.long	.LASF327
	.byte	0x2a
	.byte	0x34
	.byte	0x1a
	.long	0x469
	.uleb128 0x4
	.long	.LASF328
	.byte	0x2a
	.byte	0x3a
	.byte	0x15
	.long	0x3ae
	.uleb128 0x4
	.long	.LASF329
	.byte	0x2a
	.byte	0x3c
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF330
	.byte	0x2a
	.byte	0x3d
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF331
	.byte	0x2a
	.byte	0x3e
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF332
	.byte	0x2a
	.byte	0x47
	.byte	0x17
	.long	0x394
	.uleb128 0x4
	.long	.LASF333
	.byte	0x2a
	.byte	0x49
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF334
	.byte	0x2a
	.byte	0x4a
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF335
	.byte	0x2a
	.byte	0x4b
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF336
	.byte	0x2a
	.byte	0x57
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF337
	.byte	0x2a
	.byte	0x5a
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF338
	.byte	0x2a
	.byte	0x65
	.byte	0x14
	.long	0x475
	.uleb128 0x4
	.long	.LASF339
	.byte	0x2a
	.byte	0x66
	.byte	0x15
	.long	0x481
	.uleb128 0x15
	.long	.LASF340
	.byte	0x60
	.byte	0x2b
	.byte	0x33
	.byte	0x8
	.long	0x1e8b
	.uleb128 0x3
	.long	.LASF341
	.byte	0x2b
	.byte	0x37
	.byte	0x9
	.long	0x273
	.byte	0
	.uleb128 0x3
	.long	.LASF342
	.byte	0x2b
	.byte	0x38
	.byte	0x9
	.long	0x273
	.byte	0x8
	.uleb128 0x3
	.long	.LASF343
	.byte	0x2b
	.byte	0x3e
	.byte	0x9
	.long	0x273
	.byte	0x10
	.uleb128 0x3
	.long	.LASF344
	.byte	0x2b
	.byte	0x44
	.byte	0x9
	.long	0x273
	.byte	0x18
	.uleb128 0x3
	.long	.LASF345
	.byte	0x2b
	.byte	0x45
	.byte	0x9
	.long	0x273
	.byte	0x20
	.uleb128 0x3
	.long	.LASF346
	.byte	0x2b
	.byte	0x46
	.byte	0x9
	.long	0x273
	.byte	0x28
	.uleb128 0x3
	.long	.LASF347
	.byte	0x2b
	.byte	0x47
	.byte	0x9
	.long	0x273
	.byte	0x30
	.uleb128 0x3
	.long	.LASF348
	.byte	0x2b
	.byte	0x48
	.byte	0x9
	.long	0x273
	.byte	0x38
	.uleb128 0x3
	.long	.LASF349
	.byte	0x2b
	.byte	0x49
	.byte	0x9
	.long	0x273
	.byte	0x40
	.uleb128 0x3
	.long	.LASF350
	.byte	0x2b
	.byte	0x4a
	.byte	0x9
	.long	0x273
	.byte	0x48
	.uleb128 0x3
	.long	.LASF351
	.byte	0x2b
	.byte	0x4b
	.byte	0x8
	.long	0x260
	.byte	0x50
	.uleb128 0x3
	.long	.LASF352
	.byte	0x2b
	.byte	0x4c
	.byte	0x8
	.long	0x260
	.byte	0x51
	.uleb128 0x3
	.long	.LASF353
	.byte	0x2b
	.byte	0x4e
	.byte	0x8
	.long	0x260
	.byte	0x52
	.uleb128 0x3
	.long	.LASF354
	.byte	0x2b
	.byte	0x50
	.byte	0x8
	.long	0x260
	.byte	0x53
	.uleb128 0x3
	.long	.LASF355
	.byte	0x2b
	.byte	0x52
	.byte	0x8
	.long	0x260
	.byte	0x54
	.uleb128 0x3
	.long	.LASF356
	.byte	0x2b
	.byte	0x54
	.byte	0x8
	.long	0x260
	.byte	0x55
	.uleb128 0x3
	.long	.LASF357
	.byte	0x2b
	.byte	0x5b
	.byte	0x8
	.long	0x260
	.byte	0x56
	.uleb128 0x3
	.long	.LASF358
	.byte	0x2b
	.byte	0x5c
	.byte	0x8
	.long	0x260
	.byte	0x57
	.uleb128 0x3
	.long	.LASF359
	.byte	0x2b
	.byte	0x5f
	.byte	0x8
	.long	0x260
	.byte	0x58
	.uleb128 0x3
	.long	.LASF360
	.byte	0x2b
	.byte	0x61
	.byte	0x8
	.long	0x260
	.byte	0x59
	.uleb128 0x3
	.long	.LASF361
	.byte	0x2b
	.byte	0x63
	.byte	0x8
	.long	0x260
	.byte	0x5a
	.uleb128 0x3
	.long	.LASF362
	.byte	0x2b
	.byte	0x65
	.byte	0x8
	.long	0x260
	.byte	0x5b
	.uleb128 0x3
	.long	.LASF363
	.byte	0x2b
	.byte	0x6c
	.byte	0x8
	.long	0x260
	.byte	0x5c
	.uleb128 0x3
	.long	.LASF364
	.byte	0x2b
	.byte	0x6d
	.byte	0x8
	.long	0x260
	.byte	0x5d
	.byte	0
	.uleb128 0x7
	.long	.LASF365
	.byte	0x2b
	.byte	0x7a
	.byte	0xe
	.long	0x273
	.long	0x1ea6
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x2c
	.long	.LASF367
	.byte	0x2b
	.byte	0x7d
	.byte	0x16
	.long	0x1eb2
	.uleb128 0x6
	.long	0x1d45
	.uleb128 0x6
	.long	0x1ebc
	.uleb128 0x50
	.uleb128 0x20
	.byte	0x8
	.byte	0x2c
	.byte	0x3c
	.byte	0x3
	.long	.LASF369
	.long	0x1ee5
	.uleb128 0x3
	.long	.LASF370
	.byte	0x2c
	.byte	0x3d
	.byte	0x9
	.long	0xcb
	.byte	0
	.uleb128 0x1b
	.string	"rem"
	.byte	0x2c
	.byte	0x3e
	.byte	0x9
	.long	0xcb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF371
	.byte	0x2c
	.byte	0x3f
	.byte	0x5
	.long	0x1ebd
	.uleb128 0x20
	.byte	0x10
	.byte	0x2c
	.byte	0x44
	.byte	0x3
	.long	.LASF372
	.long	0x1f19
	.uleb128 0x3
	.long	.LASF370
	.byte	0x2c
	.byte	0x45
	.byte	0xe
	.long	0x2e
	.byte	0
	.uleb128 0x1b
	.string	"rem"
	.byte	0x2c
	.byte	0x46
	.byte	0xe
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF373
	.byte	0x2c
	.byte	0x47
	.byte	0x5
	.long	0x1ef1
	.uleb128 0x20
	.byte	0x10
	.byte	0x2c
	.byte	0x4e
	.byte	0x3
	.long	.LASF374
	.long	0x1f4d
	.uleb128 0x3
	.long	.LASF370
	.byte	0x2c
	.byte	0x4f
	.byte	0x13
	.long	0x48
	.byte	0
	.uleb128 0x1b
	.string	"rem"
	.byte	0x2c
	.byte	0x50
	.byte	0x13
	.long	0x48
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF375
	.byte	0x2c
	.byte	0x51
	.byte	0x5
	.long	0x1f25
	.uleb128 0x28
	.long	.LASF376
	.byte	0x2c
	.value	0x330
	.byte	0xf
	.long	0x1f66
	.uleb128 0x6
	.long	0x1f6b
	.uleb128 0x51
	.long	0xcb
	.long	0x1f7f
	.uleb128 0x1
	.long	0x1eb7
	.uleb128 0x1
	.long	0x1eb7
	.byte	0
	.uleb128 0x5
	.long	.LASF377
	.byte	0x2c
	.value	0x25a
	.byte	0xc
	.long	0xcb
	.long	0x1f96
	.uleb128 0x1
	.long	0x1f96
	.byte	0
	.uleb128 0x6
	.long	0x1f9b
	.uleb128 0x52
	.uleb128 0x17
	.long	.LASF378
	.byte	0x2c
	.value	0x25f
	.byte	0x12
	.long	.LASF378
	.long	0xcb
	.long	0x1fb7
	.uleb128 0x1
	.long	0x1f96
	.byte	0
	.uleb128 0x7
	.long	.LASF379
	.byte	0x2c
	.byte	0x66
	.byte	0xf
	.long	0x26c
	.long	0x1fcd
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x7
	.long	.LASF380
	.byte	0x2c
	.byte	0x69
	.byte	0xc
	.long	0xcb
	.long	0x1fe3
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x7
	.long	.LASF381
	.byte	0x2c
	.byte	0x6c
	.byte	0x11
	.long	0x2e
	.long	0x1ff9
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x5
	.long	.LASF382
	.byte	0x2c
	.value	0x33c
	.byte	0xe
	.long	0x392
	.long	0x2024
	.uleb128 0x1
	.long	0x1eb7
	.uleb128 0x1
	.long	0x1eb7
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x1f59
	.byte	0
	.uleb128 0x53
	.string	"div"
	.byte	0x2c
	.value	0x35c
	.byte	0xe
	.long	0x1ee5
	.long	0x2040
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF383
	.byte	0x2c
	.value	0x281
	.byte	0xe
	.long	0x273
	.long	0x2057
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x5
	.long	.LASF384
	.byte	0x2c
	.value	0x35e
	.byte	0xf
	.long	0x1f19
	.long	0x2073
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF385
	.byte	0x2c
	.value	0x3a2
	.byte	0xc
	.long	0xcb
	.long	0x208f
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF386
	.byte	0x2c
	.value	0x3ad
	.byte	0xf
	.long	0x35
	.long	0x20b0
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF387
	.byte	0x2c
	.value	0x3a5
	.byte	0xc
	.long	0xcb
	.long	0x20d1
	.uleb128 0x1
	.long	0x1306
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x19
	.long	.LASF390
	.byte	0x2c
	.value	0x346
	.long	0x20f2
	.uleb128 0x1
	.long	0x392
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x1f59
	.byte	0
	.uleb128 0x54
	.long	.LASF388
	.byte	0x2c
	.value	0x276
	.byte	0xd
	.long	0x2105
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x26
	.long	.LASF389
	.byte	0x2c
	.value	0x1c6
	.byte	0xc
	.long	0xcb
	.uleb128 0x19
	.long	.LASF391
	.byte	0x2c
	.value	0x1c8
	.long	0x2124
	.uleb128 0x1
	.long	0x5b
	.byte	0
	.uleb128 0x7
	.long	.LASF392
	.byte	0x2c
	.byte	0x76
	.byte	0xf
	.long	0x26c
	.long	0x213f
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x213f
	.byte	0
	.uleb128 0x6
	.long	0x273
	.uleb128 0x7
	.long	.LASF393
	.byte	0x2c
	.byte	0xb1
	.byte	0x11
	.long	0x2e
	.long	0x2164
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x213f
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x7
	.long	.LASF394
	.byte	0x2c
	.byte	0xb5
	.byte	0x1a
	.long	0x41
	.long	0x2184
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x213f
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF395
	.byte	0x2c
	.value	0x317
	.byte	0xc
	.long	0xcb
	.long	0x219b
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x5
	.long	.LASF396
	.byte	0x2c
	.value	0x3b1
	.byte	0xf
	.long	0x35
	.long	0x21bc
	.uleb128 0x1
	.long	0x273
	.uleb128 0x1
	.long	0x134f
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF397
	.byte	0x2c
	.value	0x3a9
	.byte	0xc
	.long	0xcb
	.long	0x21d8
	.uleb128 0x1
	.long	0x273
	.uleb128 0x1
	.long	0x130b
	.byte	0
	.uleb128 0x5
	.long	.LASF398
	.byte	0x2c
	.value	0x362
	.byte	0x1e
	.long	0x1f4d
	.long	0x21f4
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF399
	.byte	0x2c
	.byte	0x71
	.byte	0x24
	.long	0x48
	.long	0x220a
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x7
	.long	.LASF400
	.byte	0x2c
	.byte	0xc9
	.byte	0x16
	.long	0x48
	.long	0x222a
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x213f
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x7
	.long	.LASF401
	.byte	0x2c
	.byte	0xce
	.byte	0x1f
	.long	0x1b97
	.long	0x224a
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x213f
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x7
	.long	.LASF402
	.byte	0x2c
	.byte	0x7c
	.byte	0xe
	.long	0x75e
	.long	0x2265
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x213f
	.byte	0
	.uleb128 0x7
	.long	.LASF403
	.byte	0x2c
	.byte	0x7f
	.byte	0x14
	.long	0x4f
	.long	0x2280
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x213f
	.byte	0
	.uleb128 0xa
	.byte	0x10
	.byte	0x7
	.long	.LASF404
	.uleb128 0x19
	.long	.LASF405
	.byte	0x10
	.value	0x312
	.long	0x2299
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x7
	.long	.LASF406
	.byte	0x10
	.byte	0xb2
	.byte	0xc
	.long	0xcb
	.long	0x22af
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x5
	.long	.LASF407
	.byte	0x10
	.value	0x314
	.byte	0xc
	.long	0xcb
	.long	0x22c6
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x5
	.long	.LASF408
	.byte	0x10
	.value	0x316
	.byte	0xc
	.long	0xcb
	.long	0x22dd
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x7
	.long	.LASF409
	.byte	0x10
	.byte	0xe6
	.byte	0xc
	.long	0xcb
	.long	0x22f3
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x5
	.long	.LASF410
	.byte	0x10
	.value	0x201
	.byte	0xc
	.long	0xcb
	.long	0x230a
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x5
	.long	.LASF411
	.byte	0x10
	.value	0x2f8
	.byte	0xc
	.long	0xcb
	.long	0x2326
	.uleb128 0x1
	.long	0x74b
	.uleb128 0x1
	.long	0x2326
	.byte	0
	.uleb128 0x6
	.long	0x73a
	.uleb128 0x5
	.long	.LASF412
	.byte	0x10
	.value	0x250
	.byte	0xe
	.long	0x273
	.long	0x234c
	.uleb128 0x1
	.long	0x273
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x5
	.long	.LASF413
	.byte	0x10
	.value	0x102
	.byte	0xe
	.long	0x74b
	.long	0x2368
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x5
	.long	.LASF414
	.byte	0x10
	.value	0x2a3
	.byte	0xf
	.long	0x35
	.long	0x238e
	.uleb128 0x1
	.long	0x392
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x5
	.long	.LASF415
	.byte	0x10
	.value	0x109
	.byte	0xe
	.long	0x74b
	.long	0x23af
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x5
	.long	.LASF416
	.byte	0x10
	.value	0x2c9
	.byte	0xc
	.long	0xcb
	.long	0x23d0
	.uleb128 0x1
	.long	0x74b
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF417
	.byte	0x10
	.value	0x2fd
	.byte	0xc
	.long	0xcb
	.long	0x23ec
	.uleb128 0x1
	.long	0x74b
	.uleb128 0x1
	.long	0x23ec
	.byte	0
	.uleb128 0x6
	.long	0x746
	.uleb128 0x5
	.long	.LASF418
	.byte	0x10
	.value	0x2ce
	.byte	0x11
	.long	0x2e
	.long	0x2408
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x5
	.long	.LASF419
	.byte	0x10
	.value	0x202
	.byte	0xc
	.long	0xcb
	.long	0x241f
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x26
	.long	.LASF420
	.byte	0x10
	.value	0x208
	.byte	0xc
	.long	0xcb
	.uleb128 0x19
	.long	.LASF421
	.byte	0x10
	.value	0x324
	.long	0x243e
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x7
	.long	.LASF422
	.byte	0x10
	.byte	0x98
	.byte	0xc
	.long	0xcb
	.long	0x2454
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x7
	.long	.LASF423
	.byte	0x10
	.byte	0x9a
	.byte	0xc
	.long	0xcb
	.long	0x246f
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x19
	.long	.LASF424
	.byte	0x10
	.value	0x2d3
	.long	0x2481
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x19
	.long	.LASF425
	.byte	0x10
	.value	0x148
	.long	0x2498
	.uleb128 0x1
	.long	0x74b
	.uleb128 0x1
	.long	0x273
	.byte	0
	.uleb128 0x5
	.long	.LASF426
	.byte	0x10
	.value	0x14c
	.byte	0xc
	.long	0xcb
	.long	0x24be
	.uleb128 0x1
	.long	0x74b
	.uleb128 0x1
	.long	0x273
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x2c
	.long	.LASF427
	.byte	0x10
	.byte	0xbc
	.byte	0xe
	.long	0x74b
	.uleb128 0x7
	.long	.LASF428
	.byte	0x10
	.byte	0xcd
	.byte	0xe
	.long	0x273
	.long	0x24e0
	.uleb128 0x1
	.long	0x273
	.byte	0
	.uleb128 0x5
	.long	.LASF429
	.byte	0x10
	.value	0x29c
	.byte	0xc
	.long	0xcb
	.long	0x24fc
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x74b
	.byte	0
	.uleb128 0x6
	.long	0x11dc
	.uleb128 0x8
	.long	0x24fc
	.uleb128 0x1e
	.long	0x1267
	.uleb128 0x1e
	.long	0x11dc
	.uleb128 0x4
	.long	.LASF430
	.byte	0x2d
	.byte	0x26
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF431
	.byte	0x2e
	.byte	0x30
	.byte	0x1a
	.long	0x2528
	.uleb128 0x6
	.long	0x3ec
	.uleb128 0x7
	.long	.LASF432
	.byte	0x2d
	.byte	0x9f
	.byte	0xc
	.long	0xcb
	.long	0x2548
	.uleb128 0x1
	.long	0x9fc
	.uleb128 0x1
	.long	0x2510
	.byte	0
	.uleb128 0x7
	.long	.LASF433
	.byte	0x2e
	.byte	0x37
	.byte	0xf
	.long	0x9fc
	.long	0x2563
	.uleb128 0x1
	.long	0x9fc
	.uleb128 0x1
	.long	0x251c
	.byte	0
	.uleb128 0x7
	.long	.LASF434
	.byte	0x2e
	.byte	0x34
	.byte	0x12
	.long	0x251c
	.long	0x2579
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x7
	.long	.LASF435
	.byte	0x2d
	.byte	0x9b
	.byte	0x11
	.long	0x2510
	.long	0x258f
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x55
	.long	0x12a5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0xd
	.long	0x267
	.long	0x25ae
	.uleb128 0xe
	.long	0x41
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.long	0x259e
	.uleb128 0xc
	.long	.LASF436
	.byte	0x2f
	.byte	0x3
	.byte	0xc
	.long	0x25ae
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12STD_LOG_NAME
	.uleb128 0xc
	.long	.LASF437
	.byte	0x30
	.byte	0x3
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6CRINGE
	.uleb128 0x1c
	.long	.LASF438
	.byte	0x5
	.long	0xcb
	.byte	0x30
	.byte	0x5
	.long	0x2602
	.uleb128 0x9
	.long	.LASF439
	.byte	0
	.uleb128 0x23
	.long	.LASF440
	.sleb128 -1
	.uleb128 0x23
	.long	.LASF441
	.sleb128 -2
	.byte	0
	.uleb128 0xc
	.long	.LASF442
	.byte	0x1
	.byte	0xd
	.byte	0xe
	.long	0x74b
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL8STD_FILE
	.uleb128 0xc
	.long	.LASF443
	.byte	0x1
	.byte	0xe
	.byte	0x15
	.long	0x32e
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL10STRING_ARR
	.uleb128 0xd
	.long	0x27d
	.long	0x263e
	.uleb128 0xe
	.long	0x41
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.long	.LASF444
	.byte	0x10
	.long	0x262e
	.uleb128 0x9
	.byte	0x3
	.quad	STD_FUNCTION_RET_TYPE
	.uleb128 0xd
	.long	0x27d
	.long	0x2662
	.uleb128 0xe
	.long	0x41
	.byte	0x4
	.byte	0
	.uleb128 0x2d
	.long	.LASF445
	.byte	0x11
	.long	0x2652
	.uleb128 0x9
	.byte	0x3
	.quad	NATIVE_FUNCTIONS_STD
	.uleb128 0x56
	.long	.LASF463
	.long	0x392
	.uleb128 0x2e
	.long	0x1204
	.long	.LASF446
	.long	0x2690
	.long	0x269a
	.uleb128 0x2f
	.long	.LASF448
	.long	0x2501
	.byte	0
	.uleb128 0x2e
	.long	0x11eb
	.long	.LASF447
	.long	0x26ab
	.long	0x26b5
	.uleb128 0x2f
	.long	.LASF448
	.long	0x2501
	.byte	0
	.uleb128 0x5
	.long	.LASF449
	.byte	0x10
	.value	0x16d
	.byte	0xc
	.long	0xcb
	.long	0x26d6
	.uleb128 0x1
	.long	0x74b
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x1513
	.byte	0
	.uleb128 0x30
	.long	.LASF450
	.byte	0x5
	.long	.LASF452
	.long	0x26ef
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0x32e
	.byte	0
	.uleb128 0x30
	.long	.LASF451
	.byte	0x7
	.long	.LASF453
	.long	0x270d
	.uleb128 0x1
	.long	0x152
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x32e
	.byte	0
	.uleb128 0x2a
	.long	.LASF455
	.long	0x2772
	.uleb128 0x25
	.long	.LASF456
	.byte	0x32
	.byte	0x33
	.byte	0xd
	.long	.LASF457
	.long	0xcb
	.long	0x272e
	.long	0x273f
	.uleb128 0xb
	.long	0x2772
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x13
	.byte	0
	.uleb128 0x57
	.string	"log"
	.byte	0x32
	.byte	0x24
	.byte	0xe
	.long	.LASF489
	.byte	0x1
	.long	0x2754
	.long	0x2760
	.uleb128 0xb
	.long	0x2772
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x13
	.byte	0
	.uleb128 0x58
	.long	.LASF490
	.byte	0x32
	.byte	0x19
	.byte	0x18
	.long	.LASF491
	.long	0x27a6
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	0x270d
	.uleb128 0x5
	.long	.LASF458
	.byte	0x33
	.value	0x1a3
	.byte	0xe
	.long	0x273
	.long	0x278e
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF459
	.byte	0x10
	.value	0x164
	.byte	0xc
	.long	0xcb
	.long	0x27a6
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x13
	.byte	0
	.uleb128 0x1e
	.long	0x270d
	.uleb128 0x59
	.long	.LASF492
	.quad	.LFB2944
	.quad	.LFE2944-.LFB2944
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5a
	.long	.LASF493
	.quad	.LFB2943
	.quad	.LFE2943-.LFB2943
	.uleb128 0x1
	.byte	0x9c
	.long	0x27fc
	.uleb128 0x1a
	.long	.LASF460
	.value	0x1a6
	.byte	0x5
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF461
	.value	0x1a6
	.byte	0x5
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5b
	.long	.LASF494
	.byte	0x1
	.value	0x19a
	.byte	0xd
	.quad	.LFB2276
	.quad	.LFE2276-.LFB2276
	.uleb128 0x1
	.byte	0x9c
	.long	0x2863
	.uleb128 0x1a
	.long	.LASF462
	.value	0x19a
	.byte	0x23
	.long	0x27d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x13
	.uleb128 0x12
	.long	.LASF464
	.long	0x2873
	.uleb128 0x9
	.byte	0x3
	.quad	.LC74
	.uleb128 0x12
	.long	.LASF465
	.long	0x949
	.uleb128 0x9
	.byte	0x3
	.quad	.LC75
	.uleb128 0x5c
	.string	"ptr"
	.byte	0x1
	.value	0x19e
	.byte	0xd
	.long	0x72e
	.uleb128 0x2
	.byte	0x70
	.sleb128 -64
	.byte	0
	.uleb128 0xd
	.long	0x267
	.long	0x2873
	.uleb128 0xe
	.long	0x41
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.long	0x2863
	.uleb128 0x5d
	.long	.LASF467
	.byte	0x1
	.value	0x185
	.byte	0x14
	.long	0x27d
	.quad	.LFB2275
	.quad	.LFE2275-.LFB2275
	.uleb128 0x1
	.byte	0x9c
	.long	0x28b4
	.uleb128 0x1a
	.long	.LASF466
	.value	0x185
	.byte	0x30
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5e
	.long	.LASF465
	.long	0x25ae
	.byte	0
	.uleb128 0x31
	.long	.LASF468
	.value	0x15a
	.long	0xcb
	.quad	.LFB2274
	.quad	.LFE2274-.LFB2274
	.uleb128 0x1
	.byte	0x9c
	.long	0x290b
	.uleb128 0x1a
	.long	.LASF469
	.value	0x15a
	.byte	0x2c
	.long	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF464
	.long	0x291b
	.uleb128 0x9
	.byte	0x3
	.quad	.LC62
	.uleb128 0x12
	.long	.LASF465
	.long	0x2930
	.uleb128 0x9
	.byte	0x3
	.quad	.LC63
	.byte	0
	.uleb128 0xd
	.long	0x267
	.long	0x291b
	.uleb128 0xe
	.long	0x41
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.long	0x290b
	.uleb128 0xd
	.long	0x267
	.long	0x2930
	.uleb128 0xe
	.long	0x41
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.long	0x2920
	.uleb128 0x31
	.long	.LASF470
	.value	0x11d
	.long	0xcb
	.quad	.LFB2273
	.quad	.LFE2273-.LFB2273
	.uleb128 0x1
	.byte	0x9c
	.long	0x298c
	.uleb128 0x1a
	.long	.LASF469
	.value	0x11d
	.byte	0x32
	.long	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF464
	.long	0x299c
	.uleb128 0x9
	.byte	0x3
	.quad	.LC59
	.uleb128 0x12
	.long	.LASF465
	.long	0x25ae
	.uleb128 0x9
	.byte	0x3
	.quad	.LC60
	.byte	0
	.uleb128 0xd
	.long	0x267
	.long	0x299c
	.uleb128 0xe
	.long	0x41
	.byte	0x23
	.byte	0
	.uleb128 0x8
	.long	0x298c
	.uleb128 0x32
	.long	.LASF471
	.byte	0xdb
	.long	0xcb
	.quad	.LFB2272
	.quad	.LFE2272-.LFB2272
	.uleb128 0x1
	.byte	0x9c
	.long	0x29f6
	.uleb128 0x21
	.long	.LASF469
	.byte	0xdb
	.byte	0x2f
	.long	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF464
	.long	0x2a06
	.uleb128 0x9
	.byte	0x3
	.quad	.LC53
	.uleb128 0x12
	.long	.LASF465
	.long	0x2a1b
	.uleb128 0x9
	.byte	0x3
	.quad	.LC54
	.byte	0
	.uleb128 0xd
	.long	0x267
	.long	0x2a06
	.uleb128 0xe
	.long	0x41
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.long	0x29f6
	.uleb128 0xd
	.long	0x267
	.long	0x2a1b
	.uleb128 0xe
	.long	0x41
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.long	0x2a0b
	.uleb128 0x32
	.long	.LASF472
	.byte	0x34
	.long	0xcb
	.quad	.LFB2271
	.quad	.LFE2271-.LFB2271
	.uleb128 0x1
	.byte	0x9c
	.long	0x2adc
	.uleb128 0x21
	.long	.LASF469
	.byte	0x34
	.byte	0x29
	.long	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF465
	.long	0x949
	.uleb128 0x9
	.byte	0x3
	.quad	.LC50
	.uleb128 0x33
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x2a86
	.uleb128 0xc
	.long	.LASF473
	.byte	0x1
	.byte	0x63
	.byte	0x18
	.long	0x278
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x2aab
	.uleb128 0xc
	.long	.LASF473
	.byte	0x1
	.byte	0x79
	.byte	0x18
	.long	0x278
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5f
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x60
	.string	"var"
	.byte	0x1
	.byte	0xb4
	.byte	0x18
	.long	0x278
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF474
	.byte	0x1
	.byte	0xbf
	.byte	0x18
	.long	0x278
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x61
	.long	.LASF476
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.long	.LASF478
	.long	0xcb
	.quad	.LFB2270
	.quad	.LFE2270-.LFB2270
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b45
	.uleb128 0x21
	.long	.LASF479
	.byte	0x1e
	.byte	0x2e
	.long	0x2b4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF480
	.byte	0x1e
	.byte	0x43
	.long	0x27d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF464
	.long	0x2b5f
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x12
	.long	.LASF465
	.long	0x2b74
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.byte	0
	.uleb128 0x6
	.long	0x329
	.uleb128 0x8
	.long	0x2b45
	.uleb128 0xd
	.long	0x267
	.long	0x2b5f
	.uleb128 0xe
	.long	0x41
	.byte	0x33
	.byte	0
	.uleb128 0x8
	.long	0x2b4f
	.uleb128 0xd
	.long	0x267
	.long	0x2b74
	.uleb128 0xe
	.long	0x41
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.long	0x2b64
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 36
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
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 22
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 22
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 34
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 49
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x17
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
	.uleb128 0x38
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x5c
	.uleb128 0x34
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5d
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5e
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
	.byte	0
	.byte	0
	.uleb128 0x5f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x60
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x61
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
.LASF36:
	.string	"t_name_ptr"
.LASF410:
	.string	"fgetc"
.LASF312:
	.string	"int8_t"
.LASF54:
	.string	"__gnuc_va_list"
.LASF210:
	.string	"__cust_iswap"
.LASF53:
	.string	"size_t"
.LASF412:
	.string	"fgets"
.LASF266:
	.string	"tm_hour"
.LASF86:
	.string	"__value"
.LASF170:
	.string	"OPERATOR_NUM"
.LASF125:
	.string	"_IO_codecvt"
.LASF335:
	.string	"uint_fast64_t"
.LASF62:
	.string	"signed char"
.LASF72:
	.string	"__uint_least8_t"
.LASF47:
	.string	"root"
.LASF105:
	.string	"_IO_save_end"
.LASF465:
	.string	"__func__"
.LASF398:
	.string	"lldiv"
.LASF209:
	.string	"__cust_imove"
.LASF262:
	.string	"wcscspn"
.LASF367:
	.string	"localeconv"
.LASF442:
	.string	"STD_FILE"
.LASF188:
	.string	"_M_get"
.LASF492:
	.string	"_GLOBAL__sub_I_STD_FUNCTION_RET_TYPE"
.LASF403:
	.string	"strtold"
.LASF400:
	.string	"strtoll"
.LASF224:
	.string	"_ZNSt8ios_base4InitC4ERKS0_"
.LASF98:
	.string	"_IO_write_base"
.LASF428:
	.string	"tmpnam"
.LASF371:
	.string	"div_t"
.LASF489:
	.string	"_ZN6Logger3logEPKcz"
.LASF147:
	.string	"BLOCK_CLOSING_BRACKET"
.LASF494:
	.string	"stdprint"
.LASF114:
	.string	"_lock"
.LASF378:
	.string	"at_quick_exit"
.LASF344:
	.string	"int_curr_symbol"
.LASF138:
	.string	"VARIABLE"
.LASF211:
	.string	"__cust_access"
.LASF328:
	.string	"int_fast8_t"
.LASF295:
	.string	"wcschr"
.LASF132:
	.string	"STATEMENT"
.LASF7:
	.string	"type"
.LASF355:
	.string	"n_cs_precedes"
.LASF176:
	.string	"MAX_WORD_LENGTH"
.LASF103:
	.string	"_IO_save_base"
.LASF238:
	.string	"mbrtowc"
.LASF167:
	.string	"INITIALIZATORS"
.LASF150:
	.string	"END_OF_STATEMENT"
.LASF286:
	.string	"wcsxfrm"
.LASF399:
	.string	"atoll"
.LASF351:
	.string	"int_frac_digits"
.LASF189:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EPv"
.LASF411:
	.string	"fgetpos"
.LASF89:
	.string	"__pos"
.LASF478:
	.string	"_Z18PutProgramToStdAWPPK7ProgramPKc"
.LASF260:
	.string	"wcscoll"
.LASF405:
	.string	"clearerr"
.LASF111:
	.string	"_cur_column"
.LASF334:
	.string	"uint_fast32_t"
.LASF349:
	.string	"positive_sign"
.LASF172:
	.string	"LESS"
.LASF83:
	.string	"__wch"
.LASF63:
	.string	"__uint8_t"
.LASF487:
	.string	"type_info"
.LASF379:
	.string	"atof"
.LASF380:
	.string	"atoi"
.LASF381:
	.string	"atol"
.LASF297:
	.string	"wcsrchr"
.LASF346:
	.string	"mon_decimal_point"
.LASF143:
	.string	"PARAMETR"
.LASF127:
	.string	"va_list"
.LASF123:
	.string	"FILE"
.LASF2:
	.string	"long int"
.LASF196:
	.string	"_ZNSt15__exception_ptr13exception_ptraSERKS0_"
.LASF135:
	.string	"FUNCTION_RET_TYPE"
.LASF272:
	.string	"tm_isdst"
.LASF164:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS"
.LASF254:
	.string	"vwprintf"
.LASF397:
	.string	"wctomb"
.LASF124:
	.string	"_IO_marker"
.LASF156:
	.string	"RETURN"
.LASF128:
	.string	"fpos_t"
.LASF361:
	.string	"int_n_cs_precedes"
.LASF221:
	.string	"~Init"
.LASF433:
	.string	"towctrans"
.LASF207:
	.string	"ranges"
.LASF389:
	.string	"rand"
.LASF447:
	.string	"_ZNSt8ios_base4InitC1Ev"
.LASF178:
	.string	"mbstate_t"
.LASF226:
	.string	"__ioinit"
.LASF163:
	.string	"FOUT"
.LASF206:
	.string	"nullptr_t"
.LASF28:
	.string	"size_of_tables_arr"
.LASF327:
	.string	"uint_least64_t"
.LASF271:
	.string	"tm_yday"
.LASF401:
	.string	"strtoull"
.LASF316:
	.string	"uint8_t"
.LASF93:
	.string	"_IO_FILE"
.LASF422:
	.string	"remove"
.LASF126:
	.string	"_IO_wide_data"
.LASF430:
	.string	"wctype_t"
.LASF195:
	.string	"operator="
.LASF246:
	.string	"__isoc99_swscanf"
.LASF228:
	.string	"fgetwc"
.LASF366:
	.string	"getwchar"
.LASF74:
	.string	"__uint_least16_t"
.LASF229:
	.string	"fgetws"
.LASF445:
	.string	"NATIVE_FUNCTIONS_STD"
.LASF59:
	.string	"unsigned char"
.LASF404:
	.string	"__int128 unsigned"
.LASF356:
	.string	"n_sep_by_space"
.LASF406:
	.string	"fclose"
.LASF299:
	.string	"wmemchr"
.LASF308:
	.string	"char16_t"
.LASF50:
	.string	"path_to_src_file"
.LASF245:
	.string	"__isoc99_fwscanf"
.LASF374:
	.string	"7lldiv_t"
.LASF259:
	.string	"wcscmp"
.LASF391:
	.string	"srand"
.LASF484:
	.string	"__builtin_va_list"
.LASF243:
	.string	"swprintf"
.LASF296:
	.string	"wcspbrk"
.LASF204:
	.string	"rethrow_exception"
.LASF44:
	.string	"Program"
.LASF162:
	.string	"NATIVE_FUNCTIONS_NUM"
.LASF12:
	.string	"local_type"
.LASF149:
	.string	"EXPRESSION_CLOSING_BRACKET"
.LASF18:
	.string	"value"
.LASF171:
	.string	"BIGGER"
.LASF45:
	.string	"token_arr"
.LASF40:
	.string	"char"
.LASF384:
	.string	"ldiv"
.LASF419:
	.string	"getc"
.LASF488:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF435:
	.string	"wctype"
.LASF13:
	.string	"global_initialization"
.LASF326:
	.string	"uint_least32_t"
.LASF37:
	.string	"t_name_id"
.LASF277:
	.string	"wcsncmp"
.LASF486:
	.string	"_IO_lock_t"
.LASF66:
	.string	"__uint16_t"
.LASF358:
	.string	"n_sign_posn"
.LASF223:
	.string	"_ZNSt8ios_base4InitD4Ev"
.LASF151:
	.string	"UNKNOWN_TYPE"
.LASF290:
	.string	"wmemmove"
.LASF8:
	.string	"name_id"
.LASF218:
	.string	"numbers"
.LASF369:
	.string	"5div_t"
.LASF145:
	.string	"SEPARATOR"
.LASF35:
	.string	"t_function_ret_type"
.LASF137:
	.string	"NAME"
.LASF265:
	.string	"tm_min"
.LASF95:
	.string	"_IO_read_ptr"
.LASF293:
	.string	"wscanf"
.LASF49:
	.string	"number_of_strings"
.LASF347:
	.string	"mon_thousands_sep"
.LASF247:
	.string	"ungetwc"
.LASF56:
	.string	"fp_offset"
.LASF418:
	.string	"ftell"
.LASF25:
	.string	"arr_size"
.LASF225:
	.string	"_ZNSt8ios_base4InitaSERKS0_"
.LASF237:
	.string	"mbrlen"
.LASF350:
	.string	"negative_sign"
.LASF450:
	.string	"PrintToken"
.LASF444:
	.string	"STD_FUNCTION_RET_TYPE"
.LASF453:
	.string	"_Z8LogTokenPK5TokenPKcPS3_"
.LASF134:
	.string	"INITIALIZATOR"
.LASF359:
	.string	"int_p_cs_precedes"
.LASF234:
	.string	"fwprintf"
.LASF449:
	.string	"vfprintf"
.LASF106:
	.string	"_markers"
.LASF304:
	.string	"wcstoull"
.LASF30:
	.string	"t_instruction"
.LASF88:
	.string	"_G_fpos_t"
.LASF78:
	.string	"__uint_least64_t"
.LASF470:
	.string	"PutNativeFunction"
.LASF481:
	.string	"GNU C++20 11.3.0 -mtune=generic -march=x86-64 -g -std=c++20 -fstrict-overflow -fstack-protector -fcheck-new -fsized-deallocation -fno-omit-frame-pointer -fPIE -fsanitize=address,leak -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF261:
	.string	"wcscpy"
.LASF459:
	.string	"printf"
.LASF251:
	.string	"vswprintf"
.LASF394:
	.string	"strtoul"
.LASF432:
	.string	"iswctype"
.LASF291:
	.string	"wmemset"
.LASF201:
	.string	"_ZNSt15__exception_ptr13exception_ptr4swapERS0_"
.LASF256:
	.string	"__isoc99_vwscanf"
.LASF222:
	.string	"_ZNSt8ios_base4InitC4Ev"
.LASF233:
	.string	"fwide"
.LASF307:
	.string	"char8_t"
.LASF94:
	.string	"_flags"
.LASF264:
	.string	"tm_sec"
.LASF202:
	.string	"__cxa_exception_type"
.LASF115:
	.string	"_offset"
.LASF175:
	.string	"MAX_FUNCTION_NAME_LENGTH"
.LASF278:
	.string	"wcsncpy"
.LASF160:
	.string	"function"
.LASF242:
	.string	"putwchar"
.LASF197:
	.string	"_ZNSt15__exception_ptr13exception_ptraSEOS0_"
.LASF152:
	.string	"TokenType"
.LASF288:
	.string	"wmemcmp"
.LASF165:
	.string	"NATIVE_FUNCTIONS"
.LASF70:
	.string	"__uint64_t"
.LASF383:
	.string	"getenv"
.LASF48:
	.string	"string_arr"
.LASF461:
	.string	"__priority"
.LASF325:
	.string	"uint_least16_t"
.LASF136:
	.string	"OPERATOR"
.LASF3:
	.string	"long unsigned int"
.LASF375:
	.string	"lldiv_t"
.LASF191:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4Ev"
.LASF462:
	.string	"format"
.LASF483:
	.string	"TokenValue"
.LASF184:
	.string	"_M_release"
.LASF11:
	.string	"var_number"
.LASF322:
	.string	"int_least32_t"
.LASF161:
	.string	"number_of_parametres"
.LASF311:
	.string	"__gnu_debug"
.LASF76:
	.string	"__uint_least32_t"
.LASF51:
	.string	"name_table_arr"
.LASF372:
	.string	"6ldiv_t"
.LASF97:
	.string	"_IO_read_base"
.LASF323:
	.string	"int_least64_t"
.LASF21:
	.string	"line"
.LASF248:
	.string	"vfwprintf"
.LASF314:
	.string	"int32_t"
.LASF448:
	.string	"this"
.LASF309:
	.string	"char32_t"
.LASF122:
	.string	"_unused2"
.LASF23:
	.string	"NameTable"
.LASF396:
	.string	"wcstombs"
.LASF273:
	.string	"tm_gmtoff"
.LASF17:
	.string	"right_child"
.LASF337:
	.string	"uintptr_t"
.LASF354:
	.string	"p_sep_by_space"
.LASF158:
	.string	"INSTRUCTIONS"
.LASF190:
	.string	"_ZNKSt15__exception_ptr13exception_ptr6_M_getEv"
.LASF130:
	.string	"__float128"
.LASF26:
	.string	"number_of_labels"
.LASF110:
	.string	"_old_offset"
.LASF166:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS_STRUCT"
.LASF417:
	.string	"fsetpos"
.LASF362:
	.string	"int_n_sep_by_space"
.LASF107:
	.string	"_chain"
.LASF460:
	.string	"__initialize_p"
.LASF22:
	.string	"indent"
.LASF451:
	.string	"LogToken"
.LASF68:
	.string	"__uint32_t"
.LASF4:
	.string	"long long int"
.LASF139:
	.string	"CONSTANT"
.LASF159:
	.string	"NativeFunctionStruct"
.LASF87:
	.string	"__mbstate_t"
.LASF479:
	.string	"program"
.LASF289:
	.string	"wmemcpy"
.LASF268:
	.string	"tm_mon"
.LASF213:
	.string	"__cmp_cat"
.LASF118:
	.string	"_freeres_list"
.LASF284:
	.string	"wcstol"
.LASF41:
	.string	"double"
.LASF387:
	.string	"mbtowc"
.LASF208:
	.string	"__cust_swap"
.LASF100:
	.string	"_IO_write_end"
.LASF491:
	.string	"_ZN6Logger11getInstanceEv"
.LASF20:
	.string	"ptr_to_src_code"
.LASF339:
	.string	"uintmax_t"
.LASF287:
	.string	"wctob"
.LASF441:
	.string	"BAD_ARGUMENT"
.LASF141:
	.string	"CALL"
.LASF55:
	.string	"gp_offset"
.LASF32:
	.string	"t_constant"
.LASF29:
	.string	"number_of_tables"
.LASF458:
	.string	"strerror"
.LASF131:
	.string	"float"
.LASF476:
	.string	"PutProgramToStdAWP"
.LASF376:
	.string	"__compar_fn_t"
.LASF482:
	.string	"decltype(nullptr)"
.LASF467:
	.string	"MathOperatorToStd"
.LASF357:
	.string	"p_sign_posn"
.LASF79:
	.string	"__intmax_t"
.LASF101:
	.string	"_IO_buf_base"
.LASF109:
	.string	"_flags2"
.LASF15:
	.string	"Token"
.LASF183:
	.string	"_M_addref"
.LASF440:
	.string	"FAILURE"
.LASF421:
	.string	"perror"
.LASF215:
	.string	"__cust"
.LASF336:
	.string	"intptr_t"
.LASF280:
	.string	"wcsspn"
.LASF168:
	.string	"FUNCTION_RET_TYPES"
.LASF475:
	.string	"operator bool"
.LASF6:
	.string	"unsigned int"
.LASF443:
	.string	"STRING_ARR"
.LASF416:
	.string	"fseek"
.LASF120:
	.string	"__pad5"
.LASF426:
	.string	"setvbuf"
.LASF457:
	.string	"_ZN6Logger9LogMsgRetEiPKcz"
.LASF27:
	.string	"NameTableArr"
.LASF395:
	.string	"system"
.LASF329:
	.string	"int_fast16_t"
.LASF431:
	.string	"wctrans_t"
.LASF57:
	.string	"overflow_arg_area"
.LASF423:
	.string	"rename"
.LASF173:
	.string	"COMMENT"
.LASF169:
	.string	"OPERATORS"
.LASF220:
	.string	"Init"
.LASF216:
	.string	"__cmp_alg"
.LASF121:
	.string	"_mode"
.LASF198:
	.string	"~exception_ptr"
.LASF341:
	.string	"decimal_point"
.LASF249:
	.string	"vfwscanf"
.LASF420:
	.string	"getchar"
.LASF116:
	.string	"_codecvt"
.LASF85:
	.string	"__count"
.LASF71:
	.string	"__int_least8_t"
.LASF300:
	.string	"__gnu_cxx"
.LASF306:
	.string	"bool"
.LASF324:
	.string	"uint_least8_t"
.LASF407:
	.string	"feof"
.LASF320:
	.string	"int_least8_t"
.LASF129:
	.string	"__unknown__"
.LASF227:
	.string	"btowc"
.LASF390:
	.string	"qsort"
.LASF294:
	.string	"__isoc99_wscanf"
.LASF338:
	.string	"intmax_t"
.LASF5:
	.string	"long double"
.LASF241:
	.string	"putwc"
.LASF144:
	.string	"ASSIGMENT"
.LASF330:
	.string	"int_fast32_t"
.LASF373:
	.string	"ldiv_t"
.LASF267:
	.string	"tm_mday"
.LASF42:
	.string	"NOT_DECLARED"
.LASF456:
	.string	"LogMsgRet"
.LASF84:
	.string	"__wchb"
.LASF382:
	.string	"bsearch"
.LASF471:
	.string	"PutInstruction"
.LASF153:
	.string	"INSTUCTIONS_NUM"
.LASF61:
	.string	"__int8_t"
.LASF142:
	.string	"NATIVE_FUNCTION"
.LASF446:
	.string	"_ZNSt8ios_base4InitD1Ev"
.LASF493:
	.string	"__static_initialization_and_destruction_0"
.LASF305:
	.string	"long long unsigned int"
.LASF200:
	.string	"swap"
.LASF58:
	.string	"reg_save_area"
.LASF302:
	.string	"wcstold"
.LASF360:
	.string	"int_p_sep_by_space"
.LASF468:
	.string	"PutOperator"
.LASF155:
	.string	"WHILE"
.LASF317:
	.string	"uint16_t"
.LASF303:
	.string	"wcstoll"
.LASF81:
	.string	"__off_t"
.LASF298:
	.string	"wcsstr"
.LASF455:
	.string	"Logger"
.LASF193:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EDn"
.LASF205:
	.string	"_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE"
.LASF174:
	.string	"MAIN_NAME"
.LASF425:
	.string	"setbuf"
.LASF279:
	.string	"wcsrtombs"
.LASF73:
	.string	"__int_least16_t"
.LASF331:
	.string	"int_fast64_t"
.LASF119:
	.string	"_freeres_buf"
.LASF270:
	.string	"tm_wday"
.LASF19:
	.string	"t_label_ptr"
.LASF385:
	.string	"mblen"
.LASF439:
	.string	"SUCCESS"
.LASF157:
	.string	"NUMBER_OF_INSTUCTIONS"
.LASF239:
	.string	"mbsinit"
.LASF244:
	.string	"swscanf"
.LASF281:
	.string	"wcstod"
.LASF282:
	.string	"wcstof"
.LASF283:
	.string	"wcstok"
.LASF219:
	.string	"__cxx11"
.LASF321:
	.string	"int_least16_t"
.LASF91:
	.string	"__fpos_t"
.LASF436:
	.string	"STD_LOG_NAME"
.LASF370:
	.string	"quot"
.LASF92:
	.string	"__FILE"
.LASF64:
	.string	"__int16_t"
.LASF332:
	.string	"uint_fast8_t"
.LASF104:
	.string	"_IO_backup_base"
.LASF365:
	.string	"setlocale"
.LASF113:
	.string	"_shortbuf"
.LASF52:
	.string	"number_of_global_vars"
.LASF253:
	.string	"__isoc99_vswscanf"
.LASF235:
	.string	"fwscanf"
.LASF177:
	.string	"wint_t"
.LASF310:
	.string	"__int128"
.LASF10:
	.string	"ret_type"
.LASF133:
	.string	"INSTRUCTION"
.LASF454:
	.string	"ios_base"
.LASF82:
	.string	"__off64_t"
.LASF203:
	.string	"_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv"
.LASF413:
	.string	"fopen"
.LASF490:
	.string	"getInstance"
.LASF434:
	.string	"wctrans"
.LASF342:
	.string	"thousands_sep"
.LASF250:
	.string	"__isoc99_vfwscanf"
.LASF179:
	.string	"__swappable_details"
.LASF474:
	.string	"expression"
.LASF424:
	.string	"rewind"
.LASF102:
	.string	"_IO_buf_end"
.LASF275:
	.string	"wcslen"
.LASF46:
	.string	"number_of_tokens"
.LASF473:
	.string	"name"
.LASF24:
	.string	"label_arr"
.LASF392:
	.string	"strtod"
.LASF402:
	.string	"strtof"
.LASF214:
	.string	"__cmp_cust"
.LASF393:
	.string	"strtol"
.LASF217:
	.string	"__debug"
.LASF480:
	.string	"file_name"
.LASF352:
	.string	"frac_digits"
.LASF438:
	.string	"ReturnStatus"
.LASF408:
	.string	"ferror"
.LASF345:
	.string	"currency_symbol"
.LASF65:
	.string	"short int"
.LASF182:
	.string	"_M_exception_object"
.LASF319:
	.string	"uint64_t"
.LASF263:
	.string	"wcsftime"
.LASF90:
	.string	"__state"
.LASF140:
	.string	"FUNCTION"
.LASF313:
	.string	"int16_t"
.LASF377:
	.string	"atexit"
.LASF477:
	.string	"_ZNKSt15__exception_ptr13exception_ptrcvbEv"
.LASF146:
	.string	"BLOCK_OPENING_BRACKET"
.LASF77:
	.string	"__int_least64_t"
.LASF112:
	.string	"_vtable_offset"
.LASF348:
	.string	"mon_grouping"
.LASF80:
	.string	"__uintmax_t"
.LASF9:
	.string	"number_of_vars"
.LASF258:
	.string	"wcscat"
.LASF427:
	.string	"tmpfile"
.LASF368:
	.string	"11__mbstate_t"
.LASF363:
	.string	"int_p_sign_posn"
.LASF180:
	.string	"__swappable_with_details"
.LASF274:
	.string	"tm_zone"
.LASF69:
	.string	"__int64_t"
.LASF429:
	.string	"ungetc"
.LASF255:
	.string	"vwscanf"
.LASF38:
	.string	"t_number_of_variables"
.LASF257:
	.string	"wcrtomb"
.LASF340:
	.string	"lconv"
.LASF96:
	.string	"_IO_read_end"
.LASF386:
	.string	"mbstowcs"
.LASF16:
	.string	"left_child"
.LASF276:
	.string	"wcsncat"
.LASF192:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4ERKS0_"
.LASF31:
	.string	"t_operator"
.LASF463:
	.string	"__dso_handle"
.LASF43:
	.string	"NOT_A_LABEL"
.LASF318:
	.string	"uint32_t"
.LASF364:
	.string	"int_n_sign_posn"
.LASF108:
	.string	"_fileno"
.LASF14:
	.string	"Label"
.LASF333:
	.string	"uint_fast16_t"
.LASF232:
	.string	"fputws"
.LASF252:
	.string	"vswscanf"
.LASF240:
	.string	"mbsrtowcs"
.LASF117:
	.string	"_wide_data"
.LASF186:
	.string	"_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv"
.LASF469:
	.string	"token"
.LASF75:
	.string	"__int_least32_t"
.LASF199:
	.string	"_ZNSt15__exception_ptr13exception_ptrD4Ev"
.LASF148:
	.string	"EXPRESSION_OPENING_BRACKET"
.LASF231:
	.string	"fputwc"
.LASF353:
	.string	"p_cs_precedes"
.LASF269:
	.string	"tm_year"
.LASF194:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EOS0_"
.LASF60:
	.string	"short unsigned int"
.LASF466:
	.string	"operation"
.LASF187:
	.string	"exception_ptr"
.LASF414:
	.string	"fread"
.LASF301:
	.string	"__ops"
.LASF212:
	.string	"__detail"
.LASF99:
	.string	"_IO_write_ptr"
.LASF464:
	.string	"__PRETTY_FUNCTION__"
.LASF181:
	.string	"__exception_ptr"
.LASF67:
	.string	"__int32_t"
.LASF315:
	.string	"int64_t"
.LASF472:
	.string	"PutToken"
.LASF39:
	.string	"t_varible_number"
.LASF185:
	.string	"_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv"
.LASF236:
	.string	"getwc"
.LASF34:
	.string	"t_native_function"
.LASF437:
	.string	"CRINGE"
.LASF343:
	.string	"grouping"
.LASF33:
	.string	"t_initializator"
.LASF452:
	.string	"_Z10PrintTokenPK5TokenPPKc"
.LASF292:
	.string	"wprintf"
.LASF409:
	.string	"fflush"
.LASF388:
	.string	"quick_exit"
.LASF154:
	.string	"ELSE"
.LASF230:
	.string	"wchar_t"
.LASF485:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF285:
	.string	"wcstoul"
.LASF415:
	.string	"freopen"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd"
.LASF0:
	.string	"../Common/StandartAWP/PutStd.cpp"
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
