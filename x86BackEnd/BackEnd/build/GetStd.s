	.file	"GetStd.cpp"
	.text
.Ltext0:
	.file 0 "/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd" "../Common/StandartAWP/GetStd.cpp"
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
	.align 32
	.type	_ZL11INDENT_SIZE, @object
	.size	_ZL11INDENT_SIZE, 4
_ZL11INDENT_SIZE:
	.long	2
	.zero	60
	.align 32
	.type	_ZL10NOT_A_NAME, @object
	.size	_ZL10NOT_A_NAME, 4
_ZL10NOT_A_NAME:
	.long	-555
	.zero	60
	.align 32
	.type	_ZL17NOT_A_INSTRUCTION, @object
	.size	_ZL17NOT_A_INSTRUCTION, 4
_ZL17NOT_A_INSTRUCTION:
	.long	-666
	.zero	60
	.align 32
	.type	_ZL19NOT_A_INITIALIZATOR, @object
	.size	_ZL19NOT_A_INITIALIZATOR, 4
_ZL19NOT_A_INITIALIZATOR:
	.long	-111
	.zero	60
	.align 32
	.type	_ZL14NOT_A_RET_TYPE, @object
	.size	_ZL14NOT_A_RET_TYPE, 4
_ZL14NOT_A_RET_TYPE:
	.long	-333
	.zero	60
	.align 32
	.type	_ZL21NOT_A_NATIVE_FUNCTION, @object
	.size	_ZL21NOT_A_NATIVE_FUNCTION, 4
_ZL21NOT_A_NATIVE_FUNCTION:
	.long	-222
	.zero	60
	.align 32
	.type	_ZL22START_NUMBER_OF_TOKENS, @object
	.size	_ZL22START_NUMBER_OF_TOKENS, 4
_ZL22START_NUMBER_OF_TOKENS:
	.long	20
	.zero	60
	.align 32
	.type	_ZL23START_NUMBER_OF_STRINGS, @object
	.size	_ZL23START_NUMBER_OF_STRINGS, 4
_ZL23START_NUMBER_OF_STRINGS:
	.long	16
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
	.align 32
.LC14:
	.string	"NIL"
	.zero	60
	.align 32
.LC15:
	.string	"PARAM"
	.zero	58
	.align 32
.LC16:
	.string	"ST"
	.zero	61
	.align 32
.LC17:
	.string	"FUNC"
	.zero	59
	.align 32
.LC18:
	.string	"RET"
	.zero	60
	.align 32
.LC19:
	.string	"CALL"
	.zero	59
	.align 32
.LC20:
	.string	"VAR"
	.zero	60
	.align 32
.LC21:
	.string	"IF"
	.zero	61
	.align 32
.LC22:
	.string	"ELSE"
	.zero	59
	.align 32
.LC23:
	.string	"TYPE"
	.zero	59
	.align 32
.LC24:
	.string	"VOID"
	.zero	59
	.align 32
.LC25:
	.string	"IN"
	.zero	61
	.align 32
.LC26:
	.string	"OUT"
	.zero	60
	.align 32
.LC27:
	.string	"SIN"
	.zero	60
	.align 32
.LC28:
	.string	"COS"
	.zero	60
	.align 32
.LC29:
	.string	"POW"
	.zero	60
	.align 32
.LC30:
	.string	"EQ"
	.zero	61
	.align 32
.LC31:
	.string	"ADD"
	.zero	60
	.align 32
.LC32:
	.string	"SUB"
	.zero	60
	.align 32
.LC33:
	.string	"MUL"
	.zero	60
	.align 32
.LC34:
	.string	"DIV"
	.zero	60
	.align 32
.LC35:
	.string	"IS_GT"
	.zero	58
	.align 32
.LC36:
	.string	"IS_BT"
	.zero	58
	.section	.data.rel.ro.local
	.align 32
	.type	_ZL10STD_LEXEMS, @object
	.size	_ZL10STD_LEXEMS, 552
_ZL10STD_LEXEMS:
	.quad	.LC14
	.zero	8
	.long	0
	.zero	4
	.quad	.LC15
	.byte	36
	.zero	7
	.long	12
	.zero	4
	.quad	.LC16
	.byte	36
	.zero	7
	.long	1
	.zero	4
	.quad	.LC17
	.byte	36
	.zero	7
	.long	9
	.zero	4
	.quad	.LC18
	.zero	8
	.long	4
	.zero	4
	.quad	.LC19
	.byte	36
	.zero	7
	.long	10
	.zero	4
	.quad	.LC20
	.long	1
	.zero	4
	.long	3
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.long	2
	.zero	4
	.quad	.LC22
	.long	1
	.zero	4
	.long	2
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.long	4
	.zero	4
	.quad	.LC24
	.long	1
	.zero	4
	.long	4
	.zero	4
	.quad	.LC25
	.long	1
	.zero	4
	.long	11
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.long	11
	.zero	4
	.quad	.LC27
	.long	2
	.zero	4
	.long	11
	.zero	4
	.quad	.LC28
	.long	3
	.zero	4
	.long	11
	.zero	4
	.quad	.LC29
	.long	4
	.zero	4
	.long	11
	.zero	4
	.quad	.LC30
	.byte	61
	.zero	7
	.long	61
	.zero	4
	.quad	.LC31
	.byte	43
	.zero	7
	.long	5
	.zero	4
	.quad	.LC32
	.byte	45
	.zero	7
	.long	5
	.zero	4
	.quad	.LC33
	.byte	42
	.zero	7
	.long	5
	.zero	4
	.quad	.LC34
	.byte	47
	.zero	7
	.long	5
	.zero	4
	.quad	.LC35
	.byte	62
	.zero	7
	.long	5
	.zero	4
	.quad	.LC36
	.byte	60
	.zero	7
	.long	5
	.zero	4
	.zero	56
	.section	.rodata
	.align 32
	.type	_ZL20NUMBER_OF_STD_LEXEMS, @object
	.size	_ZL20NUMBER_OF_STD_LEXEMS, 4
_ZL20NUMBER_OF_STD_LEXEMS:
	.long	23
	.zero	60
	.align 32
	.type	_ZL7ERROR_1, @object
	.size	_ZL7ERROR_1, 8
_ZL7ERROR_1:
	.quad	1
	.zero	56
	.align 32
	.type	_ZL7ERROR_2, @object
	.size	_ZL7ERROR_2, 8
_ZL7ERROR_2:
	.quad	2
	.zero	56
	.align 32
	.type	_ZL7ERROR_3, @object
	.size	_ZL7ERROR_3, 8
_ZL7ERROR_3:
	.quad	3
	.zero	56
	.align 32
	.type	_ZL7ERROR_4, @object
	.size	_ZL7ERROR_4, 8
_ZL7ERROR_4:
	.quad	4
	.zero	56
	.align 32
	.type	_ZL7ERROR_5, @object
	.size	_ZL7ERROR_5, 8
_ZL7ERROR_5:
	.quad	5
	.zero	56
	.align 32
	.type	_ZL7ERROR_6, @object
	.size	_ZL7ERROR_6, 8
_ZL7ERROR_6:
	.quad	6
	.zero	56
	.align 32
	.type	_ZL10PREV_ERROR, @object
	.size	_ZL10PREV_ERROR, 8
_ZL10PREV_ERROR:
	.quad	19
	.zero	56
	.align 32
	.type	_ZL14ERROR_TRASHOLD, @object
	.size	_ZL14ERROR_TRASHOLD, 8
_ZL14ERROR_TRASHOLD:
	.quad	153
	.zero	56
	.globl	__asan_stack_malloc_2
	.align 8
.LC37:
	.string	"2 32 24 12 func_111:111 96 64 4 ctx_"
	.align 32
.LC38:
	.string	"GetProgramFromStdAwp"
	.zero	43
	.align 32
.LC39:
	.string	"program"
	.zero	56
	.align 32
.LC40:
	.string	"ASSERTLOG:: Condition (%s) is false\n"
	.zero	59
	.align 32
.LC41:
	.string	"\033[93mASSERTLOG:: \033[0mCondition\033[95m (%s) \033[0mis \033[91mfalse\n\033[0m"
	.zero	32
	.align 32
.LC42:
	.string	"int GetProgramFromStdAwp(Program*, const char*)"
	.zero	48
	.align 32
.LC43:
	.string	"../Common/StandartAWP/GetStd.cpp"
	.zero	63
	.align 32
.LC44:
	.string	"\t%s:%d, function: %s\n"
	.zero	42
	.align 32
.LC45:
	.string	"It matches to error: (code %d) %s\n\n"
	.zero	60
	.align 32
.LC46:
	.string	"Shutting down the system (%s:%d)"
	.zero	63
	.align 32
.LC47:
	.string	"echo LOX\n"
	.zero	54
	.align 32
.LC48:
	.string	"path_to_file"
	.zero	51
	.text
	.globl	_Z20GetProgramFromStdAwpP7ProgramPKc
	.type	_Z20GetProgramFromStdAwpP7ProgramPKc, @function
_Z20GetProgramFromStdAwpP7ProgramPKc:
.LASANPC2865:
.LFB2865:
	.file 1 "../Common/StandartAWP/GetStd.cpp"
	.loc 1 110 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2865
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
	subq	$248, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	leaq	-240(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L1
	movl	$192, %edi
	call	__asan_stack_malloc_2@PLT
	testq	%rax, %rax
	je	.L1
	movq	%rax, %rbx
.L1:
	leaq	192(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC37(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2865(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-234881024, 2147450884(%r12)
	movl	$-218959118, 2147450888(%r12)
	movl	$-202116109, 2147450900(%r12)
	.loc 1 111 41
	leaq	-160(%r13), %rax
	leaq	.LC38(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE0:
	.loc 1 112 10
	cmpq	$0, -280(%rbp)
	jne	.L5
.LEHB1:
	.loc 1 112 47 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 112 53 discriminator 1
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC40(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 112 113 discriminator 3
	leaq	.LC39(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 112 261 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 112 267 discriminator 4
	leaq	.LC42(%rip), %r8
	movl	$112, %ecx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 112 364 discriminator 6
	leaq	.LC42(%rip), %rax
	movq	%rax, %rcx
	movl	$112, %edx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 112 474 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r14
	.loc 1 112 480 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC45(%rip), %rax
	movq	%rax, %rsi
	movq	%r14, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 112 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 112 33 discriminator 9
	movl	$112, %ecx
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 112 92 discriminator 11
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 112 115 discriminator 12
	movl	$-2, %r14d
	jmp	.L6
.L5:
	.loc 1 113 10
	cmpq	$0, -288(%rbp)
	jne	.L7
	.loc 1 113 52 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 113 58 discriminator 1
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC40(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 113 123 discriminator 3
	leaq	.LC48(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 113 276 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 113 282 discriminator 4
	leaq	.LC42(%rip), %r8
	movl	$113, %ecx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 113 379 discriminator 6
	leaq	.LC42(%rip), %rax
	movq	%rax, %rcx
	movl	$113, %edx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 113 489 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r14
	.loc 1 113 495 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC45(%rip), %rax
	movq	%rax, %rsi
	movq	%r14, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 113 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 113 33 discriminator 9
	movl	$113, %ecx
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 113 92 discriminator 11
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 113 115 discriminator 12
	movl	$-2, %r14d
	jmp	.L6
.L7:
	.loc 1 115 40
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10GetSrcFilePKc@PLT
	movq	%rax, -272(%rbp)
	.loc 1 116 6
	cmpq	$0, -272(%rbp)
	jne	.L8
	.loc 1 117 15
	movl	$-1, %r14d
	jmp	.L6
.L8:
	.loc 1 119 16
	leaq	-96(%r13), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%cl
	testb	%dl, %dl
	setle	%dl
	movl	%ecx, %esi
	andl	%edx, %esi
	movl	$64, %edx
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
	je	.L9
	movl	$64, %esi
	movq	%rax, %rdi
	call	__asan_report_store_n@PLT
.L9:
	movq	$0, -96(%r13)
	movq	$0, -88(%r13)
	movq	$0, -80(%r13)
	movq	$0, -72(%r13)
	movq	$0, -64(%r13)
	movq	$0, -56(%r13)
	movq	$0, -48(%r13)
	movq	$0, -40(%r13)
	.loc 1 120 17
	leaq	-96(%r13), %rax
	movq	%rax, -264(%rbp)
	.loc 1 122 42
	movq	-272(%rbp), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	_Z10CountLinesPKcc@PLT
	movq	%rax, -256(%rbp)
	.loc 1 126 23
	movq	-256(%rbp), %rdx
	movq	-272(%rbp), %rsi
	movq	-264(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	_Z14LexicalCtxCtorP10LexicalCtxPKcim@PLT
	.loc 1 126 66 discriminator 1
	testl	%eax, %eax
	setne	%al
	.loc 1 126 5 discriminator 1
	testb	%al, %al
	je	.L10
	.loc 1 127 16
	movl	$-1, %r14d
	jmp	.L6
.L10:
	.loc 1 129 34
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL15GetTokenFromStdP10LexicalCtx
	movq	%rax, -248(%rbp)
	.loc 1 130 5
	cmpq	$152, -248(%rbp)
	jbe	.L29
	.loc 1 133 34
	movq	-264(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L13
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L13:
	movq	-264(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 133 24
	movq	-280(%rbp), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L14
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L14:
	movq	-280(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 134 47
	movq	-264(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L15
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L15:
	movq	-264(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 134 31
	movl	%eax, %ecx
	movq	-280(%rbp), %rax
	addq	$8, %rax
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
	je	.L16
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L16:
	movq	-280(%rbp), %rax
	movl	%ecx, 8(%rax)
	.loc 1 135 19
	movq	-280(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L17
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L17:
	movq	-280(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 1 139 35
	movq	-264(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L18
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L18:
	movq	-264(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 1 139 25
	movq	-280(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L19
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L19:
	movq	-280(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 140 48
	movq	-264(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L20
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L20:
	movq	-264(%rbp), %rax
	movq	48(%rax), %rax
	.loc 1 140 32
	movl	%eax, %ecx
	movq	-280(%rbp), %rax
	addq	$32, %rax
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
	je	.L21
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L21:
	movq	-280(%rbp), %rax
	movl	%ecx, 32(%rax)
	.loc 1 142 31
	movq	-280(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L22
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L22:
	movq	-280(%rbp), %rax
	movq	-288(%rbp), %rdx
	movq	%rdx, 40(%rax)
	.loc 1 144 24
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 144 45
	movq	-264(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L23
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L23:
	.loc 1 144 45 is_stmt 0 discriminator 1
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 144 36 is_stmt 1 discriminator 1
	movl	$144, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rdx, %rcx
	leaq	.LC43(%rip), %rdx
	movq	%rax, %rsi
	call	_ZN6Logger8FREE_LOGEPvPKcS2_i@PLT
	.loc 1 145 24
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 145 36
	movq	-272(%rbp), %rax
	movl	$145, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rdx, %rcx
	leaq	.LC43(%rip), %rdx
	movq	%rax, %rsi
	call	_ZN6Logger8FREE_LOGEPvPKcS2_i@PLT
	.loc 1 147 12
	movl	$0, %r14d
	jmp	.L6
.L29:
	.loc 1 131 14
	nop
.L12:
	.loc 1 151 23
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	_Z18LexicalCtxFailDtorP10LexicalCtx@PLT
	.loc 1 152 24
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 152 36
	movq	-272(%rbp), %rax
	movl	$152, %r8d
	leaq	.LC38(%rip), %rdx
	movq	%rdx, %rcx
	leaq	.LC43(%rip), %rdx
	movq	%rax, %rsi
	call	_ZN6Logger8FREE_LOGEPvPKcS2_i@PLT
.LEHE1:
	.loc 1 154 12
	movl	$-1, %r14d
.L6:
	.loc 1 155 5
	leaq	-160(%r13), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r14d, %edx
	.loc 1 110 5
	cmpq	%rbx, %r15
	je	.L2
	jmp	.L28
.L26:
	endbr64
	.loc 1 155 5
	movq	%rax, %rbx
	leaq	-160(%r13), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L28:
	.loc 1 110 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rsi
	movabsq	$-723401728380766731, %rdi
	movq	%rsi, 2147450880(%r12)
	movq	%rdi, 2147450888(%r12)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450896(%r12)
	movq	248(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L3
.L2:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
	movl	$0, 2147450900(%r12)
.L3:
	.loc 1 155 5
	movl	%edx, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2865:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2865:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2865-.LLSDACSB2865
.LLSDACSB2865:
	.uleb128 .LEHB0-.LFB2865
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2865
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L26-.LFB2865
	.uleb128 0
	.uleb128 .LEHB2-.LFB2865
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2865:
	.text
	.size	_Z20GetProgramFromStdAwpP7ProgramPKc, .-_Z20GetProgramFromStdAwpP7ProgramPKc
	.section	.rodata
	.align 32
	.type	_ZL12END_OF_TOKEN, @object
	.size	_ZL12END_OF_TOKEN, 8
_ZL12END_OF_TOKEN:
	.quad	2457
	.zero	56
	.bss
	.align 32
	.type	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer, @object
	.size	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer, 256
_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer:
	.zero	288
	.section	.rodata
	.align 8
.LC49:
	.string	"3 48 4 1 n 64 8 5 value 96 24 12 func_174:174"
	.align 32
.LC50:
	.string	"GetTokenFromStd"
	.zero	48
	.align 32
.LC51:
	.string	"ctx"
	.zero	60
	.align 32
.LC52:
	.string	"Token* GetTokenFromStd(LexicalCtx*)"
	.zero	60
	.align 32
.LC53:
	.string	"\t%s: "
	.zero	58
	.align 32
.LC54:
	.string	" \n\t"
	.zero	60
	.align 32
.LC55:
	.string	"Missing '{' in <%.*s>\n"
	.zero	41
	.align 32
.LC56:
	.string	" (%s:%d)\n"
	.zero	54
	.align 32
.LC57:
	.string	" %[a-zA-Z_]%n"
	.zero	50
	.align 32
.LC58:
	.string	"<%s> not a std cmd\n"
	.zero	44
	.align 32
.LC59:
	.string	"Missing '}' in <%.*s>\n"
	.zero	41
	.align 32
.LC61:
	.string	" %lg%n"
	.zero	57
	.align 32
.LC62:
	.string	" \"%[^\"]%n"
	.zero	54
	.align 32
.LC63:
	.string	"word_buffer"
	.zero	52
	.align 32
.LC64:
	.string	"\t%s: <%s>\n"
	.zero	53
	.align 32
.LC65:
	.string	"n"
	.zero	62
	.align 32
.LC66:
	.string	"\t%s: %d\n"
	.zero	55
	.align 32
.LC67:
	.string	"BUF(ctx)->str"
	.zero	50
	.align 32
.LC68:
	.string	"Got left"
	.zero	55
	.align 32
.LC69:
	.string	"\"Got left\""
	.zero	53
	.align 32
.LC70:
	.string	"Got right"
	.zero	54
	.align 32
.LC71:
	.string	"\"Got right\""
	.zero	52
	.text
	.type	_ZL15GetTokenFromStdP10LexicalCtx, @function
_ZL15GetTokenFromStdP10LexicalCtx:
.LASANPC2866:
.LFB2866:
	.loc 1 173 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2866
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
	subq	$200, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -232(%rbp)
	leaq	-208(%rbp), %r12
	movq	%r12, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L30
	movl	$160, %edi
	call	__asan_stack_malloc_2@PLT
	testq	%rax, %rax
	je	.L30
	movq	%rax, %r12
.L30:
	leaq	160(%r12), %rax
	movq	%rax, %rbx
	movq	$1102416563, (%r12)
	leaq	.LC49(%rip), %rax
	movq	%rax, 8(%r12)
	leaq	.LASANPC2866(%rip), %rax
	movq	%rax, 16(%r12)
	movq	%r12, %r13
	shrq	$3, %r13
	movl	$-235802127, 2147450880(%r13)
	movl	$-234556943, 2147450884(%r13)
	movl	$-218959360, 2147450888(%r13)
	movl	$-218103808, 2147450892(%r13)
	movl	$-202116109, 2147450896(%r13)
	.loc 1 174 41
	leaq	-64(%rbx), %rax
	leaq	.LC50(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE3:
	.loc 1 175 10
	cmpq	$0, -232(%rbp)
	jne	.L34
.LEHB4:
	.loc 1 175 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 175 49 discriminator 1
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC40(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 175 105 discriminator 3
	leaq	.LC51(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 175 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 175 255 discriminator 4
	leaq	.LC52(%rip), %r8
	movl	$175, %ecx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 175 352 discriminator 6
	leaq	.LC52(%rip), %rax
	movq	%rax, %rcx
	movl	$175, %edx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 175 462 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r14
	.loc 1 175 468 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC45(%rip), %rax
	movq	%rax, %rsi
	movq	%r14, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 175 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 175 33 discriminator 9
	movl	$175, %ecx
	leaq	.LC50(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 175 92 discriminator 11
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 175 4 discriminator 12
	movl	$0, %r14d
	jmp	.L35
.L34:
	.loc 1 177 30
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L36
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L36:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z11BufferGetChP6Buffer@PLT
	movl	%eax, -224(%rbp)
	.loc 1 179 5
	cmpl	$125, -224(%rbp)
	jne	.L37
	.loc 1 180 16
	movl	$2457, %r14d
	jmp	.L35
.L37:
	.loc 1 182 5
	cmpl	$123, -224(%rbp)
	je	.L38
	.loc 1 184 17
	leaq	.LC50(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 184 124 discriminator 1
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L39
	.loc 1 184 124 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L39:
	.loc 1 184 124 discriminator 1
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 184 45 is_stmt 1 discriminator 1
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L40
	.loc 1 184 45 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L40:
	.loc 1 184 45 discriminator 1
	movq	8(%rax), %r14
	.loc 1 184 95 is_stmt 1 discriminator 1
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 184 101 discriminator 1
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L41
	.loc 1 184 101 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L41:
	.loc 1 184 101 discriminator 1
	movq	8(%rax), %rax
	.loc 1 184 86 is_stmt 1 discriminator 1
	leaq	.LC54(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	.loc 1 184 45 discriminator 1
	movq	%r14, %rdx
	movl	%eax, %esi
	leaq	.LC55(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 184 142 discriminator 2
	movl	$184, %edx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC56(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 185 16
	movl	$1, %r14d
	jmp	.L35
.L38:
	.loc 1 189 12
	movl	$256, %edx
	movl	$0, %esi
	leaq	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer(%rip), %rax
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 191 9
	leaq	-112(%rbx), %rax
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
	je	.L42
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L42:
	movl	$0, -112(%rbx)
	.loc 1 193 28
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	_Z8GetTokenP10LexicalCtx@PLT
	movq	%rax, -216(%rbp)
	.loc 1 194 5
	cmpq	$0, -216(%rbp)
	jne	.L43
	.loc 1 195 16
	movl	$2, %r14d
	jmp	.L35
.L43:
.LBB2:
	.loc 1 198 25
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L44
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L44:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 198 31
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L45
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L45:
	movq	8(%rax), %rax
	.loc 1 198 16
	leaq	-112(%rbx), %rdx
	movq	%rdx, %rcx
	leaq	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer(%rip), %rdx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	.loc 1 198 70
	testl	%eax, %eax
	setg	%al
	.loc 1 198 5
	testb	%al, %al
	je	.L46
	.loc 1 200 21
	movq	-216(%rbp), %rax
	leaq	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL8SetTokenP5TokenPKc
	.loc 1 200 42
	shrl	$31, %eax
	.loc 1 200 9
	testb	%al, %al
	je	.L47
	.loc 1 202 19
	leaq	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC58(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 203 20
	movl	$3, %r14d
	jmp	.L35
.L47:
	.loc 1 206 20
	movq	-216(%rbp), %rax
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
	je	.L48
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L48:
	movq	-216(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 206 9
	testl	%eax, %eax
	jne	.L49
	.loc 1 208 23
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10UnGetTokenP10LexicalCtx@PLT
	.loc 1 209 21
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L50
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L50:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 209 31
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L51
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L51:
	movq	8(%rax), %rcx
	.loc 1 209 34
	leaq	-112(%rbx), %rax
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
	je	.L52
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L52:
	movl	-112(%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 209 21
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 209 31
	leaq	(%rcx,%rdx), %rsi
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L53
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L53:
	movq	%rsi, 8(%rax)
	.loc 1 211 28
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z11BufferGetChP6Buffer@PLT
	.loc 1 211 43
	cmpl	$125, %eax
	setne	%al
	.loc 1 211 13
	testb	%al, %al
	je	.L54
	.loc 1 213 25
	leaq	.LC50(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 213 132 discriminator 1
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L55
	.loc 1 213 132 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L55:
	.loc 1 213 132 discriminator 1
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 213 53 is_stmt 1 discriminator 1
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L56
	.loc 1 213 53 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L56:
	.loc 1 213 53 discriminator 1
	movq	8(%rax), %r14
	.loc 1 213 103 is_stmt 1 discriminator 1
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 213 109 discriminator 1
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L57
	.loc 1 213 109 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L57:
	.loc 1 213 109 discriminator 1
	movq	8(%rax), %rax
	.loc 1 213 94 is_stmt 1 discriminator 1
	leaq	.LC54(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	.loc 1 213 53 discriminator 1
	movq	%r14, %rdx
	movl	%eax, %esi
	leaq	.LC59(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 213 150 discriminator 2
	movl	$213, %edx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC56(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.LEHE4:
	.loc 1 214 24
	movl	$4, %r14d
	jmp	.L35
.L54:
	.loc 1 217 19
	movl	$0, %r14d
	jmp	.L35
.L46:
.LBB3:
	.loc 1 222 12
	leaq	-96(%rbx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L58
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L58:
	movsd	.LC60(%rip), %xmm0
	movsd	%xmm0, -96(%rbx)
.LBB4:
	.loc 1 223 25
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L59
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L59:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 223 31
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L60
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L60:
	movq	8(%rax), %rax
	.loc 1 223 16
	leaq	-112(%rbx), %rcx
	leaq	-96(%rbx), %rdx
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	.loc 1 223 58
	testl	%eax, %eax
	setg	%al
	.loc 1 223 5
	testb	%al, %al
	je	.L61
	.loc 1 225 21
	movq	-216(%rbp), %rax
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
	je	.L62
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L62:
	movq	-216(%rbp), %rax
	movl	$8, 16(%rax)
	.loc 1 226 33
	leaq	-96(%rbx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L63
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L63:
	movsd	-96(%rbx), %xmm0
	movq	-216(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L64
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L64:
	movq	-216(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	jmp	.L65
.L61:
.LBB5:
.LBB6:
	.loc 1 230 29
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L66
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L66:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 230 35
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L67
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L67:
	movq	8(%rax), %rax
	.loc 1 230 20
	leaq	-112(%rbx), %rdx
	movq	%rdx, %rcx
	leaq	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer(%rip), %rdx
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	.loc 1 230 72
	testl	%eax, %eax
	setg	%al
	.loc 1 230 9
	testb	%al, %al
	je	.L65
.LBB7:
	.loc 1 232 25
	movq	-216(%rbp), %rax
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
	je	.L68
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L68:
	movq	-216(%rbp), %rax
	movl	$6, 16(%rax)
	.loc 1 233 37
	movq	-216(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L69
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L69:
	movq	-216(%rbp), %rax
	leaq	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer(%rip), %rdx
	movq	%rdx, 24(%rax)
.LEHB5:
	.loc 1 235 37
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 235 43
	leaq	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC63(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC64(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 236 37
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 236 43
	leaq	-112(%rbx), %rax
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
	je	.L70
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L70:
	.loc 1 236 43 is_stmt 0 discriminator 1
	movl	-112(%rbx), %eax
	movl	%eax, %ecx
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 238 30 is_stmt 1
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer(%rip), %rax
	movq	%rax, %rdi
	call	_Z6IsNamePKcP10LexicalCtx@PLT
	movl	%eax, -220(%rbp)
	.loc 1 241 13
	cmpl	$-555, -220(%rbp)
	jne	.L71
	.loc 1 243 30
	movq	-216(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z9AddStringP10LexicalCtxP5Token@PLT
	.loc 1 243 43
	cmpl	$-1, %eax
	sete	%al
	.loc 1 243 17
	testb	%al, %al
	je	.L72
	.loc 1 244 28
	movl	$5, %r14d
	movl	$0, %eax
	jmp	.L73
.L71:
	.loc 1 247 40
	movq	-216(%rbp), %rax
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
	je	.L74
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L74:
	movq	-216(%rbp), %rax
	movl	-220(%rbp), %edx
	movl	%edx, 24(%rax)
.L72:
	.loc 1 249 28
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L75
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L75:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z11BufferGetChP6Buffer@PLT
.LEHE5:
	.loc 1 249 43
	cmpl	$125, %eax
	sete	%al
	.loc 1 249 13
	testb	%al, %al
	je	.L65
	.loc 1 251 25
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L76
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L76:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 251 35
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L77
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L77:
	movq	8(%rax), %rcx
	.loc 1 251 38
	leaq	-112(%rbx), %rax
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
	je	.L78
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L78:
	movl	-112(%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 251 25
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 251 35
	leaq	(%rcx,%rdx), %rsi
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L79
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L79:
	movq	%rsi, 8(%rax)
	.loc 1 252 24
	movq	-216(%rbp), %r14
	movl	$0, %eax
	jmp	.L73
.L65:
.LBE7:
.LBE6:
.LBE5:
.LBE4:
	movl	$1, %eax
.L73:
	leaq	-96(%rbx), %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movb	$-8, (%rdx)
	cmpl	$1, %eax
	jne	.L35
.L49:
.LBE3:
.LBE2:
	.loc 1 258 13
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L80
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L80:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 258 23
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L81
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L81:
	movq	8(%rax), %rcx
	.loc 1 258 26
	leaq	-112(%rbx), %rax
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
	je	.L82
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L82:
	movl	-112(%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 258 13
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 258 23
	leaq	(%rcx,%rdx), %rsi
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L83
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L83:
	movq	%rsi, 8(%rax)
.LEHB6:
	.loc 1 260 29
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 260 35
	leaq	-112(%rbx), %rax
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
	je	.L84
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L84:
	.loc 1 260 35 is_stmt 0 discriminator 1
	movl	-112(%rbx), %eax
	movl	%eax, %ecx
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 261 29 is_stmt 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 261 78
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L85
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L85:
	.loc 1 261 78 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 261 35 is_stmt 1 discriminator 1
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L86
	.loc 1 261 35 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L86:
	.loc 1 261 35 discriminator 1
	movq	8(%rax), %rax
	movq	%rax, %rcx
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC64(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 263 41 is_stmt 1
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL15GetTokenFromStdP10LexicalCtx
	.loc 1 263 24
	movq	-216(%rbp), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L87
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L87:
	.loc 1 263 24 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 1 264 21 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 264 10 discriminator 1
	cmpq	$152, %rax
	ja	.L88
	.loc 1 264 59 discriminator 1
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 264 49 discriminator 1
	testq	%rax, %rax
	je	.L88
	.loc 1 264 80 discriminator 2
	movl	$19, %r14d
	jmp	.L35
.L88:
	.loc 1 266 16
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L89
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L89:
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 266 5
	cmpq	$2457, %rax
	jne	.L90
	.loc 1 268 27
	movq	-216(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 269 16
	movq	-216(%rbp), %r14
	jmp	.L35
.L90:
	.loc 1 272 29
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 272 35
	leaq	.LC68(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC69(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC64(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 273 29
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 273 35
	leaq	-112(%rbx), %rax
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
	je	.L91
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L91:
	.loc 1 273 35 is_stmt 0 discriminator 1
	movl	-112(%rbx), %eax
	movl	%eax, %ecx
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 274 29 is_stmt 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 274 78
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L92
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L92:
	.loc 1 274 78 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 274 35 is_stmt 1 discriminator 1
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L93
	.loc 1 274 35 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L93:
	.loc 1 274 35 discriminator 1
	movq	8(%rax), %rax
	movq	%rax, %rcx
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC64(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 276 41 is_stmt 1
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL15GetTokenFromStdP10LexicalCtx
	.loc 1 276 24
	movq	-216(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L94
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L94:
	.loc 1 276 24 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 277 21 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 277 10 discriminator 1
	cmpq	$152, %rax
	ja	.L95
	.loc 1 277 60 discriminator 1
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 277 50 discriminator 1
	testq	%rax, %rax
	je	.L95
	.loc 1 277 82 discriminator 2
	movl	$19, %r14d
	jmp	.L35
.L95:
	.loc 1 279 29
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 279 35
	leaq	.LC70(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC71(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC64(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 280 29
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 280 35
	leaq	-112(%rbx), %rax
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
	je	.L96
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L96:
	.loc 1 280 35 is_stmt 0 discriminator 1
	movl	-112(%rbx), %eax
	movl	%eax, %ecx
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC66(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 281 29 is_stmt 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 281 78
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L97
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L97:
	.loc 1 281 78 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 281 35 is_stmt 1 discriminator 1
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L98
	.loc 1 281 35 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L98:
	.loc 1 281 35 discriminator 1
	movq	8(%rax), %rax
	movq	%rax, %rcx
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC64(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 283 20 is_stmt 1
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L99
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L99:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z11BufferGetChP6Buffer@PLT
	.loc 1 283 35
	cmpl	$125, %eax
	setne	%al
	.loc 1 283 5
	testb	%al, %al
	je	.L100
	.loc 1 285 25
	leaq	.LC50(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 285 132 discriminator 1
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L101
	.loc 1 285 132 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L101:
	.loc 1 285 132 discriminator 1
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 285 53 is_stmt 1 discriminator 1
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L102
	.loc 1 285 53 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L102:
	.loc 1 285 53 discriminator 1
	movq	8(%rax), %r14
	.loc 1 285 103 is_stmt 1 discriminator 1
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 285 109 discriminator 1
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L103
	.loc 1 285 109 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L103:
	.loc 1 285 109 discriminator 1
	movq	8(%rax), %rax
	.loc 1 285 94 is_stmt 1 discriminator 1
	leaq	.LC54(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	.loc 1 285 53 discriminator 1
	movq	%r14, %rdx
	movl	%eax, %esi
	leaq	.LC59(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 285 150 discriminator 2
	movl	$285, %edx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC56(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.LEHE6:
	.loc 1 286 24
	movl	$6, %r14d
	jmp	.L35
.L100:
	.loc 1 291 12
	movq	-216(%rbp), %r14
.L35:
	.loc 1 292 5
	leaq	-64(%rbx), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movq	%r14, %rdx
	.loc 1 173 5
	cmpq	%r12, %r15
	je	.L31
	jmp	.L109
.L108:
	endbr64
.LBB9:
.LBB8:
	leaq	-96(%rbx), %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movb	$-8, (%rdx)
	movq	%rax, %r12
	jmp	.L106
.L107:
	endbr64
.LBE8:
.LBE9:
	.loc 1 292 5
	movq	%rax, %r12
.L106:
	leaq	-64(%rbx), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movq	%r12, %rbx
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L109:
	.loc 1 173 5
	movq	$1172321806, (%r12)
	movabsq	$-723401728380766731, %rbx
	movabsq	$-723401728380766731, %rsi
	movq	%rbx, 2147450880(%r13)
	movq	%rsi, 2147450888(%r13)
	movl	$-168430091, 2147450896(%r13)
	movq	248(%r12), %rax
	movb	$0, (%rax)
	jmp	.L32
.L31:
	movq	$0, 2147450880(%r13)
	movq	$0, 2147450888(%r13)
	movl	$0, 2147450896(%r13)
.L32:
	.loc 1 292 5
	movq	%rdx, %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2866:
	.section	.gcc_except_table
.LLSDA2866:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2866-.LLSDACSB2866
.LLSDACSB2866:
	.uleb128 .LEHB3-.LFB2866
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2866
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L107-.LFB2866
	.uleb128 0
	.uleb128 .LEHB5-.LFB2866
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L108-.LFB2866
	.uleb128 0
	.uleb128 .LEHB6-.LFB2866
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L107-.LFB2866
	.uleb128 0
	.uleb128 .LEHB7-.LFB2866
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE2866:
	.text
	.size	_ZL15GetTokenFromStdP10LexicalCtx, .-_ZL15GetTokenFromStdP10LexicalCtx
	.globl	__asan_stack_malloc_1
	.section	.rodata
.LC72:
	.string	"1 32 24 12 func_296:296"
	.align 32
.LC73:
	.string	"SetToken"
	.zero	55
	.align 32
.LC74:
	.string	"token"
	.zero	58
	.align 32
.LC75:
	.string	"int SetToken(Token*, const char*)"
	.zero	62
	.text
	.type	_ZL8SetTokenP5TokenPKc, @function
_ZL8SetTokenP5TokenPKc:
.LASANPC2867:
.LFB2867:
	.loc 1 295 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2867
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
	subq	$136, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L110
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L110
	movq	%rax, %rbx
.L110:
	leaq	96(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC72(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2867(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 296 41
	leaq	-64(%r13), %rax
	leaq	.LC73(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB8:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE8:
	.loc 1 297 10
	cmpq	$0, -168(%rbp)
	jne	.L114
.LEHB9:
	.loc 1 297 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 297 51 discriminator 1
	leaq	.LC74(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC40(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 297 109 discriminator 3
	leaq	.LC74(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 297 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 297 261 discriminator 4
	leaq	.LC75(%rip), %r8
	movl	$297, %ecx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 297 358 discriminator 6
	leaq	.LC75(%rip), %rax
	movq	%rax, %rcx
	movl	$297, %edx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 297 468 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r14
	.loc 1 297 474 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC45(%rip), %rax
	movq	%rax, %rsi
	movq	%r14, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 297 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 297 33 discriminator 9
	movl	$297, %ecx
	leaq	.LC73(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 297 92 discriminator 11
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 297 115 discriminator 12
	movl	$-2, %r14d
	jmp	.L115
.L114:
	.loc 1 298 10
	cmpq	$0, -176(%rbp)
	jne	.L116
	.loc 1 298 51 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 298 57 discriminator 1
	leaq	.LC63(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC40(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 298 121 discriminator 3
	leaq	.LC63(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 298 273 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 298 279 discriminator 4
	leaq	.LC75(%rip), %r8
	movl	$298, %ecx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 298 376 discriminator 6
	leaq	.LC75(%rip), %rax
	movq	%rax, %rcx
	movl	$298, %edx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 298 486 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r14
	.loc 1 298 492 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC45(%rip), %rax
	movq	%rax, %rsi
	movq	%r14, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 298 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 1 298 33 discriminator 9
	movl	$298, %ecx
	leaq	.LC73(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 298 92 discriminator 11
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 298 115 discriminator 12
	movl	$-2, %r14d
	jmp	.L115
.L116:
.LBB10:
	.loc 1 300 14
	movl	$0, -148(%rbp)
	.loc 1 300 5
	jmp	.L117
.L124:
	.loc 1 302 49
	movl	-148(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	_ZL10STD_LEXEMS(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L118
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L118:
	movl	-148(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	_ZL10STD_LEXEMS(%rip), %rax
	movq	(%rdx,%rax), %rdx
	.loc 1 302 21
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z7stricmpPKcS0_@PLT
.LEHE9:
	.loc 1 302 13
	testl	%eax, %eax
	sete	%al
	.loc 1 302 9
	testb	%al, %al
	je	.L119
	.loc 1 304 42
	movl	-148(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	16(%rax), %rdx
	leaq	_ZL10STD_LEXEMS(%rip), %rax
	addq	%rdx, %rax
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
	je	.L120
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L120:
	movl	-148(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+_ZL10STD_LEXEMS(%rip), %rax
	movl	(%rdx,%rax), %ecx
	.loc 1 304 26
	movq	-168(%rbp), %rax
	addq	$16, %rax
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
	je	.L121
	movq	%rdx, %rdi
	call	__asan_report_store4@PLT
.L121:
	movq	-168(%rbp), %rax
	movl	%ecx, 16(%rax)
	.loc 1 305 26
	movq	-168(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L122
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L122:
	movl	-148(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	_ZL10STD_LEXEMS(%rip), %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L123
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L123:
	movq	-168(%rbp), %rdx
	movl	-148(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	8+_ZL10STD_LEXEMS(%rip), %rax
	movq	(%rcx,%rax), %rax
	movq	%rax, 24(%rdx)
	.loc 1 307 20
	movl	-148(%rbp), %r14d
	jmp	.L115
.L119:
	.loc 1 300 5 discriminator 2
	addl	$1, -148(%rbp)
.L117:
	.loc 1 300 23 discriminator 1
	cmpl	$22, -148(%rbp)
	jle	.L124
.LBE10:
	.loc 1 311 12
	movl	$-555, %r14d
.L115:
	.loc 1 312 5
	leaq	-64(%r13), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r14d, %edx
	.loc 1 295 5
	cmpq	%rbx, %r15
	je	.L111
	jmp	.L128
.L127:
	endbr64
	.loc 1 312 5
	movq	%rax, %rbx
	leaq	-64(%r13), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L128:
	.loc 1 295 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L112
.L111:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L112:
	.loc 1 312 5
	movl	%edx, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2867:
	.section	.gcc_except_table
.LLSDA2867:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2867-.LLSDACSB2867
.LLSDACSB2867:
	.uleb128 .LEHB8-.LFB2867
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2867
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L127-.LFB2867
	.uleb128 0
	.uleb128 .LEHB10-.LFB2867
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2867:
	.text
	.size	_ZL8SetTokenP5TokenPKc, .-_ZL8SetTokenP5TokenPKc
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LASANPC3651:
.LFB3651:
	.loc 1 312 5
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
	.loc 1 312 5
	cmpl	$1, -4(%rbp)
	jne	.L132
	.loc 1 312 5 is_stmt 0 discriminator 1
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	call	__asan_before_dynamic_init@PLT
	cmpl	$65535, -8(%rbp)
	jne	.L131
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
.L131:
	.loc 2 74 25 is_stmt 0 discriminator 1
	call	__asan_after_dynamic_init@PLT
.L132:
	.loc 1 312 5 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3651:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z20GetProgramFromStdAwpP7ProgramPKc, @function
_GLOBAL__sub_I__Z20GetProgramFromStdAwpP7ProgramPKc:
.LASANPC3652:
.LFB3652:
	.loc 1 312 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 312 5
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3652:
	.size	_GLOBAL__sub_I__Z20GetProgramFromStdAwpP7ProgramPKc, .-_GLOBAL__sub_I__Z20GetProgramFromStdAwpP7ProgramPKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z20GetProgramFromStdAwpP7ProgramPKc
	.section	.data.rel.local,"aw"
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC43
	.long	188
	.long	17
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC43
	.long	170
	.long	14
	.align 16
	.type	.LASANLOC3, @object
	.size	.LASANLOC3, 16
.LASANLOC3:
	.quad	.LC43
	.long	107
	.long	14
	.align 16
	.type	.LASANLOC4, @object
	.size	.LASANLOC4, 16
.LASANLOC4:
	.quad	.LC43
	.long	105
	.long	14
	.align 16
	.type	.LASANLOC5, @object
	.size	.LASANLOC5, 16
.LASANLOC5:
	.quad	.LC43
	.long	103
	.long	14
	.align 16
	.type	.LASANLOC6, @object
	.size	.LASANLOC6, 16
.LASANLOC6:
	.quad	.LC43
	.long	102
	.long	14
	.align 16
	.type	.LASANLOC7, @object
	.size	.LASANLOC7, 16
.LASANLOC7:
	.quad	.LC43
	.long	101
	.long	14
	.align 16
	.type	.LASANLOC8, @object
	.size	.LASANLOC8, 16
.LASANLOC8:
	.quad	.LC43
	.long	100
	.long	14
	.align 16
	.type	.LASANLOC9, @object
	.size	.LASANLOC9, 16
.LASANLOC9:
	.quad	.LC43
	.long	99
	.long	14
	.align 16
	.type	.LASANLOC10, @object
	.size	.LASANLOC10, 16
.LASANLOC10:
	.quad	.LC43
	.long	98
	.long	14
	.align 16
	.type	.LASANLOC11, @object
	.size	.LASANLOC11, 16
.LASANLOC11:
	.quad	.LC43
	.long	83
	.long	11
	.align 16
	.type	.LASANLOC12, @object
	.size	.LASANLOC12, 16
.LASANLOC12:
	.quad	.LC43
	.long	43
	.long	14
	.section	.rodata
	.align 8
.LC76:
	.string	"../ATC/RandomStuff/CommonEnums.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC13, @object
	.size	.LASANLOC13, 16
.LASANLOC13:
	.quad	.LC76
	.long	3
	.long	11
	.section	.rodata
.LC77:
	.string	"../ATC/Logger/LogConfig.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC14, @object
	.size	.LASANLOC14, 16
.LASANLOC14:
	.quad	.LC77
	.long	3
	.long	12
	.section	.rodata
.LC78:
	.string	"/usr/include/c++/11/iostream"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC15, @object
	.size	.LASANLOC15, 16
.LASANLOC15:
	.quad	.LC78
	.long	74
	.long	25
	.section	.rodata
	.align 8
.LC79:
	.string	"../Common/LexicalCtx/LexicalCtx.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC16, @object
	.size	.LASANLOC16, 16
.LASANLOC16:
	.quad	.LC79
	.long	30
	.long	11
	.align 16
	.type	.LASANLOC17, @object
	.size	.LASANLOC17, 16
.LASANLOC17:
	.quad	.LC79
	.long	29
	.long	11
	.align 16
	.type	.LASANLOC18, @object
	.size	.LASANLOC18, 16
.LASANLOC18:
	.quad	.LC79
	.long	27
	.long	11
	.align 16
	.type	.LASANLOC19, @object
	.size	.LASANLOC19, 16
.LASANLOC19:
	.quad	.LC79
	.long	26
	.long	11
	.align 16
	.type	.LASANLOC20, @object
	.size	.LASANLOC20, 16
.LASANLOC20:
	.quad	.LC79
	.long	25
	.long	11
	.align 16
	.type	.LASANLOC21, @object
	.size	.LASANLOC21, 16
.LASANLOC21:
	.quad	.LC79
	.long	24
	.long	11
	.align 16
	.type	.LASANLOC22, @object
	.size	.LASANLOC22, 16
.LASANLOC22:
	.quad	.LC79
	.long	23
	.long	11
	.section	.rodata
.LC80:
	.string	"../ATC/Buffer/my_buffer.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC23, @object
	.size	.LASANLOC23, 16
.LASANLOC23:
	.quad	.LC80
	.long	32
	.long	11
	.section	.rodata
.LC81:
	.string	"../Common/Grammar.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC24, @object
	.size	.LASANLOC24, 16
.LASANLOC24:
	.quad	.LC81
	.long	80
	.long	11
	.align 16
	.type	.LASANLOC25, @object
	.size	.LASANLOC25, 16
.LASANLOC25:
	.quad	.LC81
	.long	79
	.long	11
	.align 16
	.type	.LASANLOC26, @object
	.size	.LASANLOC26, 16
.LASANLOC26:
	.quad	.LC81
	.long	77
	.long	19
	.align 16
	.type	.LASANLOC27, @object
	.size	.LASANLOC27, 16
.LASANLOC27:
	.quad	.LC81
	.long	75
	.long	12
	.align 16
	.type	.LASANLOC28, @object
	.size	.LASANLOC28, 16
.LASANLOC28:
	.quad	.LC81
	.long	60
	.long	12
	.align 16
	.type	.LASANLOC29, @object
	.size	.LASANLOC29, 16
.LASANLOC29:
	.quad	.LC81
	.long	58
	.long	19
	.align 16
	.type	.LASANLOC30, @object
	.size	.LASANLOC30, 16
.LASANLOC30:
	.quad	.LC81
	.long	54
	.long	19
	.align 16
	.type	.LASANLOC31, @object
	.size	.LASANLOC31, 16
.LASANLOC31:
	.quad	.LC81
	.long	48
	.long	11
	.align 16
	.type	.LASANLOC32, @object
	.size	.LASANLOC32, 16
.LASANLOC32:
	.quad	.LC81
	.long	40
	.long	28
	.align 16
	.type	.LASANLOC33, @object
	.size	.LASANLOC33, 16
.LASANLOC33:
	.quad	.LC81
	.long	15
	.long	19
	.section	.rodata
	.align 8
.LC82:
	.string	"../Common/Structures/Tabels/Tabels.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC34, @object
	.size	.LASANLOC34, 16
.LASANLOC34:
	.quad	.LC82
	.long	8
	.long	11
	.align 16
	.type	.LASANLOC35, @object
	.size	.LASANLOC35, 16
.LASANLOC35:
	.quad	.LC82
	.long	7
	.long	11
	.section	.rodata
.LC83:
	.string	"END_OF_TOKEN"
.LC84:
	.string	"ERROR_TRASHOLD"
.LC85:
	.string	"PREV_ERROR"
.LC86:
	.string	"ERROR_6"
.LC87:
	.string	"ERROR_5"
.LC88:
	.string	"ERROR_4"
.LC89:
	.string	"ERROR_3"
.LC90:
	.string	"ERROR_2"
.LC91:
	.string	"ERROR_1"
.LC92:
	.string	"NUMBER_OF_STD_LEXEMS"
.LC93:
	.string	"STD_LEXEMS"
.LC94:
	.string	"CRINGE"
.LC95:
	.string	"STD_LOG_NAME"
.LC96:
	.string	"__ioinit"
.LC97:
	.string	"START_NUMBER_OF_STRINGS"
.LC98:
	.string	"START_NUMBER_OF_TOKENS"
.LC99:
	.string	"NOT_A_NATIVE_FUNCTION"
.LC100:
	.string	"NOT_A_RET_TYPE"
.LC101:
	.string	"NOT_A_INITIALIZATOR"
.LC102:
	.string	"NOT_A_INSTRUCTION"
.LC103:
	.string	"NOT_A_NAME"
.LC104:
	.string	"INDENT_SIZE"
.LC105:
	.string	"MAX_WORD_LENGTH"
.LC106:
	.string	"MAX_FUNCTION_NAME_LENGTH"
.LC107:
	.string	"MAIN_NAME"
.LC108:
	.string	"COMMENT"
.LC109:
	.string	"OPERATORS"
.LC110:
	.string	"FUNCTION_RET_TYPES"
.LC111:
	.string	"INITIALIZATORS"
	.align 8
.LC112:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS_STRUCT"
.LC113:
	.string	"NATIVE_FUNCTIONS"
.LC114:
	.string	"INSTRUCTIONS"
.LC115:
	.string	"NOT_A_LABEL"
.LC116:
	.string	"NOT_DECLARED"
.LC117:
	.string	"*.LC33"
.LC118:
	.string	"*.LC67"
.LC119:
	.string	"*.LC28"
.LC120:
	.string	"*.LC69"
.LC121:
	.string	"*.LC30"
.LC122:
	.string	"*.LC25"
.LC123:
	.string	"*.LC45"
.LC124:
	.string	"*.LC53"
.LC125:
	.string	"*.LC62"
.LC126:
	.string	"*.LC19"
.LC127:
	.string	"*.LC15"
.LC128:
	.string	"*.LC35"
.LC129:
	.string	"*.LC50"
.LC130:
	.string	"*.LC75"
.LC131:
	.string	"*.LC38"
.LC132:
	.string	"*.LC74"
.LC133:
	.string	"*.LC56"
.LC134:
	.string	"*.LC22"
.LC135:
	.string	"*.LC5"
.LC136:
	.string	"*.LC48"
.LC137:
	.string	"*.LC42"
.LC138:
	.string	"*.LC2"
.LC139:
	.string	"*.LC63"
.LC140:
	.string	"*.LC64"
.LC141:
	.string	"*.LC13"
.LC142:
	.string	"*.LC73"
.LC143:
	.string	"*.LC71"
.LC144:
	.string	"*.LC61"
.LC145:
	.string	"*.LC51"
.LC146:
	.string	"*.LC47"
.LC147:
	.string	"*.LC59"
.LC148:
	.string	"*.LC46"
.LC149:
	.string	"*.LC14"
.LC150:
	.string	"*.LC24"
.LC151:
	.string	"*.LC4"
.LC152:
	.string	"*.LC31"
.LC153:
	.string	"*.LC66"
.LC154:
	.string	"*.LC0"
.LC155:
	.string	"*.LC43"
.LC156:
	.string	"*.LC10"
.LC157:
	.string	"*.LC18"
.LC158:
	.string	"*.LC21"
.LC159:
	.string	"*.LC34"
.LC160:
	.string	"*.LC40"
.LC161:
	.string	"*.LC8"
.LC162:
	.string	"*.LC6"
.LC163:
	.string	"*.LC36"
.LC164:
	.string	"*.LC9"
.LC165:
	.string	"*.LC58"
.LC166:
	.string	"*.LC16"
.LC167:
	.string	"*.LC57"
.LC168:
	.string	"*.LC70"
.LC169:
	.string	"*.LC3"
.LC170:
	.string	"*.LC1"
.LC171:
	.string	"*.LC32"
.LC172:
	.string	"*.LC17"
.LC173:
	.string	"*.LC54"
.LC174:
	.string	"*.LC20"
.LC175:
	.string	"*.LC29"
.LC176:
	.string	"*.LC26"
.LC177:
	.string	"*.LC68"
.LC178:
	.string	"*.LC23"
.LC179:
	.string	"*.LC11"
.LC180:
	.string	"*.LC65"
.LC181:
	.string	"*.LC41"
.LC182:
	.string	"*.LC7"
.LC183:
	.string	"*.LC39"
.LC184:
	.string	"*.LC52"
.LC185:
	.string	"*.LC12"
.LC186:
	.string	"*.LC44"
.LC187:
	.string	"*.LC55"
.LC188:
	.string	"*.LC27"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 6848
.LASAN0:
	.quad	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer
	.quad	256
	.quad	288
	.quad	.LC63
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	_ZL12END_OF_TOKEN
	.quad	8
	.quad	64
	.quad	.LC83
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC2
	.quad	0
	.quad	_ZL14ERROR_TRASHOLD
	.quad	8
	.quad	64
	.quad	.LC84
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC3
	.quad	0
	.quad	_ZL10PREV_ERROR
	.quad	8
	.quad	64
	.quad	.LC85
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC4
	.quad	0
	.quad	_ZL7ERROR_6
	.quad	8
	.quad	64
	.quad	.LC86
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC5
	.quad	0
	.quad	_ZL7ERROR_5
	.quad	8
	.quad	64
	.quad	.LC87
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC6
	.quad	0
	.quad	_ZL7ERROR_4
	.quad	8
	.quad	64
	.quad	.LC88
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC7
	.quad	0
	.quad	_ZL7ERROR_3
	.quad	8
	.quad	64
	.quad	.LC89
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC8
	.quad	0
	.quad	_ZL7ERROR_2
	.quad	8
	.quad	64
	.quad	.LC90
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC9
	.quad	0
	.quad	_ZL7ERROR_1
	.quad	8
	.quad	64
	.quad	.LC91
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC10
	.quad	0
	.quad	_ZL20NUMBER_OF_STD_LEXEMS
	.quad	4
	.quad	64
	.quad	.LC92
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC11
	.quad	0
	.quad	_ZL10STD_LEXEMS
	.quad	552
	.quad	608
	.quad	.LC93
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC12
	.quad	0
	.quad	_ZL6CRINGE
	.quad	4
	.quad	64
	.quad	.LC94
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC13
	.quad	0
	.quad	_ZL12STD_LOG_NAME
	.quad	18
	.quad	64
	.quad	.LC95
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC14
	.quad	0
	.quad	_ZStL8__ioinit
	.quad	1
	.quad	64
	.quad	.LC96
	.quad	.LC43
	.quad	1
	.quad	.LASANLOC15
	.quad	0
	.quad	_ZL23START_NUMBER_OF_STRINGS
	.quad	4
	.quad	64
	.quad	.LC97
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC16
	.quad	0
	.quad	_ZL22START_NUMBER_OF_TOKENS
	.quad	4
	.quad	64
	.quad	.LC98
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC17
	.quad	0
	.quad	_ZL21NOT_A_NATIVE_FUNCTION
	.quad	4
	.quad	64
	.quad	.LC99
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC18
	.quad	0
	.quad	_ZL14NOT_A_RET_TYPE
	.quad	4
	.quad	64
	.quad	.LC100
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC19
	.quad	0
	.quad	_ZL19NOT_A_INITIALIZATOR
	.quad	4
	.quad	64
	.quad	.LC101
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC20
	.quad	0
	.quad	_ZL17NOT_A_INSTRUCTION
	.quad	4
	.quad	64
	.quad	.LC102
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC21
	.quad	0
	.quad	_ZL10NOT_A_NAME
	.quad	4
	.quad	64
	.quad	.LC103
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC22
	.quad	0
	.quad	_ZL11INDENT_SIZE
	.quad	4
	.quad	64
	.quad	.LC104
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC23
	.quad	0
	.quad	_ZL15MAX_WORD_LENGTH
	.quad	4
	.quad	64
	.quad	.LC105
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC24
	.quad	0
	.quad	_ZL24MAX_FUNCTION_NAME_LENGTH
	.quad	4
	.quad	64
	.quad	.LC106
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC25
	.quad	0
	.quad	_ZL9MAIN_NAME
	.quad	8
	.quad	64
	.quad	.LC107
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC26
	.quad	0
	.quad	_ZL7COMMENT
	.quad	1
	.quad	64
	.quad	.LC108
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC27
	.quad	0
	.quad	_ZL9OPERATORS
	.quad	9
	.quad	64
	.quad	.LC109
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC28
	.quad	0
	.quad	_ZL18FUNCTION_RET_TYPES
	.quad	16
	.quad	64
	.quad	.LC110
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC29
	.quad	0
	.quad	_ZL14INITIALIZATORS
	.quad	16
	.quad	64
	.quad	.LC111
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC30
	.quad	0
	.quad	_ZL33NUMBER_OF_NATIVE_FUNCTIONS_STRUCT
	.quad	4
	.quad	64
	.quad	.LC112
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC31
	.quad	0
	.quad	_ZL16NATIVE_FUNCTIONS
	.quad	80
	.quad	128
	.quad	.LC113
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC32
	.quad	0
	.quad	_ZL12INSTRUCTIONS
	.quad	32
	.quad	64
	.quad	.LC114
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC33
	.quad	0
	.quad	_ZL11NOT_A_LABEL
	.quad	4
	.quad	64
	.quad	.LC115
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC34
	.quad	0
	.quad	_ZL12NOT_DECLARED
	.quad	4
	.quad	64
	.quad	.LC116
	.quad	.LC43
	.quad	0
	.quad	.LASANLOC35
	.quad	0
	.quad	.LC33
	.quad	4
	.quad	64
	.quad	.LC117
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC67
	.quad	14
	.quad	64
	.quad	.LC118
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC28
	.quad	4
	.quad	64
	.quad	.LC119
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC69
	.quad	11
	.quad	64
	.quad	.LC120
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC30
	.quad	3
	.quad	64
	.quad	.LC121
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC25
	.quad	3
	.quad	64
	.quad	.LC122
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC45
	.quad	36
	.quad	96
	.quad	.LC123
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC53
	.quad	6
	.quad	64
	.quad	.LC124
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC62
	.quad	10
	.quad	64
	.quad	.LC125
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC19
	.quad	5
	.quad	64
	.quad	.LC126
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC15
	.quad	6
	.quad	64
	.quad	.LC127
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC35
	.quad	6
	.quad	64
	.quad	.LC128
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC50
	.quad	16
	.quad	64
	.quad	.LC129
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC75
	.quad	34
	.quad	96
	.quad	.LC130
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC38
	.quad	21
	.quad	64
	.quad	.LC131
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC74
	.quad	6
	.quad	64
	.quad	.LC132
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC56
	.quad	10
	.quad	64
	.quad	.LC133
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC22
	.quad	5
	.quad	64
	.quad	.LC134
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	4
	.quad	64
	.quad	.LC135
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC48
	.quad	13
	.quad	64
	.quad	.LC136
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC42
	.quad	48
	.quad	96
	.quad	.LC137
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	6
	.quad	64
	.quad	.LC138
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC63
	.quad	12
	.quad	64
	.quad	.LC139
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC64
	.quad	11
	.quad	64
	.quad	.LC140
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	5
	.quad	64
	.quad	.LC141
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC73
	.quad	9
	.quad	64
	.quad	.LC142
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC71
	.quad	12
	.quad	64
	.quad	.LC143
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC61
	.quad	7
	.quad	64
	.quad	.LC144
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC51
	.quad	4
	.quad	64
	.quad	.LC145
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.quad	10
	.quad	64
	.quad	.LC146
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC59
	.quad	23
	.quad	64
	.quad	.LC147
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC46
	.quad	33
	.quad	96
	.quad	.LC148
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC14
	.quad	4
	.quad	64
	.quad	.LC149
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC24
	.quad	5
	.quad	64
	.quad	.LC150
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	5
	.quad	64
	.quad	.LC151
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC31
	.quad	4
	.quad	64
	.quad	.LC152
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC66
	.quad	9
	.quad	64
	.quad	.LC153
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	3
	.quad	64
	.quad	.LC154
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC43
	.quad	33
	.quad	96
	.quad	.LC155
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	4
	.quad	64
	.quad	.LC156
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC18
	.quad	4
	.quad	64
	.quad	.LC157
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC21
	.quad	3
	.quad	64
	.quad	.LC158
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC34
	.quad	4
	.quad	64
	.quad	.LC159
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC40
	.quad	37
	.quad	96
	.quad	.LC160
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	4
	.quad	64
	.quad	.LC161
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	4
	.quad	64
	.quad	.LC162
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC36
	.quad	6
	.quad	64
	.quad	.LC163
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	7
	.quad	64
	.quad	.LC164
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC58
	.quad	20
	.quad	64
	.quad	.LC165
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC16
	.quad	3
	.quad	64
	.quad	.LC166
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC57
	.quad	14
	.quad	64
	.quad	.LC167
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC70
	.quad	10
	.quad	64
	.quad	.LC168
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	7
	.quad	64
	.quad	.LC169
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	5
	.quad	64
	.quad	.LC170
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC32
	.quad	4
	.quad	64
	.quad	.LC171
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC17
	.quad	5
	.quad	64
	.quad	.LC172
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC54
	.quad	4
	.quad	64
	.quad	.LC173
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	4
	.quad	64
	.quad	.LC174
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC29
	.quad	4
	.quad	64
	.quad	.LC175
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC26
	.quad	4
	.quad	64
	.quad	.LC176
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC68
	.quad	9
	.quad	64
	.quad	.LC177
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC23
	.quad	5
	.quad	64
	.quad	.LC178
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	7
	.quad	64
	.quad	.LC179
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC65
	.quad	2
	.quad	64
	.quad	.LC180
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC41
	.quad	64
	.quad	96
	.quad	.LC181
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	4
	.quad	64
	.quad	.LC182
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC39
	.quad	8
	.quad	64
	.quad	.LC183
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC52
	.quad	36
	.quad	96
	.quad	.LC184
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	5
	.quad	64
	.quad	.LC185
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC44
	.quad	22
	.quad	64
	.quad	.LC186
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC55
	.quad	23
	.quad	64
	.quad	.LC187
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC27
	.quad	4
	.quad	64
	.quad	.LC188
	.quad	.LC43
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB3653:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$107, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3653:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB3654:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$107, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3654:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.section	.rodata
	.align 8
.LC60:
	.long	0
	.long	2146959360
	.text
.Letext0:
	.file 3 "../Common/Structures/Tabels/NameTable.h"
	.file 4 "../Common/Structures/Token/Token.h"
	.file 5 "../Common/Structures/Tabels/Tabels.h"
	.file 6 "../Common/Structures/Program/Program.h"
	.file 7 "<built-in>"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/stdlib.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 18 "/usr/include/c++/11/cstdlib"
	.file 19 "/usr/include/c++/11/bits/std_abs.h"
	.file 20 "/usr/include/c++/11/cmath"
	.file 21 "/usr/include/c++/11/type_traits"
	.file 22 "/usr/include/c++/11/concepts"
	.file 23 "/usr/include/c++/11/bits/iterator_concepts.h"
	.file 24 "/usr/include/c++/11/bits/ranges_cmp.h"
	.file 25 "/usr/include/c++/11/compare"
	.file 26 "/usr/include/c++/11/debug/debug.h"
	.file 27 "/usr/include/c++/11/cwchar"
	.file 28 "/usr/include/c++/11/bits/exception_ptr.h"
	.file 29 "/usr/include/x86_64-linux-gnu/c++/11/bits/c++config.h"
	.file 30 "/usr/include/c++/11/cstdint"
	.file 31 "/usr/include/c++/11/clocale"
	.file 32 "/usr/include/c++/11/numbers"
	.file 33 "/usr/include/c++/11/cstdio"
	.file 34 "/usr/include/c++/11/bits/ios_base.h"
	.file 35 "/usr/include/c++/11/cwctype"
	.file 36 "/usr/include/c++/11/bits/predefined_ops.h"
	.file 37 "/usr/include/c++/11/stdlib.h"
	.file 38 "/usr/include/math.h"
	.file 39 "/usr/include/c++/11/bits/ptr_traits.h"
	.file 40 "/usr/include/c++/11/math.h"
	.file 41 "../Common/Grammar.h"
	.file 42 "../ATC/Buffer/my_buffer.h"
	.file 43 "../Common/LexicalCtx/LexicalCtx.h"
	.file 44 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
	.file 45 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 46 "/usr/include/wchar.h"
	.file 47 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 48 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 49 "/usr/include/stdint.h"
	.file 50 "/usr/include/locale.h"
	.file 51 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
	.file 52 "/usr/include/wctype.h"
	.file 53 "../ATC/Logger/LogConfig.h"
	.file 54 "../ATC/Logger/FunctionLogger.h"
	.file 55 "../ATC/RandomStuff/CommonEnums.h"
	.file 56 "/usr/include/string.h"
	.file 57 "../ATC/Logger/Logger.h"
	.file 58 "/usr/include/c++/11/bits/algorithmfwd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x47a7
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x34
	.long	.LASF767
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF59
	.byte	0x8
	.byte	0xd1
	.byte	0x1b
	.long	0x41
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0xe
	.byte	0x10
	.byte	0x4
	.long	.LASF5
	.uleb128 0x35
	.long	.LASF768
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x12
	.long	.LASF14
	.byte	0x20
	.byte	0x3
	.byte	0xd
	.byte	0x8
	.long	0xcb
	.uleb128 0x4
	.long	.LASF7
	.byte	0x3
	.byte	0xf
	.byte	0x9
	.long	0xcb
	.byte	0
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3
	.byte	0x10
	.byte	0x9
	.long	0xcb
	.byte	0x4
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x12
	.byte	0x9
	.long	0xcb
	.byte	0x8
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x13
	.byte	0x9
	.long	0xcb
	.byte	0xc
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x15
	.byte	0x9
	.long	0xcb
	.byte	0x10
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x16
	.byte	0x9
	.long	0xcb
	.byte	0x14
	.uleb128 0x4
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
	.uleb128 0xc
	.long	0xcb
	.uleb128 0x12
	.long	.LASF15
	.byte	0x38
	.byte	0x4
	.byte	0x16
	.byte	0x8
	.long	0x14d
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x18
	.byte	0xc
	.long	0x273
	.byte	0
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0x19
	.byte	0xc
	.long	0x273
	.byte	0x8
	.uleb128 0x4
	.long	.LASF7
	.byte	0x4
	.byte	0x1b
	.byte	0x9
	.long	0xcb
	.byte	0x10
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0x1d
	.byte	0x10
	.long	0x1d5
	.byte	0x18
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0x1f
	.byte	0xc
	.long	0x191
	.byte	0x20
	.uleb128 0x4
	.long	.LASF20
	.byte	0x4
	.byte	0x22
	.byte	0x11
	.long	0x27d
	.byte	0x28
	.uleb128 0x4
	.long	.LASF21
	.byte	0x4
	.byte	0x24
	.byte	0x9
	.long	0xcb
	.byte	0x30
	.uleb128 0x4
	.long	.LASF22
	.byte	0x4
	.byte	0x25
	.byte	0x9
	.long	0xcb
	.byte	0x34
	.byte	0
	.uleb128 0xc
	.long	0xd7
	.uleb128 0x7
	.long	0x14d
	.uleb128 0x12
	.long	.LASF23
	.byte	0x18
	.byte	0x3
	.byte	0x1b
	.byte	0x8
	.long	0x18c
	.uleb128 0x4
	.long	.LASF24
	.byte	0x3
	.byte	0x1d
	.byte	0xd
	.long	0x18c
	.byte	0
	.uleb128 0x4
	.long	.LASF25
	.byte	0x3
	.byte	0x1e
	.byte	0xc
	.long	0x35
	.byte	0x8
	.uleb128 0x4
	.long	.LASF26
	.byte	0x3
	.byte	0x20
	.byte	0xc
	.long	0x35
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x191
	.uleb128 0x7
	.long	0x62
	.uleb128 0x12
	.long	.LASF27
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.byte	0x8
	.long	0x1cb
	.uleb128 0x18
	.string	"arr"
	.byte	0x3
	.byte	0x25
	.byte	0x11
	.long	0x1cb
	.byte	0
	.uleb128 0x4
	.long	.LASF28
	.byte	0x3
	.byte	0x27
	.byte	0x9
	.long	0xcb
	.byte	0x8
	.uleb128 0x4
	.long	.LASF29
	.byte	0x3
	.byte	0x28
	.byte	0x9
	.long	0xcb
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	0x1d0
	.uleb128 0x7
	.long	0x157
	.uleb128 0x37
	.long	.LASF769
	.byte	0x8
	.byte	0x4
	.byte	0x7
	.byte	0x7
	.long	0x25b
	.uleb128 0x13
	.long	.LASF30
	.byte	0x4
	.byte	0x9
	.byte	0x9
	.long	0xcb
	.uleb128 0x13
	.long	.LASF31
	.byte	0x4
	.byte	0xa
	.byte	0xa
	.long	0x25b
	.uleb128 0x13
	.long	.LASF32
	.byte	0x4
	.byte	0xb
	.byte	0xc
	.long	0x267
	.uleb128 0x13
	.long	.LASF33
	.byte	0x4
	.byte	0xc
	.byte	0x9
	.long	0xcb
	.uleb128 0x13
	.long	.LASF34
	.byte	0x4
	.byte	0xd
	.byte	0x9
	.long	0xcb
	.uleb128 0x13
	.long	.LASF35
	.byte	0x4
	.byte	0xe
	.byte	0x9
	.long	0xcb
	.uleb128 0x13
	.long	.LASF36
	.byte	0x4
	.byte	0x10
	.byte	0xb
	.long	0x26e
	.uleb128 0x13
	.long	.LASF37
	.byte	0x4
	.byte	0x11
	.byte	0x9
	.long	0xcb
	.uleb128 0x13
	.long	.LASF38
	.byte	0x4
	.byte	0x12
	.byte	0x9
	.long	0xcb
	.uleb128 0x13
	.long	.LASF39
	.byte	0x4
	.byte	0x13
	.byte	0x9
	.long	0xcb
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF40
	.uleb128 0xc
	.long	0x25b
	.uleb128 0xe
	.byte	0x8
	.byte	0x4
	.long	.LASF41
	.uleb128 0x7
	.long	0x25b
	.uleb128 0x7
	.long	0xd7
	.uleb128 0xc
	.long	0x273
	.uleb128 0x7
	.long	0x262
	.uleb128 0xc
	.long	0x27d
	.uleb128 0x8
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12NOT_DECLARED
	.uleb128 0x8
	.long	.LASF43
	.byte	0x5
	.byte	0x8
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11NOT_A_LABEL
	.uleb128 0x12
	.long	.LASF44
	.byte	0x40
	.byte	0x6
	.byte	0x7
	.byte	0x8
	.long	0x329
	.uleb128 0x4
	.long	.LASF45
	.byte	0x6
	.byte	0x9
	.byte	0xc
	.long	0x273
	.byte	0
	.uleb128 0x4
	.long	.LASF46
	.byte	0x6
	.byte	0xa
	.byte	0x9
	.long	0xcb
	.byte	0x8
	.uleb128 0x4
	.long	.LASF47
	.byte	0x6
	.byte	0xc
	.byte	0xc
	.long	0x273
	.byte	0x10
	.uleb128 0x4
	.long	.LASF48
	.byte	0x6
	.byte	0xe
	.byte	0x12
	.long	0x329
	.byte	0x18
	.uleb128 0x4
	.long	.LASF49
	.byte	0x6
	.byte	0xf
	.byte	0x9
	.long	0xcb
	.byte	0x20
	.uleb128 0x4
	.long	.LASF50
	.byte	0x6
	.byte	0x11
	.byte	0x11
	.long	0x27d
	.byte	0x28
	.uleb128 0x4
	.long	.LASF51
	.byte	0x6
	.byte	0x14
	.byte	0x13
	.long	0x32e
	.byte	0x30
	.uleb128 0x4
	.long	.LASF52
	.byte	0x6
	.byte	0x15
	.byte	0x9
	.long	0xcb
	.byte	0x38
	.byte	0
	.uleb128 0x7
	.long	0x27d
	.uleb128 0x7
	.long	0x196
	.uleb128 0x38
	.long	.LASF770
	.byte	0x18
	.byte	0x7
	.byte	0
	.long	0x368
	.uleb128 0x20
	.long	.LASF53
	.long	0x5b
	.byte	0
	.uleb128 0x20
	.long	.LASF54
	.long	0x5b
	.byte	0x4
	.uleb128 0x20
	.long	.LASF55
	.long	0x368
	.byte	0x8
	.uleb128 0x20
	.long	.LASF56
	.long	0x368
	.byte	0x10
	.byte	0
	.uleb128 0x39
	.byte	0x8
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF57
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF58
	.uleb128 0x5
	.long	.LASF60
	.byte	0x9
	.byte	0x25
	.byte	0x15
	.long	0x384
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF61
	.uleb128 0x5
	.long	.LASF62
	.byte	0x9
	.byte	0x26
	.byte	0x17
	.long	0x36a
	.uleb128 0x5
	.long	.LASF63
	.byte	0x9
	.byte	0x27
	.byte	0x1a
	.long	0x3a3
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF64
	.uleb128 0x5
	.long	.LASF65
	.byte	0x9
	.byte	0x28
	.byte	0x1c
	.long	0x371
	.uleb128 0x5
	.long	.LASF66
	.byte	0x9
	.byte	0x29
	.byte	0x14
	.long	0xcb
	.uleb128 0xc
	.long	0x3b6
	.uleb128 0x5
	.long	.LASF67
	.byte	0x9
	.byte	0x2a
	.byte	0x16
	.long	0x5b
	.uleb128 0x5
	.long	.LASF68
	.byte	0x9
	.byte	0x2c
	.byte	0x19
	.long	0x2e
	.uleb128 0x5
	.long	.LASF69
	.byte	0x9
	.byte	0x2d
	.byte	0x1b
	.long	0x41
	.uleb128 0x5
	.long	.LASF70
	.byte	0x9
	.byte	0x34
	.byte	0x12
	.long	0x378
	.uleb128 0x5
	.long	.LASF71
	.byte	0x9
	.byte	0x35
	.byte	0x13
	.long	0x38b
	.uleb128 0x5
	.long	.LASF72
	.byte	0x9
	.byte	0x36
	.byte	0x13
	.long	0x397
	.uleb128 0x5
	.long	.LASF73
	.byte	0x9
	.byte	0x37
	.byte	0x14
	.long	0x3aa
	.uleb128 0x5
	.long	.LASF74
	.byte	0x9
	.byte	0x38
	.byte	0x13
	.long	0x3b6
	.uleb128 0x5
	.long	.LASF75
	.byte	0x9
	.byte	0x39
	.byte	0x14
	.long	0x3c7
	.uleb128 0x5
	.long	.LASF76
	.byte	0x9
	.byte	0x3a
	.byte	0x13
	.long	0x3d3
	.uleb128 0x5
	.long	.LASF77
	.byte	0x9
	.byte	0x3b
	.byte	0x14
	.long	0x3df
	.uleb128 0x5
	.long	.LASF78
	.byte	0x9
	.byte	0x48
	.byte	0x12
	.long	0x2e
	.uleb128 0x5
	.long	.LASF79
	.byte	0x9
	.byte	0x49
	.byte	0x1b
	.long	0x41
	.uleb128 0x5
	.long	.LASF80
	.byte	0x9
	.byte	0x98
	.byte	0x12
	.long	0x2e
	.uleb128 0x5
	.long	.LASF81
	.byte	0x9
	.byte	0x99
	.byte	0x12
	.long	0x2e
	.uleb128 0x21
	.byte	0x8
	.byte	0xa
	.byte	0xe
	.byte	0x1
	.long	.LASF130
	.long	0x4c5
	.uleb128 0x3a
	.byte	0x4
	.byte	0xa
	.byte	0x11
	.byte	0x3
	.long	0x4aa
	.uleb128 0x13
	.long	.LASF82
	.byte	0xa
	.byte	0x12
	.byte	0x12
	.long	0x5b
	.uleb128 0x13
	.long	.LASF83
	.byte	0xa
	.byte	0x13
	.byte	0xa
	.long	0x4c5
	.byte	0
	.uleb128 0x4
	.long	.LASF84
	.byte	0xa
	.byte	0xf
	.byte	0x7
	.long	0xcb
	.byte	0
	.uleb128 0x4
	.long	.LASF85
	.byte	0xa
	.byte	0x14
	.byte	0x5
	.long	0x488
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.long	0x25b
	.long	0x4d5
	.uleb128 0x10
	.long	0x41
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF86
	.byte	0xa
	.byte	0x15
	.byte	0x3
	.long	0x47b
	.uleb128 0x12
	.long	.LASF87
	.byte	0x10
	.byte	0xb
	.byte	0xa
	.byte	0x10
	.long	0x509
	.uleb128 0x4
	.long	.LASF88
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.long	0x463
	.byte	0
	.uleb128 0x4
	.long	.LASF89
	.byte	0xb
	.byte	0xd
	.byte	0xf
	.long	0x4d5
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF90
	.byte	0xb
	.byte	0xe
	.byte	0x3
	.long	0x4e1
	.uleb128 0x5
	.long	.LASF91
	.byte	0xc
	.byte	0x5
	.byte	0x19
	.long	0x521
	.uleb128 0x12
	.long	.LASF92
	.byte	0xd8
	.byte	0xd
	.byte	0x31
	.byte	0x8
	.long	0x6a8
	.uleb128 0x4
	.long	.LASF93
	.byte	0xd
	.byte	0x33
	.byte	0x7
	.long	0xcb
	.byte	0
	.uleb128 0x4
	.long	.LASF94
	.byte	0xd
	.byte	0x36
	.byte	0x9
	.long	0x26e
	.byte	0x8
	.uleb128 0x4
	.long	.LASF95
	.byte	0xd
	.byte	0x37
	.byte	0x9
	.long	0x26e
	.byte	0x10
	.uleb128 0x4
	.long	.LASF96
	.byte	0xd
	.byte	0x38
	.byte	0x9
	.long	0x26e
	.byte	0x18
	.uleb128 0x4
	.long	.LASF97
	.byte	0xd
	.byte	0x39
	.byte	0x9
	.long	0x26e
	.byte	0x20
	.uleb128 0x4
	.long	.LASF98
	.byte	0xd
	.byte	0x3a
	.byte	0x9
	.long	0x26e
	.byte	0x28
	.uleb128 0x4
	.long	.LASF99
	.byte	0xd
	.byte	0x3b
	.byte	0x9
	.long	0x26e
	.byte	0x30
	.uleb128 0x4
	.long	.LASF100
	.byte	0xd
	.byte	0x3c
	.byte	0x9
	.long	0x26e
	.byte	0x38
	.uleb128 0x4
	.long	.LASF101
	.byte	0xd
	.byte	0x3d
	.byte	0x9
	.long	0x26e
	.byte	0x40
	.uleb128 0x4
	.long	.LASF102
	.byte	0xd
	.byte	0x40
	.byte	0x9
	.long	0x26e
	.byte	0x48
	.uleb128 0x4
	.long	.LASF103
	.byte	0xd
	.byte	0x41
	.byte	0x9
	.long	0x26e
	.byte	0x50
	.uleb128 0x4
	.long	.LASF104
	.byte	0xd
	.byte	0x42
	.byte	0x9
	.long	0x26e
	.byte	0x58
	.uleb128 0x4
	.long	.LASF105
	.byte	0xd
	.byte	0x44
	.byte	0x16
	.long	0x6c1
	.byte	0x60
	.uleb128 0x4
	.long	.LASF106
	.byte	0xd
	.byte	0x46
	.byte	0x14
	.long	0x6c6
	.byte	0x68
	.uleb128 0x4
	.long	.LASF107
	.byte	0xd
	.byte	0x48
	.byte	0x7
	.long	0xcb
	.byte	0x70
	.uleb128 0x4
	.long	.LASF108
	.byte	0xd
	.byte	0x49
	.byte	0x7
	.long	0xcb
	.byte	0x74
	.uleb128 0x4
	.long	.LASF109
	.byte	0xd
	.byte	0x4a
	.byte	0xb
	.long	0x463
	.byte	0x78
	.uleb128 0x4
	.long	.LASF110
	.byte	0xd
	.byte	0x4d
	.byte	0x12
	.long	0x371
	.byte	0x80
	.uleb128 0x4
	.long	.LASF111
	.byte	0xd
	.byte	0x4e
	.byte	0xf
	.long	0x384
	.byte	0x82
	.uleb128 0x4
	.long	.LASF112
	.byte	0xd
	.byte	0x4f
	.byte	0x8
	.long	0x6cb
	.byte	0x83
	.uleb128 0x4
	.long	.LASF113
	.byte	0xd
	.byte	0x51
	.byte	0xf
	.long	0x6db
	.byte	0x88
	.uleb128 0x4
	.long	.LASF114
	.byte	0xd
	.byte	0x59
	.byte	0xd
	.long	0x46f
	.byte	0x90
	.uleb128 0x4
	.long	.LASF115
	.byte	0xd
	.byte	0x5b
	.byte	0x17
	.long	0x6e5
	.byte	0x98
	.uleb128 0x4
	.long	.LASF116
	.byte	0xd
	.byte	0x5c
	.byte	0x19
	.long	0x6ef
	.byte	0xa0
	.uleb128 0x4
	.long	.LASF117
	.byte	0xd
	.byte	0x5d
	.byte	0x14
	.long	0x6c6
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF118
	.byte	0xd
	.byte	0x5e
	.byte	0x9
	.long	0x368
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF119
	.byte	0xd
	.byte	0x5f
	.byte	0xa
	.long	0x35
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF120
	.byte	0xd
	.byte	0x60
	.byte	0x7
	.long	0xcb
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF121
	.byte	0xd
	.byte	0x62
	.byte	0x8
	.long	0x6f4
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF122
	.byte	0xe
	.byte	0x7
	.byte	0x19
	.long	0x521
	.uleb128 0x3b
	.long	.LASF771
	.byte	0xd
	.byte	0x2b
	.byte	0xe
	.uleb128 0x25
	.long	.LASF123
	.uleb128 0x7
	.long	0x6bc
	.uleb128 0x7
	.long	0x521
	.uleb128 0xf
	.long	0x25b
	.long	0x6db
	.uleb128 0x10
	.long	0x41
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x6b4
	.uleb128 0x25
	.long	.LASF124
	.uleb128 0x7
	.long	0x6e0
	.uleb128 0x25
	.long	.LASF125
	.uleb128 0x7
	.long	0x6ea
	.uleb128 0xf
	.long	0x25b
	.long	0x704
	.uleb128 0x10
	.long	0x41
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF126
	.byte	0xf
	.byte	0x54
	.byte	0x12
	.long	0x509
	.uleb128 0xc
	.long	0x704
	.uleb128 0x7
	.long	0x6a8
	.uleb128 0xe
	.byte	0x20
	.byte	0x3
	.long	.LASF127
	.uleb128 0xe
	.byte	0x10
	.byte	0x4
	.long	.LASF128
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.long	.LASF129
	.uleb128 0x21
	.byte	0x8
	.byte	0x10
	.byte	0x3c
	.byte	0x3
	.long	.LASF131
	.long	0x757
	.uleb128 0x4
	.long	.LASF132
	.byte	0x10
	.byte	0x3d
	.byte	0x9
	.long	0xcb
	.byte	0
	.uleb128 0x18
	.string	"rem"
	.byte	0x10
	.byte	0x3e
	.byte	0x9
	.long	0xcb
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF133
	.byte	0x10
	.byte	0x3f
	.byte	0x5
	.long	0x72f
	.uleb128 0x21
	.byte	0x10
	.byte	0x10
	.byte	0x44
	.byte	0x3
	.long	.LASF134
	.long	0x78b
	.uleb128 0x4
	.long	.LASF132
	.byte	0x10
	.byte	0x45
	.byte	0xe
	.long	0x2e
	.byte	0
	.uleb128 0x18
	.string	"rem"
	.byte	0x10
	.byte	0x46
	.byte	0xe
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF135
	.byte	0x10
	.byte	0x47
	.byte	0x5
	.long	0x763
	.uleb128 0x21
	.byte	0x10
	.byte	0x10
	.byte	0x4e
	.byte	0x3
	.long	.LASF136
	.long	0x7bf
	.uleb128 0x4
	.long	.LASF132
	.byte	0x10
	.byte	0x4f
	.byte	0x13
	.long	0x48
	.byte	0
	.uleb128 0x18
	.string	"rem"
	.byte	0x10
	.byte	0x50
	.byte	0x13
	.long	0x48
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF137
	.byte	0x10
	.byte	0x51
	.byte	0x5
	.long	0x797
	.uleb128 0x5
	.long	.LASF138
	.byte	0x11
	.byte	0x18
	.byte	0x12
	.long	0x378
	.uleb128 0x5
	.long	.LASF139
	.byte	0x11
	.byte	0x19
	.byte	0x13
	.long	0x397
	.uleb128 0x5
	.long	.LASF140
	.byte	0x11
	.byte	0x1a
	.byte	0x13
	.long	0x3b6
	.uleb128 0x5
	.long	.LASF141
	.byte	0x11
	.byte	0x1b
	.byte	0x13
	.long	0x3d3
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF142
	.uleb128 0x29
	.long	.LASF143
	.byte	0x10
	.value	0x330
	.byte	0xf
	.long	0x80f
	.uleb128 0x7
	.long	0x814
	.uleb128 0x3c
	.long	0xcb
	.long	0x828
	.uleb128 0x1
	.long	0x828
	.uleb128 0x1
	.long	0x828
	.byte	0
	.uleb128 0x7
	.long	0x82d
	.uleb128 0x3d
	.uleb128 0x3e
	.string	"std"
	.byte	0x1d
	.value	0x116
	.byte	0xb
	.long	0x22f4
	.uleb128 0x2
	.byte	0x12
	.byte	0x7f
	.byte	0xb
	.long	0x757
	.uleb128 0x2
	.byte	0x12
	.byte	0x80
	.byte	0xb
	.long	0x78b
	.uleb128 0x2
	.byte	0x12
	.byte	0x86
	.byte	0xb
	.long	0x22f4
	.uleb128 0x2
	.byte	0x12
	.byte	0x89
	.byte	0xb
	.long	0x2311
	.uleb128 0x2
	.byte	0x12
	.byte	0x8c
	.byte	0xb
	.long	0x232c
	.uleb128 0x2
	.byte	0x12
	.byte	0x8d
	.byte	0xb
	.long	0x2342
	.uleb128 0x2
	.byte	0x12
	.byte	0x8e
	.byte	0xb
	.long	0x2358
	.uleb128 0x2
	.byte	0x12
	.byte	0x8f
	.byte	0xb
	.long	0x236e
	.uleb128 0x2
	.byte	0x12
	.byte	0x91
	.byte	0xb
	.long	0x2399
	.uleb128 0x2
	.byte	0x12
	.byte	0x94
	.byte	0xb
	.long	0x23b5
	.uleb128 0x2
	.byte	0x12
	.byte	0x96
	.byte	0xb
	.long	0x23cc
	.uleb128 0x2
	.byte	0x12
	.byte	0x99
	.byte	0xb
	.long	0x23e8
	.uleb128 0x2
	.byte	0x12
	.byte	0x9a
	.byte	0xb
	.long	0x2404
	.uleb128 0x2
	.byte	0x12
	.byte	0x9b
	.byte	0xb
	.long	0x2436
	.uleb128 0x2
	.byte	0x12
	.byte	0x9d
	.byte	0xb
	.long	0x2457
	.uleb128 0x2
	.byte	0x12
	.byte	0xa0
	.byte	0xb
	.long	0x2478
	.uleb128 0x2
	.byte	0x12
	.byte	0xa3
	.byte	0xb
	.long	0x248b
	.uleb128 0x2
	.byte	0x12
	.byte	0xa5
	.byte	0xb
	.long	0x2498
	.uleb128 0x2
	.byte	0x12
	.byte	0xa6
	.byte	0xb
	.long	0x24aa
	.uleb128 0x2
	.byte	0x12
	.byte	0xa7
	.byte	0xb
	.long	0x24ca
	.uleb128 0x2
	.byte	0x12
	.byte	0xa8
	.byte	0xb
	.long	0x24ea
	.uleb128 0x2
	.byte	0x12
	.byte	0xa9
	.byte	0xb
	.long	0x250a
	.uleb128 0x2
	.byte	0x12
	.byte	0xab
	.byte	0xb
	.long	0x2521
	.uleb128 0x2
	.byte	0x12
	.byte	0xac
	.byte	0xb
	.long	0x2547
	.uleb128 0x2
	.byte	0x12
	.byte	0xf0
	.byte	0x16
	.long	0x7bf
	.uleb128 0x2
	.byte	0x12
	.byte	0xf5
	.byte	0x16
	.long	0x25a8
	.uleb128 0x2
	.byte	0x12
	.byte	0xf6
	.byte	0x16
	.long	0x25e9
	.uleb128 0x2
	.byte	0x12
	.byte	0xf8
	.byte	0x16
	.long	0x2605
	.uleb128 0x2
	.byte	0x12
	.byte	0xf9
	.byte	0x16
	.long	0x265b
	.uleb128 0x2
	.byte	0x12
	.byte	0xfa
	.byte	0x16
	.long	0x261b
	.uleb128 0x2
	.byte	0x12
	.byte	0xfb
	.byte	0x16
	.long	0x263b
	.uleb128 0x2
	.byte	0x12
	.byte	0xfc
	.byte	0x16
	.long	0x2676
	.uleb128 0x15
	.string	"abs"
	.byte	0x13
	.byte	0x4f
	.long	.LASF144
	.long	0x4f
	.long	0x954
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x15
	.string	"abs"
	.byte	0x13
	.byte	0x4b
	.long	.LASF145
	.long	0x728
	.long	0x96d
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x15
	.string	"abs"
	.byte	0x13
	.byte	0x47
	.long	.LASF146
	.long	0x267
	.long	0x986
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x15
	.string	"abs"
	.byte	0x13
	.byte	0x3d
	.long	.LASF147
	.long	0x48
	.long	0x99f
	.uleb128 0x1
	.long	0x48
	.byte	0
	.uleb128 0x15
	.string	"abs"
	.byte	0x13
	.byte	0x38
	.long	.LASF148
	.long	0x2e
	.long	0x9b8
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x15
	.string	"div"
	.byte	0x12
	.byte	0xb1
	.long	.LASF149
	.long	0x78b
	.long	0x9d6
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x11
	.byte	0x14
	.value	0x429
	.byte	0xb
	.long	0x279c
	.uleb128 0x11
	.byte	0x14
	.value	0x42a
	.byte	0xb
	.long	0x2790
	.uleb128 0x1f
	.long	.LASF150
	.byte	0x15
	.value	0xa86
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF151
	.byte	0x15
	.value	0xadc
	.byte	0xd
	.uleb128 0x26
	.long	.LASF152
	.byte	0x16
	.byte	0xa3
	.byte	0xd
	.long	0xa39
	.uleb128 0x17
	.long	.LASF153
	.byte	0x16
	.byte	0xa5
	.byte	0xf
	.uleb128 0x3f
	.long	.LASF160
	.byte	0x16
	.byte	0xe1
	.byte	0x16
	.uleb128 0x17
	.long	.LASF154
	.byte	0x17
	.byte	0x50
	.byte	0xf
	.uleb128 0x1f
	.long	.LASF155
	.byte	0x17
	.value	0x31d
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF156
	.byte	0x17
	.value	0x3a0
	.byte	0x15
	.uleb128 0x17
	.long	.LASF157
	.byte	0x18
	.byte	0x40
	.byte	0xd
	.byte	0
	.uleb128 0x17
	.long	.LASF158
	.byte	0x19
	.byte	0x31
	.byte	0xd
	.uleb128 0x17
	.long	.LASF157
	.byte	0x16
	.byte	0x36
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF159
	.byte	0x19
	.value	0x20e
	.byte	0xd
	.uleb128 0x2a
	.long	.LASF161
	.byte	0x19
	.value	0x357
	.byte	0x14
	.uleb128 0x17
	.long	.LASF162
	.byte	0x1a
	.byte	0x32
	.byte	0xd
	.uleb128 0x9
	.long	.LASF163
	.byte	0x14
	.byte	0x5b
	.byte	0x3
	.long	.LASF164
	.long	0x4f
	.long	0xa7d
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x9
	.long	.LASF163
	.byte	0x14
	.byte	0x57
	.byte	0x3
	.long	.LASF165
	.long	0x728
	.long	0xa97
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x9
	.long	.LASF166
	.byte	0x14
	.byte	0x6e
	.byte	0x3
	.long	.LASF167
	.long	0x4f
	.long	0xab1
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x9
	.long	.LASF166
	.byte	0x14
	.byte	0x6a
	.byte	0x3
	.long	.LASF168
	.long	0x728
	.long	0xacb
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x9
	.long	.LASF169
	.byte	0x14
	.byte	0x81
	.byte	0x3
	.long	.LASF170
	.long	0x4f
	.long	0xae5
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x9
	.long	.LASF169
	.byte	0x14
	.byte	0x7d
	.byte	0x3
	.long	.LASF171
	.long	0x728
	.long	0xaff
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x9
	.long	.LASF172
	.byte	0x14
	.byte	0x94
	.byte	0x3
	.long	.LASF173
	.long	0x4f
	.long	0xb1e
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x9
	.long	.LASF172
	.byte	0x14
	.byte	0x90
	.byte	0x3
	.long	.LASF174
	.long	0x728
	.long	0xb3d
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x15
	.string	"cos"
	.byte	0x14
	.byte	0xbc
	.long	.LASF175
	.long	0x4f
	.long	0xb56
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x15
	.string	"cos"
	.byte	0x14
	.byte	0xb8
	.long	.LASF176
	.long	0x728
	.long	0xb6f
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x14
	.string	"sin"
	.value	0x1ad
	.long	.LASF177
	.long	0x4f
	.long	0xb88
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x14
	.string	"sin"
	.value	0x1a9
	.long	.LASF178
	.long	0x728
	.long	0xba1
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x14
	.string	"tan"
	.value	0x1e6
	.long	.LASF179
	.long	0x4f
	.long	0xbba
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x14
	.string	"tan"
	.value	0x1e2
	.long	.LASF180
	.long	0x728
	.long	0xbd3
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x9
	.long	.LASF181
	.byte	0x14
	.byte	0xcf
	.byte	0x3
	.long	.LASF182
	.long	0x4f
	.long	0xbed
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x9
	.long	.LASF181
	.byte	0x14
	.byte	0xcb
	.byte	0x3
	.long	.LASF183
	.long	0x728
	.long	0xc07
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF184
	.byte	0x14
	.value	0x1c0
	.byte	0x3
	.long	.LASF185
	.long	0x4f
	.long	0xc22
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF184
	.byte	0x14
	.value	0x1bc
	.byte	0x3
	.long	.LASF186
	.long	0x728
	.long	0xc3d
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF187
	.byte	0x14
	.value	0x1f9
	.byte	0x3
	.long	.LASF188
	.long	0x4f
	.long	0xc58
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF187
	.byte	0x14
	.value	0x1f5
	.byte	0x3
	.long	.LASF189
	.long	0x728
	.long	0xc73
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x15
	.string	"exp"
	.byte	0x14
	.byte	0xe2
	.long	.LASF190
	.long	0x4f
	.long	0xc8c
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x15
	.string	"exp"
	.byte	0x14
	.byte	0xde
	.long	.LASF191
	.long	0x728
	.long	0xca5
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF192
	.byte	0x14
	.value	0x130
	.byte	0x3
	.long	.LASF193
	.long	0x4f
	.long	0xcc5
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x28b8
	.byte	0
	.uleb128 0x3
	.long	.LASF192
	.byte	0x14
	.value	0x12c
	.byte	0x3
	.long	.LASF194
	.long	0x728
	.long	0xce5
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x28b8
	.byte	0
	.uleb128 0x3
	.long	.LASF195
	.byte	0x14
	.value	0x143
	.byte	0x3
	.long	.LASF196
	.long	0x4f
	.long	0xd05
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x3
	.long	.LASF195
	.byte	0x14
	.value	0x13f
	.byte	0x3
	.long	.LASF197
	.long	0x728
	.long	0xd25
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x14
	.string	"log"
	.value	0x156
	.long	.LASF198
	.long	0x4f
	.long	0xd3e
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x14
	.string	"log"
	.value	0x152
	.long	.LASF199
	.long	0x728
	.long	0xd57
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF200
	.byte	0x14
	.value	0x169
	.byte	0x3
	.long	.LASF201
	.long	0x4f
	.long	0xd72
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF200
	.byte	0x14
	.value	0x165
	.byte	0x3
	.long	.LASF202
	.long	0x728
	.long	0xd8d
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF203
	.byte	0x14
	.value	0x17c
	.byte	0x3
	.long	.LASF204
	.long	0x4f
	.long	0xdad
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x28fd
	.byte	0
	.uleb128 0x3
	.long	.LASF203
	.byte	0x14
	.value	0x178
	.byte	0x3
	.long	.LASF205
	.long	0x728
	.long	0xdcd
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x290a
	.byte	0
	.uleb128 0x14
	.string	"pow"
	.value	0x188
	.long	.LASF206
	.long	0x4f
	.long	0xdeb
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x14
	.string	"pow"
	.value	0x184
	.long	.LASF207
	.long	0x728
	.long	0xe09
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF208
	.byte	0x14
	.value	0x1d3
	.byte	0x3
	.long	.LASF209
	.long	0x4f
	.long	0xe24
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF208
	.byte	0x14
	.value	0x1cf
	.byte	0x3
	.long	.LASF210
	.long	0x728
	.long	0xe3f
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x9
	.long	.LASF211
	.byte	0x14
	.byte	0xa9
	.byte	0x3
	.long	.LASF212
	.long	0x4f
	.long	0xe59
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x9
	.long	.LASF211
	.byte	0x14
	.byte	0xa5
	.byte	0x3
	.long	.LASF213
	.long	0x728
	.long	0xe73
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x9
	.long	.LASF214
	.byte	0x14
	.byte	0xf5
	.byte	0x3
	.long	.LASF215
	.long	0x4f
	.long	0xe8d
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x9
	.long	.LASF214
	.byte	0x14
	.byte	0xf1
	.byte	0x3
	.long	.LASF216
	.long	0x728
	.long	0xea7
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF217
	.byte	0x14
	.value	0x108
	.byte	0x3
	.long	.LASF218
	.long	0x4f
	.long	0xec2
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF217
	.byte	0x14
	.value	0x104
	.byte	0x3
	.long	.LASF219
	.long	0x728
	.long	0xedd
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF220
	.byte	0x14
	.value	0x11b
	.byte	0x3
	.long	.LASF221
	.long	0x4f
	.long	0xefd
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF220
	.byte	0x14
	.value	0x117
	.byte	0x3
	.long	.LASF222
	.long	0x728
	.long	0xf1d
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF223
	.byte	0x14
	.value	0x223
	.byte	0x3
	.long	.LASF224
	.long	0xcb
	.long	0xf38
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF223
	.byte	0x14
	.value	0x21e
	.byte	0x3
	.long	.LASF225
	.long	0xcb
	.long	0xf53
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF223
	.byte	0x14
	.value	0x219
	.byte	0x3
	.long	.LASF226
	.long	0xcb
	.long	0xf6e
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF227
	.byte	0x14
	.value	0x23a
	.byte	0x3
	.long	.LASF228
	.long	0x2789
	.long	0xf89
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF227
	.byte	0x14
	.value	0x236
	.byte	0x3
	.long	.LASF229
	.long	0x2789
	.long	0xfa4
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF227
	.byte	0x14
	.value	0x232
	.byte	0x3
	.long	.LASF230
	.long	0x2789
	.long	0xfbf
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF231
	.byte	0x14
	.value	0x255
	.byte	0x3
	.long	.LASF232
	.long	0x2789
	.long	0xfda
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF231
	.byte	0x14
	.value	0x250
	.byte	0x3
	.long	.LASF233
	.long	0x2789
	.long	0xff5
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF231
	.byte	0x14
	.value	0x248
	.byte	0x3
	.long	.LASF234
	.long	0x2789
	.long	0x1010
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF235
	.byte	0x14
	.value	0x270
	.byte	0x3
	.long	.LASF236
	.long	0x2789
	.long	0x102b
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF235
	.byte	0x14
	.value	0x26b
	.byte	0x3
	.long	.LASF237
	.long	0x2789
	.long	0x1046
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF235
	.byte	0x14
	.value	0x263
	.byte	0x3
	.long	.LASF238
	.long	0x2789
	.long	0x1061
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF239
	.byte	0x14
	.value	0x286
	.byte	0x3
	.long	.LASF240
	.long	0x2789
	.long	0x107c
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF239
	.byte	0x14
	.value	0x282
	.byte	0x3
	.long	.LASF241
	.long	0x2789
	.long	0x1097
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF239
	.byte	0x14
	.value	0x27e
	.byte	0x3
	.long	.LASF242
	.long	0x2789
	.long	0x10b2
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF243
	.byte	0x14
	.value	0x29d
	.byte	0x3
	.long	.LASF244
	.long	0x2789
	.long	0x10cd
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF243
	.byte	0x14
	.value	0x299
	.byte	0x3
	.long	.LASF245
	.long	0x2789
	.long	0x10e8
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF243
	.byte	0x14
	.value	0x295
	.byte	0x3
	.long	.LASF246
	.long	0x2789
	.long	0x1103
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF247
	.byte	0x14
	.value	0x2b3
	.byte	0x3
	.long	.LASF248
	.long	0x2789
	.long	0x1123
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF247
	.byte	0x14
	.value	0x2af
	.byte	0x3
	.long	.LASF249
	.long	0x2789
	.long	0x1143
	.uleb128 0x1
	.long	0x267
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF247
	.byte	0x14
	.value	0x2ab
	.byte	0x3
	.long	.LASF250
	.long	0x2789
	.long	0x1163
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF251
	.byte	0x14
	.value	0x2cd
	.byte	0x3
	.long	.LASF252
	.long	0x2789
	.long	0x1183
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF251
	.byte	0x14
	.value	0x2c9
	.byte	0x3
	.long	.LASF253
	.long	0x2789
	.long	0x11a3
	.uleb128 0x1
	.long	0x267
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF251
	.byte	0x14
	.value	0x2c5
	.byte	0x3
	.long	.LASF254
	.long	0x2789
	.long	0x11c3
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF255
	.byte	0x14
	.value	0x2e7
	.byte	0x3
	.long	.LASF256
	.long	0x2789
	.long	0x11e3
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF255
	.byte	0x14
	.value	0x2e3
	.byte	0x3
	.long	.LASF257
	.long	0x2789
	.long	0x1203
	.uleb128 0x1
	.long	0x267
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF255
	.byte	0x14
	.value	0x2df
	.byte	0x3
	.long	.LASF258
	.long	0x2789
	.long	0x1223
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF259
	.byte	0x14
	.value	0x301
	.byte	0x3
	.long	.LASF260
	.long	0x2789
	.long	0x1243
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF259
	.byte	0x14
	.value	0x2fd
	.byte	0x3
	.long	.LASF261
	.long	0x2789
	.long	0x1263
	.uleb128 0x1
	.long	0x267
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF259
	.byte	0x14
	.value	0x2f9
	.byte	0x3
	.long	.LASF262
	.long	0x2789
	.long	0x1283
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF263
	.byte	0x14
	.value	0x31b
	.byte	0x3
	.long	.LASF264
	.long	0x2789
	.long	0x12a3
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF263
	.byte	0x14
	.value	0x317
	.byte	0x3
	.long	.LASF265
	.long	0x2789
	.long	0x12c3
	.uleb128 0x1
	.long	0x267
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF263
	.byte	0x14
	.value	0x313
	.byte	0x3
	.long	.LASF266
	.long	0x2789
	.long	0x12e3
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF267
	.byte	0x14
	.value	0x335
	.byte	0x3
	.long	.LASF268
	.long	0x2789
	.long	0x1303
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF267
	.byte	0x14
	.value	0x331
	.byte	0x3
	.long	.LASF269
	.long	0x2789
	.long	0x1323
	.uleb128 0x1
	.long	0x267
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF267
	.byte	0x14
	.value	0x32d
	.byte	0x3
	.long	.LASF270
	.long	0x2789
	.long	0x1343
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF271
	.byte	0x14
	.value	0x4c2
	.byte	0x3
	.long	.LASF272
	.long	0x4f
	.long	0x135e
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF271
	.byte	0x14
	.value	0x4be
	.byte	0x3
	.long	.LASF273
	.long	0x728
	.long	0x1379
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF274
	.byte	0x14
	.value	0x4d4
	.byte	0x3
	.long	.LASF275
	.long	0x4f
	.long	0x1394
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF274
	.byte	0x14
	.value	0x4d0
	.byte	0x3
	.long	.LASF276
	.long	0x728
	.long	0x13af
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF277
	.byte	0x14
	.value	0x4e6
	.byte	0x3
	.long	.LASF278
	.long	0x4f
	.long	0x13ca
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF277
	.byte	0x14
	.value	0x4e2
	.byte	0x3
	.long	.LASF279
	.long	0x728
	.long	0x13e5
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF280
	.byte	0x14
	.value	0x4f8
	.byte	0x3
	.long	.LASF281
	.long	0x4f
	.long	0x1400
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF280
	.byte	0x14
	.value	0x4f4
	.byte	0x3
	.long	.LASF282
	.long	0x728
	.long	0x141b
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF283
	.byte	0x14
	.value	0x50a
	.byte	0x3
	.long	.LASF284
	.long	0x4f
	.long	0x143b
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF283
	.byte	0x14
	.value	0x506
	.byte	0x3
	.long	.LASF285
	.long	0x728
	.long	0x145b
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x14
	.string	"erf"
	.value	0x51e
	.long	.LASF286
	.long	0x4f
	.long	0x1474
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x14
	.string	"erf"
	.value	0x51a
	.long	.LASF287
	.long	0x728
	.long	0x148d
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF288
	.byte	0x14
	.value	0x530
	.byte	0x3
	.long	.LASF289
	.long	0x4f
	.long	0x14a8
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF288
	.byte	0x14
	.value	0x52c
	.byte	0x3
	.long	.LASF290
	.long	0x728
	.long	0x14c3
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF291
	.byte	0x14
	.value	0x542
	.byte	0x3
	.long	.LASF292
	.long	0x4f
	.long	0x14de
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF291
	.byte	0x14
	.value	0x53e
	.byte	0x3
	.long	.LASF293
	.long	0x728
	.long	0x14f9
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF294
	.byte	0x14
	.value	0x554
	.byte	0x3
	.long	.LASF295
	.long	0x4f
	.long	0x1514
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF294
	.byte	0x14
	.value	0x550
	.byte	0x3
	.long	.LASF296
	.long	0x728
	.long	0x152f
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF297
	.byte	0x14
	.value	0x566
	.byte	0x3
	.long	.LASF298
	.long	0x4f
	.long	0x154f
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF297
	.byte	0x14
	.value	0x562
	.byte	0x3
	.long	.LASF299
	.long	0x728
	.long	0x156f
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x14
	.string	"fma"
	.value	0x57a
	.long	.LASF300
	.long	0x4f
	.long	0x1592
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x14
	.string	"fma"
	.value	0x576
	.long	.LASF301
	.long	0x728
	.long	0x15b5
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF302
	.byte	0x14
	.value	0x58e
	.byte	0x3
	.long	.LASF303
	.long	0x4f
	.long	0x15d5
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF302
	.byte	0x14
	.value	0x58a
	.byte	0x3
	.long	.LASF304
	.long	0x728
	.long	0x15f5
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF305
	.byte	0x14
	.value	0x5a2
	.byte	0x3
	.long	.LASF306
	.long	0x4f
	.long	0x1615
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF305
	.byte	0x14
	.value	0x59e
	.byte	0x3
	.long	.LASF307
	.long	0x728
	.long	0x1635
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF308
	.byte	0x14
	.value	0x754
	.byte	0x3
	.long	.LASF309
	.long	0x4f
	.long	0x165a
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF308
	.byte	0x14
	.value	0x750
	.byte	0x3
	.long	.LASF310
	.long	0x267
	.long	0x167f
	.uleb128 0x1
	.long	0x267
	.uleb128 0x1
	.long	0x267
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF308
	.byte	0x14
	.value	0x74c
	.byte	0x3
	.long	.LASF311
	.long	0x728
	.long	0x16a4
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF308
	.byte	0x14
	.value	0x5b6
	.byte	0x3
	.long	.LASF312
	.long	0x4f
	.long	0x16c4
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF308
	.byte	0x14
	.value	0x5b2
	.byte	0x3
	.long	.LASF313
	.long	0x728
	.long	0x16e4
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF314
	.byte	0x14
	.value	0x5ca
	.byte	0x3
	.long	.LASF315
	.long	0xcb
	.long	0x16ff
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF314
	.byte	0x14
	.value	0x5c6
	.byte	0x3
	.long	.LASF316
	.long	0xcb
	.long	0x171a
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF317
	.byte	0x14
	.value	0x5dd
	.byte	0x3
	.long	.LASF318
	.long	0x4f
	.long	0x1735
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF317
	.byte	0x14
	.value	0x5d9
	.byte	0x3
	.long	.LASF319
	.long	0x728
	.long	0x1750
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF320
	.byte	0x14
	.value	0x5ef
	.byte	0x3
	.long	.LASF321
	.long	0x48
	.long	0x176b
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF320
	.byte	0x14
	.value	0x5eb
	.byte	0x3
	.long	.LASF322
	.long	0x48
	.long	0x1786
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF323
	.byte	0x14
	.value	0x601
	.byte	0x3
	.long	.LASF324
	.long	0x48
	.long	0x17a1
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF323
	.byte	0x14
	.value	0x5fd
	.byte	0x3
	.long	.LASF325
	.long	0x48
	.long	0x17bc
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF326
	.byte	0x14
	.value	0x613
	.byte	0x3
	.long	.LASF327
	.long	0x4f
	.long	0x17d7
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF326
	.byte	0x14
	.value	0x60f
	.byte	0x3
	.long	.LASF328
	.long	0x728
	.long	0x17f2
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF329
	.byte	0x14
	.value	0x626
	.byte	0x3
	.long	.LASF330
	.long	0x4f
	.long	0x180d
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF329
	.byte	0x14
	.value	0x622
	.byte	0x3
	.long	.LASF331
	.long	0x728
	.long	0x1828
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF332
	.byte	0x14
	.value	0x638
	.byte	0x3
	.long	.LASF333
	.long	0x4f
	.long	0x1843
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF332
	.byte	0x14
	.value	0x634
	.byte	0x3
	.long	.LASF334
	.long	0x728
	.long	0x185e
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF335
	.byte	0x14
	.value	0x64a
	.byte	0x3
	.long	.LASF336
	.long	0x2e
	.long	0x1879
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF335
	.byte	0x14
	.value	0x646
	.byte	0x3
	.long	.LASF337
	.long	0x2e
	.long	0x1894
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF338
	.byte	0x14
	.value	0x65c
	.byte	0x3
	.long	.LASF339
	.long	0x2e
	.long	0x18af
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF338
	.byte	0x14
	.value	0x658
	.byte	0x3
	.long	.LASF340
	.long	0x2e
	.long	0x18ca
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF341
	.byte	0x14
	.value	0x66e
	.byte	0x3
	.long	.LASF342
	.long	0x4f
	.long	0x18e5
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF341
	.byte	0x14
	.value	0x66a
	.byte	0x3
	.long	.LASF343
	.long	0x728
	.long	0x1900
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF344
	.byte	0x14
	.value	0x680
	.byte	0x3
	.long	.LASF345
	.long	0x4f
	.long	0x1920
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF344
	.byte	0x14
	.value	0x67c
	.byte	0x3
	.long	.LASF346
	.long	0x728
	.long	0x1940
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF347
	.byte	0x14
	.value	0x694
	.byte	0x3
	.long	.LASF348
	.long	0x4f
	.long	0x1960
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF347
	.byte	0x14
	.value	0x690
	.byte	0x3
	.long	.LASF349
	.long	0x728
	.long	0x1980
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF350
	.byte	0x14
	.value	0x6a6
	.byte	0x3
	.long	.LASF351
	.long	0x4f
	.long	0x19a0
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF350
	.byte	0x14
	.value	0x6a2
	.byte	0x3
	.long	.LASF352
	.long	0x728
	.long	0x19c0
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF353
	.byte	0x14
	.value	0x6ba
	.byte	0x3
	.long	.LASF354
	.long	0x4f
	.long	0x19e5
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x28b8
	.byte	0
	.uleb128 0x3
	.long	.LASF353
	.byte	0x14
	.value	0x6b6
	.byte	0x3
	.long	.LASF355
	.long	0x728
	.long	0x1a0a
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x28b8
	.byte	0
	.uleb128 0x3
	.long	.LASF356
	.byte	0x14
	.value	0x6ce
	.byte	0x3
	.long	.LASF357
	.long	0x4f
	.long	0x1a25
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF356
	.byte	0x14
	.value	0x6ca
	.byte	0x3
	.long	.LASF358
	.long	0x728
	.long	0x1a40
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF359
	.byte	0x14
	.value	0x6e0
	.byte	0x3
	.long	.LASF360
	.long	0x4f
	.long	0x1a5b
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF359
	.byte	0x14
	.value	0x6dc
	.byte	0x3
	.long	.LASF361
	.long	0x728
	.long	0x1a76
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF362
	.byte	0x14
	.value	0x6f2
	.byte	0x3
	.long	.LASF363
	.long	0x4f
	.long	0x1a96
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x3
	.long	.LASF362
	.byte	0x14
	.value	0x6ee
	.byte	0x3
	.long	.LASF364
	.long	0x728
	.long	0x1ab6
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x3
	.long	.LASF365
	.byte	0x14
	.value	0x704
	.byte	0x3
	.long	.LASF366
	.long	0x4f
	.long	0x1ad6
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x3
	.long	.LASF365
	.byte	0x14
	.value	0x700
	.byte	0x3
	.long	.LASF367
	.long	0x728
	.long	0x1af6
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x3
	.long	.LASF368
	.byte	0x14
	.value	0x716
	.byte	0x3
	.long	.LASF369
	.long	0x4f
	.long	0x1b11
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF368
	.byte	0x14
	.value	0x712
	.byte	0x3
	.long	.LASF370
	.long	0x728
	.long	0x1b2c
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF371
	.byte	0x14
	.value	0x728
	.byte	0x3
	.long	.LASF372
	.long	0x4f
	.long	0x1b47
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF371
	.byte	0x14
	.value	0x724
	.byte	0x3
	.long	.LASF373
	.long	0x728
	.long	0x1b62
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x3
	.long	.LASF374
	.byte	0x14
	.value	0x77f
	.byte	0x3
	.long	.LASF375
	.long	0x4f
	.long	0x1b87
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.uleb128 0x1
	.long	0x4f
	.byte	0
	.uleb128 0x3
	.long	.LASF374
	.byte	0x14
	.value	0x77b
	.byte	0x3
	.long	.LASF376
	.long	0x267
	.long	0x1bac
	.uleb128 0x1
	.long	0x267
	.uleb128 0x1
	.long	0x267
	.uleb128 0x1
	.long	0x267
	.byte	0
	.uleb128 0x3
	.long	.LASF374
	.byte	0x14
	.value	0x777
	.byte	0x3
	.long	.LASF377
	.long	0x728
	.long	0x1bd1
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.uleb128 0x1
	.long	0x728
	.byte	0
	.uleb128 0x2
	.byte	0x1b
	.byte	0x40
	.byte	0xb
	.long	0x30fd
	.uleb128 0x2
	.byte	0x1b
	.byte	0x8d
	.byte	0xb
	.long	0x30f1
	.uleb128 0x2
	.byte	0x1b
	.byte	0x8f
	.byte	0xb
	.long	0x310e
	.uleb128 0x2
	.byte	0x1b
	.byte	0x90
	.byte	0xb
	.long	0x3125
	.uleb128 0x2
	.byte	0x1b
	.byte	0x91
	.byte	0xb
	.long	0x3141
	.uleb128 0x2
	.byte	0x1b
	.byte	0x92
	.byte	0xb
	.long	0x3162
	.uleb128 0x2
	.byte	0x1b
	.byte	0x93
	.byte	0xb
	.long	0x317e
	.uleb128 0x2
	.byte	0x1b
	.byte	0x94
	.byte	0xb
	.long	0x319a
	.uleb128 0x2
	.byte	0x1b
	.byte	0x95
	.byte	0xb
	.long	0x31b6
	.uleb128 0x2
	.byte	0x1b
	.byte	0x96
	.byte	0xb
	.long	0x31d3
	.uleb128 0x2
	.byte	0x1b
	.byte	0x97
	.byte	0xb
	.long	0x31f4
	.uleb128 0x2
	.byte	0x1b
	.byte	0x98
	.byte	0xb
	.long	0x320b
	.uleb128 0x2
	.byte	0x1b
	.byte	0x99
	.byte	0xb
	.long	0x3218
	.uleb128 0x2
	.byte	0x1b
	.byte	0x9a
	.byte	0xb
	.long	0x323e
	.uleb128 0x2
	.byte	0x1b
	.byte	0x9b
	.byte	0xb
	.long	0x3264
	.uleb128 0x2
	.byte	0x1b
	.byte	0x9c
	.byte	0xb
	.long	0x3280
	.uleb128 0x2
	.byte	0x1b
	.byte	0x9d
	.byte	0xb
	.long	0x32a6
	.uleb128 0x2
	.byte	0x1b
	.byte	0x9e
	.byte	0xb
	.long	0x32c2
	.uleb128 0x2
	.byte	0x1b
	.byte	0xa0
	.byte	0xb
	.long	0x32d9
	.uleb128 0x2
	.byte	0x1b
	.byte	0xa2
	.byte	0xb
	.long	0x32fb
	.uleb128 0x2
	.byte	0x1b
	.byte	0xa3
	.byte	0xb
	.long	0x331c
	.uleb128 0x2
	.byte	0x1b
	.byte	0xa4
	.byte	0xb
	.long	0x3338
	.uleb128 0x2
	.byte	0x1b
	.byte	0xa6
	.byte	0xb
	.long	0x335e
	.uleb128 0x2
	.byte	0x1b
	.byte	0xa9
	.byte	0xb
	.long	0x3383
	.uleb128 0x2
	.byte	0x1b
	.byte	0xac
	.byte	0xb
	.long	0x33a9
	.uleb128 0x2
	.byte	0x1b
	.byte	0xae
	.byte	0xb
	.long	0x33ce
	.uleb128 0x2
	.byte	0x1b
	.byte	0xb0
	.byte	0xb
	.long	0x33ea
	.uleb128 0x2
	.byte	0x1b
	.byte	0xb2
	.byte	0xb
	.long	0x340a
	.uleb128 0x2
	.byte	0x1b
	.byte	0xb3
	.byte	0xb
	.long	0x342b
	.uleb128 0x2
	.byte	0x1b
	.byte	0xb4
	.byte	0xb
	.long	0x3446
	.uleb128 0x2
	.byte	0x1b
	.byte	0xb5
	.byte	0xb
	.long	0x3461
	.uleb128 0x2
	.byte	0x1b
	.byte	0xb6
	.byte	0xb
	.long	0x347c
	.uleb128 0x2
	.byte	0x1b
	.byte	0xb7
	.byte	0xb
	.long	0x3497
	.uleb128 0x2
	.byte	0x1b
	.byte	0xb8
	.byte	0xb
	.long	0x34b2
	.uleb128 0x2
	.byte	0x1b
	.byte	0xb9
	.byte	0xb
	.long	0x357e
	.uleb128 0x2
	.byte	0x1b
	.byte	0xba
	.byte	0xb
	.long	0x3594
	.uleb128 0x2
	.byte	0x1b
	.byte	0xbb
	.byte	0xb
	.long	0x35b4
	.uleb128 0x2
	.byte	0x1b
	.byte	0xbc
	.byte	0xb
	.long	0x35d4
	.uleb128 0x2
	.byte	0x1b
	.byte	0xbd
	.byte	0xb
	.long	0x35f4
	.uleb128 0x2
	.byte	0x1b
	.byte	0xbe
	.byte	0xb
	.long	0x361f
	.uleb128 0x2
	.byte	0x1b
	.byte	0xbf
	.byte	0xb
	.long	0x363a
	.uleb128 0x2
	.byte	0x1b
	.byte	0xc1
	.byte	0xb
	.long	0x365b
	.uleb128 0x2
	.byte	0x1b
	.byte	0xc3
	.byte	0xb
	.long	0x3677
	.uleb128 0x2
	.byte	0x1b
	.byte	0xc4
	.byte	0xb
	.long	0x3697
	.uleb128 0x2
	.byte	0x1b
	.byte	0xc5
	.byte	0xb
	.long	0x36b8
	.uleb128 0x2
	.byte	0x1b
	.byte	0xc6
	.byte	0xb
	.long	0x36d9
	.uleb128 0x2
	.byte	0x1b
	.byte	0xc7
	.byte	0xb
	.long	0x36f9
	.uleb128 0x2
	.byte	0x1b
	.byte	0xc8
	.byte	0xb
	.long	0x3710
	.uleb128 0x2
	.byte	0x1b
	.byte	0xc9
	.byte	0xb
	.long	0x3731
	.uleb128 0x2
	.byte	0x1b
	.byte	0xca
	.byte	0xb
	.long	0x3752
	.uleb128 0x2
	.byte	0x1b
	.byte	0xcb
	.byte	0xb
	.long	0x3773
	.uleb128 0x2
	.byte	0x1b
	.byte	0xcc
	.byte	0xb
	.long	0x3794
	.uleb128 0x2
	.byte	0x1b
	.byte	0xcd
	.byte	0xb
	.long	0x37ac
	.uleb128 0x2
	.byte	0x1b
	.byte	0xce
	.byte	0xb
	.long	0x37c8
	.uleb128 0x2
	.byte	0x1b
	.byte	0xce
	.byte	0xb
	.long	0x37e7
	.uleb128 0x2
	.byte	0x1b
	.byte	0xcf
	.byte	0xb
	.long	0x3806
	.uleb128 0x2
	.byte	0x1b
	.byte	0xcf
	.byte	0xb
	.long	0x3825
	.uleb128 0x2
	.byte	0x1b
	.byte	0xd0
	.byte	0xb
	.long	0x3844
	.uleb128 0x2
	.byte	0x1b
	.byte	0xd0
	.byte	0xb
	.long	0x3863
	.uleb128 0x2
	.byte	0x1b
	.byte	0xd1
	.byte	0xb
	.long	0x3882
	.uleb128 0x2
	.byte	0x1b
	.byte	0xd1
	.byte	0xb
	.long	0x38a1
	.uleb128 0x2
	.byte	0x1b
	.byte	0xd2
	.byte	0xb
	.long	0x38c0
	.uleb128 0x2
	.byte	0x1b
	.byte	0xd2
	.byte	0xb
	.long	0x38e4
	.uleb128 0x11
	.byte	0x1b
	.value	0x10b
	.byte	0x16
	.long	0x3908
	.uleb128 0x11
	.byte	0x1b
	.value	0x10c
	.byte	0x16
	.long	0x3924
	.uleb128 0x11
	.byte	0x1b
	.value	0x10d
	.byte	0x16
	.long	0x3945
	.uleb128 0x11
	.byte	0x1b
	.value	0x11b
	.byte	0xe
	.long	0x365b
	.uleb128 0x11
	.byte	0x1b
	.value	0x11e
	.byte	0xe
	.long	0x335e
	.uleb128 0x11
	.byte	0x1b
	.value	0x121
	.byte	0xe
	.long	0x33a9
	.uleb128 0x11
	.byte	0x1b
	.value	0x124
	.byte	0xe
	.long	0x33ea
	.uleb128 0x11
	.byte	0x1b
	.value	0x128
	.byte	0xe
	.long	0x3908
	.uleb128 0x11
	.byte	0x1b
	.value	0x129
	.byte	0xe
	.long	0x3924
	.uleb128 0x11
	.byte	0x1b
	.value	0x12a
	.byte	0xe
	.long	0x3945
	.uleb128 0x26
	.long	.LASF378
	.byte	0x1c
	.byte	0x3f
	.byte	0xd
	.long	0x1ff6
	.uleb128 0x2b
	.long	.LASF384
	.byte	0x8
	.byte	0x1c
	.byte	0x5a
	.byte	0xb
	.long	0x1fe8
	.uleb128 0x4
	.long	.LASF379
	.byte	0x1c
	.byte	0x5c
	.byte	0xd
	.long	0x368
	.byte	0
	.uleb128 0x40
	.long	.LASF384
	.byte	0x1c
	.byte	0x5e
	.byte	0x10
	.long	.LASF386
	.long	0x1e5d
	.long	0x1e68
	.uleb128 0xd
	.long	0x3966
	.uleb128 0x1
	.long	0x368
	.byte	0
	.uleb128 0x2c
	.long	.LASF380
	.byte	0x60
	.long	.LASF381
	.long	0x1e7a
	.long	0x1e80
	.uleb128 0xd
	.long	0x3966
	.byte	0
	.uleb128 0x2c
	.long	.LASF382
	.byte	0x61
	.long	.LASF383
	.long	0x1e92
	.long	0x1e98
	.uleb128 0xd
	.long	0x3966
	.byte	0
	.uleb128 0x41
	.long	.LASF385
	.byte	0x1c
	.byte	0x63
	.byte	0xd
	.long	.LASF387
	.long	0x368
	.long	0x1eb0
	.long	0x1eb6
	.uleb128 0xd
	.long	0x396b
	.byte	0
	.uleb128 0x19
	.long	.LASF384
	.byte	0x1c
	.byte	0x6b
	.byte	0x7
	.long	.LASF388
	.long	0x1eca
	.long	0x1ed0
	.uleb128 0xd
	.long	0x3966
	.byte	0
	.uleb128 0x19
	.long	.LASF384
	.byte	0x1c
	.byte	0x6d
	.byte	0x7
	.long	.LASF389
	.long	0x1ee4
	.long	0x1eef
	.uleb128 0xd
	.long	0x3966
	.uleb128 0x1
	.long	0x3970
	.byte	0
	.uleb128 0x19
	.long	.LASF384
	.byte	0x1c
	.byte	0x70
	.byte	0x7
	.long	.LASF390
	.long	0x1f03
	.long	0x1f0e
	.uleb128 0xd
	.long	0x3966
	.uleb128 0x1
	.long	0x2014
	.byte	0
	.uleb128 0x19
	.long	.LASF384
	.byte	0x1c
	.byte	0x74
	.byte	0x7
	.long	.LASF391
	.long	0x1f22
	.long	0x1f2d
	.uleb128 0xd
	.long	0x3966
	.uleb128 0x1
	.long	0x3975
	.byte	0
	.uleb128 0x2d
	.long	.LASF392
	.byte	0x81
	.long	.LASF393
	.long	0x397b
	.long	0x1f43
	.long	0x1f4e
	.uleb128 0xd
	.long	0x3966
	.uleb128 0x1
	.long	0x3970
	.byte	0
	.uleb128 0x2d
	.long	.LASF392
	.byte	0x85
	.long	.LASF394
	.long	0x397b
	.long	0x1f64
	.long	0x1f6f
	.uleb128 0xd
	.long	0x3966
	.uleb128 0x1
	.long	0x3975
	.byte	0
	.uleb128 0x19
	.long	.LASF395
	.byte	0x1c
	.byte	0x8c
	.byte	0x7
	.long	.LASF396
	.long	0x1f83
	.long	0x1f8e
	.uleb128 0xd
	.long	0x3966
	.uleb128 0xd
	.long	0xcb
	.byte	0
	.uleb128 0x19
	.long	.LASF397
	.byte	0x1c
	.byte	0x8f
	.byte	0x7
	.long	.LASF398
	.long	0x1fa2
	.long	0x1fad
	.uleb128 0xd
	.long	0x3966
	.uleb128 0x1
	.long	0x397b
	.byte	0
	.uleb128 0x42
	.long	.LASF758
	.byte	0x1c
	.byte	0x9b
	.byte	0x10
	.long	.LASF760
	.long	0x2789
	.byte	0x1
	.long	0x1fc6
	.long	0x1fcc
	.uleb128 0xd
	.long	0x396b
	.byte	0
	.uleb128 0x43
	.long	.LASF399
	.byte	0x1c
	.byte	0xb0
	.byte	0x7
	.long	.LASF400
	.long	0x3980
	.byte	0x1
	.long	0x1fe1
	.uleb128 0xd
	.long	0x396b
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x1e2f
	.uleb128 0x2
	.byte	0x1c
	.byte	0x54
	.byte	0x10
	.long	0x1ffe
	.byte	0
	.uleb128 0x2
	.byte	0x1c
	.byte	0x44
	.byte	0x1a
	.long	0x1e2f
	.uleb128 0x44
	.long	.LASF401
	.byte	0x1c
	.byte	0x50
	.byte	0x8
	.long	.LASF402
	.long	0x2014
	.uleb128 0x1
	.long	0x1e2f
	.byte	0
	.uleb128 0x29
	.long	.LASF403
	.byte	0x1d
	.value	0x11c
	.byte	0x1d
	.long	0x56
	.uleb128 0x45
	.long	.LASF772
	.uleb128 0xc
	.long	0x2021
	.uleb128 0x2
	.byte	0x1e
	.byte	0x2f
	.byte	0xb
	.long	0x7cb
	.uleb128 0x2
	.byte	0x1e
	.byte	0x30
	.byte	0xb
	.long	0x7d7
	.uleb128 0x2
	.byte	0x1e
	.byte	0x31
	.byte	0xb
	.long	0x7e3
	.uleb128 0x2
	.byte	0x1e
	.byte	0x32
	.byte	0xb
	.long	0x7ef
	.uleb128 0x2
	.byte	0x1e
	.byte	0x34
	.byte	0xb
	.long	0x3a15
	.uleb128 0x2
	.byte	0x1e
	.byte	0x35
	.byte	0xb
	.long	0x3a21
	.uleb128 0x2
	.byte	0x1e
	.byte	0x36
	.byte	0xb
	.long	0x3a2d
	.uleb128 0x2
	.byte	0x1e
	.byte	0x37
	.byte	0xb
	.long	0x3a39
	.uleb128 0x2
	.byte	0x1e
	.byte	0x39
	.byte	0xb
	.long	0x39b5
	.uleb128 0x2
	.byte	0x1e
	.byte	0x3a
	.byte	0xb
	.long	0x39c1
	.uleb128 0x2
	.byte	0x1e
	.byte	0x3b
	.byte	0xb
	.long	0x39cd
	.uleb128 0x2
	.byte	0x1e
	.byte	0x3c
	.byte	0xb
	.long	0x39d9
	.uleb128 0x2
	.byte	0x1e
	.byte	0x3e
	.byte	0xb
	.long	0x3a8d
	.uleb128 0x2
	.byte	0x1e
	.byte	0x3f
	.byte	0xb
	.long	0x3a75
	.uleb128 0x2
	.byte	0x1e
	.byte	0x41
	.byte	0xb
	.long	0x3985
	.uleb128 0x2
	.byte	0x1e
	.byte	0x42
	.byte	0xb
	.long	0x3991
	.uleb128 0x2
	.byte	0x1e
	.byte	0x43
	.byte	0xb
	.long	0x399d
	.uleb128 0x2
	.byte	0x1e
	.byte	0x44
	.byte	0xb
	.long	0x39a9
	.uleb128 0x2
	.byte	0x1e
	.byte	0x46
	.byte	0xb
	.long	0x3a45
	.uleb128 0x2
	.byte	0x1e
	.byte	0x47
	.byte	0xb
	.long	0x3a51
	.uleb128 0x2
	.byte	0x1e
	.byte	0x48
	.byte	0xb
	.long	0x3a5d
	.uleb128 0x2
	.byte	0x1e
	.byte	0x49
	.byte	0xb
	.long	0x3a69
	.uleb128 0x2
	.byte	0x1e
	.byte	0x4b
	.byte	0xb
	.long	0x39e5
	.uleb128 0x2
	.byte	0x1e
	.byte	0x4c
	.byte	0xb
	.long	0x39f1
	.uleb128 0x2
	.byte	0x1e
	.byte	0x4d
	.byte	0xb
	.long	0x39fd
	.uleb128 0x2
	.byte	0x1e
	.byte	0x4e
	.byte	0xb
	.long	0x3a09
	.uleb128 0x2
	.byte	0x1e
	.byte	0x50
	.byte	0xb
	.long	0x3a99
	.uleb128 0x2
	.byte	0x1e
	.byte	0x51
	.byte	0xb
	.long	0x3a81
	.uleb128 0x2
	.byte	0x1f
	.byte	0x35
	.byte	0xb
	.long	0x3aa5
	.uleb128 0x2
	.byte	0x1f
	.byte	0x36
	.byte	0xb
	.long	0x3beb
	.uleb128 0x2
	.byte	0x1f
	.byte	0x37
	.byte	0xb
	.long	0x3c06
	.uleb128 0x17
	.long	.LASF404
	.byte	0x20
	.byte	0x30
	.byte	0xb
	.uleb128 0x2
	.byte	0x21
	.byte	0x62
	.byte	0xb
	.long	0x6a8
	.uleb128 0x2
	.byte	0x21
	.byte	0x63
	.byte	0xb
	.long	0x704
	.uleb128 0x2
	.byte	0x21
	.byte	0x65
	.byte	0xb
	.long	0x3c17
	.uleb128 0x2
	.byte	0x21
	.byte	0x66
	.byte	0xb
	.long	0x3c29
	.uleb128 0x2
	.byte	0x21
	.byte	0x67
	.byte	0xb
	.long	0x3c3f
	.uleb128 0x2
	.byte	0x21
	.byte	0x68
	.byte	0xb
	.long	0x3c56
	.uleb128 0x2
	.byte	0x21
	.byte	0x69
	.byte	0xb
	.long	0x3c6d
	.uleb128 0x2
	.byte	0x21
	.byte	0x6a
	.byte	0xb
	.long	0x3c83
	.uleb128 0x2
	.byte	0x21
	.byte	0x6b
	.byte	0xb
	.long	0x3c9a
	.uleb128 0x2
	.byte	0x21
	.byte	0x6c
	.byte	0xb
	.long	0x3cbb
	.uleb128 0x2
	.byte	0x21
	.byte	0x6d
	.byte	0xb
	.long	0x3cdc
	.uleb128 0x2
	.byte	0x21
	.byte	0x71
	.byte	0xb
	.long	0x3cf8
	.uleb128 0x2
	.byte	0x21
	.byte	0x72
	.byte	0xb
	.long	0x3d1e
	.uleb128 0x2
	.byte	0x21
	.byte	0x74
	.byte	0xb
	.long	0x3d3f
	.uleb128 0x2
	.byte	0x21
	.byte	0x75
	.byte	0xb
	.long	0x3d60
	.uleb128 0x2
	.byte	0x21
	.byte	0x76
	.byte	0xb
	.long	0x3d81
	.uleb128 0x2
	.byte	0x21
	.byte	0x78
	.byte	0xb
	.long	0x3d98
	.uleb128 0x2
	.byte	0x21
	.byte	0x79
	.byte	0xb
	.long	0x3daf
	.uleb128 0x2
	.byte	0x21
	.byte	0x7e
	.byte	0xb
	.long	0x3dbc
	.uleb128 0x2
	.byte	0x21
	.byte	0x83
	.byte	0xb
	.long	0x3dce
	.uleb128 0x2
	.byte	0x21
	.byte	0x84
	.byte	0xb
	.long	0x3de4
	.uleb128 0x2
	.byte	0x21
	.byte	0x85
	.byte	0xb
	.long	0x3dff
	.uleb128 0x2
	.byte	0x21
	.byte	0x87
	.byte	0xb
	.long	0x3e11
	.uleb128 0x2
	.byte	0x21
	.byte	0x88
	.byte	0xb
	.long	0x3e28
	.uleb128 0x2
	.byte	0x21
	.byte	0x8b
	.byte	0xb
	.long	0x3e4e
	.uleb128 0x2
	.byte	0x21
	.byte	0x8d
	.byte	0xb
	.long	0x3e5a
	.uleb128 0x2
	.byte	0x21
	.byte	0x8f
	.byte	0xb
	.long	0x3e70
	.uleb128 0x2a
	.long	.LASF405
	.byte	0x1d
	.value	0x12e
	.byte	0x41
	.uleb128 0x46
	.string	"_V2"
	.byte	0x3a
	.value	0x25c
	.byte	0x14
	.uleb128 0x2e
	.long	.LASF731
	.long	0x22af
	.uleb128 0x47
	.long	.LASF406
	.byte	0x1
	.byte	0x22
	.value	0x272
	.byte	0xb
	.byte	0x1
	.long	0x22a9
	.uleb128 0x2f
	.long	.LASF406
	.value	0x276
	.long	.LASF408
	.long	0x2240
	.long	0x2246
	.uleb128 0xd
	.long	0x3e8c
	.byte	0
	.uleb128 0x2f
	.long	.LASF407
	.value	0x277
	.long	.LASF409
	.long	0x2259
	.long	0x2264
	.uleb128 0xd
	.long	0x3e8c
	.uleb128 0xd
	.long	0xcb
	.byte	0
	.uleb128 0x48
	.long	.LASF406
	.byte	0x22
	.value	0x27a
	.byte	0x7
	.long	.LASF410
	.byte	0x1
	.byte	0x1
	.long	0x227b
	.long	0x2286
	.uleb128 0xd
	.long	0x3e8c
	.uleb128 0x1
	.long	0x3e96
	.byte	0
	.uleb128 0x49
	.long	.LASF392
	.byte	0x22
	.value	0x27b
	.byte	0xd
	.long	.LASF411
	.long	0x3e9b
	.byte	0x1
	.byte	0x1
	.long	0x229d
	.uleb128 0xd
	.long	0x3e8c
	.uleb128 0x1
	.long	0x3e96
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x221e
	.byte	0
	.uleb128 0x2
	.byte	0x23
	.byte	0x52
	.byte	0xb
	.long	0x3eac
	.uleb128 0x2
	.byte	0x23
	.byte	0x53
	.byte	0xb
	.long	0x3ea0
	.uleb128 0x2
	.byte	0x23
	.byte	0x54
	.byte	0xb
	.long	0x30f1
	.uleb128 0x2
	.byte	0x23
	.byte	0x5c
	.byte	0xb
	.long	0x3ebd
	.uleb128 0x2
	.byte	0x23
	.byte	0x65
	.byte	0xb
	.long	0x3ed8
	.uleb128 0x2
	.byte	0x23
	.byte	0x68
	.byte	0xb
	.long	0x3ef3
	.uleb128 0x2
	.byte	0x23
	.byte	0x69
	.byte	0xb
	.long	0x3f09
	.uleb128 0x4a
	.long	.LASF412
	.byte	0x2
	.byte	0x4a
	.byte	0x19
	.long	0x221e
	.byte	0
	.uleb128 0x6
	.long	.LASF414
	.byte	0x10
	.value	0x25a
	.byte	0xc
	.long	0xcb
	.long	0x230b
	.uleb128 0x1
	.long	0x230b
	.byte	0
	.uleb128 0x7
	.long	0x2310
	.uleb128 0x4b
	.uleb128 0x3
	.long	.LASF413
	.byte	0x10
	.value	0x25f
	.byte	0x12
	.long	.LASF413
	.long	0xcb
	.long	0x232c
	.uleb128 0x1
	.long	0x230b
	.byte	0
	.uleb128 0xa
	.long	.LASF415
	.byte	0x10
	.byte	0x66
	.byte	0xf
	.long	0x267
	.long	0x2342
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0xa
	.long	.LASF416
	.byte	0x10
	.byte	0x69
	.byte	0xc
	.long	0xcb
	.long	0x2358
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0xa
	.long	.LASF417
	.byte	0x10
	.byte	0x6c
	.byte	0x11
	.long	0x2e
	.long	0x236e
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x6
	.long	.LASF418
	.byte	0x10
	.value	0x33c
	.byte	0xe
	.long	0x368
	.long	0x2399
	.uleb128 0x1
	.long	0x828
	.uleb128 0x1
	.long	0x828
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x802
	.byte	0
	.uleb128 0x4c
	.string	"div"
	.byte	0x10
	.value	0x35c
	.byte	0xe
	.long	0x757
	.long	0x23b5
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x6
	.long	.LASF419
	.byte	0x10
	.value	0x281
	.byte	0xe
	.long	0x26e
	.long	0x23cc
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x6
	.long	.LASF420
	.byte	0x10
	.value	0x35e
	.byte	0xf
	.long	0x78b
	.long	0x23e8
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x6
	.long	.LASF421
	.byte	0x10
	.value	0x3a2
	.byte	0xc
	.long	0xcb
	.long	0x2404
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x6
	.long	.LASF422
	.byte	0x10
	.value	0x3ad
	.byte	0xf
	.long	0x35
	.long	0x2425
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x7
	.long	0x242a
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.long	.LASF423
	.uleb128 0xc
	.long	0x242a
	.uleb128 0x6
	.long	.LASF424
	.byte	0x10
	.value	0x3a5
	.byte	0xc
	.long	0xcb
	.long	0x2457
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x1c
	.long	.LASF426
	.byte	0x10
	.value	0x346
	.long	0x2478
	.uleb128 0x1
	.long	0x368
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x802
	.byte	0
	.uleb128 0x4d
	.long	.LASF425
	.byte	0x10
	.value	0x276
	.byte	0xd
	.long	0x248b
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x27
	.long	.LASF529
	.byte	0x10
	.value	0x1c6
	.byte	0xc
	.long	0xcb
	.uleb128 0x1c
	.long	.LASF427
	.byte	0x10
	.value	0x1c8
	.long	0x24aa
	.uleb128 0x1
	.long	0x5b
	.byte	0
	.uleb128 0xa
	.long	.LASF428
	.byte	0x10
	.byte	0x76
	.byte	0xf
	.long	0x267
	.long	0x24c5
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x24c5
	.byte	0
	.uleb128 0x7
	.long	0x26e
	.uleb128 0xa
	.long	.LASF429
	.byte	0x10
	.byte	0xb1
	.byte	0x11
	.long	0x2e
	.long	0x24ea
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x24c5
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0xa
	.long	.LASF430
	.byte	0x10
	.byte	0xb5
	.byte	0x1a
	.long	0x41
	.long	0x250a
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x24c5
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x6
	.long	.LASF431
	.byte	0x10
	.value	0x317
	.byte	0xc
	.long	0xcb
	.long	0x2521
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x6
	.long	.LASF432
	.byte	0x10
	.value	0x3b1
	.byte	0xf
	.long	0x35
	.long	0x2542
	.uleb128 0x1
	.long	0x26e
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x7
	.long	0x2431
	.uleb128 0x6
	.long	.LASF433
	.byte	0x10
	.value	0x3a9
	.byte	0xc
	.long	0xcb
	.long	0x2563
	.uleb128 0x1
	.long	0x26e
	.uleb128 0x1
	.long	0x242a
	.byte	0
	.uleb128 0x4e
	.long	.LASF434
	.byte	0x1d
	.value	0x130
	.byte	0xb
	.long	0x25e9
	.uleb128 0x2
	.byte	0x12
	.byte	0xc8
	.byte	0xb
	.long	0x7bf
	.uleb128 0x2
	.byte	0x12
	.byte	0xd8
	.byte	0xb
	.long	0x25e9
	.uleb128 0x2
	.byte	0x12
	.byte	0xe3
	.byte	0xb
	.long	0x2605
	.uleb128 0x2
	.byte	0x12
	.byte	0xe4
	.byte	0xb
	.long	0x261b
	.uleb128 0x2
	.byte	0x12
	.byte	0xe5
	.byte	0xb
	.long	0x263b
	.uleb128 0x2
	.byte	0x12
	.byte	0xe7
	.byte	0xb
	.long	0x265b
	.uleb128 0x2
	.byte	0x12
	.byte	0xe8
	.byte	0xb
	.long	0x2676
	.uleb128 0x15
	.string	"div"
	.byte	0x12
	.byte	0xd5
	.long	.LASF435
	.long	0x7bf
	.long	0x25c6
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x48
	.byte	0
	.uleb128 0x17
	.long	.LASF436
	.byte	0x24
	.byte	0x25
	.byte	0xb
	.uleb128 0x2
	.byte	0x1b
	.byte	0xfb
	.byte	0xb
	.long	0x3908
	.uleb128 0x11
	.byte	0x1b
	.value	0x104
	.byte	0xb
	.long	0x3924
	.uleb128 0x11
	.byte	0x1b
	.value	0x105
	.byte	0xb
	.long	0x3945
	.byte	0
	.uleb128 0x6
	.long	.LASF437
	.byte	0x10
	.value	0x362
	.byte	0x1e
	.long	0x7bf
	.long	0x2605
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x48
	.byte	0
	.uleb128 0xa
	.long	.LASF438
	.byte	0x10
	.byte	0x71
	.byte	0x24
	.long	0x48
	.long	0x261b
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0xa
	.long	.LASF439
	.byte	0x10
	.byte	0xc9
	.byte	0x16
	.long	0x48
	.long	0x263b
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x24c5
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0xa
	.long	.LASF440
	.byte	0x10
	.byte	0xce
	.byte	0x1f
	.long	0x7fb
	.long	0x265b
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x24c5
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0xa
	.long	.LASF441
	.byte	0x10
	.byte	0x7c
	.byte	0xe
	.long	0x728
	.long	0x2676
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x24c5
	.byte	0
	.uleb128 0xa
	.long	.LASF442
	.byte	0x10
	.byte	0x7f
	.byte	0x14
	.long	0x4f
	.long	0x2691
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x24c5
	.byte	0
	.uleb128 0x2
	.byte	0x25
	.byte	0x27
	.byte	0xc
	.long	0x22f4
	.uleb128 0x2
	.byte	0x25
	.byte	0x2b
	.byte	0xe
	.long	0x2311
	.uleb128 0x2
	.byte	0x25
	.byte	0x2e
	.byte	0xe
	.long	0x2478
	.uleb128 0x2
	.byte	0x25
	.byte	0x33
	.byte	0xc
	.long	0x757
	.uleb128 0x2
	.byte	0x25
	.byte	0x34
	.byte	0xc
	.long	0x78b
	.uleb128 0x2
	.byte	0x25
	.byte	0x36
	.byte	0xc
	.long	0x93b
	.uleb128 0x2
	.byte	0x25
	.byte	0x36
	.byte	0xc
	.long	0x954
	.uleb128 0x2
	.byte	0x25
	.byte	0x36
	.byte	0xc
	.long	0x96d
	.uleb128 0x2
	.byte	0x25
	.byte	0x36
	.byte	0xc
	.long	0x986
	.uleb128 0x2
	.byte	0x25
	.byte	0x36
	.byte	0xc
	.long	0x99f
	.uleb128 0x2
	.byte	0x25
	.byte	0x37
	.byte	0xc
	.long	0x232c
	.uleb128 0x2
	.byte	0x25
	.byte	0x38
	.byte	0xc
	.long	0x2342
	.uleb128 0x2
	.byte	0x25
	.byte	0x39
	.byte	0xc
	.long	0x2358
	.uleb128 0x2
	.byte	0x25
	.byte	0x3a
	.byte	0xc
	.long	0x236e
	.uleb128 0x2
	.byte	0x25
	.byte	0x3c
	.byte	0xc
	.long	0x25a8
	.uleb128 0x2
	.byte	0x25
	.byte	0x3c
	.byte	0xc
	.long	0x9b8
	.uleb128 0x2
	.byte	0x25
	.byte	0x3c
	.byte	0xc
	.long	0x2399
	.uleb128 0x2
	.byte	0x25
	.byte	0x3e
	.byte	0xc
	.long	0x23b5
	.uleb128 0x2
	.byte	0x25
	.byte	0x40
	.byte	0xc
	.long	0x23cc
	.uleb128 0x2
	.byte	0x25
	.byte	0x43
	.byte	0xc
	.long	0x23e8
	.uleb128 0x2
	.byte	0x25
	.byte	0x44
	.byte	0xc
	.long	0x2404
	.uleb128 0x2
	.byte	0x25
	.byte	0x45
	.byte	0xc
	.long	0x2436
	.uleb128 0x2
	.byte	0x25
	.byte	0x47
	.byte	0xc
	.long	0x2457
	.uleb128 0x2
	.byte	0x25
	.byte	0x48
	.byte	0xc
	.long	0x248b
	.uleb128 0x2
	.byte	0x25
	.byte	0x4a
	.byte	0xc
	.long	0x2498
	.uleb128 0x2
	.byte	0x25
	.byte	0x4b
	.byte	0xc
	.long	0x24aa
	.uleb128 0x2
	.byte	0x25
	.byte	0x4c
	.byte	0xc
	.long	0x24ca
	.uleb128 0x2
	.byte	0x25
	.byte	0x4d
	.byte	0xc
	.long	0x24ea
	.uleb128 0x2
	.byte	0x25
	.byte	0x4e
	.byte	0xc
	.long	0x250a
	.uleb128 0x2
	.byte	0x25
	.byte	0x50
	.byte	0xc
	.long	0x2521
	.uleb128 0x2
	.byte	0x25
	.byte	0x51
	.byte	0xc
	.long	0x2547
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF443
	.uleb128 0x5
	.long	.LASF444
	.byte	0x26
	.byte	0xa3
	.byte	0xf
	.long	0x728
	.uleb128 0x5
	.long	.LASF445
	.byte	0x26
	.byte	0xa4
	.byte	0x10
	.long	0x267
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.long	.LASF446
	.uleb128 0xe
	.byte	0x2
	.byte	0x10
	.long	.LASF447
	.uleb128 0xe
	.byte	0x4
	.byte	0x10
	.long	.LASF448
	.uleb128 0xe
	.byte	0x10
	.byte	0x5
	.long	.LASF449
	.uleb128 0x26
	.long	.LASF450
	.byte	0x27
	.byte	0x27
	.byte	0xb
	.long	0x27d9
	.uleb128 0x4f
	.byte	0x1a
	.byte	0x3a
	.byte	0x18
	.long	0xa5b
	.byte	0
	.uleb128 0xe
	.byte	0x10
	.byte	0x7
	.long	.LASF451
	.uleb128 0x2
	.byte	0x28
	.byte	0x26
	.byte	0xc
	.long	0x93b
	.uleb128 0x2
	.byte	0x28
	.byte	0x26
	.byte	0xc
	.long	0x954
	.uleb128 0x2
	.byte	0x28
	.byte	0x26
	.byte	0xc
	.long	0x96d
	.uleb128 0x2
	.byte	0x28
	.byte	0x26
	.byte	0xc
	.long	0x986
	.uleb128 0x2
	.byte	0x28
	.byte	0x26
	.byte	0xc
	.long	0x99f
	.uleb128 0x2
	.byte	0x28
	.byte	0x27
	.byte	0xc
	.long	0xa63
	.uleb128 0x2
	.byte	0x28
	.byte	0x27
	.byte	0xc
	.long	0xa7d
	.uleb128 0x2
	.byte	0x28
	.byte	0x28
	.byte	0xc
	.long	0xa97
	.uleb128 0x2
	.byte	0x28
	.byte	0x28
	.byte	0xc
	.long	0xab1
	.uleb128 0x2
	.byte	0x28
	.byte	0x29
	.byte	0xc
	.long	0xacb
	.uleb128 0x2
	.byte	0x28
	.byte	0x29
	.byte	0xc
	.long	0xae5
	.uleb128 0x2
	.byte	0x28
	.byte	0x2a
	.byte	0xc
	.long	0xaff
	.uleb128 0x2
	.byte	0x28
	.byte	0x2a
	.byte	0xc
	.long	0xb1e
	.uleb128 0x2
	.byte	0x28
	.byte	0x2b
	.byte	0xc
	.long	0xb3d
	.uleb128 0x2
	.byte	0x28
	.byte	0x2b
	.byte	0xc
	.long	0xb56
	.uleb128 0x2
	.byte	0x28
	.byte	0x2c
	.byte	0xc
	.long	0xb6f
	.uleb128 0x2
	.byte	0x28
	.byte	0x2c
	.byte	0xc
	.long	0xb88
	.uleb128 0x2
	.byte	0x28
	.byte	0x2d
	.byte	0xc
	.long	0xba1
	.uleb128 0x2
	.byte	0x28
	.byte	0x2d
	.byte	0xc
	.long	0xbba
	.uleb128 0x2
	.byte	0x28
	.byte	0x2e
	.byte	0xc
	.long	0xbd3
	.uleb128 0x2
	.byte	0x28
	.byte	0x2e
	.byte	0xc
	.long	0xbed
	.uleb128 0x2
	.byte	0x28
	.byte	0x2f
	.byte	0xc
	.long	0xc07
	.uleb128 0x2
	.byte	0x28
	.byte	0x2f
	.byte	0xc
	.long	0xc22
	.uleb128 0x2
	.byte	0x28
	.byte	0x30
	.byte	0xc
	.long	0xc3d
	.uleb128 0x2
	.byte	0x28
	.byte	0x30
	.byte	0xc
	.long	0xc58
	.uleb128 0x2
	.byte	0x28
	.byte	0x31
	.byte	0xc
	.long	0xc73
	.uleb128 0x2
	.byte	0x28
	.byte	0x31
	.byte	0xc
	.long	0xc8c
	.uleb128 0x7
	.long	0xcb
	.uleb128 0x2
	.byte	0x28
	.byte	0x32
	.byte	0xc
	.long	0xca5
	.uleb128 0x2
	.byte	0x28
	.byte	0x32
	.byte	0xc
	.long	0xcc5
	.uleb128 0x2
	.byte	0x28
	.byte	0x33
	.byte	0xc
	.long	0xce5
	.uleb128 0x2
	.byte	0x28
	.byte	0x33
	.byte	0xc
	.long	0xd05
	.uleb128 0x2
	.byte	0x28
	.byte	0x34
	.byte	0xc
	.long	0xd25
	.uleb128 0x2
	.byte	0x28
	.byte	0x34
	.byte	0xc
	.long	0xd3e
	.uleb128 0x2
	.byte	0x28
	.byte	0x35
	.byte	0xc
	.long	0xd57
	.uleb128 0x2
	.byte	0x28
	.byte	0x35
	.byte	0xc
	.long	0xd72
	.uleb128 0x7
	.long	0x4f
	.uleb128 0x2
	.byte	0x28
	.byte	0x36
	.byte	0xc
	.long	0xd8d
	.uleb128 0x7
	.long	0x728
	.uleb128 0x2
	.byte	0x28
	.byte	0x36
	.byte	0xc
	.long	0xdad
	.uleb128 0x2
	.byte	0x28
	.byte	0x37
	.byte	0xc
	.long	0xdcd
	.uleb128 0x2
	.byte	0x28
	.byte	0x37
	.byte	0xc
	.long	0xdeb
	.uleb128 0x2
	.byte	0x28
	.byte	0x38
	.byte	0xc
	.long	0xe09
	.uleb128 0x2
	.byte	0x28
	.byte	0x38
	.byte	0xc
	.long	0xe24
	.uleb128 0x2
	.byte	0x28
	.byte	0x39
	.byte	0xc
	.long	0xe3f
	.uleb128 0x2
	.byte	0x28
	.byte	0x39
	.byte	0xc
	.long	0xe59
	.uleb128 0x2
	.byte	0x28
	.byte	0x3a
	.byte	0xc
	.long	0xe73
	.uleb128 0x2
	.byte	0x28
	.byte	0x3a
	.byte	0xc
	.long	0xe8d
	.uleb128 0x2
	.byte	0x28
	.byte	0x3b
	.byte	0xc
	.long	0xea7
	.uleb128 0x2
	.byte	0x28
	.byte	0x3b
	.byte	0xc
	.long	0xec2
	.uleb128 0x2
	.byte	0x28
	.byte	0x3c
	.byte	0xc
	.long	0xedd
	.uleb128 0x2
	.byte	0x28
	.byte	0x3c
	.byte	0xc
	.long	0xefd
	.uleb128 0x2
	.byte	0x28
	.byte	0x3f
	.byte	0xc
	.long	0xf1d
	.uleb128 0x2
	.byte	0x28
	.byte	0x3f
	.byte	0xc
	.long	0xf38
	.uleb128 0x2
	.byte	0x28
	.byte	0x3f
	.byte	0xc
	.long	0xf53
	.uleb128 0x2
	.byte	0x28
	.byte	0x40
	.byte	0xc
	.long	0xf6e
	.uleb128 0x2
	.byte	0x28
	.byte	0x40
	.byte	0xc
	.long	0xf89
	.uleb128 0x2
	.byte	0x28
	.byte	0x40
	.byte	0xc
	.long	0xfa4
	.uleb128 0x2
	.byte	0x28
	.byte	0x41
	.byte	0xc
	.long	0xfbf
	.uleb128 0x2
	.byte	0x28
	.byte	0x41
	.byte	0xc
	.long	0xfda
	.uleb128 0x2
	.byte	0x28
	.byte	0x41
	.byte	0xc
	.long	0xff5
	.uleb128 0x2
	.byte	0x28
	.byte	0x42
	.byte	0xc
	.long	0x1010
	.uleb128 0x2
	.byte	0x28
	.byte	0x42
	.byte	0xc
	.long	0x102b
	.uleb128 0x2
	.byte	0x28
	.byte	0x42
	.byte	0xc
	.long	0x1046
	.uleb128 0x2
	.byte	0x28
	.byte	0x43
	.byte	0xc
	.long	0x1061
	.uleb128 0x2
	.byte	0x28
	.byte	0x43
	.byte	0xc
	.long	0x107c
	.uleb128 0x2
	.byte	0x28
	.byte	0x43
	.byte	0xc
	.long	0x1097
	.uleb128 0x2
	.byte	0x28
	.byte	0x44
	.byte	0xc
	.long	0x10b2
	.uleb128 0x2
	.byte	0x28
	.byte	0x44
	.byte	0xc
	.long	0x10cd
	.uleb128 0x2
	.byte	0x28
	.byte	0x44
	.byte	0xc
	.long	0x10e8
	.uleb128 0x2
	.byte	0x28
	.byte	0x45
	.byte	0xc
	.long	0x1103
	.uleb128 0x2
	.byte	0x28
	.byte	0x45
	.byte	0xc
	.long	0x1123
	.uleb128 0x2
	.byte	0x28
	.byte	0x45
	.byte	0xc
	.long	0x1143
	.uleb128 0x2
	.byte	0x28
	.byte	0x46
	.byte	0xc
	.long	0x1163
	.uleb128 0x2
	.byte	0x28
	.byte	0x46
	.byte	0xc
	.long	0x1183
	.uleb128 0x2
	.byte	0x28
	.byte	0x46
	.byte	0xc
	.long	0x11a3
	.uleb128 0x2
	.byte	0x28
	.byte	0x47
	.byte	0xc
	.long	0x11c3
	.uleb128 0x2
	.byte	0x28
	.byte	0x47
	.byte	0xc
	.long	0x11e3
	.uleb128 0x2
	.byte	0x28
	.byte	0x47
	.byte	0xc
	.long	0x1203
	.uleb128 0x2
	.byte	0x28
	.byte	0x48
	.byte	0xc
	.long	0x1223
	.uleb128 0x2
	.byte	0x28
	.byte	0x48
	.byte	0xc
	.long	0x1243
	.uleb128 0x2
	.byte	0x28
	.byte	0x48
	.byte	0xc
	.long	0x1263
	.uleb128 0x2
	.byte	0x28
	.byte	0x49
	.byte	0xc
	.long	0x1283
	.uleb128 0x2
	.byte	0x28
	.byte	0x49
	.byte	0xc
	.long	0x12a3
	.uleb128 0x2
	.byte	0x28
	.byte	0x49
	.byte	0xc
	.long	0x12c3
	.uleb128 0x2
	.byte	0x28
	.byte	0x4a
	.byte	0xc
	.long	0x12e3
	.uleb128 0x2
	.byte	0x28
	.byte	0x4a
	.byte	0xc
	.long	0x1303
	.uleb128 0x2
	.byte	0x28
	.byte	0x4a
	.byte	0xc
	.long	0x1323
	.uleb128 0x2
	.byte	0x28
	.byte	0x4e
	.byte	0xc
	.long	0x1343
	.uleb128 0x2
	.byte	0x28
	.byte	0x4e
	.byte	0xc
	.long	0x135e
	.uleb128 0x2
	.byte	0x28
	.byte	0x4f
	.byte	0xc
	.long	0x1379
	.uleb128 0x2
	.byte	0x28
	.byte	0x4f
	.byte	0xc
	.long	0x1394
	.uleb128 0x2
	.byte	0x28
	.byte	0x50
	.byte	0xc
	.long	0x13af
	.uleb128 0x2
	.byte	0x28
	.byte	0x50
	.byte	0xc
	.long	0x13ca
	.uleb128 0x2
	.byte	0x28
	.byte	0x51
	.byte	0xc
	.long	0x13e5
	.uleb128 0x2
	.byte	0x28
	.byte	0x51
	.byte	0xc
	.long	0x1400
	.uleb128 0x2
	.byte	0x28
	.byte	0x52
	.byte	0xc
	.long	0x141b
	.uleb128 0x2
	.byte	0x28
	.byte	0x52
	.byte	0xc
	.long	0x143b
	.uleb128 0x2
	.byte	0x28
	.byte	0x53
	.byte	0xc
	.long	0x145b
	.uleb128 0x2
	.byte	0x28
	.byte	0x53
	.byte	0xc
	.long	0x1474
	.uleb128 0x2
	.byte	0x28
	.byte	0x54
	.byte	0xc
	.long	0x148d
	.uleb128 0x2
	.byte	0x28
	.byte	0x54
	.byte	0xc
	.long	0x14a8
	.uleb128 0x2
	.byte	0x28
	.byte	0x55
	.byte	0xc
	.long	0x14c3
	.uleb128 0x2
	.byte	0x28
	.byte	0x55
	.byte	0xc
	.long	0x14de
	.uleb128 0x2
	.byte	0x28
	.byte	0x56
	.byte	0xc
	.long	0x14f9
	.uleb128 0x2
	.byte	0x28
	.byte	0x56
	.byte	0xc
	.long	0x1514
	.uleb128 0x2
	.byte	0x28
	.byte	0x57
	.byte	0xc
	.long	0x152f
	.uleb128 0x2
	.byte	0x28
	.byte	0x57
	.byte	0xc
	.long	0x154f
	.uleb128 0x2
	.byte	0x28
	.byte	0x58
	.byte	0xc
	.long	0x156f
	.uleb128 0x2
	.byte	0x28
	.byte	0x58
	.byte	0xc
	.long	0x1592
	.uleb128 0x2
	.byte	0x28
	.byte	0x59
	.byte	0xc
	.long	0x15b5
	.uleb128 0x2
	.byte	0x28
	.byte	0x59
	.byte	0xc
	.long	0x15d5
	.uleb128 0x2
	.byte	0x28
	.byte	0x5a
	.byte	0xc
	.long	0x15f5
	.uleb128 0x2
	.byte	0x28
	.byte	0x5a
	.byte	0xc
	.long	0x1615
	.uleb128 0x2
	.byte	0x28
	.byte	0x5b
	.byte	0xc
	.long	0x1635
	.uleb128 0x2
	.byte	0x28
	.byte	0x5b
	.byte	0xc
	.long	0x165a
	.uleb128 0x2
	.byte	0x28
	.byte	0x5b
	.byte	0xc
	.long	0x167f
	.uleb128 0x2
	.byte	0x28
	.byte	0x5b
	.byte	0xc
	.long	0x16a4
	.uleb128 0x2
	.byte	0x28
	.byte	0x5b
	.byte	0xc
	.long	0x16c4
	.uleb128 0x2
	.byte	0x28
	.byte	0x5c
	.byte	0xc
	.long	0x16e4
	.uleb128 0x2
	.byte	0x28
	.byte	0x5c
	.byte	0xc
	.long	0x16ff
	.uleb128 0x2
	.byte	0x28
	.byte	0x5d
	.byte	0xc
	.long	0x171a
	.uleb128 0x2
	.byte	0x28
	.byte	0x5d
	.byte	0xc
	.long	0x1735
	.uleb128 0x2
	.byte	0x28
	.byte	0x5e
	.byte	0xc
	.long	0x1750
	.uleb128 0x2
	.byte	0x28
	.byte	0x5e
	.byte	0xc
	.long	0x176b
	.uleb128 0x2
	.byte	0x28
	.byte	0x5f
	.byte	0xc
	.long	0x1786
	.uleb128 0x2
	.byte	0x28
	.byte	0x5f
	.byte	0xc
	.long	0x17a1
	.uleb128 0x2
	.byte	0x28
	.byte	0x60
	.byte	0xc
	.long	0x17bc
	.uleb128 0x2
	.byte	0x28
	.byte	0x60
	.byte	0xc
	.long	0x17d7
	.uleb128 0x2
	.byte	0x28
	.byte	0x61
	.byte	0xc
	.long	0x17f2
	.uleb128 0x2
	.byte	0x28
	.byte	0x61
	.byte	0xc
	.long	0x180d
	.uleb128 0x2
	.byte	0x28
	.byte	0x62
	.byte	0xc
	.long	0x1828
	.uleb128 0x2
	.byte	0x28
	.byte	0x62
	.byte	0xc
	.long	0x1843
	.uleb128 0x2
	.byte	0x28
	.byte	0x63
	.byte	0xc
	.long	0x185e
	.uleb128 0x2
	.byte	0x28
	.byte	0x63
	.byte	0xc
	.long	0x1879
	.uleb128 0x2
	.byte	0x28
	.byte	0x64
	.byte	0xc
	.long	0x1894
	.uleb128 0x2
	.byte	0x28
	.byte	0x64
	.byte	0xc
	.long	0x18af
	.uleb128 0x2
	.byte	0x28
	.byte	0x65
	.byte	0xc
	.long	0x18ca
	.uleb128 0x2
	.byte	0x28
	.byte	0x65
	.byte	0xc
	.long	0x18e5
	.uleb128 0x2
	.byte	0x28
	.byte	0x66
	.byte	0xc
	.long	0x1900
	.uleb128 0x2
	.byte	0x28
	.byte	0x66
	.byte	0xc
	.long	0x1920
	.uleb128 0x2
	.byte	0x28
	.byte	0x67
	.byte	0xc
	.long	0x1940
	.uleb128 0x2
	.byte	0x28
	.byte	0x67
	.byte	0xc
	.long	0x1960
	.uleb128 0x2
	.byte	0x28
	.byte	0x68
	.byte	0xc
	.long	0x1980
	.uleb128 0x2
	.byte	0x28
	.byte	0x68
	.byte	0xc
	.long	0x19a0
	.uleb128 0x2
	.byte	0x28
	.byte	0x69
	.byte	0xc
	.long	0x19c0
	.uleb128 0x2
	.byte	0x28
	.byte	0x69
	.byte	0xc
	.long	0x19e5
	.uleb128 0x2
	.byte	0x28
	.byte	0x6a
	.byte	0xc
	.long	0x1a0a
	.uleb128 0x2
	.byte	0x28
	.byte	0x6a
	.byte	0xc
	.long	0x1a25
	.uleb128 0x2
	.byte	0x28
	.byte	0x6b
	.byte	0xc
	.long	0x1a40
	.uleb128 0x2
	.byte	0x28
	.byte	0x6b
	.byte	0xc
	.long	0x1a5b
	.uleb128 0x2
	.byte	0x28
	.byte	0x6c
	.byte	0xc
	.long	0x1a76
	.uleb128 0x2
	.byte	0x28
	.byte	0x6c
	.byte	0xc
	.long	0x1a96
	.uleb128 0x2
	.byte	0x28
	.byte	0x6d
	.byte	0xc
	.long	0x1ab6
	.uleb128 0x2
	.byte	0x28
	.byte	0x6d
	.byte	0xc
	.long	0x1ad6
	.uleb128 0x2
	.byte	0x28
	.byte	0x6e
	.byte	0xc
	.long	0x1af6
	.uleb128 0x2
	.byte	0x28
	.byte	0x6e
	.byte	0xc
	.long	0x1b11
	.uleb128 0x2
	.byte	0x28
	.byte	0x6f
	.byte	0xc
	.long	0x1b2c
	.uleb128 0x2
	.byte	0x28
	.byte	0x6f
	.byte	0xc
	.long	0x1b47
	.uleb128 0x2
	.byte	0x28
	.byte	0xb7
	.byte	0xc
	.long	0x1b62
	.uleb128 0x2
	.byte	0x28
	.byte	0xb7
	.byte	0xc
	.long	0x1b87
	.uleb128 0x2
	.byte	0x28
	.byte	0xb7
	.byte	0xc
	.long	0x1bac
	.uleb128 0x1a
	.long	.LASF472
	.byte	0x5
	.long	0xcb
	.byte	0x29
	.byte	0x3
	.long	0x2d71
	.uleb128 0xb
	.long	.LASF452
	.byte	0x1
	.uleb128 0xb
	.long	.LASF453
	.byte	0x2
	.uleb128 0xb
	.long	.LASF454
	.byte	0x3
	.uleb128 0xb
	.long	.LASF455
	.byte	0x4
	.uleb128 0xb
	.long	.LASF456
	.byte	0x5
	.uleb128 0xb
	.long	.LASF457
	.byte	0x6
	.uleb128 0xb
	.long	.LASF458
	.byte	0x7
	.uleb128 0xb
	.long	.LASF459
	.byte	0x8
	.uleb128 0xb
	.long	.LASF460
	.byte	0x9
	.uleb128 0xb
	.long	.LASF461
	.byte	0xa
	.uleb128 0xb
	.long	.LASF462
	.byte	0xb
	.uleb128 0xb
	.long	.LASF463
	.byte	0xc
	.uleb128 0xb
	.long	.LASF464
	.byte	0x3d
	.uleb128 0xb
	.long	.LASF465
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF466
	.byte	0x7b
	.uleb128 0xb
	.long	.LASF467
	.byte	0x7d
	.uleb128 0xb
	.long	.LASF468
	.byte	0x28
	.uleb128 0xb
	.long	.LASF469
	.byte	0x29
	.uleb128 0xb
	.long	.LASF470
	.byte	0x3b
	.uleb128 0x28
	.long	.LASF471
	.sleb128 -999
	.byte	0
	.uleb128 0x1a
	.long	.LASF473
	.byte	0x7
	.long	0x5b
	.byte	0x29
	.byte	0xe
	.long	0x2d9f
	.uleb128 0x1d
	.string	"IF"
	.byte	0
	.uleb128 0xb
	.long	.LASF474
	.byte	0x1
	.uleb128 0xb
	.long	.LASF475
	.byte	0x2
	.uleb128 0xb
	.long	.LASF476
	.byte	0x3
	.uleb128 0xb
	.long	.LASF477
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.long	0x282
	.long	0x2daf
	.uleb128 0x10
	.long	0x41
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	0x2d9f
	.uleb128 0x8
	.long	.LASF478
	.byte	0x29
	.byte	0xf
	.byte	0x13
	.long	0x2daf
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12INSTRUCTIONS
	.uleb128 0x12
	.long	.LASF479
	.byte	0x10
	.byte	0x29
	.byte	0x17
	.byte	0x8
	.long	0x2dff
	.uleb128 0x18
	.string	"str"
	.byte	0x29
	.byte	0x19
	.byte	0x11
	.long	0x27d
	.byte	0
	.uleb128 0x4
	.long	.LASF480
	.byte	0x29
	.byte	0x1a
	.byte	0x9
	.long	0xcb
	.byte	0x8
	.uleb128 0x4
	.long	.LASF481
	.byte	0x29
	.byte	0x1b
	.byte	0x9
	.long	0xcb
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.long	0x2dca
	.uleb128 0x1a
	.long	.LASF482
	.byte	0x7
	.long	0x5b
	.byte	0x29
	.byte	0x1e
	.long	0x2e39
	.uleb128 0xb
	.long	.LASF483
	.byte	0
	.uleb128 0x1d
	.string	"FIN"
	.byte	0x1
	.uleb128 0x1d
	.string	"SIN"
	.byte	0x2
	.uleb128 0x1d
	.string	"COS"
	.byte	0x3
	.uleb128 0x1d
	.string	"POW"
	.byte	0x4
	.uleb128 0xb
	.long	.LASF484
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.long	0x2dff
	.long	0x2e49
	.uleb128 0x10
	.long	0x41
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	0x2e39
	.uleb128 0x8
	.long	.LASF485
	.byte	0x29
	.byte	0x28
	.byte	0x1c
	.long	0x2e49
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16NATIVE_FUNCTIONS
	.uleb128 0x8
	.long	.LASF486
	.byte	0x29
	.byte	0x30
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL33NUMBER_OF_NATIVE_FUNCTIONS_STRUCT
	.uleb128 0x1a
	.long	.LASF487
	.byte	0x7
	.long	0x5b
	.byte	0x29
	.byte	0x35
	.long	0x2e9d
	.uleb128 0xb
	.long	.LASF488
	.byte	0
	.uleb128 0xb
	.long	.LASF489
	.byte	0x1
	.uleb128 0xb
	.long	.LASF490
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	0x282
	.long	0x2ead
	.uleb128 0x10
	.long	0x41
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	0x2e9d
	.uleb128 0x8
	.long	.LASF491
	.byte	0x29
	.byte	0x36
	.byte	0x13
	.long	0x2ead
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL14INITIALIZATORS
	.uleb128 0x1a
	.long	.LASF492
	.byte	0x7
	.long	0x5b
	.byte	0x29
	.byte	0x39
	.long	0x2eeb
	.uleb128 0xb
	.long	.LASF493
	.byte	0
	.uleb128 0xb
	.long	.LASF494
	.byte	0x1
	.uleb128 0xb
	.long	.LASF495
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF496
	.byte	0x29
	.byte	0x3a
	.byte	0x13
	.long	0x2ead
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL18FUNCTION_RET_TYPES
	.uleb128 0xf
	.long	0x262
	.long	0x2f11
	.uleb128 0x10
	.long	0x41
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x2f01
	.uleb128 0x8
	.long	.LASF497
	.byte	0x29
	.byte	0x3c
	.byte	0xc
	.long	0x2f11
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL9OPERATORS
	.uleb128 0x8
	.long	.LASF498
	.byte	0x29
	.byte	0x4b
	.byte	0xc
	.long	0x262
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL7COMMENT
	.uleb128 0x8
	.long	.LASF499
	.byte	0x29
	.byte	0x4d
	.byte	0x13
	.long	0x282
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL9MAIN_NAME
	.uleb128 0x8
	.long	.LASF500
	.byte	0x29
	.byte	0x4f
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL24MAX_FUNCTION_NAME_LENGTH
	.uleb128 0x8
	.long	.LASF501
	.byte	0x29
	.byte	0x50
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL15MAX_WORD_LENGTH
	.uleb128 0x8
	.long	.LASF502
	.byte	0x2a
	.byte	0x20
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11INDENT_SIZE
	.uleb128 0x12
	.long	.LASF503
	.byte	0x18
	.byte	0x2a
	.byte	0x25
	.byte	0x8
	.long	0x2fdc
	.uleb128 0x4
	.long	.LASF504
	.byte	0x2a
	.byte	0x27
	.byte	0x11
	.long	0x27d
	.byte	0
	.uleb128 0x18
	.string	"str"
	.byte	0x2a
	.byte	0x28
	.byte	0xb
	.long	0x26e
	.byte	0x8
	.uleb128 0x4
	.long	.LASF505
	.byte	0x2a
	.byte	0x2a
	.byte	0x9
	.long	0xcb
	.byte	0x10
	.uleb128 0x4
	.long	.LASF22
	.byte	0x2a
	.byte	0x2b
	.byte	0x9
	.long	0xcb
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.long	.LASF506
	.byte	0x40
	.byte	0x2b
	.byte	0x8
	.byte	0x8
	.long	0x3052
	.uleb128 0x18
	.string	"buf"
	.byte	0x2b
	.byte	0xa
	.byte	0xd
	.long	0x3052
	.byte	0
	.uleb128 0x4
	.long	.LASF45
	.byte	0x2b
	.byte	0xc
	.byte	0xc
	.long	0x273
	.byte	0x8
	.uleb128 0x4
	.long	.LASF507
	.byte	0x2b
	.byte	0xd
	.byte	0xc
	.long	0x35
	.byte	0x10
	.uleb128 0x4
	.long	.LASF46
	.byte	0x2b
	.byte	0xe
	.byte	0xc
	.long	0x35
	.byte	0x18
	.uleb128 0x4
	.long	.LASF48
	.byte	0x2b
	.byte	0x10
	.byte	0x12
	.long	0x329
	.byte	0x20
	.uleb128 0x4
	.long	.LASF508
	.byte	0x2b
	.byte	0x11
	.byte	0xc
	.long	0x35
	.byte	0x28
	.uleb128 0x4
	.long	.LASF49
	.byte	0x2b
	.byte	0x12
	.byte	0xc
	.long	0x35
	.byte	0x30
	.uleb128 0x4
	.long	.LASF509
	.byte	0x2b
	.byte	0x14
	.byte	0x9
	.long	0xcb
	.byte	0x38
	.byte	0
	.uleb128 0x7
	.long	0x2f9a
	.uleb128 0x8
	.long	.LASF510
	.byte	0x2b
	.byte	0x17
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL10NOT_A_NAME
	.uleb128 0x8
	.long	.LASF511
	.byte	0x2b
	.byte	0x18
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL17NOT_A_INSTRUCTION
	.uleb128 0x8
	.long	.LASF512
	.byte	0x2b
	.byte	0x19
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL19NOT_A_INITIALIZATOR
	.uleb128 0x8
	.long	.LASF513
	.byte	0x2b
	.byte	0x1a
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL14NOT_A_RET_TYPE
	.uleb128 0x8
	.long	.LASF514
	.byte	0x2b
	.byte	0x1b
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL21NOT_A_NATIVE_FUNCTION
	.uleb128 0x8
	.long	.LASF515
	.byte	0x2b
	.byte	0x1d
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL22START_NUMBER_OF_TOKENS
	.uleb128 0x8
	.long	.LASF516
	.byte	0x2b
	.byte	0x1e
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL23START_NUMBER_OF_STRINGS
	.uleb128 0x5
	.long	.LASF517
	.byte	0x2c
	.byte	0x14
	.byte	0x16
	.long	0x5b
	.uleb128 0x5
	.long	.LASF518
	.byte	0x2d
	.byte	0x6
	.byte	0x15
	.long	0x4d5
	.uleb128 0xc
	.long	0x30fd
	.uleb128 0x6
	.long	.LASF519
	.byte	0x2e
	.value	0x11d
	.byte	0xf
	.long	0x30f1
	.long	0x3125
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x6
	.long	.LASF520
	.byte	0x2e
	.value	0x2e8
	.byte	0xf
	.long	0x30f1
	.long	0x313c
	.uleb128 0x1
	.long	0x313c
	.byte	0
	.uleb128 0x7
	.long	0x515
	.uleb128 0x6
	.long	.LASF521
	.byte	0x2e
	.value	0x305
	.byte	0x11
	.long	0x2425
	.long	0x3162
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x313c
	.byte	0
	.uleb128 0x6
	.long	.LASF522
	.byte	0x2e
	.value	0x2f6
	.byte	0xf
	.long	0x30f1
	.long	0x317e
	.uleb128 0x1
	.long	0x242a
	.uleb128 0x1
	.long	0x313c
	.byte	0
	.uleb128 0x6
	.long	.LASF523
	.byte	0x2e
	.value	0x30c
	.byte	0xc
	.long	0xcb
	.long	0x319a
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x313c
	.byte	0
	.uleb128 0x6
	.long	.LASF524
	.byte	0x2e
	.value	0x24c
	.byte	0xc
	.long	0xcb
	.long	0x31b6
	.uleb128 0x1
	.long	0x313c
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x6
	.long	.LASF525
	.byte	0x2e
	.value	0x253
	.byte	0xc
	.long	0xcb
	.long	0x31d3
	.uleb128 0x1
	.long	0x313c
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.long	.LASF526
	.byte	0x2e
	.value	0x291
	.byte	0xc
	.long	.LASF527
	.long	0xcb
	.long	0x31f4
	.uleb128 0x1
	.long	0x313c
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.long	.LASF528
	.byte	0x2e
	.value	0x2e9
	.byte	0xf
	.long	0x30f1
	.long	0x320b
	.uleb128 0x1
	.long	0x313c
	.byte	0
	.uleb128 0x27
	.long	.LASF530
	.byte	0x2e
	.value	0x2ef
	.byte	0xf
	.long	0x30f1
	.uleb128 0x6
	.long	.LASF531
	.byte	0x2e
	.value	0x134
	.byte	0xf
	.long	0x35
	.long	0x3239
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x3239
	.byte	0
	.uleb128 0x7
	.long	0x30fd
	.uleb128 0x6
	.long	.LASF532
	.byte	0x2e
	.value	0x129
	.byte	0xf
	.long	0x35
	.long	0x3264
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x3239
	.byte	0
	.uleb128 0x6
	.long	.LASF533
	.byte	0x2e
	.value	0x125
	.byte	0xc
	.long	0xcb
	.long	0x327b
	.uleb128 0x1
	.long	0x327b
	.byte	0
	.uleb128 0x7
	.long	0x3109
	.uleb128 0x6
	.long	.LASF534
	.byte	0x2e
	.value	0x152
	.byte	0xf
	.long	0x35
	.long	0x32a6
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x329
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x3239
	.byte	0
	.uleb128 0x6
	.long	.LASF535
	.byte	0x2e
	.value	0x2f7
	.byte	0xf
	.long	0x30f1
	.long	0x32c2
	.uleb128 0x1
	.long	0x242a
	.uleb128 0x1
	.long	0x313c
	.byte	0
	.uleb128 0x6
	.long	.LASF536
	.byte	0x2e
	.value	0x2fd
	.byte	0xf
	.long	0x30f1
	.long	0x32d9
	.uleb128 0x1
	.long	0x242a
	.byte	0
	.uleb128 0x6
	.long	.LASF537
	.byte	0x2e
	.value	0x25d
	.byte	0xc
	.long	0xcb
	.long	0x32fb
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.long	.LASF538
	.byte	0x2e
	.value	0x298
	.byte	0xc
	.long	.LASF539
	.long	0xcb
	.long	0x331c
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.long	.LASF540
	.byte	0x2e
	.value	0x314
	.byte	0xf
	.long	0x30f1
	.long	0x3338
	.uleb128 0x1
	.long	0x30f1
	.uleb128 0x1
	.long	0x313c
	.byte	0
	.uleb128 0x6
	.long	.LASF541
	.byte	0x2e
	.value	0x265
	.byte	0xc
	.long	0xcb
	.long	0x3359
	.uleb128 0x1
	.long	0x313c
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3359
	.byte	0
	.uleb128 0x7
	.long	0x333
	.uleb128 0x3
	.long	.LASF542
	.byte	0x2e
	.value	0x2c7
	.byte	0xc
	.long	.LASF543
	.long	0xcb
	.long	0x3383
	.uleb128 0x1
	.long	0x313c
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3359
	.byte	0
	.uleb128 0x6
	.long	.LASF544
	.byte	0x2e
	.value	0x272
	.byte	0xc
	.long	0xcb
	.long	0x33a9
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3359
	.byte	0
	.uleb128 0x3
	.long	.LASF545
	.byte	0x2e
	.value	0x2ce
	.byte	0xc
	.long	.LASF546
	.long	0xcb
	.long	0x33ce
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3359
	.byte	0
	.uleb128 0x6
	.long	.LASF547
	.byte	0x2e
	.value	0x26d
	.byte	0xc
	.long	0xcb
	.long	0x33ea
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3359
	.byte	0
	.uleb128 0x3
	.long	.LASF548
	.byte	0x2e
	.value	0x2cb
	.byte	0xc
	.long	.LASF549
	.long	0xcb
	.long	0x340a
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3359
	.byte	0
	.uleb128 0x6
	.long	.LASF550
	.byte	0x2e
	.value	0x12e
	.byte	0xf
	.long	0x35
	.long	0x342b
	.uleb128 0x1
	.long	0x26e
	.uleb128 0x1
	.long	0x242a
	.uleb128 0x1
	.long	0x3239
	.byte	0
	.uleb128 0xa
	.long	.LASF551
	.byte	0x2e
	.byte	0x61
	.byte	0x11
	.long	0x2425
	.long	0x3446
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x2542
	.byte	0
	.uleb128 0xa
	.long	.LASF552
	.byte	0x2e
	.byte	0x6a
	.byte	0xc
	.long	0xcb
	.long	0x3461
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x2542
	.byte	0
	.uleb128 0xa
	.long	.LASF553
	.byte	0x2e
	.byte	0x83
	.byte	0xc
	.long	0xcb
	.long	0x347c
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x2542
	.byte	0
	.uleb128 0xa
	.long	.LASF554
	.byte	0x2e
	.byte	0x57
	.byte	0x11
	.long	0x2425
	.long	0x3497
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x2542
	.byte	0
	.uleb128 0xa
	.long	.LASF555
	.byte	0x2e
	.byte	0xbc
	.byte	0xf
	.long	0x35
	.long	0x34b2
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x2542
	.byte	0
	.uleb128 0x6
	.long	.LASF556
	.byte	0x2e
	.value	0x354
	.byte	0xf
	.long	0x35
	.long	0x34d8
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x34d8
	.byte	0
	.uleb128 0x7
	.long	0x3579
	.uleb128 0x50
	.string	"tm"
	.byte	0x38
	.byte	0x2f
	.byte	0x7
	.byte	0x8
	.long	0x3579
	.uleb128 0x4
	.long	.LASF557
	.byte	0x2f
	.byte	0x9
	.byte	0x7
	.long	0xcb
	.byte	0
	.uleb128 0x4
	.long	.LASF558
	.byte	0x2f
	.byte	0xa
	.byte	0x7
	.long	0xcb
	.byte	0x4
	.uleb128 0x4
	.long	.LASF559
	.byte	0x2f
	.byte	0xb
	.byte	0x7
	.long	0xcb
	.byte	0x8
	.uleb128 0x4
	.long	.LASF560
	.byte	0x2f
	.byte	0xc
	.byte	0x7
	.long	0xcb
	.byte	0xc
	.uleb128 0x4
	.long	.LASF561
	.byte	0x2f
	.byte	0xd
	.byte	0x7
	.long	0xcb
	.byte	0x10
	.uleb128 0x4
	.long	.LASF562
	.byte	0x2f
	.byte	0xe
	.byte	0x7
	.long	0xcb
	.byte	0x14
	.uleb128 0x4
	.long	.LASF563
	.byte	0x2f
	.byte	0xf
	.byte	0x7
	.long	0xcb
	.byte	0x18
	.uleb128 0x4
	.long	.LASF564
	.byte	0x2f
	.byte	0x10
	.byte	0x7
	.long	0xcb
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF565
	.byte	0x2f
	.byte	0x11
	.byte	0x7
	.long	0xcb
	.byte	0x20
	.uleb128 0x4
	.long	.LASF566
	.byte	0x2f
	.byte	0x14
	.byte	0xc
	.long	0x2e
	.byte	0x28
	.uleb128 0x4
	.long	.LASF567
	.byte	0x2f
	.byte	0x15
	.byte	0xf
	.long	0x27d
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.long	0x34dd
	.uleb128 0xa
	.long	.LASF568
	.byte	0x2e
	.byte	0xdf
	.byte	0xf
	.long	0x35
	.long	0x3594
	.uleb128 0x1
	.long	0x2542
	.byte	0
	.uleb128 0xa
	.long	.LASF569
	.byte	0x2e
	.byte	0x65
	.byte	0x11
	.long	0x2425
	.long	0x35b4
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0xa
	.long	.LASF570
	.byte	0x2e
	.byte	0x6d
	.byte	0xc
	.long	0xcb
	.long	0x35d4
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0xa
	.long	.LASF571
	.byte	0x2e
	.byte	0x5c
	.byte	0x11
	.long	0x2425
	.long	0x35f4
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x6
	.long	.LASF572
	.byte	0x2e
	.value	0x158
	.byte	0xf
	.long	0x35
	.long	0x361a
	.uleb128 0x1
	.long	0x26e
	.uleb128 0x1
	.long	0x361a
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x3239
	.byte	0
	.uleb128 0x7
	.long	0x2542
	.uleb128 0xa
	.long	.LASF573
	.byte	0x2e
	.byte	0xc0
	.byte	0xf
	.long	0x35
	.long	0x363a
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x2542
	.byte	0
	.uleb128 0x6
	.long	.LASF574
	.byte	0x2e
	.value	0x17a
	.byte	0xf
	.long	0x267
	.long	0x3656
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3656
	.byte	0
	.uleb128 0x7
	.long	0x2425
	.uleb128 0x6
	.long	.LASF575
	.byte	0x2e
	.value	0x17f
	.byte	0xe
	.long	0x728
	.long	0x3677
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3656
	.byte	0
	.uleb128 0xa
	.long	.LASF576
	.byte	0x2e
	.byte	0xda
	.byte	0x11
	.long	0x2425
	.long	0x3697
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3656
	.byte	0
	.uleb128 0x6
	.long	.LASF577
	.byte	0x2e
	.value	0x1ad
	.byte	0x11
	.long	0x2e
	.long	0x36b8
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3656
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x6
	.long	.LASF578
	.byte	0x2e
	.value	0x1b2
	.byte	0x1a
	.long	0x41
	.long	0x36d9
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3656
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0xa
	.long	.LASF579
	.byte	0x2e
	.byte	0x87
	.byte	0xf
	.long	0x35
	.long	0x36f9
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x6
	.long	.LASF580
	.byte	0x2e
	.value	0x121
	.byte	0xc
	.long	0xcb
	.long	0x3710
	.uleb128 0x1
	.long	0x30f1
	.byte	0
	.uleb128 0x6
	.long	.LASF581
	.byte	0x2e
	.value	0x103
	.byte	0xc
	.long	0xcb
	.long	0x3731
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x6
	.long	.LASF582
	.byte	0x2e
	.value	0x107
	.byte	0x11
	.long	0x2425
	.long	0x3752
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x6
	.long	.LASF583
	.byte	0x2e
	.value	0x10c
	.byte	0x11
	.long	0x2425
	.long	0x3773
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x6
	.long	.LASF584
	.byte	0x2e
	.value	0x110
	.byte	0x11
	.long	0x2425
	.long	0x3794
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x242a
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x6
	.long	.LASF585
	.byte	0x2e
	.value	0x25a
	.byte	0xc
	.long	0xcb
	.long	0x37ac
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.long	.LASF586
	.byte	0x2e
	.value	0x295
	.byte	0xc
	.long	.LASF587
	.long	0xcb
	.long	0x37c8
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x16
	.byte	0
	.uleb128 0x9
	.long	.LASF588
	.byte	0x2e
	.byte	0xa2
	.byte	0x1d
	.long	.LASF588
	.long	0x2542
	.long	0x37e7
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x242a
	.byte	0
	.uleb128 0x9
	.long	.LASF588
	.byte	0x2e
	.byte	0xa0
	.byte	0x17
	.long	.LASF588
	.long	0x2425
	.long	0x3806
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x242a
	.byte	0
	.uleb128 0x9
	.long	.LASF589
	.byte	0x2e
	.byte	0xc6
	.byte	0x1d
	.long	.LASF589
	.long	0x2542
	.long	0x3825
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x2542
	.byte	0
	.uleb128 0x9
	.long	.LASF589
	.byte	0x2e
	.byte	0xc4
	.byte	0x17
	.long	.LASF589
	.long	0x2425
	.long	0x3844
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x2542
	.byte	0
	.uleb128 0x9
	.long	.LASF590
	.byte	0x2e
	.byte	0xac
	.byte	0x1d
	.long	.LASF590
	.long	0x2542
	.long	0x3863
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x242a
	.byte	0
	.uleb128 0x9
	.long	.LASF590
	.byte	0x2e
	.byte	0xaa
	.byte	0x17
	.long	.LASF590
	.long	0x2425
	.long	0x3882
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x242a
	.byte	0
	.uleb128 0x9
	.long	.LASF591
	.byte	0x2e
	.byte	0xd1
	.byte	0x1d
	.long	.LASF591
	.long	0x2542
	.long	0x38a1
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x2542
	.byte	0
	.uleb128 0x9
	.long	.LASF591
	.byte	0x2e
	.byte	0xcf
	.byte	0x17
	.long	.LASF591
	.long	0x2425
	.long	0x38c0
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x2542
	.byte	0
	.uleb128 0x9
	.long	.LASF592
	.byte	0x2e
	.byte	0xfa
	.byte	0x1d
	.long	.LASF592
	.long	0x2542
	.long	0x38e4
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x242a
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x9
	.long	.LASF592
	.byte	0x2e
	.byte	0xf8
	.byte	0x17
	.long	.LASF592
	.long	0x2425
	.long	0x3908
	.uleb128 0x1
	.long	0x2425
	.uleb128 0x1
	.long	0x242a
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x6
	.long	.LASF593
	.byte	0x2e
	.value	0x181
	.byte	0x14
	.long	0x4f
	.long	0x3924
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3656
	.byte	0
	.uleb128 0x6
	.long	.LASF594
	.byte	0x2e
	.value	0x1ba
	.byte	0x16
	.long	0x48
	.long	0x3945
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3656
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x6
	.long	.LASF595
	.byte	0x2e
	.value	0x1c1
	.byte	0x1f
	.long	0x7fb
	.long	0x3966
	.uleb128 0x1
	.long	0x2542
	.uleb128 0x1
	.long	0x3656
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x7
	.long	0x1e2f
	.uleb128 0x7
	.long	0x1fe8
	.uleb128 0x1b
	.long	0x1fe8
	.uleb128 0x51
	.byte	0x8
	.long	0x1e2f
	.uleb128 0x1b
	.long	0x1e2f
	.uleb128 0x7
	.long	0x2026
	.uleb128 0x5
	.long	.LASF596
	.byte	0x30
	.byte	0x18
	.byte	0x13
	.long	0x38b
	.uleb128 0x5
	.long	.LASF597
	.byte	0x30
	.byte	0x19
	.byte	0x14
	.long	0x3aa
	.uleb128 0x5
	.long	.LASF598
	.byte	0x30
	.byte	0x1a
	.byte	0x14
	.long	0x3c7
	.uleb128 0x5
	.long	.LASF599
	.byte	0x30
	.byte	0x1b
	.byte	0x14
	.long	0x3df
	.uleb128 0x5
	.long	.LASF600
	.byte	0x31
	.byte	0x2b
	.byte	0x18
	.long	0x3eb
	.uleb128 0x5
	.long	.LASF601
	.byte	0x31
	.byte	0x2c
	.byte	0x19
	.long	0x403
	.uleb128 0x5
	.long	.LASF602
	.byte	0x31
	.byte	0x2d
	.byte	0x19
	.long	0x41b
	.uleb128 0x5
	.long	.LASF603
	.byte	0x31
	.byte	0x2e
	.byte	0x19
	.long	0x433
	.uleb128 0x5
	.long	.LASF604
	.byte	0x31
	.byte	0x31
	.byte	0x19
	.long	0x3f7
	.uleb128 0x5
	.long	.LASF605
	.byte	0x31
	.byte	0x32
	.byte	0x1a
	.long	0x40f
	.uleb128 0x5
	.long	.LASF606
	.byte	0x31
	.byte	0x33
	.byte	0x1a
	.long	0x427
	.uleb128 0x5
	.long	.LASF607
	.byte	0x31
	.byte	0x34
	.byte	0x1a
	.long	0x43f
	.uleb128 0x5
	.long	.LASF608
	.byte	0x31
	.byte	0x3a
	.byte	0x15
	.long	0x384
	.uleb128 0x5
	.long	.LASF609
	.byte	0x31
	.byte	0x3c
	.byte	0x12
	.long	0x2e
	.uleb128 0x5
	.long	.LASF610
	.byte	0x31
	.byte	0x3d
	.byte	0x12
	.long	0x2e
	.uleb128 0x5
	.long	.LASF611
	.byte	0x31
	.byte	0x3e
	.byte	0x12
	.long	0x2e
	.uleb128 0x5
	.long	.LASF612
	.byte	0x31
	.byte	0x47
	.byte	0x17
	.long	0x36a
	.uleb128 0x5
	.long	.LASF613
	.byte	0x31
	.byte	0x49
	.byte	0x1b
	.long	0x41
	.uleb128 0x5
	.long	.LASF614
	.byte	0x31
	.byte	0x4a
	.byte	0x1b
	.long	0x41
	.uleb128 0x5
	.long	.LASF615
	.byte	0x31
	.byte	0x4b
	.byte	0x1b
	.long	0x41
	.uleb128 0x5
	.long	.LASF616
	.byte	0x31
	.byte	0x57
	.byte	0x12
	.long	0x2e
	.uleb128 0x5
	.long	.LASF617
	.byte	0x31
	.byte	0x5a
	.byte	0x1b
	.long	0x41
	.uleb128 0x5
	.long	.LASF618
	.byte	0x31
	.byte	0x65
	.byte	0x14
	.long	0x44b
	.uleb128 0x5
	.long	.LASF619
	.byte	0x31
	.byte	0x66
	.byte	0x15
	.long	0x457
	.uleb128 0x12
	.long	.LASF620
	.byte	0x60
	.byte	0x32
	.byte	0x33
	.byte	0x8
	.long	0x3beb
	.uleb128 0x4
	.long	.LASF621
	.byte	0x32
	.byte	0x37
	.byte	0x9
	.long	0x26e
	.byte	0
	.uleb128 0x4
	.long	.LASF622
	.byte	0x32
	.byte	0x38
	.byte	0x9
	.long	0x26e
	.byte	0x8
	.uleb128 0x4
	.long	.LASF623
	.byte	0x32
	.byte	0x3e
	.byte	0x9
	.long	0x26e
	.byte	0x10
	.uleb128 0x4
	.long	.LASF624
	.byte	0x32
	.byte	0x44
	.byte	0x9
	.long	0x26e
	.byte	0x18
	.uleb128 0x4
	.long	.LASF625
	.byte	0x32
	.byte	0x45
	.byte	0x9
	.long	0x26e
	.byte	0x20
	.uleb128 0x4
	.long	.LASF626
	.byte	0x32
	.byte	0x46
	.byte	0x9
	.long	0x26e
	.byte	0x28
	.uleb128 0x4
	.long	.LASF627
	.byte	0x32
	.byte	0x47
	.byte	0x9
	.long	0x26e
	.byte	0x30
	.uleb128 0x4
	.long	.LASF628
	.byte	0x32
	.byte	0x48
	.byte	0x9
	.long	0x26e
	.byte	0x38
	.uleb128 0x4
	.long	.LASF629
	.byte	0x32
	.byte	0x49
	.byte	0x9
	.long	0x26e
	.byte	0x40
	.uleb128 0x4
	.long	.LASF630
	.byte	0x32
	.byte	0x4a
	.byte	0x9
	.long	0x26e
	.byte	0x48
	.uleb128 0x4
	.long	.LASF631
	.byte	0x32
	.byte	0x4b
	.byte	0x8
	.long	0x25b
	.byte	0x50
	.uleb128 0x4
	.long	.LASF632
	.byte	0x32
	.byte	0x4c
	.byte	0x8
	.long	0x25b
	.byte	0x51
	.uleb128 0x4
	.long	.LASF633
	.byte	0x32
	.byte	0x4e
	.byte	0x8
	.long	0x25b
	.byte	0x52
	.uleb128 0x4
	.long	.LASF634
	.byte	0x32
	.byte	0x50
	.byte	0x8
	.long	0x25b
	.byte	0x53
	.uleb128 0x4
	.long	.LASF635
	.byte	0x32
	.byte	0x52
	.byte	0x8
	.long	0x25b
	.byte	0x54
	.uleb128 0x4
	.long	.LASF636
	.byte	0x32
	.byte	0x54
	.byte	0x8
	.long	0x25b
	.byte	0x55
	.uleb128 0x4
	.long	.LASF637
	.byte	0x32
	.byte	0x5b
	.byte	0x8
	.long	0x25b
	.byte	0x56
	.uleb128 0x4
	.long	.LASF638
	.byte	0x32
	.byte	0x5c
	.byte	0x8
	.long	0x25b
	.byte	0x57
	.uleb128 0x4
	.long	.LASF639
	.byte	0x32
	.byte	0x5f
	.byte	0x8
	.long	0x25b
	.byte	0x58
	.uleb128 0x4
	.long	.LASF640
	.byte	0x32
	.byte	0x61
	.byte	0x8
	.long	0x25b
	.byte	0x59
	.uleb128 0x4
	.long	.LASF641
	.byte	0x32
	.byte	0x63
	.byte	0x8
	.long	0x25b
	.byte	0x5a
	.uleb128 0x4
	.long	.LASF642
	.byte	0x32
	.byte	0x65
	.byte	0x8
	.long	0x25b
	.byte	0x5b
	.uleb128 0x4
	.long	.LASF643
	.byte	0x32
	.byte	0x6c
	.byte	0x8
	.long	0x25b
	.byte	0x5c
	.uleb128 0x4
	.long	.LASF644
	.byte	0x32
	.byte	0x6d
	.byte	0x8
	.long	0x25b
	.byte	0x5d
	.byte	0
	.uleb128 0xa
	.long	.LASF645
	.byte	0x32
	.byte	0x7a
	.byte	0xe
	.long	0x26e
	.long	0x3c06
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x30
	.long	.LASF646
	.byte	0x32
	.byte	0x7d
	.byte	0x16
	.long	0x3c12
	.uleb128 0x7
	.long	0x3aa5
	.uleb128 0x1c
	.long	.LASF647
	.byte	0xf
	.value	0x312
	.long	0x3c29
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0xa
	.long	.LASF648
	.byte	0xf
	.byte	0xb2
	.byte	0xc
	.long	0xcb
	.long	0x3c3f
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0x6
	.long	.LASF649
	.byte	0xf
	.value	0x314
	.byte	0xc
	.long	0xcb
	.long	0x3c56
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0x6
	.long	.LASF650
	.byte	0xf
	.value	0x316
	.byte	0xc
	.long	0xcb
	.long	0x3c6d
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0xa
	.long	.LASF651
	.byte	0xf
	.byte	0xe6
	.byte	0xc
	.long	0xcb
	.long	0x3c83
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0x6
	.long	.LASF652
	.byte	0xf
	.value	0x201
	.byte	0xc
	.long	0xcb
	.long	0x3c9a
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0x6
	.long	.LASF653
	.byte	0xf
	.value	0x2f8
	.byte	0xc
	.long	0xcb
	.long	0x3cb6
	.uleb128 0x1
	.long	0x715
	.uleb128 0x1
	.long	0x3cb6
	.byte	0
	.uleb128 0x7
	.long	0x704
	.uleb128 0x6
	.long	.LASF654
	.byte	0xf
	.value	0x250
	.byte	0xe
	.long	0x26e
	.long	0x3cdc
	.uleb128 0x1
	.long	0x26e
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0x6
	.long	.LASF655
	.byte	0xf
	.value	0x102
	.byte	0xe
	.long	0x715
	.long	0x3cf8
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x6
	.long	.LASF656
	.byte	0xf
	.value	0x2a3
	.byte	0xf
	.long	0x35
	.long	0x3d1e
	.uleb128 0x1
	.long	0x368
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0x6
	.long	.LASF657
	.byte	0xf
	.value	0x109
	.byte	0xe
	.long	0x715
	.long	0x3d3f
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0x6
	.long	.LASF658
	.byte	0xf
	.value	0x2c9
	.byte	0xc
	.long	0xcb
	.long	0x3d60
	.uleb128 0x1
	.long	0x715
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x6
	.long	.LASF659
	.byte	0xf
	.value	0x2fd
	.byte	0xc
	.long	0xcb
	.long	0x3d7c
	.uleb128 0x1
	.long	0x715
	.uleb128 0x1
	.long	0x3d7c
	.byte	0
	.uleb128 0x7
	.long	0x710
	.uleb128 0x6
	.long	.LASF660
	.byte	0xf
	.value	0x2ce
	.byte	0x11
	.long	0x2e
	.long	0x3d98
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0x6
	.long	.LASF661
	.byte	0xf
	.value	0x202
	.byte	0xc
	.long	0xcb
	.long	0x3daf
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0x27
	.long	.LASF662
	.byte	0xf
	.value	0x208
	.byte	0xc
	.long	0xcb
	.uleb128 0x1c
	.long	.LASF663
	.byte	0xf
	.value	0x324
	.long	0x3dce
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0xa
	.long	.LASF664
	.byte	0xf
	.byte	0x98
	.byte	0xc
	.long	0xcb
	.long	0x3de4
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0xa
	.long	.LASF665
	.byte	0xf
	.byte	0x9a
	.byte	0xc
	.long	0xcb
	.long	0x3dff
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x1c
	.long	.LASF666
	.byte	0xf
	.value	0x2d3
	.long	0x3e11
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0x1c
	.long	.LASF667
	.byte	0xf
	.value	0x148
	.long	0x3e28
	.uleb128 0x1
	.long	0x715
	.uleb128 0x1
	.long	0x26e
	.byte	0
	.uleb128 0x6
	.long	.LASF668
	.byte	0xf
	.value	0x14c
	.byte	0xc
	.long	0xcb
	.long	0x3e4e
	.uleb128 0x1
	.long	0x715
	.uleb128 0x1
	.long	0x26e
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x30
	.long	.LASF669
	.byte	0xf
	.byte	0xbc
	.byte	0xe
	.long	0x715
	.uleb128 0xa
	.long	.LASF670
	.byte	0xf
	.byte	0xcd
	.byte	0xe
	.long	0x26e
	.long	0x3e70
	.uleb128 0x1
	.long	0x26e
	.byte	0
	.uleb128 0x6
	.long	.LASF671
	.byte	0xf
	.value	0x29c
	.byte	0xc
	.long	0xcb
	.long	0x3e8c
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x715
	.byte	0
	.uleb128 0x7
	.long	0x221e
	.uleb128 0xc
	.long	0x3e8c
	.uleb128 0x1b
	.long	0x22a9
	.uleb128 0x1b
	.long	0x221e
	.uleb128 0x5
	.long	.LASF672
	.byte	0x33
	.byte	0x26
	.byte	0x1b
	.long	0x41
	.uleb128 0x5
	.long	.LASF673
	.byte	0x34
	.byte	0x30
	.byte	0x1a
	.long	0x3eb8
	.uleb128 0x7
	.long	0x3c2
	.uleb128 0xa
	.long	.LASF674
	.byte	0x33
	.byte	0x9f
	.byte	0xc
	.long	0xcb
	.long	0x3ed8
	.uleb128 0x1
	.long	0x30f1
	.uleb128 0x1
	.long	0x3ea0
	.byte	0
	.uleb128 0xa
	.long	.LASF675
	.byte	0x34
	.byte	0x37
	.byte	0xf
	.long	0x30f1
	.long	0x3ef3
	.uleb128 0x1
	.long	0x30f1
	.uleb128 0x1
	.long	0x3eac
	.byte	0
	.uleb128 0xa
	.long	.LASF676
	.byte	0x34
	.byte	0x34
	.byte	0x12
	.long	0x3eac
	.long	0x3f09
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0xa
	.long	.LASF677
	.byte	0x33
	.byte	0x9b
	.byte	0x11
	.long	0x3ea0
	.long	0x3f1f
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x52
	.long	0x22e7
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0xf
	.long	0x262
	.long	0x3f3e
	.uleb128 0x10
	.long	0x41
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.long	0x3f2e
	.uleb128 0x8
	.long	.LASF678
	.byte	0x35
	.byte	0x3
	.byte	0xc
	.long	0x3f3e
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12STD_LOG_NAME
	.uleb128 0x2b
	.long	.LASF679
	.byte	0x18
	.byte	0x36
	.byte	0xb
	.byte	0x7
	.long	0x4020
	.uleb128 0x4
	.long	.LASF680
	.byte	0x36
	.byte	0xe
	.byte	0xd
	.long	0xcb
	.byte	0
	.uleb128 0x4
	.long	.LASF681
	.byte	0x36
	.byte	0x10
	.byte	0xd
	.long	0xcb
	.byte	0x4
	.uleb128 0x4
	.long	.LASF682
	.byte	0x36
	.byte	0x11
	.byte	0xd
	.long	0xcb
	.byte	0x8
	.uleb128 0x4
	.long	.LASF683
	.byte	0x36
	.byte	0x12
	.byte	0x15
	.long	0x27d
	.byte	0x10
	.uleb128 0x53
	.long	.LASF679
	.byte	0x36
	.byte	0x14
	.byte	0x9
	.long	.LASF684
	.long	0x3fae
	.long	0x3fb9
	.uleb128 0xd
	.long	0x4025
	.uleb128 0x1
	.long	0x402f
	.byte	0
	.uleb128 0x54
	.long	.LASF392
	.byte	0x36
	.byte	0x15
	.byte	0x19
	.long	.LASF685
	.long	0x4034
	.long	0x3fd1
	.long	0x3fdc
	.uleb128 0xd
	.long	0x4025
	.uleb128 0x1
	.long	0x402f
	.byte	0
	.uleb128 0x55
	.long	.LASF679
	.byte	0x36
	.byte	0x18
	.byte	0x9
	.long	.LASF686
	.byte	0x1
	.long	0x3ff2
	.byte	0
	.long	0x4002
	.uleb128 0xd
	.long	0x4025
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x56
	.long	.LASF687
	.byte	0x36
	.byte	0x19
	.byte	0x9
	.long	.LASF688
	.byte	0x1
	.long	0x4014
	.byte	0
	.uleb128 0xd
	.long	0x4025
	.uleb128 0xd
	.long	0xcb
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x3f59
	.uleb128 0x7
	.long	0x3f59
	.uleb128 0xc
	.long	0x4025
	.uleb128 0x1b
	.long	0x4020
	.uleb128 0x1b
	.long	0x3f59
	.uleb128 0x8
	.long	.LASF689
	.byte	0x37
	.byte	0x3
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6CRINGE
	.uleb128 0x1a
	.long	.LASF690
	.byte	0x5
	.long	0xcb
	.byte	0x37
	.byte	0x5
	.long	0x4072
	.uleb128 0xb
	.long	.LASF691
	.byte	0
	.uleb128 0x28
	.long	.LASF692
	.sleb128 -1
	.uleb128 0x28
	.long	.LASF693
	.sleb128 -2
	.byte	0
	.uleb128 0x1a
	.long	.LASF694
	.byte	0x7
	.long	0x5b
	.byte	0x1
	.byte	0x1f
	.long	0x4089
	.uleb128 0x1d
	.string	"NIL"
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF695
	.byte	0x18
	.byte	0x1
	.byte	0x24
	.byte	0x8
	.long	0x40be
	.uleb128 0x4
	.long	.LASF696
	.byte	0x1
	.byte	0x26
	.byte	0x11
	.long	0x27d
	.byte	0
	.uleb128 0x4
	.long	.LASF697
	.byte	0x1
	.byte	0x27
	.byte	0x10
	.long	0x1d5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF7
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.long	0xcb
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	0x4089
	.uleb128 0xf
	.long	0x40be
	.long	0x40d3
	.uleb128 0x10
	.long	0x41
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.long	0x40c3
	.uleb128 0x8
	.long	.LASF698
	.byte	0x1
	.byte	0x2b
	.byte	0xe
	.long	0x40d3
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL10STD_LEXEMS
	.uleb128 0x8
	.long	.LASF699
	.byte	0x1
	.byte	0x53
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL20NUMBER_OF_STD_LEXEMS
	.uleb128 0x8
	.long	.LASF700
	.byte	0x1
	.byte	0x62
	.byte	0xe
	.long	0x278
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL7ERROR_1
	.uleb128 0x8
	.long	.LASF701
	.byte	0x1
	.byte	0x63
	.byte	0xe
	.long	0x278
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL7ERROR_2
	.uleb128 0x8
	.long	.LASF702
	.byte	0x1
	.byte	0x64
	.byte	0xe
	.long	0x278
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL7ERROR_3
	.uleb128 0x8
	.long	.LASF703
	.byte	0x1
	.byte	0x65
	.byte	0xe
	.long	0x278
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL7ERROR_4
	.uleb128 0x8
	.long	.LASF704
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.long	0x278
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL7ERROR_5
	.uleb128 0x8
	.long	.LASF705
	.byte	0x1
	.byte	0x67
	.byte	0xe
	.long	0x278
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL7ERROR_6
	.uleb128 0x8
	.long	.LASF706
	.byte	0x1
	.byte	0x69
	.byte	0xe
	.long	0x278
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL10PREV_ERROR
	.uleb128 0x8
	.long	.LASF707
	.byte	0x1
	.byte	0x6b
	.byte	0xe
	.long	0x278
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL14ERROR_TRASHOLD
	.uleb128 0x8
	.long	.LASF708
	.byte	0x1
	.byte	0xaa
	.byte	0xe
	.long	0x278
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12END_OF_TOKEN
	.uleb128 0x57
	.long	.LASF750
	.long	0x368
	.uleb128 0x22
	.long	0x2246
	.long	.LASF709
	.long	0x41e4
	.long	0x41ee
	.uleb128 0x23
	.long	.LASF711
	.long	0x3e91
	.byte	0
	.uleb128 0x22
	.long	0x222d
	.long	.LASF710
	.long	0x41ff
	.long	0x4209
	.uleb128 0x23
	.long	.LASF711
	.long	0x3e91
	.byte	0
	.uleb128 0x9
	.long	.LASF712
	.byte	0x2a
	.byte	0x1a
	.byte	0x5
	.long	.LASF713
	.long	0xcb
	.long	0x4228
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x9
	.long	.LASF714
	.byte	0x2b
	.byte	0x29
	.byte	0x5
	.long	.LASF715
	.long	0xcb
	.long	0x4247
	.uleb128 0x1
	.long	0x4247
	.uleb128 0x1
	.long	0x273
	.byte	0
	.uleb128 0x7
	.long	0x2fdc
	.uleb128 0x9
	.long	.LASF716
	.byte	0x2b
	.byte	0x2b
	.byte	0x5
	.long	.LASF717
	.long	0xcb
	.long	0x426b
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x4247
	.byte	0
	.uleb128 0x9
	.long	.LASF718
	.byte	0x2b
	.byte	0x27
	.byte	0x5
	.long	.LASF719
	.long	0xcb
	.long	0x4285
	.uleb128 0x1
	.long	0x4247
	.byte	0
	.uleb128 0x3
	.long	.LASF720
	.byte	0xf
	.value	0x1b7
	.byte	0xc
	.long	.LASF721
	.long	0xcb
	.long	0x42a6
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x16
	.byte	0
	.uleb128 0x9
	.long	.LASF722
	.byte	0x2b
	.byte	0x26
	.byte	0x8
	.long	.LASF723
	.long	0x273
	.long	0x42c0
	.uleb128 0x1
	.long	0x4247
	.byte	0
	.uleb128 0xa
	.long	.LASF724
	.byte	0x38
	.byte	0x3d
	.byte	0xe
	.long	0x368
	.long	0x42e0
	.uleb128 0x1
	.long	0x368
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x6
	.long	.LASF725
	.byte	0x38
	.value	0x125
	.byte	0xf
	.long	0x35
	.long	0x42fc
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x9
	.long	.LASF726
	.byte	0x2a
	.byte	0x36
	.byte	0x5
	.long	.LASF727
	.long	0xcb
	.long	0x4316
	.uleb128 0x1
	.long	0x3052
	.byte	0
	.uleb128 0x22
	.long	0x4002
	.long	.LASF728
	.long	0x4327
	.long	0x4331
	.uleb128 0x23
	.long	.LASF711
	.long	0x402a
	.byte	0
	.uleb128 0x9
	.long	.LASF729
	.byte	0x2b
	.byte	0x22
	.byte	0x5
	.long	.LASF730
	.long	0xcb
	.long	0x434b
	.uleb128 0x1
	.long	0x4247
	.byte	0
	.uleb128 0x2e
	.long	.LASF732
	.long	0x43b5
	.uleb128 0x19
	.long	.LASF733
	.byte	0x39
	.byte	0x2b
	.byte	0xe
	.long	.LASF734
	.long	0x4368
	.long	0x4382
	.uleb128 0xd
	.long	0x43b5
	.uleb128 0x1
	.long	0x368
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x58
	.string	"log"
	.byte	0x39
	.byte	0x24
	.byte	0xe
	.long	.LASF773
	.byte	0x1
	.long	0x4397
	.long	0x43a3
	.uleb128 0xd
	.long	0x43b5
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x16
	.byte	0
	.uleb128 0x59
	.long	.LASF774
	.byte	0x39
	.byte	0x19
	.byte	0x18
	.long	.LASF775
	.long	0x444b
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	0x434b
	.uleb128 0x9
	.long	.LASF735
	.byte	0x2b
	.byte	0x20
	.byte	0x5
	.long	.LASF736
	.long	0xcb
	.long	0x43e3
	.uleb128 0x1
	.long	0x4247
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x9
	.long	.LASF737
	.byte	0x2a
	.byte	0x13
	.byte	0x8
	.long	.LASF738
	.long	0x35
	.long	0x4402
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x1
	.long	0x25b
	.byte	0
	.uleb128 0x9
	.long	.LASF739
	.byte	0x2a
	.byte	0xa
	.byte	0x7
	.long	.LASF740
	.long	0x26e
	.long	0x441c
	.uleb128 0x1
	.long	0x27d
	.byte	0
	.uleb128 0x6
	.long	.LASF741
	.byte	0x38
	.value	0x1a3
	.byte	0xe
	.long	0x26e
	.long	0x4433
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x6
	.long	.LASF742
	.byte	0xf
	.value	0x164
	.byte	0xc
	.long	0xcb
	.long	0x444b
	.uleb128 0x1
	.long	0x27d
	.uleb128 0x16
	.byte	0
	.uleb128 0x1b
	.long	0x434b
	.uleb128 0x22
	.long	0x3fdc
	.long	.LASF743
	.long	0x4461
	.long	0x4483
	.uleb128 0x23
	.long	.LASF711
	.long	0x402a
	.uleb128 0x5a
	.string	"lvl"
	.byte	0x36
	.byte	0x18
	.byte	0x1c
	.long	0xcb
	.uleb128 0x5b
	.long	.LASF744
	.byte	0x36
	.byte	0x18
	.byte	0x2d
	.long	0x27d
	.byte	0
	.uleb128 0x5c
	.long	.LASF776
	.quad	.LFB3652
	.quad	.LFE3652-.LFB3652
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5d
	.long	.LASF777
	.quad	.LFB3651
	.quad	.LFE3651-.LFB3651
	.uleb128 0x1
	.byte	0x9c
	.long	0x44d4
	.uleb128 0x24
	.long	.LASF745
	.value	0x138
	.byte	0x5
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF746
	.value	0x138
	.byte	0x5
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5e
	.long	.LASF753
	.byte	0x1
	.value	0x126
	.byte	0xc
	.long	0xcb
	.quad	.LFB2867
	.quad	.LFE2867-.LFB2867
	.uleb128 0x1
	.byte	0x9c
	.long	0x456f
	.uleb128 0x24
	.long	.LASF747
	.value	0x126
	.byte	0x1d
	.long	0x273
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x24
	.long	.LASF748
	.value	0x126
	.byte	0x30
	.long	0x27d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x5f
	.long	.LASF749
	.byte	0x1
	.value	0x128
	.byte	0x14
	.long	0x3f59
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF751
	.long	0x2f11
	.uleb128 0x9
	.byte	0x3
	.quad	.LC73
	.uleb128 0x1e
	.long	.LASF752
	.long	0x457f
	.uleb128 0x9
	.byte	0x3
	.quad	.LC75
	.uleb128 0x31
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x60
	.string	"i"
	.byte	0x1
	.value	0x12c
	.byte	0xe
	.long	0xcb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x262
	.long	0x457f
	.uleb128 0x10
	.long	0x41
	.byte	0x21
	.byte	0
	.uleb128 0xc
	.long	0x456f
	.uleb128 0x61
	.long	.LASF754
	.byte	0x1
	.byte	0xac
	.byte	0xf
	.long	0x273
	.quad	.LFB2866
	.quad	.LFE2866-.LFB2866
	.uleb128 0x1
	.byte	0x9c
	.long	0x4667
	.uleb128 0x62
	.string	"ctx"
	.byte	0x1
	.byte	0xac
	.byte	0x2c
	.long	0x4247
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x8
	.long	.LASF755
	.byte	0x1
	.byte	0xae
	.byte	0x14
	.long	0x3f59
	.uleb128 0x2
	.byte	0x73
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF751
	.long	0x4677
	.uleb128 0x9
	.byte	0x3
	.quad	.LC50
	.uleb128 0x1e
	.long	.LASF752
	.long	0x468c
	.uleb128 0x9
	.byte	0x3
	.quad	.LC52
	.uleb128 0x8
	.long	.LASF756
	.byte	0x1
	.byte	0xb1
	.byte	0x9
	.long	0xcb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x8
	.long	.LASF748
	.byte	0x1
	.byte	0xbc
	.byte	0x11
	.long	0x4691
	.uleb128 0x9
	.byte	0x3
	.quad	_ZZL15GetTokenFromStdP10LexicalCtxE11word_buffer
	.uleb128 0x32
	.string	"n"
	.byte	0xbf
	.byte	0x9
	.long	0xcb
	.uleb128 0x3
	.byte	0x73
	.sleb128 -112
	.uleb128 0x8
	.long	.LASF747
	.byte	0x1
	.byte	0xc1
	.byte	0xc
	.long	0x273
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x63
	.long	.LLRL0
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.byte	0xde
	.byte	0xc
	.long	0x267
	.uleb128 0x3
	.byte	0x73
	.sleb128 -96
	.uleb128 0x31
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x8
	.long	.LASF757
	.byte	0x1
	.byte	0xee
	.byte	0x11
	.long	0xcb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x262
	.long	0x4677
	.uleb128 0x10
	.long	0x41
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	0x4667
	.uleb128 0xf
	.long	0x262
	.long	0x468c
	.uleb128 0x10
	.long	0x41
	.byte	0x23
	.byte	0
	.uleb128 0xc
	.long	0x467c
	.uleb128 0xf
	.long	0x25b
	.long	0x46a1
	.uleb128 0x10
	.long	0x41
	.byte	0xff
	.byte	0
	.uleb128 0x64
	.long	.LASF759
	.byte	0x1
	.byte	0x6d
	.byte	0x5
	.long	.LASF761
	.long	0xcb
	.quad	.LFB2865
	.quad	.LFE2865-.LFB2865
	.uleb128 0x1
	.byte	0x9c
	.long	0x477b
	.uleb128 0x33
	.long	.LASF762
	.byte	0x6d
	.byte	0x24
	.long	0x477b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x33
	.long	.LASF763
	.byte	0x6d
	.byte	0x39
	.long	0x27d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x65
	.long	.LASF778
	.byte	0x1
	.byte	0x95
	.byte	0x5
	.quad	.L12
	.uleb128 0x8
	.long	.LASF764
	.byte	0x1
	.byte	0x6f
	.byte	0x14
	.long	0x3f59
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF751
	.long	0x4790
	.uleb128 0x9
	.byte	0x3
	.quad	.LC38
	.uleb128 0x1e
	.long	.LASF752
	.long	0x47a5
	.uleb128 0x9
	.byte	0x3
	.quad	.LC42
	.uleb128 0x8
	.long	.LASF765
	.byte	0x1
	.byte	0x73
	.byte	0x11
	.long	0x27d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x8
	.long	.LASF766
	.byte	0x1
	.byte	0x77
	.byte	0x10
	.long	0x2fdc
	.uleb128 0x3
	.byte	0x7d
	.sleb128 -96
	.uleb128 0x32
	.string	"ctx"
	.byte	0x78
	.byte	0x11
	.long	0x4247
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x8
	.long	.LASF46
	.byte	0x1
	.byte	0x7a
	.byte	0xc
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x8
	.long	.LASF47
	.byte	0x1
	.byte	0x81
	.byte	0xc
	.long	0x273
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x7
	.long	0x2b3
	.uleb128 0xf
	.long	0x262
	.long	0x4790
	.uleb128 0x10
	.long	0x41
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	0x4780
	.uleb128 0xf
	.long	0x262
	.long	0x47a5
	.uleb128 0x10
	.long	0x41
	.byte	0x2f
	.byte	0
	.uleb128 0xc
	.long	0x4795
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
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
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 28
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 28
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x39
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
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
	.uleb128 0x51
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.uleb128 0x5e
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5f
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x62
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x63
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x64
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
	.uleb128 0x65
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB3-.Ltext0
	.uleb128 .LBE3-.Ltext0
	.byte	0x4
	.uleb128 .LBB8-.Ltext0
	.uleb128 .LBE8-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF297:
	.string	"fdim"
.LASF221:
	.string	"_ZSt4fmodee"
.LASF36:
	.string	"t_name_ptr"
.LASF740:
	.string	"_Z10GetSrcFilePKc"
.LASF146:
	.string	"_ZSt3absd"
.LASF144:
	.string	"_ZSt3abse"
.LASF145:
	.string	"_ZSt3absf"
.LASF348:
	.string	"_ZSt10nexttowardee"
.LASF652:
	.string	"fgetc"
.LASF138:
	.string	"int8_t"
.LASF148:
	.string	"_ZSt3absl"
.LASF367:
	.string	"_ZSt6scalbnfi"
.LASF318:
	.string	"_ZSt6lgammae"
.LASF490:
	.string	"NUMBER_OF_INITIALIZATORS"
.LASF245:
	.string	"_ZSt7signbitd"
.LASF59:
	.string	"size_t"
.LASF246:
	.string	"_ZSt7signbitf"
.LASF147:
	.string	"_ZSt3absx"
.LASF559:
	.string	"tm_hour"
.LASF733:
	.string	"FREE_LOG"
.LASF85:
	.string	"__value"
.LASF307:
	.string	"_ZSt4fminff"
.LASF201:
	.string	"_ZSt5log10e"
.LASF202:
	.string	"_ZSt5log10f"
.LASF531:
	.string	"mbrlen"
.LASF754:
	.string	"GetTokenFromStd"
.LASF345:
	.string	"_ZSt9nextafteree"
.LASF280:
	.string	"cbrt"
.LASF126:
	.string	"fpos_t"
.LASF155:
	.string	"__cust_iswap"
.LASF222:
	.string	"_ZSt4fmodff"
.LASF140:
	.string	"int32_t"
.LASF71:
	.string	"__uint_least8_t"
.LASF267:
	.string	"isunordered"
.LASF47:
	.string	"root"
.LASF104:
	.string	"_IO_save_end"
.LASF751:
	.string	"__func__"
.LASF557:
	.string	"tm_sec"
.LASF208:
	.string	"sqrt"
.LASF778:
	.string	"FAILURE_EXIT"
.LASF437:
	.string	"lldiv"
.LASF154:
	.string	"__cust_imove"
.LASF555:
	.string	"wcscspn"
.LASF699:
	.string	"NUMBER_OF_STD_LEXEMS"
.LASF305:
	.string	"fmin"
.LASF646:
	.string	"localeconv"
.LASF380:
	.string	"_M_addref"
.LASF385:
	.string	"_M_get"
.LASF442:
	.string	"strtold"
.LASF492:
	.string	"FUNCTION_RET_TYPES_NUM"
.LASF439:
	.string	"strtoll"
.LASF410:
	.string	"_ZNSt8ios_base4InitC4ERKS0_"
.LASF97:
	.string	"_IO_write_base"
.LASF670:
	.string	"tmpnam"
.LASF133:
	.string	"div_t"
.LASF773:
	.string	"_ZN6Logger3logEPKcz"
.LASF141:
	.string	"int64_t"
.LASF425:
	.string	"quick_exit"
.LASF113:
	.string	"_lock"
.LASF413:
	.string	"at_quick_exit"
.LASF624:
	.string	"int_curr_symbol"
.LASF458:
	.string	"VARIABLE"
.LASF300:
	.string	"_ZSt3fmaeee"
.LASF156:
	.string	"__cust_access"
.LASF608:
	.string	"int_fast8_t"
.LASF588:
	.string	"wcschr"
.LASF452:
	.string	"STATEMENT"
.LASF737:
	.string	"CountLines"
.LASF188:
	.string	"_ZSt4tanhe"
.LASF189:
	.string	"_ZSt4tanhf"
.LASF7:
	.string	"type"
.LASF635:
	.string	"n_cs_precedes"
.LASF143:
	.string	"__compar_fn_t"
.LASF102:
	.string	"_IO_save_base"
.LASF532:
	.string	"mbrtowc"
.LASF336:
	.string	"_ZSt5lrinte"
.LASF337:
	.string	"_ZSt5lrintf"
.LASF491:
	.string	"INITIALIZATORS"
.LASF697:
	.string	"token_value"
.LASF470:
	.string	"END_OF_STATEMENT"
.LASF579:
	.string	"wcsxfrm"
.LASF438:
	.string	"atoll"
.LASF631:
	.string	"int_frac_digits"
.LASF386:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EPv"
.LASF346:
	.string	"_ZSt9nextafterff"
.LASF653:
	.string	"fgetpos"
.LASF88:
	.string	"__pos"
.LASF106:
	.string	"_chain"
.LASF512:
	.string	"NOT_A_INITIALIZATOR"
.LASF647:
	.string	"clearerr"
.LASF269:
	.string	"_ZSt11isunordereddd"
.LASF110:
	.string	"_cur_column"
.LASF182:
	.string	"_ZSt4coshe"
.LASF686:
	.string	"_ZN14FunctionLoggerC4EiPKc"
.LASF629:
	.string	"positive_sign"
.LASF457:
	.string	"NAME"
.LASF82:
	.string	"__wch"
.LASF327:
	.string	"_ZSt5log1pe"
.LASF62:
	.string	"__uint8_t"
.LASF772:
	.string	"type_info"
.LASF481:
	.string	"number_of_parametres"
.LASF347:
	.string	"nexttoward"
.LASF415:
	.string	"atof"
.LASF416:
	.string	"atoi"
.LASF417:
	.string	"atol"
.LASF310:
	.string	"_ZSt5hypotddd"
.LASF516:
	.string	"START_NUMBER_OF_STRINGS"
.LASF590:
	.string	"wcsrchr"
.LASF626:
	.string	"mon_decimal_point"
.LASF463:
	.string	"PARAMETR"
.LASF391:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EOS0_"
.LASF268:
	.string	"_ZSt11isunorderedee"
.LASF2:
	.string	"long int"
.LASF727:
	.string	"_Z11BufferGetChP6Buffer"
.LASF393:
	.string	"_ZNSt15__exception_ptr13exception_ptraSERKS0_"
.LASF455:
	.string	"FUNCTION_RET_TYPE"
.LASF715:
	.string	"_Z9AddStringP10LexicalCtxP5Token"
.LASF484:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS"
.LASF129:
	.string	"float"
.LASF547:
	.string	"vwprintf"
.LASF192:
	.string	"frexp"
.LASF487:
	.string	"INITIALIZATORS_NUM"
.LASF433:
	.string	"wctomb"
.LASF342:
	.string	"_ZSt9nearbyinte"
.LASF343:
	.string	"_ZSt9nearbyintf"
.LASF123:
	.string	"_IO_marker"
.LASF476:
	.string	"RETURN"
.LASF641:
	.string	"int_n_cs_precedes"
.LASF407:
	.string	"~Init"
.LASF675:
	.string	"towctrans"
.LASF152:
	.string	"ranges"
.LASF688:
	.string	"_ZN14FunctionLoggerD4Ev"
.LASF529:
	.string	"rand"
.LASF243:
	.string	"signbit"
.LASF298:
	.string	"_ZSt4fdimee"
.LASF710:
	.string	"_ZNSt8ios_base4InitC1Ev"
.LASF270:
	.string	"_ZSt11isunorderedff"
.LASF732:
	.string	"Logger"
.LASF483:
	.string	"FOUT"
.LASF707:
	.string	"ERROR_TRASHOLD"
.LASF187:
	.string	"tanh"
.LASF403:
	.string	"nullptr_t"
.LASF309:
	.string	"_ZSt5hypoteee"
.LASF28:
	.string	"size_of_tables_arr"
.LASF607:
	.string	"uint_least64_t"
.LASF215:
	.string	"_ZSt4fabse"
.LASF216:
	.string	"_ZSt4fabsf"
.LASF440:
	.string	"strtoull"
.LASF596:
	.string	"uint8_t"
.LASF341:
	.string	"nearbyint"
.LASF170:
	.string	"_ZSt4atane"
.LASF171:
	.string	"_ZSt4atanf"
.LASF706:
	.string	"PREV_ERROR"
.LASF92:
	.string	"_IO_FILE"
.LASF203:
	.string	"modf"
.LASF225:
	.string	"_ZSt10fpclassifyd"
.LASF224:
	.string	"_ZSt10fpclassifye"
.LASF226:
	.string	"_ZSt10fpclassifyf"
.LASF664:
	.string	"remove"
.LASF431:
	.string	"system"
.LASF231:
	.string	"isinf"
.LASF330:
	.string	"_ZSt4log2e"
.LASF672:
	.string	"wctype_t"
.LASF392:
	.string	"operator="
.LASF539:
	.string	"__isoc99_swscanf"
.LASF752:
	.string	"__PRETTY_FUNCTION__"
.LASF49:
	.string	"number_of_strings"
.LASF223:
	.string	"fpclassify"
.LASF530:
	.string	"getwchar"
.LASF289:
	.string	"_ZSt4erfce"
.LASF290:
	.string	"_ZSt4erfcf"
.LASF521:
	.string	"fgetws"
.LASF73:
	.string	"__uint_least16_t"
.LASF57:
	.string	"unsigned char"
.LASF117:
	.string	"_freeres_list"
.LASF636:
	.string	"n_sep_by_space"
.LASF204:
	.string	"_ZSt4modfePe"
.LASF648:
	.string	"fclose"
.LASF592:
	.string	"wmemchr"
.LASF179:
	.string	"_ZSt3tane"
.LASF180:
	.string	"_ZSt3tanf"
.LASF259:
	.string	"islessequal"
.LASF241:
	.string	"_ZSt8isnormald"
.LASF240:
	.string	"_ZSt8isnormale"
.LASF242:
	.string	"_ZSt8isnormalf"
.LASF331:
	.string	"_ZSt4log2f"
.LASF220:
	.string	"fmod"
.LASF527:
	.string	"__isoc99_fwscanf"
.LASF136:
	.string	"7lldiv_t"
.LASF70:
	.string	"__int_least8_t"
.LASF537:
	.string	"swprintf"
.LASF589:
	.string	"wcspbrk"
.LASF401:
	.string	"rethrow_exception"
.LASF44:
	.string	"Program"
.LASF482:
	.string	"NATIVE_FUNCTIONS_NUM"
.LASF335:
	.string	"lrint"
.LASF12:
	.string	"local_type"
.LASF739:
	.string	"GetSrcFile"
.LASF18:
	.string	"value"
.LASF181:
	.string	"cosh"
.LASF45:
	.string	"token_arr"
.LASF40:
	.string	"char"
.LASF719:
	.string	"_Z10UnGetTokenP10LexicalCtx"
.LASF724:
	.string	"memset"
.LASF700:
	.string	"ERROR_1"
.LASF701:
	.string	"ERROR_2"
.LASF702:
	.string	"ERROR_3"
.LASF703:
	.string	"ERROR_4"
.LASF704:
	.string	"ERROR_5"
.LASF705:
	.string	"ERROR_6"
.LASF435:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF713:
	.string	"_Z7stricmpPKcS0_"
.LASF614:
	.string	"uint_fast32_t"
.LASF293:
	.string	"_ZSt4exp2f"
.LASF677:
	.string	"wctype"
.LASF13:
	.string	"global_initialization"
.LASF606:
	.string	"uint_least32_t"
.LASF37:
	.string	"t_name_id"
.LASF185:
	.string	"_ZSt4sinhe"
.LASF186:
	.string	"_ZSt4sinhf"
.LASF771:
	.string	"_IO_lock_t"
.LASF247:
	.string	"isgreater"
.LASF644:
	.string	"int_n_sign_posn"
.LASF638:
	.string	"n_sign_posn"
.LASF409:
	.string	"_ZNSt8ios_base4InitD4Ev"
.LASF167:
	.string	"_ZSt4asine"
.LASF471:
	.string	"UNKNOWN_TYPE"
.LASF340:
	.string	"_ZSt6lroundf"
.LASF200:
	.string	"log10"
.LASF404:
	.string	"numbers"
.LASF131:
	.string	"5div_t"
.LASF661:
	.string	"getc"
.LASF50:
	.string	"path_to_src_file"
.LASF465:
	.string	"SEPARATOR"
.LASF35:
	.string	"t_function_ret_type"
.LASF519:
	.string	"btowc"
.LASF284:
	.string	"_ZSt8copysignee"
.LASF94:
	.string	"_IO_read_ptr"
.LASF233:
	.string	"_ZSt5isinfd"
.LASF232:
	.string	"_ZSt5isinfe"
.LASF234:
	.string	"_ZSt5isinff"
.LASF627:
	.string	"mon_thousands_sep"
.LASF643:
	.string	"int_p_sign_posn"
.LASF540:
	.string	"ungetwc"
.LASF54:
	.string	"fp_offset"
.LASF660:
	.string	"ftell"
.LASF244:
	.string	"_ZSt7signbite"
.LASF168:
	.string	"_ZSt4asinf"
.LASF301:
	.string	"_ZSt3fmafff"
.LASF25:
	.string	"arr_size"
.LASF411:
	.string	"_ZNSt8ios_base4InitaSERKS0_"
.LASF759:
	.string	"GetProgramFromStdAwp"
.LASF421:
	.string	"mblen"
.LASF172:
	.string	"atan2"
.LASF630:
	.string	"negative_sign"
.LASF326:
	.string	"log1p"
.LASF748:
	.string	"word_buffer"
.LASF723:
	.string	"_Z8GetTokenP10LexicalCtx"
.LASF639:
	.string	"int_p_cs_precedes"
.LASF214:
	.string	"fabs"
.LASF525:
	.string	"fwprintf"
.LASF265:
	.string	"_ZSt13islessgreaterdd"
.LASF105:
	.string	"_markers"
.LASF595:
	.string	"wcstoull"
.LASF285:
	.string	"_ZSt8copysignff"
.LASF295:
	.string	"_ZSt5expm1e"
.LASF296:
	.string	"_ZSt5expm1f"
.LASF177:
	.string	"_ZSt3sine"
.LASF178:
	.string	"_ZSt3sinf"
.LASF30:
	.string	"t_instruction"
.LASF277:
	.string	"atanh"
.LASF77:
	.string	"__uint_least64_t"
.LASF464:
	.string	"ASSIGMENT"
.LASF20:
	.string	"ptr_to_src_code"
.LASF554:
	.string	"wcscpy"
.LASF756:
	.string	"bracket"
.LASF363:
	.string	"_ZSt7scalblnel"
.LASF742:
	.string	"printf"
.LASF544:
	.string	"vswprintf"
.LASF430:
	.string	"strtoul"
.LASF674:
	.string	"iswctype"
.LASF504:
	.string	"buffer"
.LASF190:
	.string	"_ZSt3expe"
.LASF191:
	.string	"_ZSt3expf"
.LASF584:
	.string	"wmemset"
.LASF207:
	.string	"_ZSt3powff"
.LASF398:
	.string	"_ZNSt15__exception_ptr13exception_ptr4swapERS0_"
.LASF549:
	.string	"__isoc99_vwscanf"
.LASF717:
	.string	"_Z6IsNamePKcP10LexicalCtx"
.LASF466:
	.string	"BLOCK_OPENING_BRACKET"
.LASF264:
	.string	"_ZSt13islessgreateree"
.LASF524:
	.string	"fwide"
.LASF311:
	.string	"_ZSt5hypotfff"
.LASF368:
	.string	"tgamma"
.LASF446:
	.string	"char8_t"
.LASF319:
	.string	"_ZSt6lgammaf"
.LASF509:
	.string	"allow_recalloc"
.LASF324:
	.string	"_ZSt7llrounde"
.LASF325:
	.string	"_ZSt7llroundf"
.LASF469:
	.string	"EXPRESSION_CLOSING_BRACKET"
.LASF93:
	.string	"_flags"
.LASF454:
	.string	"INITIALIZATOR"
.LASF399:
	.string	"__cxa_exception_type"
.LASF565:
	.string	"tm_isdst"
.LASF364:
	.string	"_ZSt7scalblnfl"
.LASF500:
	.string	"MAX_FUNCTION_NAME_LENGTH"
.LASF571:
	.string	"wcsncpy"
.LASF217:
	.string	"floor"
.LASF480:
	.string	"function"
.LASF329:
	.string	"log2"
.LASF376:
	.string	"_ZSt4lerpddd"
.LASF536:
	.string	"putwchar"
.LASF445:
	.string	"double_t"
.LASF394:
	.string	"_ZNSt15__exception_ptr13exception_ptraSEOS0_"
.LASF472:
	.string	"TokenType"
.LASF581:
	.string	"wmemcmp"
.LASF334:
	.string	"_ZSt4logbf"
.LASF266:
	.string	"_ZSt13islessgreaterff"
.LASF193:
	.string	"_ZSt5frexpePi"
.LASF485:
	.string	"NATIVE_FUNCTIONS"
.LASF69:
	.string	"__uint64_t"
.LASF419:
	.string	"getenv"
.LASF48:
	.string	"string_arr"
.LASF746:
	.string	"__priority"
.LASF725:
	.string	"strcspn"
.LASF456:
	.string	"OPERATOR"
.LASF332:
	.string	"logb"
.LASF3:
	.string	"long unsigned int"
.LASF328:
	.string	"_ZSt5log1pf"
.LASF137:
	.string	"lldiv_t"
.LASF388:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4Ev"
.LASF248:
	.string	"_ZSt9isgreateree"
.LASF769:
	.string	"TokenValue"
.LASF382:
	.string	"_M_release"
.LASF11:
	.string	"var_number"
.LASF369:
	.string	"_ZSt6tgammae"
.LASF764:
	.string	"func_111"
.LASF450:
	.string	"__gnu_debug"
.LASF75:
	.string	"__uint_least32_t"
.LASF281:
	.string	"_ZSt4cbrte"
.LASF282:
	.string	"_ZSt4cbrtf"
.LASF51:
	.string	"name_table_arr"
.LASF134:
	.string	"6ldiv_t"
.LASF96:
	.string	"_IO_read_base"
.LASF313:
	.string	"_ZSt5hypotff"
.LASF714:
	.string	"AddString"
.LASF766:
	.string	"ctx_"
.LASF205:
	.string	"_ZSt4modffPf"
.LASF650:
	.string	"ferror"
.LASF729:
	.string	"LexicalCtxFailDtor"
.LASF21:
	.string	"line"
.LASF541:
	.string	"vfwprintf"
.LASF360:
	.string	"_ZSt5rounde"
.LASF361:
	.string	"_ZSt5roundf"
.LASF711:
	.string	"this"
.LASF448:
	.string	"char32_t"
.LASF121:
	.string	"_unused2"
.LASF591:
	.string	"wcsstr"
.LASF23:
	.string	"NameTable"
.LASF767:
	.string	"GNU C++20 11.3.0 -mtune=generic -march=x86-64 -g -std=c++20 -fstrict-overflow -fstack-protector -fcheck-new -fsized-deallocation -fno-omit-frame-pointer -fPIE -fsanitize=address,leak -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF566:
	.string	"tm_gmtoff"
.LASF738:
	.string	"_Z10CountLinesPKcc"
.LASF17:
	.string	"right_child"
.LASF288:
	.string	"erfc"
.LASF31:
	.string	"t_operator"
.LASF250:
	.string	"_ZSt9isgreaterff"
.LASF274:
	.string	"asinh"
.LASF634:
	.string	"p_sep_by_space"
.LASF370:
	.string	"_ZSt6tgammaf"
.LASF478:
	.string	"INSTRUCTIONS"
.LASF387:
	.string	"_ZNKSt15__exception_ptr13exception_ptr6_M_getEv"
.LASF128:
	.string	"__float128"
.LASF503:
	.string	"Buffer"
.LASF26:
	.string	"number_of_labels"
.LASF518:
	.string	"mbstate_t"
.LASF570:
	.string	"wcsncmp"
.LASF109:
	.string	"_old_offset"
.LASF761:
	.string	"_Z20GetProgramFromStdAwpP7ProgramPKc"
.LASF659:
	.string	"fsetpos"
.LASF642:
	.string	"int_n_sep_by_space"
.LASF237:
	.string	"_ZSt5isnand"
.LASF236:
	.string	"_ZSt5isnane"
.LASF238:
	.string	"_ZSt5isnanf"
.LASF745:
	.string	"__initialize_p"
.LASF22:
	.string	"indent"
.LASF67:
	.string	"__uint32_t"
.LASF372:
	.string	"_ZSt5trunce"
.LASF373:
	.string	"_ZSt5truncf"
.LASF4:
	.string	"long long int"
.LASF459:
	.string	"CONSTANT"
.LASF479:
	.string	"NativeFunctionStruct"
.LASF552:
	.string	"wcscmp"
.LASF86:
	.string	"__mbstate_t"
.LASF762:
	.string	"program"
.LASF511:
	.string	"NOT_A_INSTRUCTION"
.LASF582:
	.string	"wmemcpy"
.LASF508:
	.string	"string_arr_size"
.LASF561:
	.string	"tm_mon"
.LASF158:
	.string	"__cmp_cat"
.LASF46:
	.string	"number_of_tokens"
.LASF684:
	.string	"_ZN14FunctionLoggerC4ERKS_"
.LASF696:
	.string	"STD_NAME"
.LASF602:
	.string	"int_least32_t"
.LASF424:
	.string	"mbtowc"
.LASF153:
	.string	"__cust_swap"
.LASF99:
	.string	"_IO_write_end"
.LASF720:
	.string	"sscanf"
.LASF775:
	.string	"_ZN6Logger11getInstanceEv"
.LASF736:
	.string	"_Z14LexicalCtxCtorP10LexicalCtxPKcim"
.LASF209:
	.string	"_ZSt4sqrte"
.LASF210:
	.string	"_ZSt4sqrtf"
.LASF61:
	.string	"signed char"
.LASF619:
	.string	"uintmax_t"
.LASF580:
	.string	"wctob"
.LASF693:
	.string	"BAD_ARGUMENT"
.LASF461:
	.string	"CALL"
.LASF53:
	.string	"gp_offset"
.LASF32:
	.string	"t_constant"
.LASF359:
	.string	"round"
.LASF735:
	.string	"LexicalCtxCtor"
.LASF29:
	.string	"number_of_tables"
.LASF741:
	.string	"strerror"
.LASF495:
	.string	"NUMBER_OF_FUNCTION_RET_TYPES"
.LASF768:
	.string	"decltype(nullptr)"
.LASF384:
	.string	"exception_ptr"
.LASF637:
	.string	"p_sign_posn"
.LASF553:
	.string	"wcscoll"
.LASF615:
	.string	"uint_fast64_t"
.LASF558:
	.string	"tm_min"
.LASF78:
	.string	"__intmax_t"
.LASF100:
	.string	"_IO_buf_base"
.LASF108:
	.string	"_flags2"
.LASF15:
	.string	"Token"
.LASF6:
	.string	"unsigned int"
.LASF692:
	.string	"FAILURE"
.LASF323:
	.string	"llround"
.LASF538:
	.string	"swscanf"
.LASF663:
	.string	"perror"
.LASF160:
	.string	"__cust"
.LASF728:
	.string	"_ZN14FunctionLoggerD1Ev"
.LASF573:
	.string	"wcsspn"
.LASF496:
	.string	"FUNCTION_RET_TYPES"
.LASF758:
	.string	"operator bool"
.LASF64:
	.string	"short int"
.LASF658:
	.string	"fseek"
.LASF432:
	.string	"wcstombs"
.LASF668:
	.string	"setvbuf"
.LASF312:
	.string	"_ZSt5hypotee"
.LASF353:
	.string	"remquo"
.LASF173:
	.string	"_ZSt5atan2ee"
.LASF27:
	.string	"NameTableArr"
.LASF354:
	.string	"_ZSt6remquoeePi"
.LASF609:
	.string	"int_fast16_t"
.LASF673:
	.string	"wctrans_t"
.LASF55:
	.string	"overflow_arg_area"
.LASF249:
	.string	"_ZSt9isgreaterdd"
.LASF665:
	.string	"rename"
.LASF498:
	.string	"COMMENT"
.LASF497:
	.string	"OPERATORS"
.LASF194:
	.string	"_ZSt5frexpfPi"
.LASF278:
	.string	"_ZSt5atanhe"
.LASF279:
	.string	"_ZSt5atanhf"
.LASF164:
	.string	"_ZSt4acose"
.LASF165:
	.string	"_ZSt4acosf"
.LASF406:
	.string	"Init"
.LASF412:
	.string	"__ioinit"
.LASF708:
	.string	"END_OF_TOKEN"
.LASF161:
	.string	"__cmp_alg"
.LASF120:
	.string	"_mode"
.LASF510:
	.string	"NOT_A_NAME"
.LASF395:
	.string	"~exception_ptr"
.LASF621:
	.string	"decimal_point"
.LASF542:
	.string	"vfwscanf"
.LASF230:
	.string	"_ZSt8isfinitef"
.LASF662:
	.string	"getchar"
.LASF339:
	.string	"_ZSt6lrounde"
.LASF174:
	.string	"_ZSt5atan2ff"
.LASF84:
	.string	"__count"
.LASF434:
	.string	"__gnu_cxx"
.LASF755:
	.string	"func_174"
.LASF514:
	.string	"NOT_A_NATIVE_FUNCTION"
.LASF251:
	.string	"isgreaterequal"
.LASF362:
	.string	"scalbln"
.LASF443:
	.string	"bool"
.LASF604:
	.string	"uint_least8_t"
.LASF649:
	.string	"feof"
.LASF712:
	.string	"stricmp"
.LASF175:
	.string	"_ZSt3cose"
.LASF176:
	.string	"_ZSt3cosf"
.LASF600:
	.string	"int_least8_t"
.LASF127:
	.string	"__unknown__"
.LASF744:
	.string	"func_name"
.LASF426:
	.string	"qsort"
.LASF587:
	.string	"__isoc99_wscanf"
.LASF618:
	.string	"intmax_t"
.LASF5:
	.string	"long double"
.LASF444:
	.string	"float_t"
.LASF405:
	.string	"__cxx11"
.LASF535:
	.string	"putwc"
.LASF314:
	.string	"ilogb"
.LASF694:
	.string	"STD_NUM"
.LASF122:
	.string	"FILE"
.LASF292:
	.string	"_ZSt4exp2e"
.LASF349:
	.string	"_ZSt10nexttowardfe"
.LASF263:
	.string	"islessgreater"
.LASF610:
	.string	"int_fast32_t"
.LASF135:
	.string	"ldiv_t"
.LASF560:
	.string	"tm_mday"
.LASF114:
	.string	"_offset"
.LASF42:
	.string	"NOT_DECLARED"
.LASF734:
	.string	"_ZN6Logger8FREE_LOGEPvPKcS2_i"
.LASF83:
	.string	"__wchb"
.LASF169:
	.string	"atan"
.LASF299:
	.string	"_ZSt4fdimff"
.LASF418:
	.string	"bsearch"
.LASF473:
	.string	"INSTUCTIONS_NUM"
.LASF60:
	.string	"__int8_t"
.LASF462:
	.string	"NATIVE_FUNCTION"
.LASF709:
	.string	"_ZNSt8ios_base4InitD1Ev"
.LASF260:
	.string	"_ZSt11islessequalee"
.LASF763:
	.string	"path_to_file"
.LASF142:
	.string	"long long unsigned int"
.LASF397:
	.string	"swap"
.LASF56:
	.string	"reg_save_area"
.LASF593:
	.string	"wcstold"
.LASF640:
	.string	"int_p_sep_by_space"
.LASF229:
	.string	"_ZSt8isfinited"
.LASF228:
	.string	"_ZSt8isfinitee"
.LASF475:
	.string	"WHILE"
.LASF195:
	.string	"ldexp"
.LASF597:
	.string	"uint16_t"
.LASF594:
	.string	"wcstoll"
.LASF698:
	.string	"STD_LEXEMS"
.LASF80:
	.string	"__off_t"
.LASF467:
	.string	"BLOCK_CLOSING_BRACKET"
.LASF743:
	.string	"_ZN14FunctionLoggerC1EiPKc"
.LASF124:
	.string	"_IO_codecvt"
.LASF390:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EDn"
.LASF402:
	.string	"_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE"
.LASF499:
	.string	"MAIN_NAME"
.LASF163:
	.string	"acos"
.LASF294:
	.string	"expm1"
.LASF667:
	.string	"setbuf"
.LASF344:
	.string	"nextafter"
.LASF551:
	.string	"wcscat"
.LASF507:
	.string	"token_arr_size"
.LASF572:
	.string	"wcsrtombs"
.LASF72:
	.string	"__int_least16_t"
.LASF611:
	.string	"int_fast64_t"
.LASF118:
	.string	"_freeres_buf"
.LASF563:
	.string	"tm_wday"
.LASF262:
	.string	"_ZSt11islessequalff"
.LASF505:
	.string	"number_of_lines"
.LASF283:
	.string	"copysign"
.LASF338:
	.string	"lround"
.LASF19:
	.string	"t_label_ptr"
.LASF513:
	.string	"NOT_A_RET_TYPE"
.LASF691:
	.string	"SUCCESS"
.LASF477:
	.string	"NUMBER_OF_INSTUCTIONS"
.LASF533:
	.string	"mbsinit"
.LASF564:
	.string	"tm_yday"
.LASF65:
	.string	"__uint16_t"
.LASF574:
	.string	"wcstod"
.LASF575:
	.string	"wcstof"
.LASF166:
	.string	"asin"
.LASF576:
	.string	"wcstok"
.LASF577:
	.string	"wcstol"
.LASF601:
	.string	"int_least16_t"
.LASF90:
	.string	"__fpos_t"
.LASF149:
	.string	"_ZSt3divll"
.LASF678:
	.string	"STD_LOG_NAME"
.LASF132:
	.string	"quot"
.LASF91:
	.string	"__FILE"
.LASF271:
	.string	"acosh"
.LASF753:
	.string	"SetToken"
.LASF371:
	.string	"trunc"
.LASF261:
	.string	"_ZSt11islessequaldd"
.LASF605:
	.string	"uint_least16_t"
.LASF63:
	.string	"__int16_t"
.LASF612:
	.string	"uint_fast8_t"
.LASF103:
	.string	"_IO_backup_base"
.LASF645:
	.string	"setlocale"
.LASF112:
	.string	"_shortbuf"
.LASF488:
	.string	"FUNCTION_INITIALIZATOR"
.LASF52:
	.string	"number_of_global_vars"
.LASF546:
	.string	"__isoc99_vswscanf"
.LASF526:
	.string	"fwscanf"
.LASF517:
	.string	"wint_t"
.LASF449:
	.string	"__int128"
.LASF10:
	.string	"ret_type"
.LASF453:
	.string	"INSTRUCTION"
.LASF731:
	.string	"ios_base"
.LASF81:
	.string	"__off64_t"
.LASF501:
	.string	"MAX_WORD_LENGTH"
.LASF303:
	.string	"_ZSt4fmaxee"
.LASF400:
	.string	"_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv"
.LASF655:
	.string	"fopen"
.LASF774:
	.string	"getInstance"
.LASF66:
	.string	"__int32_t"
.LASF676:
	.string	"wctrans"
.LASF622:
	.string	"thousands_sep"
.LASF695:
	.string	"StdAwp"
.LASF543:
	.string	"__isoc99_vfwscanf"
.LASF722:
	.string	"GetToken"
.LASF150:
	.string	"__swappable_details"
.LASF198:
	.string	"_ZSt3loge"
.LASF199:
	.string	"_ZSt3logf"
.LASF666:
	.string	"rewind"
.LASF101:
	.string	"_IO_buf_end"
.LASF333:
	.string	"_ZSt4logbe"
.LASF302:
	.string	"fmax"
.LASF356:
	.string	"rint"
.LASF568:
	.string	"wcslen"
.LASF235:
	.string	"isnan"
.LASF257:
	.string	"_ZSt6islessdd"
.LASF115:
	.string	"_codecvt"
.LASF586:
	.string	"wscanf"
.LASF275:
	.string	"_ZSt5asinhe"
.LASF276:
	.string	"_ZSt5asinhf"
.LASF616:
	.string	"intptr_t"
.LASF24:
	.string	"label_arr"
.LASF183:
	.string	"_ZSt4coshf"
.LASF428:
	.string	"strtod"
.LASF441:
	.string	"strtof"
.LASF159:
	.string	"__cmp_cust"
.LASF429:
	.string	"strtol"
.LASF162:
	.string	"__debug"
.LASF632:
	.string	"frac_digits"
.LASF690:
	.string	"ReturnStatus"
.LASF716:
	.string	"IsName"
.LASF625:
	.string	"currency_symbol"
.LASF253:
	.string	"_ZSt14isgreaterequaldd"
.LASF718:
	.string	"UnGetToken"
.LASF365:
	.string	"scalbn"
.LASF379:
	.string	"_M_exception_object"
.LASF599:
	.string	"uint64_t"
.LASF286:
	.string	"_ZSt3erfe"
.LASF556:
	.string	"wcsftime"
.LASF227:
	.string	"isfinite"
.LASF89:
	.string	"__state"
.LASF460:
	.string	"FUNCTION"
.LASF139:
	.string	"int16_t"
.LASF414:
	.string	"atexit"
.LASF256:
	.string	"_ZSt6islessee"
.LASF357:
	.string	"_ZSt4rinte"
.LASF358:
	.string	"_ZSt4rintf"
.LASF760:
	.string	"_ZNKSt15__exception_ptr13exception_ptrcvbEv"
.LASF76:
	.string	"__int_least64_t"
.LASF111:
	.string	"_vtable_offset"
.LASF628:
	.string	"mon_grouping"
.LASF320:
	.string	"llrint"
.LASF730:
	.string	"_Z18LexicalCtxFailDtorP10LexicalCtx"
.LASF308:
	.string	"hypot"
.LASF252:
	.string	"_ZSt14isgreaterequalee"
.LASF218:
	.string	"_ZSt5floore"
.LASF219:
	.string	"_ZSt5floorf"
.LASF9:
	.string	"number_of_vars"
.LASF493:
	.string	"DOUBLE"
.LASF726:
	.string	"BufferGetCh"
.LASF669:
	.string	"tmpfile"
.LASF130:
	.string	"11__mbstate_t"
.LASF679:
	.string	"FunctionLogger"
.LASF377:
	.string	"_ZSt4lerpfff"
.LASF184:
	.string	"sinh"
.LASF494:
	.string	"VOID"
.LASF79:
	.string	"__uintmax_t"
.LASF427:
	.string	"srand"
.LASF258:
	.string	"_ZSt6islessff"
.LASF8:
	.string	"name_id"
.LASF212:
	.string	"_ZSt4ceile"
.LASF213:
	.string	"_ZSt4ceilf"
.LASF567:
	.string	"tm_zone"
.LASF68:
	.string	"__int64_t"
.LASF671:
	.string	"ungetc"
.LASF125:
	.string	"_IO_wide_data"
.LASF316:
	.string	"_ZSt5ilogbf"
.LASF206:
	.string	"_ZSt3powee"
.LASF548:
	.string	"vwscanf"
.LASF38:
	.string	"t_number_of_variables"
.LASF550:
	.string	"wcrtomb"
.LASF620:
	.string	"lconv"
.LASF315:
	.string	"_ZSt5ilogbe"
.LASF254:
	.string	"_ZSt14isgreaterequalff"
.LASF765:
	.string	"std_buffer"
.LASF95:
	.string	"_IO_read_end"
.LASF489:
	.string	"VARIABLE_INITIALIZATOR"
.LASF422:
	.string	"mbstowcs"
.LASF16:
	.string	"left_child"
.LASF682:
	.string	"current_indent"
.LASF569:
	.string	"wcsncat"
.LASF749:
	.string	"func_296"
.LASF41:
	.string	"double"
.LASF389:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4ERKS0_"
.LASF351:
	.string	"_ZSt9remainderee"
.LASF583:
	.string	"wmemmove"
.LASF750:
	.string	"__dso_handle"
.LASF43:
	.string	"NOT_A_LABEL"
.LASF598:
	.string	"uint32_t"
.LASF520:
	.string	"fgetwc"
.LASF522:
	.string	"fputwc"
.LASF107:
	.string	"_fileno"
.LASF14:
	.string	"Label"
.LASF506:
	.string	"LexicalCtx"
.LASF613:
	.string	"uint_fast16_t"
.LASF523:
	.string	"fputws"
.LASF545:
	.string	"vswscanf"
.LASF317:
	.string	"lgamma"
.LASF534:
	.string	"mbsrtowcs"
.LASF255:
	.string	"isless"
.LASF116:
	.string	"_wide_data"
.LASF383:
	.string	"_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv"
.LASF747:
	.string	"token"
.LASF74:
	.string	"__int_least32_t"
.LASF196:
	.string	"_ZSt5ldexpei"
.LASF396:
	.string	"_ZNSt15__exception_ptr13exception_ptrD4Ev"
.LASF468:
	.string	"EXPRESSION_OPENING_BRACKET"
.LASF447:
	.string	"char16_t"
.LASF633:
	.string	"p_cs_precedes"
.LASF562:
	.string	"tm_year"
.LASF352:
	.string	"_ZSt9remainderff"
.LASF58:
	.string	"short unsigned int"
.LASF374:
	.string	"lerp"
.LASF681:
	.string	"guard_level"
.LASF656:
	.string	"fread"
.LASF515:
	.string	"START_NUMBER_OF_TOKENS"
.LASF420:
	.string	"ldiv"
.LASF687:
	.string	"~FunctionLogger"
.LASF436:
	.string	"__ops"
.LASF157:
	.string	"__detail"
.LASF98:
	.string	"_IO_write_ptr"
.LASF451:
	.string	"__int128 unsigned"
.LASF321:
	.string	"_ZSt6llrinte"
.LASF322:
	.string	"_ZSt6llrintf"
.LASF408:
	.string	"_ZNSt8ios_base4InitC4Ev"
.LASF777:
	.string	"__static_initialization_and_destruction_0"
.LASF378:
	.string	"__exception_ptr"
.LASF502:
	.string	"INDENT_SIZE"
.LASF486:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS_STRUCT"
.LASF197:
	.string	"_ZSt5ldexpfi"
.LASF211:
	.string	"ceil"
.LASF680:
	.string	"old_level"
.LASF287:
	.string	"_ZSt3erff"
.LASF39:
	.string	"t_varible_number"
.LASF151:
	.string	"__swappable_with_details"
.LASF381:
	.string	"_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv"
.LASF528:
	.string	"getwc"
.LASF654:
	.string	"fgets"
.LASF34:
	.string	"t_native_function"
.LASF291:
	.string	"exp2"
.LASF757:
	.string	"temp"
.LASF689:
	.string	"CRINGE"
.LASF623:
	.string	"grouping"
.LASF617:
	.string	"uintptr_t"
.LASF603:
	.string	"int_least64_t"
.LASF355:
	.string	"_ZSt6remquoffPi"
.LASF33:
	.string	"t_initializator"
.LASF366:
	.string	"_ZSt6scalbnei"
.LASF585:
	.string	"wprintf"
.LASF685:
	.string	"_ZN14FunctionLoggeraSERKS_"
.LASF87:
	.string	"_G_fpos_t"
.LASF350:
	.string	"remainder"
.LASF651:
	.string	"fflush"
.LASF776:
	.string	"_GLOBAL__sub_I__Z20GetProgramFromStdAwpP7ProgramPKc"
.LASF375:
	.string	"_ZSt4lerpeee"
.LASF119:
	.string	"__pad5"
.LASF306:
	.string	"_ZSt4fminee"
.LASF474:
	.string	"ELSE"
.LASF423:
	.string	"wchar_t"
.LASF770:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF683:
	.string	"function_name"
.LASF721:
	.string	"__isoc99_sscanf"
.LASF304:
	.string	"_ZSt4fmaxff"
.LASF578:
	.string	"wcstoul"
.LASF239:
	.string	"isnormal"
.LASF657:
	.string	"freopen"
.LASF272:
	.string	"_ZSt5acoshe"
.LASF273:
	.string	"_ZSt5acoshf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"../Common/StandartAWP/GetStd.cpp"
.LASF1:
	.string	"/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd"
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
