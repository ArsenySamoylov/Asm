	.file	"LangUtils.cpp"
	.text
.Ltext0:
	.file 0 "/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd" "../Common/Utils/LangUtils.cpp"
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
	.align 32
.LC14:
	.string	"Token address %p\n"
	.zero	46
	.align 32
.LC15:
	.string	"type: (%d) "
	.zero	52
	.align 32
.LC16:
	.string	"STATEMENT | {'%c'}\n"
	.zero	44
	.align 32
.LC17:
	.string	"INSTRUCTION | {'%s'}\n"
	.zero	42
	.align 32
.LC18:
	.string	"INITIALIZATOR | {'%s'}\n"
	.zero	40
	.align 32
.LC19:
	.string	"FUNCTION_RET_TYPE | {'%s'}\n"
	.zero	36
	.align 32
.LC20:
	.string	"OPERATOR | {'%c'}\n"
	.zero	45
	.align 32
.LC21:
	.string	"NAME | {'%s'}\n"
	.zero	49
	.align 32
.LC22:
	.string	"VARIABLE | {'%s'}\n"
	.zero	45
	.align 32
.LC23:
	.string	"CONSTANT | {'%lg'}\n"
	.zero	44
	.align 32
.LC24:
	.string	"FUNCTION | {'%c'}\n"
	.zero	45
	.align 32
.LC25:
	.string	"CALL | {'%c'}\n"
	.zero	49
	.align 32
.LC26:
	.string	"NATIVE_FUNCTION | {'%s'}\n"
	.zero	38
	.align 32
.LC27:
	.string	"PARAMETR | {'%c'}\n"
	.zero	45
	.align 32
.LC28:
	.string	"ASSIGMENT | {'%c'}\n"
	.zero	44
	.align 32
.LC29:
	.string	"SEPARATOR | {'%c'}\n"
	.zero	44
	.align 32
.LC30:
	.string	"BLOCK_OPENING_BRACKET | {'%c'}\n"
	.zero	32
	.align 32
.LC31:
	.string	"BLOCK_CLOSING_BRACKET | {'%c'}\n"
	.zero	32
	.align 32
.LC32:
	.string	"EXPRESSION_OPENING_BRACKET | {'%c'}\n"
	.zero	59
	.align 32
.LC33:
	.string	"EXPRESSION_CLOSING_BRACKET | {'%c'}\n"
	.zero	59
	.align 32
.LC34:
	.string	"END_OF_STATEMENT | {'%c'}\n"
	.zero	37
	.align 32
.LC35:
	.string	"UNCKNOWN TYPE"
	.zero	50
	.align 32
.LC36:
	.string	"Line: %d, Indent: %d\n"
	.zero	42
	.align 32
.LC37:
	.string	"Source ptr to code in buffer: %p\n"
	.zero	62
	.text
	.globl	_Z10PrintTokenPK5TokenPPKc
	.type	_Z10PrintTokenPK5TokenPPKc, @function
_Z10PrintTokenPK5TokenPPKc:
.LASANPC2270:
.LFB2270:
	.file 1 "../Common/Utils/LangUtils.cpp"
	.loc 1 11 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 12 5
	cmpq	$0, -8(%rbp)
	je	.L72
	.loc 1 14 11
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 15 34
	movq	-8(%rbp), %rax
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
	je	.L4
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L4:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 15 11
	movl	%eax, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 17 20
	movq	-8(%rbp), %rax
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
	je	.L5
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L5:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 17 5
	cmpl	$125, %eax
	ja	.L6
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L8(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L8(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L8:
	.long	.L6-.L8
	.long	.L26-.L8
	.long	.L25-.L8
	.long	.L24-.L8
	.long	.L23-.L8
	.long	.L22-.L8
	.long	.L21-.L8
	.long	.L20-.L8
	.long	.L19-.L8
	.long	.L18-.L8
	.long	.L17-.L8
	.long	.L16-.L8
	.long	.L15-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L14-.L8
	.long	.L13-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L12-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L11-.L8
	.long	.L6-.L8
	.long	.L10-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L6-.L8
	.long	.L9-.L8
	.long	.L6-.L8
	.long	.L7-.L8
	.text
.L26:
	.file 2 "../Common/Structures/TokenTypes.h"
	.loc 2 4 71
	movq	-8(%rbp), %rax
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
	je	.L27
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L27:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 4 24
	cmpb	$123, %al
	je	.L28
	.loc 2 4 110 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 4 89 discriminator 1
	cmpb	$125, %al
	je	.L29
	.loc 2 4 149 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 4 89 discriminator 3
	movsbl	%al, %eax
	jmp	.L31
.L29:
	.loc 2 4 89 is_stmt 0 discriminator 4
	movl	$93, %eax
	jmp	.L31
.L28:
	.loc 2 4 24 is_stmt 1 discriminator 2
	movl	$91, %eax
.L31:
	.loc 2 4 24 is_stmt 0 discriminator 8
	movl	%eax, %esi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 4 162 is_stmt 1 discriminator 8
	jmp	.L32
.L25:
	.loc 2 5 88
	movq	-8(%rbp), %rax
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
	je	.L33
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L33:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 5 101
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL12INSTRUCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L34
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L34:
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL12INSTRUCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 5 26
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 5 105
	jmp	.L32
.L24:
	.loc 2 6 94
	movq	-8(%rbp), %rax
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
	je	.L35
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L35:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 6 109
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL14INITIALIZATORS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L36
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L36:
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL14INITIALIZATORS(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 6 28
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 6 113
	jmp	.L32
.L23:
	.loc 2 7 106
	movq	-8(%rbp), %rax
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
	je	.L37
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L37:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 7 125
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL18FUNCTION_RET_TYPES(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L38
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L38:
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL18FUNCTION_RET_TYPES(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 7 32
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 7 129
	jmp	.L32
.L22:
	.loc 2 8 69
	movq	-8(%rbp), %rax
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
	je	.L39
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L39:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 8 23
	cmpb	$60, %al
	je	.L40
	.loc 2 8 108 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 8 87 discriminator 1
	cmpb	$62, %al
	je	.L41
	.loc 2 8 147 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 8 87 discriminator 3
	movsbl	%al, %eax
	jmp	.L43
.L41:
	.loc 2 8 87 is_stmt 0 discriminator 4
	movl	$66, %eax
	jmp	.L43
.L40:
	.loc 2 8 23 is_stmt 1 discriminator 2
	movl	$76, %eax
.L43:
	.loc 2 8 23 is_stmt 0 discriminator 8
	movl	%eax, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 8 160 is_stmt 1 discriminator 8
	jmp	.L32
.L21:
	.loc 2 10 72
	movq	-8(%rbp), %rax
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
	je	.L44
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L44:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 10 81
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 10 19
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L45
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L45:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 10 85
	jmp	.L32
.L20:
	.loc 2 11 80
	movq	-8(%rbp), %rax
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
	je	.L46
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L46:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 11 89
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 11 23
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L47
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L47:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 11 93
	jmp	.L32
.L19:
	.loc 2 12 70
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L48
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L48:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 12 23
	movq	%rax, %xmm0
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 2 12 83
	jmp	.L32
.L18:
	.loc 2 13 69
	movq	-8(%rbp), %rax
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
	je	.L49
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L49:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 13 23
	cmpb	$123, %al
	je	.L50
	.loc 2 13 108 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 13 87 discriminator 1
	cmpb	$125, %al
	je	.L51
	.loc 2 13 147 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 13 87 discriminator 3
	movsbl	%al, %eax
	jmp	.L53
.L51:
	.loc 2 13 87 is_stmt 0 discriminator 4
	movl	$93, %eax
	jmp	.L53
.L50:
	.loc 2 13 23 is_stmt 1 discriminator 2
	movl	$91, %eax
.L53:
	.loc 2 13 23 is_stmt 0 discriminator 8
	movl	%eax, %esi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 13 160 is_stmt 1 discriminator 8
	jmp	.L32
.L17:
	.loc 2 14 61
	movq	-8(%rbp), %rax
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
	je	.L54
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L54:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 14 19
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 14 74
	jmp	.L32
.L16:
	.loc 2 15 100
	movq	-8(%rbp), %rax
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
	je	.L55
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L55:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 15 119
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	_ZL16NATIVE_FUNCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L56
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L56:
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_ZL16NATIVE_FUNCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 15 30
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 15 125
	jmp	.L32
.L15:
	.loc 2 16 69
	movq	-8(%rbp), %rax
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
	je	.L57
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L57:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 16 23
	cmpb	$123, %al
	je	.L58
	.loc 2 16 108 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 16 87 discriminator 1
	cmpb	$125, %al
	je	.L59
	.loc 2 16 147 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 16 87 discriminator 3
	movsbl	%al, %eax
	jmp	.L61
.L59:
	.loc 2 16 87 is_stmt 0 discriminator 4
	movl	$93, %eax
	jmp	.L61
.L58:
	.loc 2 16 23 is_stmt 1 discriminator 2
	movl	$91, %eax
.L61:
	.loc 2 16 23 is_stmt 0 discriminator 8
	movl	%eax, %esi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 16 160 is_stmt 1 discriminator 8
	jmp	.L32
.L10:
	.loc 2 18 71
	movq	-8(%rbp), %rax
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
	je	.L62
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L62:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 18 24
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 18 84
	jmp	.L32
.L12:
	.loc 2 19 71
	movq	-8(%rbp), %rax
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
	je	.L63
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L63:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 19 24
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 19 84
	jmp	.L32
.L9:
	.loc 2 20 95
	movq	-8(%rbp), %rax
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
	je	.L64
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L64:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 20 36
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 20 108
	jmp	.L32
.L7:
	.loc 2 21 95
	movq	-8(%rbp), %rax
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
	je	.L65
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L65:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 21 36
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 21 108
	jmp	.L32
.L14:
	.loc 2 22 105
	movq	-8(%rbp), %rax
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
	je	.L66
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L66:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 22 41
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 22 118
	jmp	.L32
.L13:
	.loc 2 23 105
	movq	-8(%rbp), %rax
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
	je	.L67
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L67:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 23 41
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 23 118
	jmp	.L32
.L11:
	.loc 2 24 85
	movq	-8(%rbp), %rax
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
	je	.L68
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L68:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 24 31
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 24 98
	jmp	.L32
.L6:
	.loc 1 30 20
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 30 41
	nop
.L32:
	.loc 1 35 58
	movq	-8(%rbp), %rax
	addq	$52, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L69
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L69:
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	.loc 1 35 45
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	cmpb	$3, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L70
	movq	%rcx, %rdi
	call	__asan_report_load4@PLT
.L70:
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	.loc 1 35 11
	movl	%eax, %esi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 36 57
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L71
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L71:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 36 11
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 40 5
	jmp	.L1
.L72:
	.loc 1 12 17
	nop
.L1:
	.loc 1 41 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2270:
	.size	_Z10PrintTokenPK5TokenPPKc, .-_Z10PrintTokenPK5TokenPPKc
	.section	.rodata
	.align 32
.LC38:
	.string	"Token %s\n"
	.zero	54
	.align 32
.LC39:
	.string	"(%p)::::::::::::::::\n"
	.zero	42
	.align 32
.LC40:
	.string	"\t\t  left_child: %p\n"
	.zero	44
	.align 32
.LC41:
	.string	"\t\t right_child: %p\n"
	.zero	44
	.align 32
.LC42:
	.string	"\t\t        type: "
	.zero	47
	.align 32
.LC43:
	.string	"UNCKNOWN TYPE\n"
	.zero	49
	.align 32
.LC44:
	.string	"\t\t\t  Line: %d\n"
	.zero	49
	.align 32
.LC45:
	.string	"\t\t\tIndent: %d\n"
	.zero	49
	.align 32
.LC46:
	.string	"\n"
	.zero	62
	.text
	.globl	_Z8LogTokenPK5TokenPKcPS3_
	.type	_Z8LogTokenPK5TokenPKcPS3_, @function
_Z8LogTokenPK5TokenPKcPS3_:
.LASANPC2271:
.LFB2271:
	.loc 1 44 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 45 5
	cmpq	$0, -8(%rbp)
	je	.L144
	.loc 1 47 24
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 47 30
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC38(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 48 24
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 48 30
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC39(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 49 24
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 49 65
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L76
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L76:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 49 30
	movq	%rax, %rdx
	leaq	.LC40(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 50 24
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 50 65
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L77
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L77:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 50 30
	movq	%rax, %rdx
	leaq	.LC41(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 51 24
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 1 51 30
	leaq	.LC42(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 53 20
	movq	-8(%rbp), %rax
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
	je	.L78
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L78:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 53 5
	cmpl	$125, %eax
	ja	.L79
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L81(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L81(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L81:
	.long	.L79-.L81
	.long	.L99-.L81
	.long	.L98-.L81
	.long	.L97-.L81
	.long	.L96-.L81
	.long	.L95-.L81
	.long	.L94-.L81
	.long	.L93-.L81
	.long	.L92-.L81
	.long	.L91-.L81
	.long	.L90-.L81
	.long	.L89-.L81
	.long	.L88-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L87-.L81
	.long	.L86-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L85-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L84-.L81
	.long	.L79-.L81
	.long	.L83-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L79-.L81
	.long	.L82-.L81
	.long	.L79-.L81
	.long	.L80-.L81
	.text
.L99:
	.loc 2 4 36
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 4 100
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L100
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L100:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 4 52
	cmpb	$123, %al
	je	.L101
	.loc 2 4 139 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 4 118 discriminator 1
	cmpb	$125, %al
	je	.L102
	.loc 2 4 178 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 4 118 discriminator 3
	movsbl	%al, %eax
	jmp	.L104
.L102:
	.loc 2 4 118 is_stmt 0 discriminator 4
	movl	$93, %eax
	jmp	.L104
.L101:
	.loc 2 4 52 is_stmt 1 discriminator 2
	movl	$91, %eax
.L104:
	.loc 2 4 52 is_stmt 0 discriminator 8
	movl	%eax, %edx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 4 191 is_stmt 1 discriminator 8
	jmp	.L105
.L98:
	.loc 2 5 38
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 5 117
	movq	-8(%rbp), %rax
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
	je	.L106
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L106:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 5 130
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL12INSTRUCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L107
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L107:
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL12INSTRUCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 5 54
	movq	%rax, %rdx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 5 134
	jmp	.L105
.L97:
	.loc 2 6 40
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 6 123
	movq	-8(%rbp), %rax
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
	je	.L108
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L108:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 6 138
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL14INITIALIZATORS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L109
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L109:
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL14INITIALIZATORS(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 6 56
	movq	%rax, %rdx
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 6 142
	jmp	.L105
.L96:
	.loc 2 7 44
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 7 135
	movq	-8(%rbp), %rax
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
	je	.L110
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L110:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 7 154
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL18FUNCTION_RET_TYPES(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L111
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L111:
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL18FUNCTION_RET_TYPES(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 7 60
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 7 158
	jmp	.L105
.L95:
	.loc 2 8 35
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 8 98
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L112
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L112:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 8 51
	cmpb	$60, %al
	je	.L113
	.loc 2 8 137 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 8 116 discriminator 1
	cmpb	$62, %al
	je	.L114
	.loc 2 8 176 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 8 116 discriminator 3
	movsbl	%al, %eax
	jmp	.L116
.L114:
	.loc 2 8 116 is_stmt 0 discriminator 4
	movl	$66, %eax
	jmp	.L116
.L113:
	.loc 2 8 51 is_stmt 1 discriminator 2
	movl	$76, %eax
.L116:
	.loc 2 8 51 is_stmt 0 discriminator 8
	movl	%eax, %edx
	leaq	.LC20(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 8 189 is_stmt 1 discriminator 8
	jmp	.L105
.L94:
	.loc 2 10 31
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 10 101
	movq	-8(%rbp), %rax
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
	je	.L117
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L117:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 10 110
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 10 47
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L118
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L118:
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC21(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 10 114
	jmp	.L105
.L93:
	.loc 2 11 35
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 11 109
	movq	-8(%rbp), %rax
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
	je	.L119
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L119:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 11 118
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 11 51
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L120
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L120:
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 11 122
	jmp	.L105
.L92:
	.loc 2 12 35
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 12 99
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L121
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L121:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 12 51
	movq	%rax, %xmm0
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$1, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 12 112
	jmp	.L105
.L91:
	.loc 2 13 35
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 13 98
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L122
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L122:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 13 51
	cmpb	$123, %al
	je	.L123
	.loc 2 13 137 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 13 116 discriminator 1
	cmpb	$125, %al
	je	.L124
	.loc 2 13 176 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 13 116 discriminator 3
	movsbl	%al, %eax
	jmp	.L126
.L124:
	.loc 2 13 116 is_stmt 0 discriminator 4
	movl	$93, %eax
	jmp	.L126
.L123:
	.loc 2 13 51 is_stmt 1 discriminator 2
	movl	$91, %eax
.L126:
	.loc 2 13 51 is_stmt 0 discriminator 8
	movl	%eax, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 13 189 is_stmt 1 discriminator 8
	jmp	.L105
.L90:
	.loc 2 14 31
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 14 90
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L127
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L127:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 14 47
	movsbl	%al, %eax
	movl	%eax, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 14 103
	jmp	.L105
.L89:
	.loc 2 15 42
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 15 129
	movq	-8(%rbp), %rax
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
	je	.L128
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L128:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 15 148
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	_ZL16NATIVE_FUNCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L129
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L129:
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_ZL16NATIVE_FUNCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 15 58
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 15 154
	jmp	.L105
.L88:
	.loc 2 16 35
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 16 98
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L130
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L130:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 16 51
	cmpb	$123, %al
	je	.L131
	.loc 2 16 137 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 16 116 discriminator 1
	cmpb	$125, %al
	je	.L132
	.loc 2 16 176 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 16 116 discriminator 3
	movsbl	%al, %eax
	jmp	.L134
.L132:
	.loc 2 16 116 is_stmt 0 discriminator 4
	movl	$93, %eax
	jmp	.L134
.L131:
	.loc 2 16 51 is_stmt 1 discriminator 2
	movl	$91, %eax
.L134:
	.loc 2 16 51 is_stmt 0 discriminator 8
	movl	%eax, %edx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 16 189 is_stmt 1 discriminator 8
	jmp	.L105
.L83:
	.loc 2 18 36
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 18 100
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L135
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L135:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 18 52
	movsbl	%al, %eax
	movl	%eax, %edx
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 18 113
	jmp	.L105
.L85:
	.loc 2 19 36
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 19 100
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L136
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L136:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 19 52
	movsbl	%al, %eax
	movl	%eax, %edx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 19 113
	jmp	.L105
.L82:
	.loc 2 20 48
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 20 124
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L137
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L137:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 20 64
	movsbl	%al, %eax
	movl	%eax, %edx
	leaq	.LC30(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 20 137
	jmp	.L105
.L80:
	.loc 2 21 48
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 21 124
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L138
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L138:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 21 64
	movsbl	%al, %eax
	movl	%eax, %edx
	leaq	.LC31(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 21 137
	jmp	.L105
.L87:
	.loc 2 22 53
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 22 134
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L139
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L139:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 22 69
	movsbl	%al, %eax
	movl	%eax, %edx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 22 147
	jmp	.L105
.L86:
	.loc 2 23 53
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 23 134
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L140
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L140:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 23 69
	movsbl	%al, %eax
	movl	%eax, %edx
	leaq	.LC33(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 23 147
	jmp	.L105
.L84:
	.loc 2 24 43
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 24 114
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L141
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L141:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 24 59
	movsbl	%al, %eax
	movl	%eax, %edx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 2 24 127
	jmp	.L105
.L79:
	.loc 1 66 37
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 1 66 53
	leaq	.LC43(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger13log_no_indentEPKcz@PLT
	.loc 1 67 18
	nop
.L105:
	.loc 1 72 24
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 72 61
	movq	-8(%rbp), %rax
	addq	$48, %rax
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
	je	.L142
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L142:
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	.loc 1 72 30
	movl	%eax, %edx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 73 24
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 1 73 61
	movq	-8(%rbp), %rax
	addq	$52, %rax
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
	je	.L143
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L143:
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
	.loc 1 73 30
	movl	%eax, %edx
	leaq	.LC45(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 78 24
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 1 78 30
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 1 80 5
	jmp	.L73
.L144:
	.loc 1 45 17
	nop
.L73:
	.loc 1 81 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2271:
	.size	_Z8LogTokenPK5TokenPKcPS3_, .-_Z8LogTokenPK5TokenPKcPS3_
	.section	.rodata
.LC47:
	.string	"../Common/Utils/LangUtils.cpp"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LASANPC2938:
.LFB2938:
	.loc 1 81 5
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
	.loc 1 81 5
	cmpl	$1, -4(%rbp)
	jne	.L148
	.loc 1 81 5 is_stmt 0 discriminator 1
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	__asan_before_dynamic_init@PLT
	cmpl	$65535, -8(%rbp)
	jne	.L147
	.file 3 "/usr/include/c++/11/iostream"
	.loc 3 74 25 is_stmt 1
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
.L147:
	.loc 3 74 25 is_stmt 0 discriminator 1
	call	__asan_after_dynamic_init@PLT
.L148:
	.loc 1 81 5 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2938:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z10PrintTokenPK5TokenPPKc, @function
_GLOBAL__sub_I__Z10PrintTokenPK5TokenPPKc:
.LASANPC2939:
.LFB2939:
	.loc 1 81 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 81 5
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2939:
	.size	_GLOBAL__sub_I__Z10PrintTokenPK5TokenPPKc, .-_GLOBAL__sub_I__Z10PrintTokenPK5TokenPPKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z10PrintTokenPK5TokenPPKc
	.section	.rodata
	.align 8
.LC48:
	.string	"../ATC/RandomStuff/CommonEnums.h"
	.section	.data.rel.local,"aw"
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC48
	.long	3
	.long	11
	.section	.rodata
.LC49:
	.string	"../ATC/Logger/LogConfig.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC49
	.long	3
	.long	12
	.section	.rodata
.LC50:
	.string	"/usr/include/c++/11/iostream"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC3, @object
	.size	.LASANLOC3, 16
.LASANLOC3:
	.quad	.LC50
	.long	74
	.long	25
	.section	.rodata
.LC51:
	.string	"../Common/Grammar.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC4, @object
	.size	.LASANLOC4, 16
.LASANLOC4:
	.quad	.LC51
	.long	80
	.long	11
	.align 16
	.type	.LASANLOC5, @object
	.size	.LASANLOC5, 16
.LASANLOC5:
	.quad	.LC51
	.long	79
	.long	11
	.align 16
	.type	.LASANLOC6, @object
	.size	.LASANLOC6, 16
.LASANLOC6:
	.quad	.LC51
	.long	77
	.long	19
	.align 16
	.type	.LASANLOC7, @object
	.size	.LASANLOC7, 16
.LASANLOC7:
	.quad	.LC51
	.long	75
	.long	12
	.align 16
	.type	.LASANLOC8, @object
	.size	.LASANLOC8, 16
.LASANLOC8:
	.quad	.LC51
	.long	60
	.long	12
	.align 16
	.type	.LASANLOC9, @object
	.size	.LASANLOC9, 16
.LASANLOC9:
	.quad	.LC51
	.long	58
	.long	19
	.align 16
	.type	.LASANLOC10, @object
	.size	.LASANLOC10, 16
.LASANLOC10:
	.quad	.LC51
	.long	54
	.long	19
	.align 16
	.type	.LASANLOC11, @object
	.size	.LASANLOC11, 16
.LASANLOC11:
	.quad	.LC51
	.long	48
	.long	11
	.align 16
	.type	.LASANLOC12, @object
	.size	.LASANLOC12, 16
.LASANLOC12:
	.quad	.LC51
	.long	40
	.long	28
	.align 16
	.type	.LASANLOC13, @object
	.size	.LASANLOC13, 16
.LASANLOC13:
	.quad	.LC51
	.long	15
	.long	19
	.section	.rodata
	.align 8
.LC52:
	.string	"../Common/Structures/Tabels/Tabels.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC14, @object
	.size	.LASANLOC14, 16
.LASANLOC14:
	.quad	.LC52
	.long	8
	.long	11
	.align 16
	.type	.LASANLOC15, @object
	.size	.LASANLOC15, 16
.LASANLOC15:
	.quad	.LC52
	.long	7
	.long	11
	.section	.rodata
.LC53:
	.string	"CRINGE"
.LC54:
	.string	"STD_LOG_NAME"
.LC55:
	.string	"__ioinit"
.LC56:
	.string	"MAX_WORD_LENGTH"
.LC57:
	.string	"MAX_FUNCTION_NAME_LENGTH"
.LC58:
	.string	"MAIN_NAME"
.LC59:
	.string	"COMMENT"
.LC60:
	.string	"OPERATORS"
.LC61:
	.string	"FUNCTION_RET_TYPES"
.LC62:
	.string	"INITIALIZATORS"
	.align 8
.LC63:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS_STRUCT"
.LC64:
	.string	"NATIVE_FUNCTIONS"
.LC65:
	.string	"INSTRUCTIONS"
.LC66:
	.string	"NOT_A_LABEL"
.LC67:
	.string	"NOT_DECLARED"
.LC68:
	.string	"*.LC4"
.LC69:
	.string	"*.LC34"
.LC70:
	.string	"*.LC36"
.LC71:
	.string	"*.LC6"
.LC72:
	.string	"*.LC14"
.LC73:
	.string	"*.LC11"
.LC74:
	.string	"*.LC27"
.LC75:
	.string	"*.LC5"
.LC76:
	.string	"*.LC18"
.LC77:
	.string	"*.LC2"
.LC78:
	.string	"*.LC42"
.LC79:
	.string	"*.LC12"
.LC80:
	.string	"*.LC26"
.LC81:
	.string	"*.LC32"
.LC82:
	.string	"*.LC24"
.LC83:
	.string	"*.LC10"
.LC84:
	.string	"*.LC16"
.LC85:
	.string	"*.LC44"
.LC86:
	.string	"*.LC37"
.LC87:
	.string	"*.LC31"
.LC88:
	.string	"*.LC39"
.LC89:
	.string	"*.LC35"
.LC90:
	.string	"*.LC33"
.LC91:
	.string	"*.LC21"
.LC92:
	.string	"*.LC3"
.LC93:
	.string	"*.LC19"
.LC94:
	.string	"*.LC22"
.LC95:
	.string	"*.LC0"
.LC96:
	.string	"*.LC25"
.LC97:
	.string	"*.LC43"
.LC98:
	.string	"*.LC7"
.LC99:
	.string	"*.LC40"
.LC100:
	.string	"*.LC15"
.LC101:
	.string	"*.LC29"
.LC102:
	.string	"*.LC23"
.LC103:
	.string	"*.LC17"
.LC104:
	.string	"*.LC9"
.LC105:
	.string	"*.LC1"
.LC106:
	.string	"*.LC20"
.LC107:
	.string	"*.LC13"
.LC108:
	.string	"*.LC46"
.LC109:
	.string	"*.LC30"
.LC110:
	.string	"*.LC38"
.LC111:
	.string	"*.LC8"
.LC112:
	.string	"*.LC41"
.LC113:
	.string	"*.LC28"
.LC114:
	.string	"*.LC45"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 3968
.LASAN0:
	.quad	_ZL6CRINGE
	.quad	4
	.quad	64
	.quad	.LC53
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	_ZL12STD_LOG_NAME
	.quad	18
	.quad	64
	.quad	.LC54
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC2
	.quad	0
	.quad	_ZStL8__ioinit
	.quad	1
	.quad	64
	.quad	.LC55
	.quad	.LC47
	.quad	1
	.quad	.LASANLOC3
	.quad	0
	.quad	_ZL15MAX_WORD_LENGTH
	.quad	4
	.quad	64
	.quad	.LC56
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC4
	.quad	0
	.quad	_ZL24MAX_FUNCTION_NAME_LENGTH
	.quad	4
	.quad	64
	.quad	.LC57
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC5
	.quad	0
	.quad	_ZL9MAIN_NAME
	.quad	8
	.quad	64
	.quad	.LC58
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC6
	.quad	0
	.quad	_ZL7COMMENT
	.quad	1
	.quad	64
	.quad	.LC59
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC7
	.quad	0
	.quad	_ZL9OPERATORS
	.quad	9
	.quad	64
	.quad	.LC60
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC8
	.quad	0
	.quad	_ZL18FUNCTION_RET_TYPES
	.quad	16
	.quad	64
	.quad	.LC61
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC9
	.quad	0
	.quad	_ZL14INITIALIZATORS
	.quad	16
	.quad	64
	.quad	.LC62
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC10
	.quad	0
	.quad	_ZL33NUMBER_OF_NATIVE_FUNCTIONS_STRUCT
	.quad	4
	.quad	64
	.quad	.LC63
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC11
	.quad	0
	.quad	_ZL16NATIVE_FUNCTIONS
	.quad	80
	.quad	128
	.quad	.LC64
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC12
	.quad	0
	.quad	_ZL12INSTRUCTIONS
	.quad	32
	.quad	64
	.quad	.LC65
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC13
	.quad	0
	.quad	_ZL11NOT_A_LABEL
	.quad	4
	.quad	64
	.quad	.LC66
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC14
	.quad	0
	.quad	_ZL12NOT_DECLARED
	.quad	4
	.quad	64
	.quad	.LC67
	.quad	.LC47
	.quad	0
	.quad	.LASANLOC15
	.quad	0
	.quad	.LC4
	.quad	5
	.quad	64
	.quad	.LC68
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC34
	.quad	27
	.quad	64
	.quad	.LC69
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC36
	.quad	22
	.quad	64
	.quad	.LC70
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	4
	.quad	64
	.quad	.LC71
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC14
	.quad	18
	.quad	64
	.quad	.LC72
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	7
	.quad	64
	.quad	.LC73
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC27
	.quad	19
	.quad	64
	.quad	.LC74
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	4
	.quad	64
	.quad	.LC75
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC18
	.quad	24
	.quad	64
	.quad	.LC76
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	6
	.quad	64
	.quad	.LC77
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC42
	.quad	17
	.quad	64
	.quad	.LC78
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	5
	.quad	64
	.quad	.LC79
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC26
	.quad	26
	.quad	64
	.quad	.LC80
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC32
	.quad	37
	.quad	96
	.quad	.LC81
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC24
	.quad	19
	.quad	64
	.quad	.LC82
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	4
	.quad	64
	.quad	.LC83
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC16
	.quad	20
	.quad	64
	.quad	.LC84
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC44
	.quad	15
	.quad	64
	.quad	.LC85
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC37
	.quad	34
	.quad	96
	.quad	.LC86
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC31
	.quad	32
	.quad	64
	.quad	.LC87
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC39
	.quad	22
	.quad	64
	.quad	.LC88
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC35
	.quad	14
	.quad	64
	.quad	.LC89
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC33
	.quad	37
	.quad	96
	.quad	.LC90
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC21
	.quad	15
	.quad	64
	.quad	.LC91
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	7
	.quad	64
	.quad	.LC92
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC19
	.quad	28
	.quad	64
	.quad	.LC93
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC22
	.quad	19
	.quad	64
	.quad	.LC94
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	3
	.quad	64
	.quad	.LC95
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC25
	.quad	15
	.quad	64
	.quad	.LC96
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC43
	.quad	15
	.quad	64
	.quad	.LC97
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	4
	.quad	64
	.quad	.LC98
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC40
	.quad	20
	.quad	64
	.quad	.LC99
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC15
	.quad	12
	.quad	64
	.quad	.LC100
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC29
	.quad	20
	.quad	64
	.quad	.LC101
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC23
	.quad	20
	.quad	64
	.quad	.LC102
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC17
	.quad	22
	.quad	64
	.quad	.LC103
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	7
	.quad	64
	.quad	.LC104
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	5
	.quad	64
	.quad	.LC105
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	19
	.quad	64
	.quad	.LC106
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	5
	.quad	64
	.quad	.LC107
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC46
	.quad	2
	.quad	64
	.quad	.LC108
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC30
	.quad	32
	.quad	64
	.quad	.LC109
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC38
	.quad	10
	.quad	64
	.quad	.LC110
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	4
	.quad	64
	.quad	.LC111
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC41
	.quad	20
	.quad	64
	.quad	.LC112
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC28
	.quad	20
	.quad	64
	.quad	.LC113
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC45
	.quad	15
	.quad	64
	.quad	.LC114
	.quad	.LC47
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB2940:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$62, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2940:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB2941:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$62, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2941:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 4 "../Common/Structures/Tabels/NameTable.h"
	.file 5 "../Common/Structures/Token/Token.h"
	.file 6 "../Common/Structures/Tabels/Tabels.h"
	.file 7 "<built-in>"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "../Common/Grammar.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 19 "/usr/include/c++/11/cwchar"
	.file 20 "/usr/include/c++/11/type_traits"
	.file 21 "/usr/include/c++/11/bits/exception_ptr.h"
	.file 22 "/usr/include/x86_64-linux-gnu/c++/11/bits/c++config.h"
	.file 23 "/usr/include/c++/11/concepts"
	.file 24 "/usr/include/c++/11/bits/iterator_concepts.h"
	.file 25 "/usr/include/c++/11/bits/ranges_cmp.h"
	.file 26 "/usr/include/c++/11/compare"
	.file 27 "/usr/include/c++/11/debug/debug.h"
	.file 28 "/usr/include/c++/11/cstdint"
	.file 29 "/usr/include/c++/11/clocale"
	.file 30 "/usr/include/c++/11/cstdlib"
	.file 31 "/usr/include/c++/11/numbers"
	.file 32 "/usr/include/c++/11/cstdio"
	.file 33 "/usr/include/c++/11/bits/ios_base.h"
	.file 34 "/usr/include/c++/11/cwctype"
	.file 35 "/usr/include/wchar.h"
	.file 36 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 37 "/usr/include/c++/11/bits/predefined_ops.h"
	.file 38 "/usr/include/c++/11/bits/ptr_traits.h"
	.file 39 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 40 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 41 "/usr/include/stdint.h"
	.file 42 "/usr/include/locale.h"
	.file 43 "/usr/include/stdlib.h"
	.file 44 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
	.file 45 "/usr/include/wctype.h"
	.file 46 "../ATC/Logger/LogConfig.h"
	.file 47 "../ATC/RandomStuff/CommonEnums.h"
	.file 48 "../ATC/Logger/Logger.h"
	.file 49 "/usr/include/c++/11/bits/algorithmfwd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x25de
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2c
	.long	.LASF429
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF43
	.byte	0x8
	.byte	0xd1
	.byte	0x1b
	.long	0x41
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.long	.LASF5
	.uleb128 0x2d
	.long	.LASF430
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x17
	.long	.LASF14
	.byte	0x20
	.byte	0x4
	.byte	0xd
	.byte	0x8
	.long	0xcb
	.uleb128 0x3
	.long	.LASF7
	.byte	0x4
	.byte	0xf
	.byte	0x9
	.long	0xcb
	.byte	0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x4
	.byte	0x10
	.byte	0x9
	.long	0xcb
	.byte	0x4
	.uleb128 0x3
	.long	.LASF9
	.byte	0x4
	.byte	0x12
	.byte	0x9
	.long	0xcb
	.byte	0x8
	.uleb128 0x3
	.long	.LASF10
	.byte	0x4
	.byte	0x13
	.byte	0x9
	.long	0xcb
	.byte	0xc
	.uleb128 0x3
	.long	.LASF11
	.byte	0x4
	.byte	0x15
	.byte	0x9
	.long	0xcb
	.byte	0x10
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x16
	.byte	0x9
	.long	0xcb
	.byte	0x14
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x12
	.long	0x152
	.byte	0x18
	.byte	0
	.uleb128 0x2e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.long	0xcb
	.uleb128 0x17
	.long	.LASF15
	.byte	0x38
	.byte	0x5
	.byte	0x16
	.byte	0x8
	.long	0x14d
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x18
	.byte	0xc
	.long	0x1ff
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x19
	.byte	0xc
	.long	0x1ff
	.byte	0x8
	.uleb128 0x3
	.long	.LASF7
	.byte	0x5
	.byte	0x1b
	.byte	0x9
	.long	0xcb
	.byte	0x10
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x1d
	.byte	0x10
	.long	0x161
	.byte	0x18
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x1f
	.byte	0xc
	.long	0x15c
	.byte	0x20
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x22
	.byte	0x11
	.long	0x204
	.byte	0x28
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x24
	.byte	0x9
	.long	0xcb
	.byte	0x30
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x25
	.byte	0x9
	.long	0xcb
	.byte	0x34
	.byte	0
	.uleb128 0xb
	.long	0xd7
	.uleb128 0x6
	.long	0x14d
	.uleb128 0xb
	.long	0x152
	.uleb128 0x6
	.long	0x62
	.uleb128 0x2f
	.long	.LASF431
	.byte	0x8
	.byte	0x5
	.byte	0x7
	.byte	0x7
	.long	0x1e7
	.uleb128 0xd
	.long	.LASF23
	.byte	0x5
	.byte	0x9
	.byte	0x9
	.long	0xcb
	.uleb128 0xd
	.long	.LASF24
	.byte	0x5
	.byte	0xa
	.byte	0xa
	.long	0x1e7
	.uleb128 0xd
	.long	.LASF25
	.byte	0x5
	.byte	0xb
	.byte	0xc
	.long	0x1f3
	.uleb128 0xd
	.long	.LASF26
	.byte	0x5
	.byte	0xc
	.byte	0x9
	.long	0xcb
	.uleb128 0xd
	.long	.LASF27
	.byte	0x5
	.byte	0xd
	.byte	0x9
	.long	0xcb
	.uleb128 0xd
	.long	.LASF28
	.byte	0x5
	.byte	0xe
	.byte	0x9
	.long	0xcb
	.uleb128 0xd
	.long	.LASF29
	.byte	0x5
	.byte	0x10
	.byte	0xb
	.long	0x1fa
	.uleb128 0xd
	.long	.LASF30
	.byte	0x5
	.byte	0x11
	.byte	0x9
	.long	0xcb
	.uleb128 0xd
	.long	.LASF31
	.byte	0x5
	.byte	0x12
	.byte	0x9
	.long	0xcb
	.uleb128 0xd
	.long	.LASF32
	.byte	0x5
	.byte	0x13
	.byte	0x9
	.long	0xcb
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF33
	.uleb128 0xb
	.long	0x1e7
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.long	.LASF34
	.uleb128 0x6
	.long	0x1e7
	.uleb128 0x6
	.long	0xd7
	.uleb128 0x6
	.long	0x1ee
	.uleb128 0xb
	.long	0x204
	.uleb128 0xc
	.long	.LASF35
	.byte	0x6
	.byte	0x7
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12NOT_DECLARED
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.byte	0x8
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11NOT_A_LABEL
	.uleb128 0x6
	.long	0x204
	.uleb128 0x30
	.long	.LASF432
	.byte	0x18
	.byte	0x7
	.byte	0
	.long	0x274
	.uleb128 0x1b
	.long	.LASF37
	.long	0x5b
	.byte	0
	.uleb128 0x1b
	.long	.LASF38
	.long	0x5b
	.byte	0x4
	.uleb128 0x1b
	.long	.LASF39
	.long	0x274
	.byte	0x8
	.uleb128 0x1b
	.long	.LASF40
	.long	0x274
	.byte	0x10
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.long	.LASF41
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.long	.LASF42
	.uleb128 0x4
	.long	.LASF44
	.byte	0x9
	.byte	0x25
	.byte	0x15
	.long	0x290
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF45
	.uleb128 0x4
	.long	.LASF46
	.byte	0x9
	.byte	0x26
	.byte	0x17
	.long	0x276
	.uleb128 0x4
	.long	.LASF47
	.byte	0x9
	.byte	0x27
	.byte	0x1a
	.long	0x2af
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.long	.LASF48
	.uleb128 0x4
	.long	.LASF49
	.byte	0x9
	.byte	0x28
	.byte	0x1c
	.long	0x27d
	.uleb128 0x4
	.long	.LASF50
	.byte	0x9
	.byte	0x29
	.byte	0x14
	.long	0xcb
	.uleb128 0xb
	.long	0x2c2
	.uleb128 0x4
	.long	.LASF51
	.byte	0x9
	.byte	0x2a
	.byte	0x16
	.long	0x5b
	.uleb128 0x4
	.long	.LASF52
	.byte	0x9
	.byte	0x2c
	.byte	0x19
	.long	0x2e
	.uleb128 0x4
	.long	.LASF53
	.byte	0x9
	.byte	0x2d
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF54
	.byte	0x9
	.byte	0x34
	.byte	0x12
	.long	0x284
	.uleb128 0x4
	.long	.LASF55
	.byte	0x9
	.byte	0x35
	.byte	0x13
	.long	0x297
	.uleb128 0x4
	.long	.LASF56
	.byte	0x9
	.byte	0x36
	.byte	0x13
	.long	0x2a3
	.uleb128 0x4
	.long	.LASF57
	.byte	0x9
	.byte	0x37
	.byte	0x14
	.long	0x2b6
	.uleb128 0x4
	.long	.LASF58
	.byte	0x9
	.byte	0x38
	.byte	0x13
	.long	0x2c2
	.uleb128 0x4
	.long	.LASF59
	.byte	0x9
	.byte	0x39
	.byte	0x14
	.long	0x2d3
	.uleb128 0x4
	.long	.LASF60
	.byte	0x9
	.byte	0x3a
	.byte	0x13
	.long	0x2df
	.uleb128 0x4
	.long	.LASF61
	.byte	0x9
	.byte	0x3b
	.byte	0x14
	.long	0x2eb
	.uleb128 0x4
	.long	.LASF62
	.byte	0x9
	.byte	0x48
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF63
	.byte	0x9
	.byte	0x49
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF64
	.byte	0x9
	.byte	0x98
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF65
	.byte	0x9
	.byte	0x99
	.byte	0x12
	.long	0x2e
	.uleb128 0x1c
	.byte	0x8
	.byte	0xa
	.byte	0xe
	.byte	0x1
	.long	.LASF342
	.long	0x3d1
	.uleb128 0x32
	.byte	0x4
	.byte	0xa
	.byte	0x11
	.byte	0x3
	.long	0x3b6
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x12
	.byte	0x12
	.long	0x5b
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x13
	.byte	0xa
	.long	0x3d1
	.byte	0
	.uleb128 0x3
	.long	.LASF68
	.byte	0xa
	.byte	0xf
	.byte	0x7
	.long	0xcb
	.byte	0
	.uleb128 0x3
	.long	.LASF69
	.byte	0xa
	.byte	0x14
	.byte	0x5
	.long	0x394
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.long	0x1e7
	.long	0x3e1
	.uleb128 0x12
	.long	0x41
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF70
	.byte	0xa
	.byte	0x15
	.byte	0x3
	.long	0x387
	.uleb128 0x17
	.long	.LASF71
	.byte	0x10
	.byte	0xb
	.byte	0xa
	.byte	0x10
	.long	0x415
	.uleb128 0x3
	.long	.LASF72
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.long	0x36f
	.byte	0
	.uleb128 0x3
	.long	.LASF73
	.byte	0xb
	.byte	0xd
	.byte	0xf
	.long	0x3e1
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF74
	.byte	0xb
	.byte	0xe
	.byte	0x3
	.long	0x3ed
	.uleb128 0x4
	.long	.LASF75
	.byte	0xc
	.byte	0x5
	.byte	0x19
	.long	0x42d
	.uleb128 0x17
	.long	.LASF76
	.byte	0xd8
	.byte	0xd
	.byte	0x31
	.byte	0x8
	.long	0x5b4
	.uleb128 0x3
	.long	.LASF77
	.byte	0xd
	.byte	0x33
	.byte	0x7
	.long	0xcb
	.byte	0
	.uleb128 0x3
	.long	.LASF78
	.byte	0xd
	.byte	0x36
	.byte	0x9
	.long	0x1fa
	.byte	0x8
	.uleb128 0x3
	.long	.LASF79
	.byte	0xd
	.byte	0x37
	.byte	0x9
	.long	0x1fa
	.byte	0x10
	.uleb128 0x3
	.long	.LASF80
	.byte	0xd
	.byte	0x38
	.byte	0x9
	.long	0x1fa
	.byte	0x18
	.uleb128 0x3
	.long	.LASF81
	.byte	0xd
	.byte	0x39
	.byte	0x9
	.long	0x1fa
	.byte	0x20
	.uleb128 0x3
	.long	.LASF82
	.byte	0xd
	.byte	0x3a
	.byte	0x9
	.long	0x1fa
	.byte	0x28
	.uleb128 0x3
	.long	.LASF83
	.byte	0xd
	.byte	0x3b
	.byte	0x9
	.long	0x1fa
	.byte	0x30
	.uleb128 0x3
	.long	.LASF84
	.byte	0xd
	.byte	0x3c
	.byte	0x9
	.long	0x1fa
	.byte	0x38
	.uleb128 0x3
	.long	.LASF85
	.byte	0xd
	.byte	0x3d
	.byte	0x9
	.long	0x1fa
	.byte	0x40
	.uleb128 0x3
	.long	.LASF86
	.byte	0xd
	.byte	0x40
	.byte	0x9
	.long	0x1fa
	.byte	0x48
	.uleb128 0x3
	.long	.LASF87
	.byte	0xd
	.byte	0x41
	.byte	0x9
	.long	0x1fa
	.byte	0x50
	.uleb128 0x3
	.long	.LASF88
	.byte	0xd
	.byte	0x42
	.byte	0x9
	.long	0x1fa
	.byte	0x58
	.uleb128 0x3
	.long	.LASF89
	.byte	0xd
	.byte	0x44
	.byte	0x16
	.long	0x5cd
	.byte	0x60
	.uleb128 0x3
	.long	.LASF90
	.byte	0xd
	.byte	0x46
	.byte	0x14
	.long	0x5d2
	.byte	0x68
	.uleb128 0x3
	.long	.LASF91
	.byte	0xd
	.byte	0x48
	.byte	0x7
	.long	0xcb
	.byte	0x70
	.uleb128 0x3
	.long	.LASF92
	.byte	0xd
	.byte	0x49
	.byte	0x7
	.long	0xcb
	.byte	0x74
	.uleb128 0x3
	.long	.LASF93
	.byte	0xd
	.byte	0x4a
	.byte	0xb
	.long	0x36f
	.byte	0x78
	.uleb128 0x3
	.long	.LASF94
	.byte	0xd
	.byte	0x4d
	.byte	0x12
	.long	0x27d
	.byte	0x80
	.uleb128 0x3
	.long	.LASF95
	.byte	0xd
	.byte	0x4e
	.byte	0xf
	.long	0x290
	.byte	0x82
	.uleb128 0x3
	.long	.LASF96
	.byte	0xd
	.byte	0x4f
	.byte	0x8
	.long	0x5d7
	.byte	0x83
	.uleb128 0x3
	.long	.LASF97
	.byte	0xd
	.byte	0x51
	.byte	0xf
	.long	0x5e7
	.byte	0x88
	.uleb128 0x3
	.long	.LASF98
	.byte	0xd
	.byte	0x59
	.byte	0xd
	.long	0x37b
	.byte	0x90
	.uleb128 0x3
	.long	.LASF99
	.byte	0xd
	.byte	0x5b
	.byte	0x17
	.long	0x5f1
	.byte	0x98
	.uleb128 0x3
	.long	.LASF100
	.byte	0xd
	.byte	0x5c
	.byte	0x19
	.long	0x5fb
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF101
	.byte	0xd
	.byte	0x5d
	.byte	0x14
	.long	0x5d2
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF102
	.byte	0xd
	.byte	0x5e
	.byte	0x9
	.long	0x274
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF103
	.byte	0xd
	.byte	0x5f
	.byte	0xa
	.long	0x35
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF104
	.byte	0xd
	.byte	0x60
	.byte	0x7
	.long	0xcb
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF105
	.byte	0xd
	.byte	0x62
	.byte	0x8
	.long	0x600
	.byte	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF106
	.byte	0xe
	.byte	0x7
	.byte	0x19
	.long	0x42d
	.uleb128 0x33
	.long	.LASF433
	.byte	0xd
	.byte	0x2b
	.byte	0xe
	.uleb128 0x1f
	.long	.LASF107
	.uleb128 0x6
	.long	0x5c8
	.uleb128 0x6
	.long	0x42d
	.uleb128 0x11
	.long	0x1e7
	.long	0x5e7
	.uleb128 0x12
	.long	0x41
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x5c0
	.uleb128 0x1f
	.long	.LASF108
	.uleb128 0x6
	.long	0x5ec
	.uleb128 0x1f
	.long	.LASF109
	.uleb128 0x6
	.long	0x5f6
	.uleb128 0x11
	.long	0x1e7
	.long	0x610
	.uleb128 0x12
	.long	0x41
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	.LASF110
	.byte	0xf
	.byte	0x54
	.byte	0x12
	.long	0x415
	.uleb128 0xb
	.long	0x610
	.uleb128 0x6
	.long	0x5b4
	.uleb128 0x8
	.byte	0x20
	.byte	0x3
	.long	.LASF111
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.long	.LASF112
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.long	.LASF113
	.uleb128 0x22
	.long	.LASF138
	.byte	0x5
	.long	0xcb
	.byte	0x3
	.long	0x6c4
	.uleb128 0xa
	.long	.LASF114
	.byte	0x1
	.uleb128 0xa
	.long	.LASF115
	.byte	0x2
	.uleb128 0xa
	.long	.LASF116
	.byte	0x3
	.uleb128 0xa
	.long	.LASF117
	.byte	0x4
	.uleb128 0xa
	.long	.LASF118
	.byte	0x5
	.uleb128 0xa
	.long	.LASF119
	.byte	0x6
	.uleb128 0xa
	.long	.LASF120
	.byte	0x7
	.uleb128 0xa
	.long	.LASF121
	.byte	0x8
	.uleb128 0xa
	.long	.LASF122
	.byte	0x9
	.uleb128 0xa
	.long	.LASF123
	.byte	0xa
	.uleb128 0xa
	.long	.LASF124
	.byte	0xb
	.uleb128 0xa
	.long	.LASF125
	.byte	0xc
	.uleb128 0xa
	.long	.LASF126
	.byte	0x3d
	.uleb128 0xa
	.long	.LASF127
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF128
	.byte	0x7b
	.uleb128 0xa
	.long	.LASF129
	.byte	0x7d
	.uleb128 0xa
	.long	.LASF130
	.byte	0x28
	.uleb128 0xa
	.long	.LASF131
	.byte	0x29
	.uleb128 0xa
	.long	.LASF132
	.byte	0x3b
	.uleb128 0x34
	.long	.LASF133
	.sleb128 -999
	.byte	0
	.uleb128 0x11
	.long	0x209
	.long	0x6d4
	.uleb128 0x12
	.long	0x41
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x6c4
	.uleb128 0xc
	.long	.LASF134
	.byte	0x10
	.byte	0xf
	.byte	0x13
	.long	0x6d4
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12INSTRUCTIONS
	.uleb128 0x17
	.long	.LASF135
	.byte	0x10
	.byte	0x10
	.byte	0x17
	.byte	0x8
	.long	0x724
	.uleb128 0x1d
	.string	"str"
	.byte	0x10
	.byte	0x19
	.byte	0x11
	.long	0x204
	.byte	0
	.uleb128 0x3
	.long	.LASF136
	.byte	0x10
	.byte	0x1a
	.byte	0x9
	.long	0xcb
	.byte	0x8
	.uleb128 0x3
	.long	.LASF137
	.byte	0x10
	.byte	0x1b
	.byte	0x9
	.long	0xcb
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	0x6ef
	.uleb128 0x22
	.long	.LASF139
	.byte	0x7
	.long	0x5b
	.byte	0x1e
	.long	0x75d
	.uleb128 0xa
	.long	.LASF140
	.byte	0
	.uleb128 0x1e
	.string	"FIN"
	.byte	0x1
	.uleb128 0x1e
	.string	"SIN"
	.byte	0x2
	.uleb128 0x1e
	.string	"COS"
	.byte	0x3
	.uleb128 0x1e
	.string	"POW"
	.byte	0x4
	.uleb128 0xa
	.long	.LASF141
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.long	0x724
	.long	0x76d
	.uleb128 0x12
	.long	0x41
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	0x75d
	.uleb128 0xc
	.long	.LASF142
	.byte	0x10
	.byte	0x28
	.byte	0x1c
	.long	0x76d
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16NATIVE_FUNCTIONS
	.uleb128 0xc
	.long	.LASF143
	.byte	0x10
	.byte	0x30
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL33NUMBER_OF_NATIVE_FUNCTIONS_STRUCT
	.uleb128 0x11
	.long	0x209
	.long	0x7ae
	.uleb128 0x12
	.long	0x41
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x79e
	.uleb128 0xc
	.long	.LASF144
	.byte	0x10
	.byte	0x36
	.byte	0x13
	.long	0x7ae
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL14INITIALIZATORS
	.uleb128 0xc
	.long	.LASF145
	.byte	0x10
	.byte	0x3a
	.byte	0x13
	.long	0x7ae
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL18FUNCTION_RET_TYPES
	.uleb128 0x11
	.long	0x1ee
	.long	0x7ef
	.uleb128 0x12
	.long	0x41
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x7df
	.uleb128 0xc
	.long	.LASF146
	.byte	0x10
	.byte	0x3c
	.byte	0xc
	.long	0x7ef
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL9OPERATORS
	.uleb128 0xc
	.long	.LASF147
	.byte	0x10
	.byte	0x4b
	.byte	0xc
	.long	0x1ee
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL7COMMENT
	.uleb128 0xc
	.long	.LASF148
	.byte	0x10
	.byte	0x4d
	.byte	0x13
	.long	0x209
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL9MAIN_NAME
	.uleb128 0xc
	.long	.LASF149
	.byte	0x10
	.byte	0x4f
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL24MAX_FUNCTION_NAME_LENGTH
	.uleb128 0xc
	.long	.LASF150
	.byte	0x10
	.byte	0x50
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL15MAX_WORD_LENGTH
	.uleb128 0x4
	.long	.LASF151
	.byte	0x11
	.byte	0x14
	.byte	0x16
	.long	0x5b
	.uleb128 0x4
	.long	.LASF152
	.byte	0x12
	.byte	0x6
	.byte	0x15
	.long	0x3e1
	.uleb128 0xb
	.long	0x86e
	.uleb128 0x35
	.string	"std"
	.byte	0x16
	.value	0x116
	.byte	0xb
	.long	0x1120
	.uleb128 0x2
	.byte	0x13
	.byte	0x40
	.byte	0xb
	.long	0x86e
	.uleb128 0x2
	.byte	0x13
	.byte	0x8d
	.byte	0xb
	.long	0x862
	.uleb128 0x2
	.byte	0x13
	.byte	0x8f
	.byte	0xb
	.long	0x1120
	.uleb128 0x2
	.byte	0x13
	.byte	0x90
	.byte	0xb
	.long	0x1137
	.uleb128 0x2
	.byte	0x13
	.byte	0x91
	.byte	0xb
	.long	0x1153
	.uleb128 0x2
	.byte	0x13
	.byte	0x92
	.byte	0xb
	.long	0x1185
	.uleb128 0x2
	.byte	0x13
	.byte	0x93
	.byte	0xb
	.long	0x11a1
	.uleb128 0x2
	.byte	0x13
	.byte	0x94
	.byte	0xb
	.long	0x11c2
	.uleb128 0x2
	.byte	0x13
	.byte	0x95
	.byte	0xb
	.long	0x11de
	.uleb128 0x2
	.byte	0x13
	.byte	0x96
	.byte	0xb
	.long	0x11fb
	.uleb128 0x2
	.byte	0x13
	.byte	0x97
	.byte	0xb
	.long	0x121c
	.uleb128 0x2
	.byte	0x13
	.byte	0x98
	.byte	0xb
	.long	0x1233
	.uleb128 0x2
	.byte	0x13
	.byte	0x99
	.byte	0xb
	.long	0x1240
	.uleb128 0x2
	.byte	0x13
	.byte	0x9a
	.byte	0xb
	.long	0x1266
	.uleb128 0x2
	.byte	0x13
	.byte	0x9b
	.byte	0xb
	.long	0x128c
	.uleb128 0x2
	.byte	0x13
	.byte	0x9c
	.byte	0xb
	.long	0x12a8
	.uleb128 0x2
	.byte	0x13
	.byte	0x9d
	.byte	0xb
	.long	0x12ce
	.uleb128 0x2
	.byte	0x13
	.byte	0x9e
	.byte	0xb
	.long	0x12ea
	.uleb128 0x2
	.byte	0x13
	.byte	0xa0
	.byte	0xb
	.long	0x1301
	.uleb128 0x2
	.byte	0x13
	.byte	0xa2
	.byte	0xb
	.long	0x1323
	.uleb128 0x2
	.byte	0x13
	.byte	0xa3
	.byte	0xb
	.long	0x1344
	.uleb128 0x2
	.byte	0x13
	.byte	0xa4
	.byte	0xb
	.long	0x1360
	.uleb128 0x2
	.byte	0x13
	.byte	0xa6
	.byte	0xb
	.long	0x1386
	.uleb128 0x2
	.byte	0x13
	.byte	0xa9
	.byte	0xb
	.long	0x13ab
	.uleb128 0x2
	.byte	0x13
	.byte	0xac
	.byte	0xb
	.long	0x13d1
	.uleb128 0x2
	.byte	0x13
	.byte	0xae
	.byte	0xb
	.long	0x13f6
	.uleb128 0x2
	.byte	0x13
	.byte	0xb0
	.byte	0xb
	.long	0x1412
	.uleb128 0x2
	.byte	0x13
	.byte	0xb2
	.byte	0xb
	.long	0x1432
	.uleb128 0x2
	.byte	0x13
	.byte	0xb3
	.byte	0xb
	.long	0x1453
	.uleb128 0x2
	.byte	0x13
	.byte	0xb4
	.byte	0xb
	.long	0x146e
	.uleb128 0x2
	.byte	0x13
	.byte	0xb5
	.byte	0xb
	.long	0x1489
	.uleb128 0x2
	.byte	0x13
	.byte	0xb6
	.byte	0xb
	.long	0x14a4
	.uleb128 0x2
	.byte	0x13
	.byte	0xb7
	.byte	0xb
	.long	0x14bf
	.uleb128 0x2
	.byte	0x13
	.byte	0xb8
	.byte	0xb
	.long	0x14da
	.uleb128 0x2
	.byte	0x13
	.byte	0xb9
	.byte	0xb
	.long	0x15a6
	.uleb128 0x2
	.byte	0x13
	.byte	0xba
	.byte	0xb
	.long	0x15bc
	.uleb128 0x2
	.byte	0x13
	.byte	0xbb
	.byte	0xb
	.long	0x15dc
	.uleb128 0x2
	.byte	0x13
	.byte	0xbc
	.byte	0xb
	.long	0x15fc
	.uleb128 0x2
	.byte	0x13
	.byte	0xbd
	.byte	0xb
	.long	0x161c
	.uleb128 0x2
	.byte	0x13
	.byte	0xbe
	.byte	0xb
	.long	0x1647
	.uleb128 0x2
	.byte	0x13
	.byte	0xbf
	.byte	0xb
	.long	0x1662
	.uleb128 0x2
	.byte	0x13
	.byte	0xc1
	.byte	0xb
	.long	0x1683
	.uleb128 0x2
	.byte	0x13
	.byte	0xc3
	.byte	0xb
	.long	0x169f
	.uleb128 0x2
	.byte	0x13
	.byte	0xc4
	.byte	0xb
	.long	0x16bf
	.uleb128 0x2
	.byte	0x13
	.byte	0xc5
	.byte	0xb
	.long	0x16e0
	.uleb128 0x2
	.byte	0x13
	.byte	0xc6
	.byte	0xb
	.long	0x1701
	.uleb128 0x2
	.byte	0x13
	.byte	0xc7
	.byte	0xb
	.long	0x1721
	.uleb128 0x2
	.byte	0x13
	.byte	0xc8
	.byte	0xb
	.long	0x1738
	.uleb128 0x2
	.byte	0x13
	.byte	0xc9
	.byte	0xb
	.long	0x1759
	.uleb128 0x2
	.byte	0x13
	.byte	0xca
	.byte	0xb
	.long	0x177a
	.uleb128 0x2
	.byte	0x13
	.byte	0xcb
	.byte	0xb
	.long	0x179b
	.uleb128 0x2
	.byte	0x13
	.byte	0xcc
	.byte	0xb
	.long	0x17bc
	.uleb128 0x2
	.byte	0x13
	.byte	0xcd
	.byte	0xb
	.long	0x17d4
	.uleb128 0x2
	.byte	0x13
	.byte	0xce
	.byte	0xb
	.long	0x17f0
	.uleb128 0x2
	.byte	0x13
	.byte	0xce
	.byte	0xb
	.long	0x180e
	.uleb128 0x2
	.byte	0x13
	.byte	0xcf
	.byte	0xb
	.long	0x182c
	.uleb128 0x2
	.byte	0x13
	.byte	0xcf
	.byte	0xb
	.long	0x184a
	.uleb128 0x2
	.byte	0x13
	.byte	0xd0
	.byte	0xb
	.long	0x1868
	.uleb128 0x2
	.byte	0x13
	.byte	0xd0
	.byte	0xb
	.long	0x1886
	.uleb128 0x2
	.byte	0x13
	.byte	0xd1
	.byte	0xb
	.long	0x18a4
	.uleb128 0x2
	.byte	0x13
	.byte	0xd1
	.byte	0xb
	.long	0x18c2
	.uleb128 0x2
	.byte	0x13
	.byte	0xd2
	.byte	0xb
	.long	0x18e0
	.uleb128 0x2
	.byte	0x13
	.byte	0xd2
	.byte	0xb
	.long	0x1903
	.uleb128 0xe
	.value	0x10b
	.byte	0x16
	.long	0x19a7
	.uleb128 0xe
	.value	0x10c
	.byte	0x16
	.long	0x19c3
	.uleb128 0xe
	.value	0x10d
	.byte	0x16
	.long	0x19e4
	.uleb128 0xe
	.value	0x11b
	.byte	0xe
	.long	0x1683
	.uleb128 0xe
	.value	0x11e
	.byte	0xe
	.long	0x1386
	.uleb128 0xe
	.value	0x121
	.byte	0xe
	.long	0x13d1
	.uleb128 0xe
	.value	0x124
	.byte	0xe
	.long	0x1412
	.uleb128 0xe
	.value	0x128
	.byte	0xe
	.long	0x19a7
	.uleb128 0xe
	.value	0x129
	.byte	0xe
	.long	0x19c3
	.uleb128 0xe
	.value	0x12a
	.byte	0xe
	.long	0x19e4
	.uleb128 0x19
	.long	.LASF153
	.byte	0x14
	.value	0xa86
	.byte	0xd
	.uleb128 0x19
	.long	.LASF154
	.byte	0x14
	.value	0xadc
	.byte	0xd
	.uleb128 0x20
	.long	.LASF155
	.byte	0x15
	.byte	0x3f
	.byte	0xd
	.long	0xcb9
	.uleb128 0x36
	.long	.LASF161
	.byte	0x8
	.byte	0x15
	.byte	0x5a
	.byte	0xb
	.long	0xcab
	.uleb128 0x3
	.long	.LASF156
	.byte	0x15
	.byte	0x5c
	.byte	0xd
	.long	0x274
	.byte	0
	.uleb128 0x37
	.long	.LASF161
	.byte	0x15
	.byte	0x5e
	.byte	0x10
	.long	.LASF163
	.long	0xb20
	.long	0xb2b
	.uleb128 0x9
	.long	0x1a28
	.uleb128 0x1
	.long	0x274
	.byte	0
	.uleb128 0x23
	.long	.LASF157
	.byte	0x60
	.long	.LASF159
	.long	0xb3d
	.long	0xb43
	.uleb128 0x9
	.long	0x1a28
	.byte	0
	.uleb128 0x23
	.long	.LASF158
	.byte	0x61
	.long	.LASF160
	.long	0xb55
	.long	0xb5b
	.uleb128 0x9
	.long	0x1a28
	.byte	0
	.uleb128 0x38
	.long	.LASF162
	.byte	0x15
	.byte	0x63
	.byte	0xd
	.long	.LASF164
	.long	0x274
	.long	0xb73
	.long	0xb79
	.uleb128 0x9
	.long	0x1a2d
	.byte	0
	.uleb128 0x14
	.long	.LASF161
	.byte	0x15
	.byte	0x6b
	.byte	0x7
	.long	.LASF165
	.long	0xb8d
	.long	0xb93
	.uleb128 0x9
	.long	0x1a28
	.byte	0
	.uleb128 0x14
	.long	.LASF161
	.byte	0x15
	.byte	0x6d
	.byte	0x7
	.long	.LASF166
	.long	0xba7
	.long	0xbb2
	.uleb128 0x9
	.long	0x1a28
	.uleb128 0x1
	.long	0x1a32
	.byte	0
	.uleb128 0x14
	.long	.LASF161
	.byte	0x15
	.byte	0x70
	.byte	0x7
	.long	.LASF167
	.long	0xbc6
	.long	0xbd1
	.uleb128 0x9
	.long	0x1a28
	.uleb128 0x1
	.long	0xcd7
	.byte	0
	.uleb128 0x14
	.long	.LASF161
	.byte	0x15
	.byte	0x74
	.byte	0x7
	.long	.LASF168
	.long	0xbe5
	.long	0xbf0
	.uleb128 0x9
	.long	0x1a28
	.uleb128 0x1
	.long	0x1a37
	.byte	0
	.uleb128 0x24
	.long	.LASF169
	.byte	0x81
	.long	.LASF170
	.long	0x1a3d
	.long	0xc06
	.long	0xc11
	.uleb128 0x9
	.long	0x1a28
	.uleb128 0x1
	.long	0x1a32
	.byte	0
	.uleb128 0x24
	.long	.LASF169
	.byte	0x85
	.long	.LASF171
	.long	0x1a3d
	.long	0xc27
	.long	0xc32
	.uleb128 0x9
	.long	0x1a28
	.uleb128 0x1
	.long	0x1a37
	.byte	0
	.uleb128 0x14
	.long	.LASF172
	.byte	0x15
	.byte	0x8c
	.byte	0x7
	.long	.LASF173
	.long	0xc46
	.long	0xc51
	.uleb128 0x9
	.long	0x1a28
	.uleb128 0x9
	.long	0xcb
	.byte	0
	.uleb128 0x14
	.long	.LASF174
	.byte	0x15
	.byte	0x8f
	.byte	0x7
	.long	.LASF175
	.long	0xc65
	.long	0xc70
	.uleb128 0x9
	.long	0x1a28
	.uleb128 0x1
	.long	0x1a3d
	.byte	0
	.uleb128 0x39
	.long	.LASF434
	.byte	0x15
	.byte	0x9b
	.byte	0x10
	.long	.LASF435
	.long	0x1a0c
	.byte	0x1
	.long	0xc89
	.long	0xc8f
	.uleb128 0x9
	.long	0x1a2d
	.byte	0
	.uleb128 0x3a
	.long	.LASF176
	.byte	0x15
	.byte	0xb0
	.byte	0x7
	.long	.LASF177
	.long	0x1a42
	.byte	0x1
	.long	0xca4
	.uleb128 0x9
	.long	0x1a2d
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xaf2
	.uleb128 0x2
	.byte	0x15
	.byte	0x54
	.byte	0x10
	.long	0xcc1
	.byte	0
	.uleb128 0x2
	.byte	0x15
	.byte	0x44
	.byte	0x1a
	.long	0xaf2
	.uleb128 0x3b
	.long	.LASF178
	.byte	0x15
	.byte	0x50
	.byte	0x8
	.long	.LASF179
	.long	0xcd7
	.uleb128 0x1
	.long	0xaf2
	.byte	0
	.uleb128 0x25
	.long	.LASF180
	.byte	0x16
	.value	0x11c
	.byte	0x1d
	.long	0x56
	.uleb128 0x3c
	.long	.LASF436
	.uleb128 0xb
	.long	0xce4
	.uleb128 0x20
	.long	.LASF181
	.byte	0x17
	.byte	0xa3
	.byte	0xd
	.long	0xd2d
	.uleb128 0x13
	.long	.LASF182
	.byte	0x17
	.byte	0xa5
	.byte	0xf
	.uleb128 0x3d
	.long	.LASF189
	.byte	0x17
	.byte	0xe1
	.byte	0x16
	.uleb128 0x13
	.long	.LASF183
	.byte	0x18
	.byte	0x50
	.byte	0xf
	.uleb128 0x19
	.long	.LASF184
	.byte	0x18
	.value	0x31d
	.byte	0xd
	.uleb128 0x19
	.long	.LASF185
	.byte	0x18
	.value	0x3a0
	.byte	0x15
	.uleb128 0x13
	.long	.LASF186
	.byte	0x19
	.byte	0x40
	.byte	0xd
	.byte	0
	.uleb128 0x13
	.long	.LASF187
	.byte	0x1a
	.byte	0x31
	.byte	0xd
	.uleb128 0x13
	.long	.LASF186
	.byte	0x17
	.byte	0x36
	.byte	0xd
	.uleb128 0x19
	.long	.LASF188
	.byte	0x1a
	.value	0x20e
	.byte	0xd
	.uleb128 0x26
	.long	.LASF190
	.byte	0x1a
	.value	0x357
	.byte	0x14
	.uleb128 0x13
	.long	.LASF191
	.byte	0x1b
	.byte	0x32
	.byte	0xd
	.uleb128 0x2
	.byte	0x1c
	.byte	0x2f
	.byte	0xb
	.long	0x1a63
	.uleb128 0x2
	.byte	0x1c
	.byte	0x30
	.byte	0xb
	.long	0x1a6f
	.uleb128 0x2
	.byte	0x1c
	.byte	0x31
	.byte	0xb
	.long	0x1a7b
	.uleb128 0x2
	.byte	0x1c
	.byte	0x32
	.byte	0xb
	.long	0x1a87
	.uleb128 0x2
	.byte	0x1c
	.byte	0x34
	.byte	0xb
	.long	0x1b23
	.uleb128 0x2
	.byte	0x1c
	.byte	0x35
	.byte	0xb
	.long	0x1b2f
	.uleb128 0x2
	.byte	0x1c
	.byte	0x36
	.byte	0xb
	.long	0x1b3b
	.uleb128 0x2
	.byte	0x1c
	.byte	0x37
	.byte	0xb
	.long	0x1b47
	.uleb128 0x2
	.byte	0x1c
	.byte	0x39
	.byte	0xb
	.long	0x1ac3
	.uleb128 0x2
	.byte	0x1c
	.byte	0x3a
	.byte	0xb
	.long	0x1acf
	.uleb128 0x2
	.byte	0x1c
	.byte	0x3b
	.byte	0xb
	.long	0x1adb
	.uleb128 0x2
	.byte	0x1c
	.byte	0x3c
	.byte	0xb
	.long	0x1ae7
	.uleb128 0x2
	.byte	0x1c
	.byte	0x3e
	.byte	0xb
	.long	0x1b9b
	.uleb128 0x2
	.byte	0x1c
	.byte	0x3f
	.byte	0xb
	.long	0x1b83
	.uleb128 0x2
	.byte	0x1c
	.byte	0x41
	.byte	0xb
	.long	0x1a93
	.uleb128 0x2
	.byte	0x1c
	.byte	0x42
	.byte	0xb
	.long	0x1a9f
	.uleb128 0x2
	.byte	0x1c
	.byte	0x43
	.byte	0xb
	.long	0x1aab
	.uleb128 0x2
	.byte	0x1c
	.byte	0x44
	.byte	0xb
	.long	0x1ab7
	.uleb128 0x2
	.byte	0x1c
	.byte	0x46
	.byte	0xb
	.long	0x1b53
	.uleb128 0x2
	.byte	0x1c
	.byte	0x47
	.byte	0xb
	.long	0x1b5f
	.uleb128 0x2
	.byte	0x1c
	.byte	0x48
	.byte	0xb
	.long	0x1b6b
	.uleb128 0x2
	.byte	0x1c
	.byte	0x49
	.byte	0xb
	.long	0x1b77
	.uleb128 0x2
	.byte	0x1c
	.byte	0x4b
	.byte	0xb
	.long	0x1af3
	.uleb128 0x2
	.byte	0x1c
	.byte	0x4c
	.byte	0xb
	.long	0x1aff
	.uleb128 0x2
	.byte	0x1c
	.byte	0x4d
	.byte	0xb
	.long	0x1b0b
	.uleb128 0x2
	.byte	0x1c
	.byte	0x4e
	.byte	0xb
	.long	0x1b17
	.uleb128 0x2
	.byte	0x1c
	.byte	0x50
	.byte	0xb
	.long	0x1ba7
	.uleb128 0x2
	.byte	0x1c
	.byte	0x51
	.byte	0xb
	.long	0x1b8f
	.uleb128 0x2
	.byte	0x1d
	.byte	0x35
	.byte	0xb
	.long	0x1bb3
	.uleb128 0x2
	.byte	0x1d
	.byte	0x36
	.byte	0xb
	.long	0x1cf9
	.uleb128 0x2
	.byte	0x1d
	.byte	0x37
	.byte	0xb
	.long	0x1d14
	.uleb128 0x2
	.byte	0x1e
	.byte	0x7f
	.byte	0xb
	.long	0x1d53
	.uleb128 0x2
	.byte	0x1e
	.byte	0x80
	.byte	0xb
	.long	0x1d87
	.uleb128 0x2
	.byte	0x1e
	.byte	0x86
	.byte	0xb
	.long	0x1ded
	.uleb128 0x2
	.byte	0x1e
	.byte	0x89
	.byte	0xb
	.long	0x1e0a
	.uleb128 0x2
	.byte	0x1e
	.byte	0x8c
	.byte	0xb
	.long	0x1e25
	.uleb128 0x2
	.byte	0x1e
	.byte	0x8d
	.byte	0xb
	.long	0x1e3b
	.uleb128 0x2
	.byte	0x1e
	.byte	0x8e
	.byte	0xb
	.long	0x1e51
	.uleb128 0x2
	.byte	0x1e
	.byte	0x8f
	.byte	0xb
	.long	0x1e67
	.uleb128 0x2
	.byte	0x1e
	.byte	0x91
	.byte	0xb
	.long	0x1e92
	.uleb128 0x2
	.byte	0x1e
	.byte	0x94
	.byte	0xb
	.long	0x1eae
	.uleb128 0x2
	.byte	0x1e
	.byte	0x96
	.byte	0xb
	.long	0x1ec5
	.uleb128 0x2
	.byte	0x1e
	.byte	0x99
	.byte	0xb
	.long	0x1ee1
	.uleb128 0x2
	.byte	0x1e
	.byte	0x9a
	.byte	0xb
	.long	0x1efd
	.uleb128 0x2
	.byte	0x1e
	.byte	0x9b
	.byte	0xb
	.long	0x1f1e
	.uleb128 0x2
	.byte	0x1e
	.byte	0x9d
	.byte	0xb
	.long	0x1f3f
	.uleb128 0x2
	.byte	0x1e
	.byte	0xa0
	.byte	0xb
	.long	0x1f60
	.uleb128 0x2
	.byte	0x1e
	.byte	0xa3
	.byte	0xb
	.long	0x1f73
	.uleb128 0x2
	.byte	0x1e
	.byte	0xa5
	.byte	0xb
	.long	0x1f80
	.uleb128 0x2
	.byte	0x1e
	.byte	0xa6
	.byte	0xb
	.long	0x1f92
	.uleb128 0x2
	.byte	0x1e
	.byte	0xa7
	.byte	0xb
	.long	0x1fb2
	.uleb128 0x2
	.byte	0x1e
	.byte	0xa8
	.byte	0xb
	.long	0x1fd2
	.uleb128 0x2
	.byte	0x1e
	.byte	0xa9
	.byte	0xb
	.long	0x1ff2
	.uleb128 0x2
	.byte	0x1e
	.byte	0xab
	.byte	0xb
	.long	0x2009
	.uleb128 0x2
	.byte	0x1e
	.byte	0xac
	.byte	0xb
	.long	0x202a
	.uleb128 0x2
	.byte	0x1e
	.byte	0xf0
	.byte	0x16
	.long	0x1dbb
	.uleb128 0x2
	.byte	0x1e
	.byte	0xf5
	.byte	0x16
	.long	0x198b
	.uleb128 0x2
	.byte	0x1e
	.byte	0xf6
	.byte	0x16
	.long	0x2046
	.uleb128 0x2
	.byte	0x1e
	.byte	0xf8
	.byte	0x16
	.long	0x2062
	.uleb128 0x2
	.byte	0x1e
	.byte	0xf9
	.byte	0x16
	.long	0x20b8
	.uleb128 0x2
	.byte	0x1e
	.byte	0xfa
	.byte	0x16
	.long	0x2078
	.uleb128 0x2
	.byte	0x1e
	.byte	0xfb
	.byte	0x16
	.long	0x2098
	.uleb128 0x2
	.byte	0x1e
	.byte	0xfc
	.byte	0x16
	.long	0x20d3
	.uleb128 0x13
	.long	.LASF192
	.byte	0x1f
	.byte	0x30
	.byte	0xb
	.uleb128 0x2
	.byte	0x20
	.byte	0x62
	.byte	0xb
	.long	0x5b4
	.uleb128 0x2
	.byte	0x20
	.byte	0x63
	.byte	0xb
	.long	0x610
	.uleb128 0x2
	.byte	0x20
	.byte	0x65
	.byte	0xb
	.long	0x20f5
	.uleb128 0x2
	.byte	0x20
	.byte	0x66
	.byte	0xb
	.long	0x2107
	.uleb128 0x2
	.byte	0x20
	.byte	0x67
	.byte	0xb
	.long	0x211d
	.uleb128 0x2
	.byte	0x20
	.byte	0x68
	.byte	0xb
	.long	0x2134
	.uleb128 0x2
	.byte	0x20
	.byte	0x69
	.byte	0xb
	.long	0x214b
	.uleb128 0x2
	.byte	0x20
	.byte	0x6a
	.byte	0xb
	.long	0x2161
	.uleb128 0x2
	.byte	0x20
	.byte	0x6b
	.byte	0xb
	.long	0x2178
	.uleb128 0x2
	.byte	0x20
	.byte	0x6c
	.byte	0xb
	.long	0x2199
	.uleb128 0x2
	.byte	0x20
	.byte	0x6d
	.byte	0xb
	.long	0x21ba
	.uleb128 0x2
	.byte	0x20
	.byte	0x71
	.byte	0xb
	.long	0x21d6
	.uleb128 0x2
	.byte	0x20
	.byte	0x72
	.byte	0xb
	.long	0x21fc
	.uleb128 0x2
	.byte	0x20
	.byte	0x74
	.byte	0xb
	.long	0x221d
	.uleb128 0x2
	.byte	0x20
	.byte	0x75
	.byte	0xb
	.long	0x223e
	.uleb128 0x2
	.byte	0x20
	.byte	0x76
	.byte	0xb
	.long	0x225f
	.uleb128 0x2
	.byte	0x20
	.byte	0x78
	.byte	0xb
	.long	0x2276
	.uleb128 0x2
	.byte	0x20
	.byte	0x79
	.byte	0xb
	.long	0x228d
	.uleb128 0x2
	.byte	0x20
	.byte	0x7e
	.byte	0xb
	.long	0x229a
	.uleb128 0x2
	.byte	0x20
	.byte	0x83
	.byte	0xb
	.long	0x22ac
	.uleb128 0x2
	.byte	0x20
	.byte	0x84
	.byte	0xb
	.long	0x22c2
	.uleb128 0x2
	.byte	0x20
	.byte	0x85
	.byte	0xb
	.long	0x22dd
	.uleb128 0x2
	.byte	0x20
	.byte	0x87
	.byte	0xb
	.long	0x22ef
	.uleb128 0x2
	.byte	0x20
	.byte	0x88
	.byte	0xb
	.long	0x2306
	.uleb128 0x2
	.byte	0x20
	.byte	0x8b
	.byte	0xb
	.long	0x232c
	.uleb128 0x2
	.byte	0x20
	.byte	0x8d
	.byte	0xb
	.long	0x2338
	.uleb128 0x2
	.byte	0x20
	.byte	0x8f
	.byte	0xb
	.long	0x234e
	.uleb128 0x26
	.long	.LASF193
	.byte	0x16
	.value	0x12e
	.byte	0x41
	.uleb128 0x3e
	.string	"_V2"
	.byte	0x31
	.value	0x25c
	.byte	0x14
	.uleb128 0x27
	.long	.LASF415
	.long	0x10db
	.uleb128 0x3f
	.long	.LASF194
	.byte	0x1
	.byte	0x21
	.value	0x272
	.byte	0xb
	.byte	0x1
	.long	0x10d5
	.uleb128 0x28
	.long	.LASF194
	.value	0x276
	.long	.LASF196
	.long	0x106c
	.long	0x1072
	.uleb128 0x9
	.long	0x236a
	.byte	0
	.uleb128 0x28
	.long	.LASF195
	.value	0x277
	.long	.LASF197
	.long	0x1085
	.long	0x1090
	.uleb128 0x9
	.long	0x236a
	.uleb128 0x9
	.long	0xcb
	.byte	0
	.uleb128 0x40
	.long	.LASF194
	.byte	0x21
	.value	0x27a
	.byte	0x7
	.long	.LASF198
	.byte	0x1
	.byte	0x1
	.long	0x10a7
	.long	0x10b2
	.uleb128 0x9
	.long	0x236a
	.uleb128 0x1
	.long	0x2374
	.byte	0
	.uleb128 0x41
	.long	.LASF169
	.byte	0x21
	.value	0x27b
	.byte	0xd
	.long	.LASF199
	.long	0x2379
	.byte	0x1
	.byte	0x1
	.long	0x10c9
	.uleb128 0x9
	.long	0x236a
	.uleb128 0x1
	.long	0x2374
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x104a
	.byte	0
	.uleb128 0x2
	.byte	0x22
	.byte	0x52
	.byte	0xb
	.long	0x238a
	.uleb128 0x2
	.byte	0x22
	.byte	0x53
	.byte	0xb
	.long	0x237e
	.uleb128 0x2
	.byte	0x22
	.byte	0x54
	.byte	0xb
	.long	0x862
	.uleb128 0x2
	.byte	0x22
	.byte	0x5c
	.byte	0xb
	.long	0x239b
	.uleb128 0x2
	.byte	0x22
	.byte	0x65
	.byte	0xb
	.long	0x23b6
	.uleb128 0x2
	.byte	0x22
	.byte	0x68
	.byte	0xb
	.long	0x23d1
	.uleb128 0x2
	.byte	0x22
	.byte	0x69
	.byte	0xb
	.long	0x23e7
	.uleb128 0x42
	.long	.LASF200
	.byte	0x3
	.byte	0x4a
	.byte	0x19
	.long	0x104a
	.byte	0
	.uleb128 0x5
	.long	.LASF201
	.byte	0x23
	.value	0x11d
	.byte	0xf
	.long	0x862
	.long	0x1137
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF202
	.byte	0x23
	.value	0x2e8
	.byte	0xf
	.long	0x862
	.long	0x114e
	.uleb128 0x1
	.long	0x114e
	.byte	0
	.uleb128 0x6
	.long	0x421
	.uleb128 0x5
	.long	.LASF203
	.byte	0x23
	.value	0x305
	.byte	0x11
	.long	0x1174
	.long	0x1174
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x114e
	.byte	0
	.uleb128 0x6
	.long	0x1179
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.long	.LASF204
	.uleb128 0xb
	.long	0x1179
	.uleb128 0x5
	.long	.LASF205
	.byte	0x23
	.value	0x2f6
	.byte	0xf
	.long	0x862
	.long	0x11a1
	.uleb128 0x1
	.long	0x1179
	.uleb128 0x1
	.long	0x114e
	.byte	0
	.uleb128 0x5
	.long	.LASF206
	.byte	0x23
	.value	0x30c
	.byte	0xc
	.long	0xcb
	.long	0x11bd
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x114e
	.byte	0
	.uleb128 0x6
	.long	0x1180
	.uleb128 0x5
	.long	.LASF207
	.byte	0x23
	.value	0x24c
	.byte	0xc
	.long	0xcb
	.long	0x11de
	.uleb128 0x1
	.long	0x114e
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF208
	.byte	0x23
	.value	0x253
	.byte	0xc
	.long	0xcb
	.long	0x11fb
	.uleb128 0x1
	.long	0x114e
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x10
	.byte	0
	.uleb128 0x15
	.long	.LASF209
	.byte	0x23
	.value	0x291
	.byte	0xc
	.long	.LASF219
	.long	0xcb
	.long	0x121c
	.uleb128 0x1
	.long	0x114e
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF210
	.byte	0x23
	.value	0x2e9
	.byte	0xf
	.long	0x862
	.long	0x1233
	.uleb128 0x1
	.long	0x114e
	.byte	0
	.uleb128 0x21
	.long	.LASF340
	.byte	0x23
	.value	0x2ef
	.byte	0xf
	.long	0x862
	.uleb128 0x5
	.long	.LASF211
	.byte	0x23
	.value	0x134
	.byte	0xf
	.long	0x35
	.long	0x1261
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x1261
	.byte	0
	.uleb128 0x6
	.long	0x86e
	.uleb128 0x5
	.long	.LASF212
	.byte	0x23
	.value	0x129
	.byte	0xf
	.long	0x35
	.long	0x128c
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x1261
	.byte	0
	.uleb128 0x5
	.long	.LASF213
	.byte	0x23
	.value	0x125
	.byte	0xc
	.long	0xcb
	.long	0x12a3
	.uleb128 0x1
	.long	0x12a3
	.byte	0
	.uleb128 0x6
	.long	0x87a
	.uleb128 0x5
	.long	.LASF214
	.byte	0x23
	.value	0x152
	.byte	0xf
	.long	0x35
	.long	0x12ce
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x23a
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x1261
	.byte	0
	.uleb128 0x5
	.long	.LASF215
	.byte	0x23
	.value	0x2f7
	.byte	0xf
	.long	0x862
	.long	0x12ea
	.uleb128 0x1
	.long	0x1179
	.uleb128 0x1
	.long	0x114e
	.byte	0
	.uleb128 0x5
	.long	.LASF216
	.byte	0x23
	.value	0x2fd
	.byte	0xf
	.long	0x862
	.long	0x1301
	.uleb128 0x1
	.long	0x1179
	.byte	0
	.uleb128 0x5
	.long	.LASF217
	.byte	0x23
	.value	0x25d
	.byte	0xc
	.long	0xcb
	.long	0x1323
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x10
	.byte	0
	.uleb128 0x15
	.long	.LASF218
	.byte	0x23
	.value	0x298
	.byte	0xc
	.long	.LASF220
	.long	0xcb
	.long	0x1344
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF221
	.byte	0x23
	.value	0x314
	.byte	0xf
	.long	0x862
	.long	0x1360
	.uleb128 0x1
	.long	0x862
	.uleb128 0x1
	.long	0x114e
	.byte	0
	.uleb128 0x5
	.long	.LASF222
	.byte	0x23
	.value	0x265
	.byte	0xc
	.long	0xcb
	.long	0x1381
	.uleb128 0x1
	.long	0x114e
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x1381
	.byte	0
	.uleb128 0x6
	.long	0x23f
	.uleb128 0x15
	.long	.LASF223
	.byte	0x23
	.value	0x2c7
	.byte	0xc
	.long	.LASF224
	.long	0xcb
	.long	0x13ab
	.uleb128 0x1
	.long	0x114e
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x1381
	.byte	0
	.uleb128 0x5
	.long	.LASF225
	.byte	0x23
	.value	0x272
	.byte	0xc
	.long	0xcb
	.long	0x13d1
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x1381
	.byte	0
	.uleb128 0x15
	.long	.LASF226
	.byte	0x23
	.value	0x2ce
	.byte	0xc
	.long	.LASF227
	.long	0xcb
	.long	0x13f6
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x1381
	.byte	0
	.uleb128 0x5
	.long	.LASF228
	.byte	0x23
	.value	0x26d
	.byte	0xc
	.long	0xcb
	.long	0x1412
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x1381
	.byte	0
	.uleb128 0x15
	.long	.LASF229
	.byte	0x23
	.value	0x2cb
	.byte	0xc
	.long	.LASF230
	.long	0xcb
	.long	0x1432
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x1381
	.byte	0
	.uleb128 0x5
	.long	.LASF231
	.byte	0x23
	.value	0x12e
	.byte	0xf
	.long	0x35
	.long	0x1453
	.uleb128 0x1
	.long	0x1fa
	.uleb128 0x1
	.long	0x1179
	.uleb128 0x1
	.long	0x1261
	.byte	0
	.uleb128 0x7
	.long	.LASF232
	.byte	0x23
	.byte	0x61
	.byte	0x11
	.long	0x1174
	.long	0x146e
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x11bd
	.byte	0
	.uleb128 0x7
	.long	.LASF233
	.byte	0x23
	.byte	0x6a
	.byte	0xc
	.long	0xcb
	.long	0x1489
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x11bd
	.byte	0
	.uleb128 0x7
	.long	.LASF234
	.byte	0x23
	.byte	0x83
	.byte	0xc
	.long	0xcb
	.long	0x14a4
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x11bd
	.byte	0
	.uleb128 0x7
	.long	.LASF235
	.byte	0x23
	.byte	0x57
	.byte	0x11
	.long	0x1174
	.long	0x14bf
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x11bd
	.byte	0
	.uleb128 0x7
	.long	.LASF236
	.byte	0x23
	.byte	0xbc
	.byte	0xf
	.long	0x35
	.long	0x14da
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x11bd
	.byte	0
	.uleb128 0x5
	.long	.LASF237
	.byte	0x23
	.value	0x354
	.byte	0xf
	.long	0x35
	.long	0x1500
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x1500
	.byte	0
	.uleb128 0x6
	.long	0x15a1
	.uleb128 0x43
	.string	"tm"
	.byte	0x38
	.byte	0x24
	.byte	0x7
	.byte	0x8
	.long	0x15a1
	.uleb128 0x3
	.long	.LASF238
	.byte	0x24
	.byte	0x9
	.byte	0x7
	.long	0xcb
	.byte	0
	.uleb128 0x3
	.long	.LASF239
	.byte	0x24
	.byte	0xa
	.byte	0x7
	.long	0xcb
	.byte	0x4
	.uleb128 0x3
	.long	.LASF240
	.byte	0x24
	.byte	0xb
	.byte	0x7
	.long	0xcb
	.byte	0x8
	.uleb128 0x3
	.long	.LASF241
	.byte	0x24
	.byte	0xc
	.byte	0x7
	.long	0xcb
	.byte	0xc
	.uleb128 0x3
	.long	.LASF242
	.byte	0x24
	.byte	0xd
	.byte	0x7
	.long	0xcb
	.byte	0x10
	.uleb128 0x3
	.long	.LASF243
	.byte	0x24
	.byte	0xe
	.byte	0x7
	.long	0xcb
	.byte	0x14
	.uleb128 0x3
	.long	.LASF244
	.byte	0x24
	.byte	0xf
	.byte	0x7
	.long	0xcb
	.byte	0x18
	.uleb128 0x3
	.long	.LASF245
	.byte	0x24
	.byte	0x10
	.byte	0x7
	.long	0xcb
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF246
	.byte	0x24
	.byte	0x11
	.byte	0x7
	.long	0xcb
	.byte	0x20
	.uleb128 0x3
	.long	.LASF247
	.byte	0x24
	.byte	0x14
	.byte	0xc
	.long	0x2e
	.byte	0x28
	.uleb128 0x3
	.long	.LASF248
	.byte	0x24
	.byte	0x15
	.byte	0xf
	.long	0x204
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	0x1505
	.uleb128 0x7
	.long	.LASF249
	.byte	0x23
	.byte	0xdf
	.byte	0xf
	.long	0x35
	.long	0x15bc
	.uleb128 0x1
	.long	0x11bd
	.byte	0
	.uleb128 0x7
	.long	.LASF250
	.byte	0x23
	.byte	0x65
	.byte	0x11
	.long	0x1174
	.long	0x15dc
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x7
	.long	.LASF251
	.byte	0x23
	.byte	0x6d
	.byte	0xc
	.long	0xcb
	.long	0x15fc
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x7
	.long	.LASF252
	.byte	0x23
	.byte	0x5c
	.byte	0x11
	.long	0x1174
	.long	0x161c
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF253
	.byte	0x23
	.value	0x158
	.byte	0xf
	.long	0x35
	.long	0x1642
	.uleb128 0x1
	.long	0x1fa
	.uleb128 0x1
	.long	0x1642
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x1261
	.byte	0
	.uleb128 0x6
	.long	0x11bd
	.uleb128 0x7
	.long	.LASF254
	.byte	0x23
	.byte	0xc0
	.byte	0xf
	.long	0x35
	.long	0x1662
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x11bd
	.byte	0
	.uleb128 0x5
	.long	.LASF255
	.byte	0x23
	.value	0x17a
	.byte	0xf
	.long	0x1f3
	.long	0x167e
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x167e
	.byte	0
	.uleb128 0x6
	.long	0x1174
	.uleb128 0x5
	.long	.LASF256
	.byte	0x23
	.value	0x17f
	.byte	0xe
	.long	0x634
	.long	0x169f
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x167e
	.byte	0
	.uleb128 0x7
	.long	.LASF257
	.byte	0x23
	.byte	0xda
	.byte	0x11
	.long	0x1174
	.long	0x16bf
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x167e
	.byte	0
	.uleb128 0x5
	.long	.LASF258
	.byte	0x23
	.value	0x1ad
	.byte	0x11
	.long	0x2e
	.long	0x16e0
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x167e
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF259
	.byte	0x23
	.value	0x1b2
	.byte	0x1a
	.long	0x41
	.long	0x1701
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x167e
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x7
	.long	.LASF260
	.byte	0x23
	.byte	0x87
	.byte	0xf
	.long	0x35
	.long	0x1721
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF261
	.byte	0x23
	.value	0x121
	.byte	0xc
	.long	0xcb
	.long	0x1738
	.uleb128 0x1
	.long	0x862
	.byte	0
	.uleb128 0x5
	.long	.LASF262
	.byte	0x23
	.value	0x103
	.byte	0xc
	.long	0xcb
	.long	0x1759
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF263
	.byte	0x23
	.value	0x107
	.byte	0x11
	.long	0x1174
	.long	0x177a
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF264
	.byte	0x23
	.value	0x10c
	.byte	0x11
	.long	0x1174
	.long	0x179b
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF265
	.byte	0x23
	.value	0x110
	.byte	0x11
	.long	0x1174
	.long	0x17bc
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x1179
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF266
	.byte	0x23
	.value	0x25a
	.byte	0xc
	.long	0xcb
	.long	0x17d4
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x10
	.byte	0
	.uleb128 0x15
	.long	.LASF267
	.byte	0x23
	.value	0x295
	.byte	0xc
	.long	.LASF268
	.long	0xcb
	.long	0x17f0
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF269
	.byte	0xa2
	.byte	0x1d
	.long	.LASF269
	.long	0x11bd
	.long	0x180e
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x1179
	.byte	0
	.uleb128 0xf
	.long	.LASF269
	.byte	0xa0
	.byte	0x17
	.long	.LASF269
	.long	0x1174
	.long	0x182c
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x1179
	.byte	0
	.uleb128 0xf
	.long	.LASF270
	.byte	0xc6
	.byte	0x1d
	.long	.LASF270
	.long	0x11bd
	.long	0x184a
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x11bd
	.byte	0
	.uleb128 0xf
	.long	.LASF270
	.byte	0xc4
	.byte	0x17
	.long	.LASF270
	.long	0x1174
	.long	0x1868
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x11bd
	.byte	0
	.uleb128 0xf
	.long	.LASF271
	.byte	0xac
	.byte	0x1d
	.long	.LASF271
	.long	0x11bd
	.long	0x1886
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x1179
	.byte	0
	.uleb128 0xf
	.long	.LASF271
	.byte	0xaa
	.byte	0x17
	.long	.LASF271
	.long	0x1174
	.long	0x18a4
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x1179
	.byte	0
	.uleb128 0xf
	.long	.LASF272
	.byte	0xd1
	.byte	0x1d
	.long	.LASF272
	.long	0x11bd
	.long	0x18c2
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x11bd
	.byte	0
	.uleb128 0xf
	.long	.LASF272
	.byte	0xcf
	.byte	0x17
	.long	.LASF272
	.long	0x1174
	.long	0x18e0
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x11bd
	.byte	0
	.uleb128 0xf
	.long	.LASF273
	.byte	0xfa
	.byte	0x1d
	.long	.LASF273
	.long	0x11bd
	.long	0x1903
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x1179
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0xf
	.long	.LASF273
	.byte	0xf8
	.byte	0x17
	.long	.LASF273
	.long	0x1174
	.long	0x1926
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x1179
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x44
	.long	.LASF274
	.byte	0x16
	.value	0x130
	.byte	0xb
	.long	0x19a7
	.uleb128 0x2
	.byte	0x13
	.byte	0xfb
	.byte	0xb
	.long	0x19a7
	.uleb128 0xe
	.value	0x104
	.byte	0xb
	.long	0x19c3
	.uleb128 0xe
	.value	0x105
	.byte	0xb
	.long	0x19e4
	.uleb128 0x13
	.long	.LASF275
	.byte	0x25
	.byte	0x25
	.byte	0xb
	.uleb128 0x2
	.byte	0x1e
	.byte	0xc8
	.byte	0xb
	.long	0x1dbb
	.uleb128 0x2
	.byte	0x1e
	.byte	0xd8
	.byte	0xb
	.long	0x2046
	.uleb128 0x2
	.byte	0x1e
	.byte	0xe3
	.byte	0xb
	.long	0x2062
	.uleb128 0x2
	.byte	0x1e
	.byte	0xe4
	.byte	0xb
	.long	0x2078
	.uleb128 0x2
	.byte	0x1e
	.byte	0xe5
	.byte	0xb
	.long	0x2098
	.uleb128 0x2
	.byte	0x1e
	.byte	0xe7
	.byte	0xb
	.long	0x20b8
	.uleb128 0x2
	.byte	0x1e
	.byte	0xe8
	.byte	0xb
	.long	0x20d3
	.uleb128 0x45
	.string	"div"
	.byte	0x1e
	.byte	0xd5
	.byte	0x3
	.long	.LASF437
	.long	0x1dbb
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF276
	.byte	0x23
	.value	0x181
	.byte	0x14
	.long	0x4f
	.long	0x19c3
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x167e
	.byte	0
	.uleb128 0x5
	.long	.LASF277
	.byte	0x23
	.value	0x1ba
	.byte	0x16
	.long	0x48
	.long	0x19e4
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x167e
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF278
	.byte	0x23
	.value	0x1c1
	.byte	0x1f
	.long	0x1a05
	.long	0x1a05
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x167e
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF279
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.long	.LASF280
	.uleb128 0x8
	.byte	0x1
	.byte	0x7
	.long	.LASF281
	.uleb128 0x8
	.byte	0x2
	.byte	0x10
	.long	.LASF282
	.uleb128 0x8
	.byte	0x4
	.byte	0x10
	.long	.LASF283
	.uleb128 0x6
	.long	0xaf2
	.uleb128 0x6
	.long	0xcab
	.uleb128 0x1a
	.long	0xcab
	.uleb128 0x46
	.byte	0x8
	.long	0xaf2
	.uleb128 0x1a
	.long	0xaf2
	.uleb128 0x6
	.long	0xce9
	.uleb128 0x8
	.byte	0x10
	.byte	0x5
	.long	.LASF284
	.uleb128 0x20
	.long	.LASF285
	.byte	0x26
	.byte	0x27
	.byte	0xb
	.long	0x1a63
	.uleb128 0x47
	.byte	0x1b
	.byte	0x3a
	.byte	0x18
	.long	0xd4f
	.byte	0
	.uleb128 0x4
	.long	.LASF286
	.byte	0x27
	.byte	0x18
	.byte	0x12
	.long	0x284
	.uleb128 0x4
	.long	.LASF287
	.byte	0x27
	.byte	0x19
	.byte	0x13
	.long	0x2a3
	.uleb128 0x4
	.long	.LASF288
	.byte	0x27
	.byte	0x1a
	.byte	0x13
	.long	0x2c2
	.uleb128 0x4
	.long	.LASF289
	.byte	0x27
	.byte	0x1b
	.byte	0x13
	.long	0x2df
	.uleb128 0x4
	.long	.LASF290
	.byte	0x28
	.byte	0x18
	.byte	0x13
	.long	0x297
	.uleb128 0x4
	.long	.LASF291
	.byte	0x28
	.byte	0x19
	.byte	0x14
	.long	0x2b6
	.uleb128 0x4
	.long	.LASF292
	.byte	0x28
	.byte	0x1a
	.byte	0x14
	.long	0x2d3
	.uleb128 0x4
	.long	.LASF293
	.byte	0x28
	.byte	0x1b
	.byte	0x14
	.long	0x2eb
	.uleb128 0x4
	.long	.LASF294
	.byte	0x29
	.byte	0x2b
	.byte	0x18
	.long	0x2f7
	.uleb128 0x4
	.long	.LASF295
	.byte	0x29
	.byte	0x2c
	.byte	0x19
	.long	0x30f
	.uleb128 0x4
	.long	.LASF296
	.byte	0x29
	.byte	0x2d
	.byte	0x19
	.long	0x327
	.uleb128 0x4
	.long	.LASF297
	.byte	0x29
	.byte	0x2e
	.byte	0x19
	.long	0x33f
	.uleb128 0x4
	.long	.LASF298
	.byte	0x29
	.byte	0x31
	.byte	0x19
	.long	0x303
	.uleb128 0x4
	.long	.LASF299
	.byte	0x29
	.byte	0x32
	.byte	0x1a
	.long	0x31b
	.uleb128 0x4
	.long	.LASF300
	.byte	0x29
	.byte	0x33
	.byte	0x1a
	.long	0x333
	.uleb128 0x4
	.long	.LASF301
	.byte	0x29
	.byte	0x34
	.byte	0x1a
	.long	0x34b
	.uleb128 0x4
	.long	.LASF302
	.byte	0x29
	.byte	0x3a
	.byte	0x15
	.long	0x290
	.uleb128 0x4
	.long	.LASF303
	.byte	0x29
	.byte	0x3c
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF304
	.byte	0x29
	.byte	0x3d
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF305
	.byte	0x29
	.byte	0x3e
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF306
	.byte	0x29
	.byte	0x47
	.byte	0x17
	.long	0x276
	.uleb128 0x4
	.long	.LASF307
	.byte	0x29
	.byte	0x49
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF308
	.byte	0x29
	.byte	0x4a
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF309
	.byte	0x29
	.byte	0x4b
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF310
	.byte	0x29
	.byte	0x57
	.byte	0x12
	.long	0x2e
	.uleb128 0x4
	.long	.LASF311
	.byte	0x29
	.byte	0x5a
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF312
	.byte	0x29
	.byte	0x65
	.byte	0x14
	.long	0x357
	.uleb128 0x4
	.long	.LASF313
	.byte	0x29
	.byte	0x66
	.byte	0x15
	.long	0x363
	.uleb128 0x17
	.long	.LASF314
	.byte	0x60
	.byte	0x2a
	.byte	0x33
	.byte	0x8
	.long	0x1cf9
	.uleb128 0x3
	.long	.LASF315
	.byte	0x2a
	.byte	0x37
	.byte	0x9
	.long	0x1fa
	.byte	0
	.uleb128 0x3
	.long	.LASF316
	.byte	0x2a
	.byte	0x38
	.byte	0x9
	.long	0x1fa
	.byte	0x8
	.uleb128 0x3
	.long	.LASF317
	.byte	0x2a
	.byte	0x3e
	.byte	0x9
	.long	0x1fa
	.byte	0x10
	.uleb128 0x3
	.long	.LASF318
	.byte	0x2a
	.byte	0x44
	.byte	0x9
	.long	0x1fa
	.byte	0x18
	.uleb128 0x3
	.long	.LASF319
	.byte	0x2a
	.byte	0x45
	.byte	0x9
	.long	0x1fa
	.byte	0x20
	.uleb128 0x3
	.long	.LASF320
	.byte	0x2a
	.byte	0x46
	.byte	0x9
	.long	0x1fa
	.byte	0x28
	.uleb128 0x3
	.long	.LASF321
	.byte	0x2a
	.byte	0x47
	.byte	0x9
	.long	0x1fa
	.byte	0x30
	.uleb128 0x3
	.long	.LASF322
	.byte	0x2a
	.byte	0x48
	.byte	0x9
	.long	0x1fa
	.byte	0x38
	.uleb128 0x3
	.long	.LASF323
	.byte	0x2a
	.byte	0x49
	.byte	0x9
	.long	0x1fa
	.byte	0x40
	.uleb128 0x3
	.long	.LASF324
	.byte	0x2a
	.byte	0x4a
	.byte	0x9
	.long	0x1fa
	.byte	0x48
	.uleb128 0x3
	.long	.LASF325
	.byte	0x2a
	.byte	0x4b
	.byte	0x8
	.long	0x1e7
	.byte	0x50
	.uleb128 0x3
	.long	.LASF326
	.byte	0x2a
	.byte	0x4c
	.byte	0x8
	.long	0x1e7
	.byte	0x51
	.uleb128 0x3
	.long	.LASF327
	.byte	0x2a
	.byte	0x4e
	.byte	0x8
	.long	0x1e7
	.byte	0x52
	.uleb128 0x3
	.long	.LASF328
	.byte	0x2a
	.byte	0x50
	.byte	0x8
	.long	0x1e7
	.byte	0x53
	.uleb128 0x3
	.long	.LASF329
	.byte	0x2a
	.byte	0x52
	.byte	0x8
	.long	0x1e7
	.byte	0x54
	.uleb128 0x3
	.long	.LASF330
	.byte	0x2a
	.byte	0x54
	.byte	0x8
	.long	0x1e7
	.byte	0x55
	.uleb128 0x3
	.long	.LASF331
	.byte	0x2a
	.byte	0x5b
	.byte	0x8
	.long	0x1e7
	.byte	0x56
	.uleb128 0x3
	.long	.LASF332
	.byte	0x2a
	.byte	0x5c
	.byte	0x8
	.long	0x1e7
	.byte	0x57
	.uleb128 0x3
	.long	.LASF333
	.byte	0x2a
	.byte	0x5f
	.byte	0x8
	.long	0x1e7
	.byte	0x58
	.uleb128 0x3
	.long	.LASF334
	.byte	0x2a
	.byte	0x61
	.byte	0x8
	.long	0x1e7
	.byte	0x59
	.uleb128 0x3
	.long	.LASF335
	.byte	0x2a
	.byte	0x63
	.byte	0x8
	.long	0x1e7
	.byte	0x5a
	.uleb128 0x3
	.long	.LASF336
	.byte	0x2a
	.byte	0x65
	.byte	0x8
	.long	0x1e7
	.byte	0x5b
	.uleb128 0x3
	.long	.LASF337
	.byte	0x2a
	.byte	0x6c
	.byte	0x8
	.long	0x1e7
	.byte	0x5c
	.uleb128 0x3
	.long	.LASF338
	.byte	0x2a
	.byte	0x6d
	.byte	0x8
	.long	0x1e7
	.byte	0x5d
	.byte	0
	.uleb128 0x7
	.long	.LASF339
	.byte	0x2a
	.byte	0x7a
	.byte	0xe
	.long	0x1fa
	.long	0x1d14
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x29
	.long	.LASF341
	.byte	0x2a
	.byte	0x7d
	.byte	0x16
	.long	0x1d20
	.uleb128 0x6
	.long	0x1bb3
	.uleb128 0x6
	.long	0x1d2a
	.uleb128 0x48
	.uleb128 0x1c
	.byte	0x8
	.byte	0x2b
	.byte	0x3c
	.byte	0x3
	.long	.LASF343
	.long	0x1d53
	.uleb128 0x3
	.long	.LASF344
	.byte	0x2b
	.byte	0x3d
	.byte	0x9
	.long	0xcb
	.byte	0
	.uleb128 0x1d
	.string	"rem"
	.byte	0x2b
	.byte	0x3e
	.byte	0x9
	.long	0xcb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF345
	.byte	0x2b
	.byte	0x3f
	.byte	0x5
	.long	0x1d2b
	.uleb128 0x1c
	.byte	0x10
	.byte	0x2b
	.byte	0x44
	.byte	0x3
	.long	.LASF346
	.long	0x1d87
	.uleb128 0x3
	.long	.LASF344
	.byte	0x2b
	.byte	0x45
	.byte	0xe
	.long	0x2e
	.byte	0
	.uleb128 0x1d
	.string	"rem"
	.byte	0x2b
	.byte	0x46
	.byte	0xe
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF347
	.byte	0x2b
	.byte	0x47
	.byte	0x5
	.long	0x1d5f
	.uleb128 0x1c
	.byte	0x10
	.byte	0x2b
	.byte	0x4e
	.byte	0x3
	.long	.LASF348
	.long	0x1dbb
	.uleb128 0x3
	.long	.LASF344
	.byte	0x2b
	.byte	0x4f
	.byte	0x13
	.long	0x48
	.byte	0
	.uleb128 0x1d
	.string	"rem"
	.byte	0x2b
	.byte	0x50
	.byte	0x13
	.long	0x48
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF349
	.byte	0x2b
	.byte	0x51
	.byte	0x5
	.long	0x1d93
	.uleb128 0x25
	.long	.LASF350
	.byte	0x2b
	.value	0x330
	.byte	0xf
	.long	0x1dd4
	.uleb128 0x6
	.long	0x1dd9
	.uleb128 0x49
	.long	0xcb
	.long	0x1ded
	.uleb128 0x1
	.long	0x1d25
	.uleb128 0x1
	.long	0x1d25
	.byte	0
	.uleb128 0x5
	.long	.LASF351
	.byte	0x2b
	.value	0x25a
	.byte	0xc
	.long	0xcb
	.long	0x1e04
	.uleb128 0x1
	.long	0x1e04
	.byte	0
	.uleb128 0x6
	.long	0x1e09
	.uleb128 0x4a
	.uleb128 0x15
	.long	.LASF352
	.byte	0x2b
	.value	0x25f
	.byte	0x12
	.long	.LASF352
	.long	0xcb
	.long	0x1e25
	.uleb128 0x1
	.long	0x1e04
	.byte	0
	.uleb128 0x7
	.long	.LASF353
	.byte	0x2b
	.byte	0x66
	.byte	0xf
	.long	0x1f3
	.long	0x1e3b
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x7
	.long	.LASF354
	.byte	0x2b
	.byte	0x69
	.byte	0xc
	.long	0xcb
	.long	0x1e51
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x7
	.long	.LASF355
	.byte	0x2b
	.byte	0x6c
	.byte	0x11
	.long	0x2e
	.long	0x1e67
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x5
	.long	.LASF356
	.byte	0x2b
	.value	0x33c
	.byte	0xe
	.long	0x274
	.long	0x1e92
	.uleb128 0x1
	.long	0x1d25
	.uleb128 0x1
	.long	0x1d25
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x1dc7
	.byte	0
	.uleb128 0x4b
	.string	"div"
	.byte	0x2b
	.value	0x35c
	.byte	0xe
	.long	0x1d53
	.long	0x1eae
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF357
	.byte	0x2b
	.value	0x281
	.byte	0xe
	.long	0x1fa
	.long	0x1ec5
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x5
	.long	.LASF358
	.byte	0x2b
	.value	0x35e
	.byte	0xf
	.long	0x1d87
	.long	0x1ee1
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF359
	.byte	0x2b
	.value	0x3a2
	.byte	0xc
	.long	0xcb
	.long	0x1efd
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF360
	.byte	0x2b
	.value	0x3ad
	.byte	0xf
	.long	0x35
	.long	0x1f1e
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF361
	.byte	0x2b
	.value	0x3a5
	.byte	0xc
	.long	0xcb
	.long	0x1f3f
	.uleb128 0x1
	.long	0x1174
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x18
	.long	.LASF364
	.byte	0x2b
	.value	0x346
	.long	0x1f60
	.uleb128 0x1
	.long	0x274
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x1dc7
	.byte	0
	.uleb128 0x4c
	.long	.LASF362
	.byte	0x2b
	.value	0x276
	.byte	0xd
	.long	0x1f73
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x21
	.long	.LASF363
	.byte	0x2b
	.value	0x1c6
	.byte	0xc
	.long	0xcb
	.uleb128 0x18
	.long	.LASF365
	.byte	0x2b
	.value	0x1c8
	.long	0x1f92
	.uleb128 0x1
	.long	0x5b
	.byte	0
	.uleb128 0x7
	.long	.LASF366
	.byte	0x2b
	.byte	0x76
	.byte	0xf
	.long	0x1f3
	.long	0x1fad
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x1fad
	.byte	0
	.uleb128 0x6
	.long	0x1fa
	.uleb128 0x7
	.long	.LASF367
	.byte	0x2b
	.byte	0xb1
	.byte	0x11
	.long	0x2e
	.long	0x1fd2
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x1fad
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x7
	.long	.LASF368
	.byte	0x2b
	.byte	0xb5
	.byte	0x1a
	.long	0x41
	.long	0x1ff2
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x1fad
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF369
	.byte	0x2b
	.value	0x317
	.byte	0xc
	.long	0xcb
	.long	0x2009
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x5
	.long	.LASF370
	.byte	0x2b
	.value	0x3b1
	.byte	0xf
	.long	0x35
	.long	0x202a
	.uleb128 0x1
	.long	0x1fa
	.uleb128 0x1
	.long	0x11bd
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x5
	.long	.LASF371
	.byte	0x2b
	.value	0x3a9
	.byte	0xc
	.long	0xcb
	.long	0x2046
	.uleb128 0x1
	.long	0x1fa
	.uleb128 0x1
	.long	0x1179
	.byte	0
	.uleb128 0x5
	.long	.LASF372
	.byte	0x2b
	.value	0x362
	.byte	0x1e
	.long	0x1dbb
	.long	0x2062
	.uleb128 0x1
	.long	0x48
	.uleb128 0x1
	.long	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF373
	.byte	0x2b
	.byte	0x71
	.byte	0x24
	.long	0x48
	.long	0x2078
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x7
	.long	.LASF374
	.byte	0x2b
	.byte	0xc9
	.byte	0x16
	.long	0x48
	.long	0x2098
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x1fad
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x7
	.long	.LASF375
	.byte	0x2b
	.byte	0xce
	.byte	0x1f
	.long	0x1a05
	.long	0x20b8
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x1fad
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x7
	.long	.LASF376
	.byte	0x2b
	.byte	0x7c
	.byte	0xe
	.long	0x634
	.long	0x20d3
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x1fad
	.byte	0
	.uleb128 0x7
	.long	.LASF377
	.byte	0x2b
	.byte	0x7f
	.byte	0x14
	.long	0x4f
	.long	0x20ee
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x1fad
	.byte	0
	.uleb128 0x8
	.byte	0x10
	.byte	0x7
	.long	.LASF378
	.uleb128 0x18
	.long	.LASF379
	.byte	0xf
	.value	0x312
	.long	0x2107
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x7
	.long	.LASF380
	.byte	0xf
	.byte	0xb2
	.byte	0xc
	.long	0xcb
	.long	0x211d
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x5
	.long	.LASF381
	.byte	0xf
	.value	0x314
	.byte	0xc
	.long	0xcb
	.long	0x2134
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x5
	.long	.LASF382
	.byte	0xf
	.value	0x316
	.byte	0xc
	.long	0xcb
	.long	0x214b
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x7
	.long	.LASF383
	.byte	0xf
	.byte	0xe6
	.byte	0xc
	.long	0xcb
	.long	0x2161
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x5
	.long	.LASF384
	.byte	0xf
	.value	0x201
	.byte	0xc
	.long	0xcb
	.long	0x2178
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x5
	.long	.LASF385
	.byte	0xf
	.value	0x2f8
	.byte	0xc
	.long	0xcb
	.long	0x2194
	.uleb128 0x1
	.long	0x621
	.uleb128 0x1
	.long	0x2194
	.byte	0
	.uleb128 0x6
	.long	0x610
	.uleb128 0x5
	.long	.LASF386
	.byte	0xf
	.value	0x250
	.byte	0xe
	.long	0x1fa
	.long	0x21ba
	.uleb128 0x1
	.long	0x1fa
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x5
	.long	.LASF387
	.byte	0xf
	.value	0x102
	.byte	0xe
	.long	0x621
	.long	0x21d6
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x5
	.long	.LASF388
	.byte	0xf
	.value	0x2a3
	.byte	0xf
	.long	0x35
	.long	0x21fc
	.uleb128 0x1
	.long	0x274
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x5
	.long	.LASF389
	.byte	0xf
	.value	0x109
	.byte	0xe
	.long	0x621
	.long	0x221d
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x5
	.long	.LASF390
	.byte	0xf
	.value	0x2c9
	.byte	0xc
	.long	0xcb
	.long	0x223e
	.uleb128 0x1
	.long	0x621
	.uleb128 0x1
	.long	0x2e
	.uleb128 0x1
	.long	0xcb
	.byte	0
	.uleb128 0x5
	.long	.LASF391
	.byte	0xf
	.value	0x2fd
	.byte	0xc
	.long	0xcb
	.long	0x225a
	.uleb128 0x1
	.long	0x621
	.uleb128 0x1
	.long	0x225a
	.byte	0
	.uleb128 0x6
	.long	0x61c
	.uleb128 0x5
	.long	.LASF392
	.byte	0xf
	.value	0x2ce
	.byte	0x11
	.long	0x2e
	.long	0x2276
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x5
	.long	.LASF393
	.byte	0xf
	.value	0x202
	.byte	0xc
	.long	0xcb
	.long	0x228d
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x21
	.long	.LASF394
	.byte	0xf
	.value	0x208
	.byte	0xc
	.long	0xcb
	.uleb128 0x18
	.long	.LASF395
	.byte	0xf
	.value	0x324
	.long	0x22ac
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x7
	.long	.LASF396
	.byte	0xf
	.byte	0x98
	.byte	0xc
	.long	0xcb
	.long	0x22c2
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x7
	.long	.LASF397
	.byte	0xf
	.byte	0x9a
	.byte	0xc
	.long	0xcb
	.long	0x22dd
	.uleb128 0x1
	.long	0x204
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x18
	.long	.LASF398
	.byte	0xf
	.value	0x2d3
	.long	0x22ef
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x18
	.long	.LASF399
	.byte	0xf
	.value	0x148
	.long	0x2306
	.uleb128 0x1
	.long	0x621
	.uleb128 0x1
	.long	0x1fa
	.byte	0
	.uleb128 0x5
	.long	.LASF400
	.byte	0xf
	.value	0x14c
	.byte	0xc
	.long	0xcb
	.long	0x232c
	.uleb128 0x1
	.long	0x621
	.uleb128 0x1
	.long	0x1fa
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x29
	.long	.LASF401
	.byte	0xf
	.byte	0xbc
	.byte	0xe
	.long	0x621
	.uleb128 0x7
	.long	.LASF402
	.byte	0xf
	.byte	0xcd
	.byte	0xe
	.long	0x1fa
	.long	0x234e
	.uleb128 0x1
	.long	0x1fa
	.byte	0
	.uleb128 0x5
	.long	.LASF403
	.byte	0xf
	.value	0x29c
	.byte	0xc
	.long	0xcb
	.long	0x236a
	.uleb128 0x1
	.long	0xcb
	.uleb128 0x1
	.long	0x621
	.byte	0
	.uleb128 0x6
	.long	0x104a
	.uleb128 0xb
	.long	0x236a
	.uleb128 0x1a
	.long	0x10d5
	.uleb128 0x1a
	.long	0x104a
	.uleb128 0x4
	.long	.LASF404
	.byte	0x2c
	.byte	0x26
	.byte	0x1b
	.long	0x41
	.uleb128 0x4
	.long	.LASF405
	.byte	0x2d
	.byte	0x30
	.byte	0x1a
	.long	0x2396
	.uleb128 0x6
	.long	0x2ce
	.uleb128 0x7
	.long	.LASF406
	.byte	0x2c
	.byte	0x9f
	.byte	0xc
	.long	0xcb
	.long	0x23b6
	.uleb128 0x1
	.long	0x862
	.uleb128 0x1
	.long	0x237e
	.byte	0
	.uleb128 0x7
	.long	.LASF407
	.byte	0x2d
	.byte	0x37
	.byte	0xf
	.long	0x862
	.long	0x23d1
	.uleb128 0x1
	.long	0x862
	.uleb128 0x1
	.long	0x238a
	.byte	0
	.uleb128 0x7
	.long	.LASF408
	.byte	0x2d
	.byte	0x34
	.byte	0x12
	.long	0x238a
	.long	0x23e7
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x7
	.long	.LASF409
	.byte	0x2c
	.byte	0x9b
	.byte	0x11
	.long	0x237e
	.long	0x23fd
	.uleb128 0x1
	.long	0x204
	.byte	0
	.uleb128 0x4d
	.long	0x1113
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0x11
	.long	0x1ee
	.long	0x241c
	.uleb128 0x12
	.long	0x41
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.long	0x240c
	.uleb128 0xc
	.long	.LASF410
	.byte	0x2e
	.byte	0x3
	.byte	0xc
	.long	0x241c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12STD_LOG_NAME
	.uleb128 0xc
	.long	.LASF411
	.byte	0x2f
	.byte	0x3
	.byte	0xb
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6CRINGE
	.uleb128 0x4e
	.long	.LASF438
	.long	0x274
	.uleb128 0x2a
	.long	0x1072
	.long	.LASF412
	.long	0x2467
	.long	0x2471
	.uleb128 0x2b
	.long	.LASF414
	.long	0x236f
	.byte	0
	.uleb128 0x2a
	.long	0x1059
	.long	.LASF413
	.long	0x2482
	.long	0x248c
	.uleb128 0x2b
	.long	.LASF414
	.long	0x236f
	.byte	0
	.uleb128 0x27
	.long	.LASF416
	.long	0x24e8
	.uleb128 0x14
	.long	.LASF417
	.byte	0x30
	.byte	0x26
	.byte	0xe
	.long	.LASF418
	.long	0x24a9
	.long	0x24b5
	.uleb128 0x9
	.long	0x24e8
	.uleb128 0x1
	.long	0x204
	.uleb128 0x10
	.byte	0
	.uleb128 0x4f
	.string	"log"
	.byte	0x30
	.byte	0x24
	.byte	0xe
	.long	.LASF439
	.byte	0x1
	.long	0x24ca
	.long	0x24d6
	.uleb128 0x9
	.long	0x24e8
	.uleb128 0x1
	.long	0x204
	.uleb128 0x10
	.byte	0
	.uleb128 0x50
	.long	.LASF440
	.byte	0x30
	.byte	0x19
	.byte	0x18
	.long	.LASF441
	.long	0x24ed
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	0x248c
	.uleb128 0x1a
	.long	0x248c
	.uleb128 0x5
	.long	.LASF419
	.byte	0xf
	.value	0x164
	.byte	0xc
	.long	0xcb
	.long	0x250a
	.uleb128 0x1
	.long	0x204
	.uleb128 0x10
	.byte	0
	.uleb128 0x51
	.long	.LASF442
	.quad	.LFB2939
	.quad	.LFE2939-.LFB2939
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x52
	.long	.LASF443
	.quad	.LFB2938
	.quad	.LFE2938-.LFB2938
	.uleb128 0x1
	.byte	0x9c
	.long	0x2559
	.uleb128 0x16
	.long	.LASF420
	.byte	0x51
	.byte	0x5
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LASF421
	.byte	0x51
	.byte	0x5
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x53
	.long	.LASF422
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.long	.LASF423
	.quad	.LFB2271
	.quad	.LFE2271-.LFB2271
	.uleb128 0x1
	.byte	0x9c
	.long	0x25a6
	.uleb128 0x16
	.long	.LASF424
	.byte	0x2b
	.byte	0x23
	.long	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF425
	.byte	0x2b
	.byte	0x36
	.long	0x204
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF426
	.byte	0x2b
	.byte	0x49
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x54
	.long	.LASF427
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.long	.LASF428
	.quad	.LFB2270
	.quad	.LFE2270-.LFB2270
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF424
	.byte	0xa
	.byte	0x25
	.long	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF426
	.byte	0xa
	.byte	0x39
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 19
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 35
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x21
	.sleb128 21
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 33
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
.LASF357:
	.string	"getenv"
.LASF230:
	.string	"__isoc99_vwscanf"
.LASF307:
	.string	"uint_fast16_t"
.LASF2:
	.string	"long int"
.LASF191:
	.string	"__debug"
.LASF333:
	.string	"int_p_cs_precedes"
.LASF163:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EPv"
.LASF375:
	.string	"strtoull"
.LASF260:
	.string	"wcsxfrm"
.LASF160:
	.string	"_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv"
.LASF172:
	.string	"~exception_ptr"
.LASF355:
	.string	"atol"
.LASF116:
	.string	"INITIALIZATOR"
.LASF143:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS_STRUCT"
.LASF96:
	.string	"_shortbuf"
.LASF433:
	.string	"_IO_lock_t"
.LASF400:
	.string	"setvbuf"
.LASF25:
	.string	"t_constant"
.LASF37:
	.string	"gp_offset"
.LASF14:
	.string	"Label"
.LASF10:
	.string	"ret_type"
.LASF396:
	.string	"remove"
.LASF369:
	.string	"system"
.LASF245:
	.string	"tm_yday"
.LASF85:
	.string	"_IO_buf_end"
.LASF64:
	.string	"__off_t"
.LASF182:
	.string	"__cust_swap"
.LASF426:
	.string	"STRING_ARR"
.LASF383:
	.string	"fflush"
.LASF189:
	.string	"__cust"
.LASF123:
	.string	"CALL"
.LASF268:
	.string	"__isoc99_wscanf"
.LASF223:
	.string	"vfwscanf"
.LASF327:
	.string	"p_cs_precedes"
.LASF419:
	.string	"printf"
.LASF407:
	.string	"towctrans"
.LASF83:
	.string	"_IO_write_end"
.LASF6:
	.string	"unsigned int"
.LASF274:
	.string	"__gnu_cxx"
.LASF101:
	.string	"_freeres_list"
.LASF155:
	.string	"__exception_ptr"
.LASF435:
	.string	"_ZNKSt15__exception_ptr13exception_ptrcvbEv"
.LASF312:
	.string	"intmax_t"
.LASF309:
	.string	"uint_fast64_t"
.LASF303:
	.string	"int_fast16_t"
.LASF50:
	.string	"__int32_t"
.LASF197:
	.string	"_ZNSt8ios_base4InitD4Ev"
.LASF204:
	.string	"wchar_t"
.LASF175:
	.string	"_ZNSt15__exception_ptr13exception_ptr4swapERS0_"
.LASF118:
	.string	"OPERATOR"
.LASF441:
	.string	"_ZN6Logger11getInstanceEv"
.LASF63:
	.string	"__uintmax_t"
.LASF229:
	.string	"vwscanf"
.LASF93:
	.string	"_old_offset"
.LASF153:
	.string	"__swappable_details"
.LASF89:
	.string	"_markers"
.LASF241:
	.string	"tm_mday"
.LASF125:
	.string	"PARAMETR"
.LASF220:
	.string	"__isoc99_swscanf"
.LASF144:
	.string	"INITIALIZATORS"
.LASF55:
	.string	"__uint_least8_t"
.LASF180:
	.string	"nullptr_t"
.LASF275:
	.string	"__ops"
.LASF281:
	.string	"char8_t"
.LASF403:
	.string	"ungetc"
.LASF235:
	.string	"wcscpy"
.LASF68:
	.string	"__count"
.LASF232:
	.string	"wcscat"
.LASF314:
	.string	"lconv"
.LASF315:
	.string	"decimal_point"
.LASF149:
	.string	"MAX_FUNCTION_NAME_LENGTH"
.LASF330:
	.string	"n_sep_by_space"
.LASF174:
	.string	"swap"
.LASF73:
	.string	"__state"
.LASF77:
	.string	"_flags"
.LASF243:
	.string	"tm_year"
.LASF139:
	.string	"NATIVE_FUNCTIONS_NUM"
.LASF305:
	.string	"int_fast64_t"
.LASF285:
	.string	"__gnu_debug"
.LASF209:
	.string	"fwscanf"
.LASF374:
	.string	"strtoll"
.LASF299:
	.string	"uint_least16_t"
.LASF292:
	.string	"uint32_t"
.LASF286:
	.string	"int8_t"
.LASF328:
	.string	"p_sep_by_space"
.LASF212:
	.string	"mbrtowc"
.LASF378:
	.string	"__int128 unsigned"
.LASF361:
	.string	"mbtowc"
.LASF242:
	.string	"tm_mon"
.LASF26:
	.string	"t_initializator"
.LASF167:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EDn"
.LASF36:
	.string	"NOT_A_LABEL"
.LASF113:
	.string	"float"
.LASF94:
	.string	"_cur_column"
.LASF52:
	.string	"__int64_t"
.LASF385:
	.string	"fgetpos"
.LASF108:
	.string	"_IO_codecvt"
.LASF227:
	.string	"__isoc99_vswscanf"
.LASF130:
	.string	"EXPRESSION_OPENING_BRACKET"
.LASF154:
	.string	"__swappable_with_details"
.LASF287:
	.string	"int16_t"
.LASF437:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF404:
	.string	"wctype_t"
.LASF295:
	.string	"int_least16_t"
.LASF313:
	.string	"uintmax_t"
.LASF210:
	.string	"getwc"
.LASF141:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS"
.LASF29:
	.string	"t_name_ptr"
.LASF279:
	.string	"long long unsigned int"
.LASF56:
	.string	"__int_least16_t"
.LASF62:
	.string	"__intmax_t"
.LASF168:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EOS0_"
.LASF32:
	.string	"t_varible_number"
.LASF259:
	.string	"wcstoul"
.LASF338:
	.string	"int_n_sign_posn"
.LASF198:
	.string	"_ZNSt8ios_base4InitC4ERKS0_"
.LASF49:
	.string	"__uint16_t"
.LASF341:
	.string	"localeconv"
.LASF75:
	.string	"__FILE"
.LASF87:
	.string	"_IO_backup_base"
.LASF371:
	.string	"wctomb"
.LASF183:
	.string	"__cust_imove"
.LASF98:
	.string	"_offset"
.LASF262:
	.string	"wmemcmp"
.LASF231:
	.string	"wcrtomb"
.LASF301:
	.string	"uint_least64_t"
.LASF156:
	.string	"_M_exception_object"
.LASF372:
	.string	"lldiv"
.LASF373:
	.string	"atoll"
.LASF18:
	.string	"value"
.LASF226:
	.string	"vswscanf"
.LASF222:
	.string	"vfwprintf"
.LASF9:
	.string	"number_of_vars"
.LASF387:
	.string	"fopen"
.LASF331:
	.string	"p_sign_posn"
.LASF420:
	.string	"__initialize_p"
.LASF142:
	.string	"NATIVE_FUNCTIONS"
.LASF194:
	.string	"Init"
.LASF43:
	.string	"size_t"
.LASF366:
	.string	"strtod"
.LASF294:
	.string	"int_least8_t"
.LASF289:
	.string	"int64_t"
.LASF297:
	.string	"int_least64_t"
.LASF413:
	.string	"_ZNSt8ios_base4InitC1Ev"
.LASF215:
	.string	"putwc"
.LASF298:
	.string	"uint_least8_t"
.LASF80:
	.string	"_IO_read_base"
.LASF59:
	.string	"__uint_least32_t"
.LASF356:
	.string	"bsearch"
.LASF12:
	.string	"local_type"
.LASF88:
	.string	"_IO_save_end"
.LASF325:
	.string	"int_frac_digits"
.LASF112:
	.string	"__float128"
.LASF128:
	.string	"BLOCK_OPENING_BRACKET"
.LASF379:
	.string	"clearerr"
.LASF207:
	.string	"fwide"
.LASF335:
	.string	"int_n_cs_precedes"
.LASF406:
	.string	"iswctype"
.LASF324:
	.string	"negative_sign"
.LASF389:
	.string	"freopen"
.LASF121:
	.string	"CONSTANT"
.LASF69:
	.string	"__value"
.LASF205:
	.string	"fputwc"
.LASF187:
	.string	"__cmp_cat"
.LASF317:
	.string	"grouping"
.LASF267:
	.string	"wscanf"
.LASF114:
	.string	"STATEMENT"
.LASF127:
	.string	"SEPARATOR"
.LASF16:
	.string	"left_child"
.LASF185:
	.string	"__cust_access"
.LASF33:
	.string	"char"
.LASF104:
	.string	"_mode"
.LASF343:
	.string	"5div_t"
.LASF218:
	.string	"swscanf"
.LASF382:
	.string	"ferror"
.LASF107:
	.string	"_IO_marker"
.LASF364:
	.string	"qsort"
.LASF439:
	.string	"_ZN6Logger3logEPKcz"
.LASF81:
	.string	"_IO_write_base"
.LASF409:
	.string	"wctype"
.LASF27:
	.string	"t_native_function"
.LASF190:
	.string	"__cmp_alg"
.LASF53:
	.string	"__uint64_t"
.LASF362:
	.string	"quick_exit"
.LASF66:
	.string	"__wch"
.LASF290:
	.string	"uint8_t"
.LASF173:
	.string	"_ZNSt15__exception_ptr13exception_ptrD4Ev"
.LASF431:
	.string	"TokenValue"
.LASF344:
	.string	"quot"
.LASF45:
	.string	"signed char"
.LASF214:
	.string	"mbsrtowcs"
.LASF440:
	.string	"getInstance"
.LASF119:
	.string	"NAME"
.LASF397:
	.string	"rename"
.LASF72:
	.string	"__pos"
.LASF405:
	.string	"wctrans_t"
.LASF363:
	.string	"rand"
.LASF394:
	.string	"getchar"
.LASF161:
	.string	"exception_ptr"
.LASF256:
	.string	"wcstof"
.LASF254:
	.string	"wcsspn"
.LASF134:
	.string	"INSTRUCTIONS"
.LASF402:
	.string	"tmpnam"
.LASF421:
	.string	"__priority"
.LASF4:
	.string	"long long int"
.LASF395:
	.string	"perror"
.LASF418:
	.string	"_ZN6Logger13log_no_indentEPKcz"
.LASF146:
	.string	"OPERATORS"
.LASF148:
	.string	"MAIN_NAME"
.LASF58:
	.string	"__int_least32_t"
.LASF86:
	.string	"_IO_save_base"
.LASF28:
	.string	"t_function_ret_type"
.LASF322:
	.string	"mon_grouping"
.LASF278:
	.string	"wcstoull"
.LASF8:
	.string	"name_id"
.LASF196:
	.string	"_ZNSt8ios_base4InitC4Ev"
.LASF280:
	.string	"bool"
.LASF193:
	.string	"__cxx11"
.LASF165:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4Ev"
.LASF47:
	.string	"__int16_t"
.LASF217:
	.string	"swprintf"
.LASF422:
	.string	"LogToken"
.LASF202:
	.string	"fgetwc"
.LASF84:
	.string	"_IO_buf_base"
.LASF302:
	.string	"int_fast8_t"
.LASF390:
	.string	"fseek"
.LASF184:
	.string	"__cust_iswap"
.LASF399:
	.string	"setbuf"
.LASF358:
	.string	"ldiv"
.LASF115:
	.string	"INSTRUCTION"
.LASF203:
	.string	"fgetws"
.LASF169:
	.string	"operator="
.LASF162:
	.string	"_M_get"
.LASF102:
	.string	"_freeres_buf"
.LASF365:
	.string	"srand"
.LASF391:
	.string	"fsetpos"
.LASF308:
	.string	"uint_fast32_t"
.LASF288:
	.string	"int32_t"
.LASF111:
	.string	"__unknown__"
.LASF401:
	.string	"tmpfile"
.LASF392:
	.string	"ftell"
.LASF15:
	.string	"Token"
.LASF103:
	.string	"__pad5"
.LASF427:
	.string	"PrintToken"
.LASF221:
	.string	"ungetwc"
.LASF410:
	.string	"STD_LOG_NAME"
.LASF384:
	.string	"fgetc"
.LASF150:
	.string	"MAX_WORD_LENGTH"
.LASF135:
	.string	"NativeFunctionStruct"
.LASF95:
	.string	"_vtable_offset"
.LASF44:
	.string	"__int8_t"
.LASF126:
	.string	"ASSIGMENT"
.LASF386:
	.string	"fgets"
.LASF19:
	.string	"t_label_ptr"
.LASF70:
	.string	"__mbstate_t"
.LASF74:
	.string	"__fpos_t"
.LASF188:
	.string	"__cmp_cust"
.LASF5:
	.string	"long double"
.LASF310:
	.string	"intptr_t"
.LASF145:
	.string	"FUNCTION_RET_TYPES"
.LASF291:
	.string	"uint16_t"
.LASF424:
	.string	"token"
.LASF20:
	.string	"ptr_to_src_code"
.LASF234:
	.string	"wcscoll"
.LASF414:
	.string	"this"
.LASF206:
	.string	"fputws"
.LASF100:
	.string	"_wide_data"
.LASF443:
	.string	"__static_initialization_and_destruction_0"
.LASF415:
	.string	"ios_base"
.LASF60:
	.string	"__int_least64_t"
.LASF201:
	.string	"btowc"
.LASF228:
	.string	"vwprintf"
.LASF246:
	.string	"tm_isdst"
.LASF304:
	.string	"int_fast32_t"
.LASF178:
	.string	"rethrow_exception"
.LASF79:
	.string	"_IO_read_end"
.LASF417:
	.string	"log_no_indent"
.LASF411:
	.string	"CRINGE"
.LASF213:
	.string	"mbsinit"
.LASF273:
	.string	"wmemchr"
.LASF48:
	.string	"short int"
.LASF186:
	.string	"__detail"
.LASF429:
	.string	"GNU C++20 11.3.0 -mtune=generic -march=x86-64 -g -std=c++20 -fstrict-overflow -fstack-protector -fcheck-new -fsized-deallocation -fno-omit-frame-pointer -fPIE -fsanitize=address,leak -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF253:
	.string	"wcsrtombs"
.LASF318:
	.string	"int_curr_symbol"
.LASF131:
	.string	"EXPRESSION_CLOSING_BRACKET"
.LASF360:
	.string	"mbstowcs"
.LASF176:
	.string	"__cxa_exception_type"
.LASF320:
	.string	"mon_decimal_point"
.LASF326:
	.string	"frac_digits"
.LASF211:
	.string	"mbrlen"
.LASF110:
	.string	"fpos_t"
.LASF263:
	.string	"wmemcpy"
.LASF388:
	.string	"fread"
.LASF436:
	.string	"type_info"
.LASF332:
	.string	"n_sign_posn"
.LASF171:
	.string	"_ZNSt15__exception_ptr13exception_ptraSEOS0_"
.LASF342:
	.string	"11__mbstate_t"
.LASF351:
	.string	"atexit"
.LASF423:
	.string	"_Z8LogTokenPK5TokenPKcPS3_"
.LASF216:
	.string	"putwchar"
.LASF271:
	.string	"wcsrchr"
.LASF432:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF340:
	.string	"getwchar"
.LASF109:
	.string	"_IO_wide_data"
.LASF67:
	.string	"__wchb"
.LASF293:
	.string	"uint64_t"
.LASF336:
	.string	"int_n_sep_by_space"
.LASF380:
	.string	"fclose"
.LASF346:
	.string	"6ldiv_t"
.LASF296:
	.string	"int_least32_t"
.LASF11:
	.string	"var_number"
.LASF251:
	.string	"wcsncmp"
.LASF283:
	.string	"char32_t"
.LASF181:
	.string	"ranges"
.LASF24:
	.string	"t_operator"
.LASF348:
	.string	"7lldiv_t"
.LASF347:
	.string	"ldiv_t"
.LASF39:
	.string	"overflow_arg_area"
.LASF38:
	.string	"fp_offset"
.LASF46:
	.string	"__uint8_t"
.LASF237:
	.string	"wcsftime"
.LASF323:
	.string	"positive_sign"
.LASF272:
	.string	"wcsstr"
.LASF157:
	.string	"_M_addref"
.LASF425:
	.string	"name"
.LASF393:
	.string	"getc"
.LASF300:
	.string	"uint_least32_t"
.LASF434:
	.string	"operator bool"
.LASF177:
	.string	"_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv"
.LASF352:
	.string	"at_quick_exit"
.LASF71:
	.string	"_G_fpos_t"
.LASF264:
	.string	"wmemmove"
.LASF54:
	.string	"__int_least8_t"
.LASF311:
	.string	"uintptr_t"
.LASF57:
	.string	"__uint_least16_t"
.LASF266:
	.string	"wprintf"
.LASF97:
	.string	"_lock"
.LASF137:
	.string	"number_of_parametres"
.LASF368:
	.string	"strtoul"
.LASF3:
	.string	"long unsigned int"
.LASF195:
	.string	"~Init"
.LASF76:
	.string	"_IO_FILE"
.LASF30:
	.string	"t_name_id"
.LASF151:
	.string	"wint_t"
.LASF40:
	.string	"reg_save_area"
.LASF22:
	.string	"indent"
.LASF17:
	.string	"right_child"
.LASF192:
	.string	"numbers"
.LASF255:
	.string	"wcstod"
.LASF117:
	.string	"FUNCTION_RET_TYPE"
.LASF270:
	.string	"wcspbrk"
.LASF239:
	.string	"tm_min"
.LASF152:
	.string	"mbstate_t"
.LASF257:
	.string	"wcstok"
.LASF258:
	.string	"wcstol"
.LASF248:
	.string	"tm_zone"
.LASF416:
	.string	"Logger"
.LASF129:
	.string	"BLOCK_CLOSING_BRACKET"
.LASF284:
	.string	"__int128"
.LASF138:
	.string	"TokenType"
.LASF265:
	.string	"wmemset"
.LASF13:
	.string	"global_initialization"
.LASF147:
	.string	"COMMENT"
.LASF7:
	.string	"type"
.LASF428:
	.string	"_Z10PrintTokenPK5TokenPPKc"
.LASF345:
	.string	"div_t"
.LASF41:
	.string	"unsigned char"
.LASF51:
	.string	"__uint32_t"
.LASF136:
	.string	"function"
.LASF21:
	.string	"line"
.LASF179:
	.string	"_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE"
.LASF438:
	.string	"__dso_handle"
.LASF82:
	.string	"_IO_write_ptr"
.LASF316:
	.string	"thousands_sep"
.LASF158:
	.string	"_M_release"
.LASF430:
	.string	"decltype(nullptr)"
.LASF376:
	.string	"strtof"
.LASF306:
	.string	"uint_fast8_t"
.LASF381:
	.string	"feof"
.LASF370:
	.string	"wcstombs"
.LASF367:
	.string	"strtol"
.LASF208:
	.string	"fwprintf"
.LASF359:
	.string	"mblen"
.LASF61:
	.string	"__uint_least64_t"
.LASF350:
	.string	"__compar_fn_t"
.LASF276:
	.string	"wcstold"
.LASF261:
	.string	"wctob"
.LASF319:
	.string	"currency_symbol"
.LASF277:
	.string	"wcstoll"
.LASF99:
	.string	"_codecvt"
.LASF132:
	.string	"END_OF_STATEMENT"
.LASF244:
	.string	"tm_wday"
.LASF199:
	.string	"_ZNSt8ios_base4InitaSERKS0_"
.LASF166:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4ERKS0_"
.LASF339:
	.string	"setlocale"
.LASF91:
	.string	"_fileno"
.LASF377:
	.string	"strtold"
.LASF219:
	.string	"__isoc99_fwscanf"
.LASF398:
	.string	"rewind"
.LASF240:
	.string	"tm_hour"
.LASF31:
	.string	"t_number_of_variables"
.LASF122:
	.string	"FUNCTION"
.LASF321:
	.string	"mon_thousands_sep"
.LASF23:
	.string	"t_instruction"
.LASF42:
	.string	"short unsigned int"
.LASF238:
	.string	"tm_sec"
.LASF349:
	.string	"lldiv_t"
.LASF353:
	.string	"atof"
.LASF236:
	.string	"wcscspn"
.LASF412:
	.string	"_ZNSt8ios_base4InitD1Ev"
.LASF354:
	.string	"atoi"
.LASF329:
	.string	"n_cs_precedes"
.LASF164:
	.string	"_ZNKSt15__exception_ptr13exception_ptr6_M_getEv"
.LASF170:
	.string	"_ZNSt15__exception_ptr13exception_ptraSERKS0_"
.LASF78:
	.string	"_IO_read_ptr"
.LASF252:
	.string	"wcsncpy"
.LASF120:
	.string	"VARIABLE"
.LASF334:
	.string	"int_p_sep_by_space"
.LASF34:
	.string	"double"
.LASF233:
	.string	"wcscmp"
.LASF250:
	.string	"wcsncat"
.LASF140:
	.string	"FOUT"
.LASF247:
	.string	"tm_gmtoff"
.LASF90:
	.string	"_chain"
.LASF269:
	.string	"wcschr"
.LASF282:
	.string	"char16_t"
.LASF159:
	.string	"_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv"
.LASF106:
	.string	"FILE"
.LASF408:
	.string	"wctrans"
.LASF225:
	.string	"vswprintf"
.LASF35:
	.string	"NOT_DECLARED"
.LASF92:
	.string	"_flags2"
.LASF124:
	.string	"NATIVE_FUNCTION"
.LASF442:
	.string	"_GLOBAL__sub_I__Z10PrintTokenPK5TokenPPKc"
.LASF133:
	.string	"UNKNOWN_TYPE"
.LASF337:
	.string	"int_p_sign_posn"
.LASF249:
	.string	"wcslen"
.LASF65:
	.string	"__off64_t"
.LASF200:
	.string	"__ioinit"
.LASF105:
	.string	"_unused2"
.LASF224:
	.string	"__isoc99_vfwscanf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd"
.LASF0:
	.string	"../Common/Utils/LangUtils.cpp"
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
