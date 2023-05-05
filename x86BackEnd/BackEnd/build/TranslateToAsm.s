	.file	"TranslateToAsm.cpp"
	.text
.Ltext0:
	.file 0 "/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd" "./src/TranslateToAsm.cpp"
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
	.type	_ZL17START_RAM_ADDRESS, @object
	.size	_ZL17START_RAM_ADDRESS, 4
_ZL17START_RAM_ADDRESS:
	.zero	4
	.zero	60
	.align 32
	.type	_ZL33START_RAM_ADDRESS_FOR_GLOBAL_VARS, @object
	.size	_ZL33START_RAM_ADDRESS_FOR_GLOBAL_VARS, 4
_ZL33START_RAM_ADDRESS_FOR_GLOBAL_VARS:
	.zero	4
	.zero	60
	.align 32
	.type	_ZL21VARIABLES_ADDRESS_REG, @object
	.size	_ZL21VARIABLES_ADDRESS_REG, 4
_ZL21VARIABLES_ADDRESS_REG:
	.long	2
	.zero	60
	.align 32
	.type	_ZL16RETURN_VALUE_REG, @object
	.size	_ZL16RETURN_VALUE_REG, 4
_ZL16RETURN_VALUE_REG:
	.long	3
	.zero	60
	.align 32
	.type	_ZL18SOFT_CPU_PRECISION, @object
	.size	_ZL18SOFT_CPU_PRECISION, 4
_ZL18SOFT_CPU_PRECISION:
	.long	100
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
	.bss
	.align 32
	.type	_ZL8ASM_FILE, @object
	.size	_ZL8ASM_FILE, 8
_ZL8ASM_FILE:
	.zero	64
	.globl	STACK_FRAME_OFFSET
	.align 32
	.type	STACK_FRAME_OFFSET, @object
	.size	STACK_FRAME_OFFSET, 4
STACK_FRAME_OFFSET:
	.zero	64
	.globl	__asan_stack_malloc_1
	.section	.rodata
.LC14:
	.string	"1 32 24 6 ptr:39"
	.text
	.type	_ZL8assprintPKcz, @function
_ZL8assprintPKcz:
.LASANPC2865:
.LFB2865:
	.file 1 "./src/../src/TranslatorUtils_.ars"
	.loc 1 38 5
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
	leaq	.LC14(%rip), %rdx
	movq	%rdx, 8(%rbx)
	leaq	.LASANPC2865(%rip), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 1 40 22
	movl	$8, -64(%rax)
	movl	$48, -60(%rax)
	leaq	16(%rbp), %rsi
	movq	%rsi, -56(%rax)
	leaq	-208(%rbp), %rcx
	movq	%rcx, -48(%rax)
	.loc 1 42 14
	movq	_ZL8ASM_FILE(%rip), %rcx
	leaq	-64(%rax), %rdx
	movq	-312(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	vfprintf@PLT
	.loc 1 46 5
	nop
	.loc 1 38 5
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
	.loc 1 47 5
	addq	$296, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2865:
	.size	_ZL8assprintPKcz, .-_ZL8assprintPKcz
	.section	.rodata
.LC15:
	.string	"1 32 24 10 func_21:21"
	.align 32
.LC16:
	.string	"VarInitialization"
	.zero	46
	.align 32
.LC17:
	.string	"token"
	.zero	58
	.align 32
.LC18:
	.string	"ctx"
	.zero	60
	.align 32
.LC19:
	.string	"ASSERTLOG:: Condition (%s) is false\n"
	.zero	59
	.align 32
.LC20:
	.string	"\033[93mASSERTLOG:: \033[0mCondition\033[95m (%s) \033[0mis \033[91mfalse\n\033[0m"
	.zero	32
	.align 32
.LC21:
	.string	"int VarInitialization(AsmCtx*, const Token*, int)"
	.zero	46
	.align 32
.LC22:
	.string	"./src/../src/Handlers_.ars"
	.zero	37
	.align 32
.LC23:
	.string	"\t%s:%d, function: %s\n"
	.zero	42
	.align 32
.LC24:
	.string	"It matches to error: (code %d) %s\n\n"
	.zero	60
	.align 32
.LC25:
	.string	"Shutting down the system (%s:%d)"
	.zero	63
	.align 32
.LC26:
	.string	"echo LOX\n"
	.zero	54
	.align 32
.LC27:
	.string	"\033[91mReport translator ERORR\n\033[93m"
	.zero	61
	.align 32
.LC28:
	.string	"Translator ERROR\n"
	.zero	46
	.align 32
.LC29:
	.string	""
	.zero	63
	.align 32
.LC30:
	.string	"Not a initializator token\n"
	.zero	37
	.align 32
.LC31:
	.string	"In: \033[95m"
	.zero	54
	.align 32
.LC32:
	.string	"\033[0m"
	.zero	59
	.align 32
.LC33:
	.string	"%s:%d\n"
	.zero	57
	.align 32
.LC34:
	.string	"Failed (%s:%d, %s:%d)"
	.zero	42
	.align 32
.LC35:
	.string	"NAME"
	.zero	59
	.align 32
.LC36:
	.string	"Not a %s type\n"
	.zero	49
	.align 32
.LC37:
	.string	"Label has different name id (label '%s', name '%s')\n"
	.zero	43
	.align 32
.LC38:
	.string	"; '%s' - local var init\n"
	.zero	39
	.align 32
.LC39:
	.string	"NOT A GLOBAL VARIABLE\n"
	.zero	41
	.align 32
.LC40:
	.string	"; '%s' - global var init\n"
	.zero	38
	.align 32
.LC41:
	.string	"\033[95mYou shouldn't be able to reach this place %s:%d (%s::%d)\n\033[0m"
	.zero	61
	.align 32
.LC42:
	.string	"You shouldn't be able to reach this place %s:%d (%s::%d)\n"
	.zero	38
	.text
	.type	_ZL17VarInitializationP6AsmCtxPK5Tokeni, @function
_ZL17VarInitializationP6AsmCtxPK5Tokeni:
.LASANPC2866:
.LFB2866:
	.file 2 "./src/../src/Handlers_.ars"
	.loc 2 20 5
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
	subq	$152, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	%edx, -180(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L7
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L7
	movq	%rax, %rbx
.L7:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC15(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2866(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r13
	shrq	$3, %r13
	movl	$-235802127, 2147450880(%r13)
	movl	$-218103808, 2147450884(%r13)
	movl	$-202116109, 2147450888(%r13)
	.loc 2 21 40
	leaq	-64(%r14), %rax
	leaq	.LC16(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE0:
	.loc 2 22 40
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L11
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L11:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 22 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L12
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L12:
	movq	24(%rax), %rdx
	.loc 2 22 13
	movq	-176(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 24 10
	cmpq	$0, -168(%rbp)
	jne	.L13
	.loc 2 24 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 24 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 24 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 24 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 24 255 discriminator 4
	leaq	.LC21(%rip), %r8
	movl	$24, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 24 345 discriminator 6
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 24 448 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r12
	.loc 2 24 454 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 24 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 24 33 discriminator 9
	movl	$24, %ecx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 24 91 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 24 114 discriminator 12
	movl	$-2, %r12d
	jmp	.L14
.L13:
	.loc 2 25 10
	cmpq	$0, -176(%rbp)
	jne	.L15
	.loc 2 25 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 25 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 25 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 25 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 25 261 discriminator 4
	leaq	.LC21(%rip), %r8
	movl	$25, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 25 351 discriminator 6
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 25 454 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r12
	.loc 2 25 460 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 25 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 25 33 discriminator 9
	movl	$25, %ecx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 25 91 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 25 114 discriminator 12
	movl	$-2, %r12d
	jmp	.L14
.L15:
	.loc 2 28 16
	movq	-176(%rbp), %rax
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
	je	.L16
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L16:
	movq	-176(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 28 5
	cmpl	$3, %eax
	je	.L17
	.loc 2 30 20
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 30 92 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 30 98 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 30 142 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 30 148 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 30 174 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 30 192 discriminator 5
	leaq	.LC30(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 30 232 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 30 259 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 30 283 discriminator 9
	movl	$30, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 30 340 discriminator 10
	movq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 31 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 31 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 31 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 31 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$31
	leaq	.LC16(%rip), %r9
	movl	$31, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 31 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 31 152 is_stmt 1 discriminator 2
	jmp	.L14
.L17:
	.loc 2 34 12
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L18
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L18:
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	.loc 2 35 24
	movq	-160(%rbp), %rax
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
	je	.L19
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L19:
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 35 10
	cmpl	$6, %eax
	je	.L20
	.loc 2 35 51 discriminator 1
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 2 35 123 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 35 129 discriminator 2
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 35 173 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 35 179 discriminator 4
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 35 205 discriminator 6
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 35 223 discriminator 6
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 35 259 discriminator 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 35 286 discriminator 9
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 35 310 discriminator 10
	movl	$35, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 35 367 discriminator 11
	movq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 35 414 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 35 436 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 35 436 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 2 35 449 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$35
	leaq	.LC16(%rip), %r9
	movl	$35, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 35 449 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 35 531 is_stmt 1 discriminator 14
	jmp	.L14
.L20:
	.loc 2 37 12
	movq	-160(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L21
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L21:
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -152(%rbp)
	.loc 2 39 25
	movq	-160(%rbp), %rax
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
	je	.L22
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L22:
	movq	-160(%rbp), %rax
	movl	24(%rax), %ecx
	.loc 2 39 45
	movq	-152(%rbp), %rax
	addq	$4, %rax
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
	je	.L23
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L23:
	movq	-152(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 39 5
	cmpl	%eax, %ecx
	je	.L24
	.loc 2 41 20
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 2 41 92 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 41 98 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 41 142 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 41 148 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 41 174 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 41 308 discriminator 5
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L25
	.loc 2 41 308 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L25:
	.loc 2 41 308 discriminator 6
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 41 318 is_stmt 1 discriminator 6
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L26
	.loc 2 41 318 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L26:
	.loc 2 41 318 discriminator 6
	movq	24(%rax), %rcx
	.loc 2 41 346 is_stmt 1 discriminator 6
	movq	-160(%rbp), %rax
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
	je	.L27
	.loc 2 41 346 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L27:
	.loc 2 41 346 discriminator 6
	movq	-160(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 41 355 is_stmt 1 discriminator 6
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 41 192 discriminator 6
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L28
	.loc 2 41 192 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L28:
	.loc 2 41 192 discriminator 6
	movq	(%rax), %rcx
	.loc 2 41 260 is_stmt 1 discriminator 6
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 41 270 discriminator 6
	leaq	24(%rax), %rdx
	movq	%rdx, %rsi
	shrq	$3, %rsi
	addq	$2147450880, %rsi
	movzbl	(%rsi), %esi
	testb	%sil, %sil
	je	.L29
	.loc 2 41 270 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L29:
	.loc 2 41 270 discriminator 6
	movq	24(%rax), %r8
	.loc 2 41 289 is_stmt 1 discriminator 6
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%r9b
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%r9d, %edx
	testb	%dl, %dl
	je	.L30
	.loc 2 41 289 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L30:
	.loc 2 41 289 discriminator 6
	movq	-152(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	.loc 2 41 296 is_stmt 1 discriminator 6
	salq	$3, %rax
	addq	%r8, %rax
	.loc 2 41 192 discriminator 6
	movq	%rax, %rdx
	movq	%rdx, %rsi
	shrq	$3, %rsi
	addq	$2147450880, %rsi
	movzbl	(%rsi), %esi
	testb	%sil, %sil
	je	.L31
	.loc 2 41 192 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L31:
	.loc 2 41 192 discriminator 6
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 41 365 is_stmt 1 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 41 392 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 41 416 discriminator 9
	movl	$41, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 41 473 discriminator 10
	movq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 42 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 42 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 42 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 42 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$42
	leaq	.LC16(%rip), %r9
	movl	$42, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 42 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 42 152 is_stmt 1 discriminator 2
	jmp	.L14
.L24:
	.loc 2 45 5
	cmpl	$0, -180(%rbp)
	jne	.L32
	.loc 2 47 20
	movq	-152(%rbp), %rax
	addq	$20, %rax
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
	je	.L33
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L33:
	movq	-152(%rbp), %rax
	movl	20(%rax), %eax
	.loc 2 47 9
	testl	%eax, %eax
	jne	.L34
	.loc 2 49 42
	movq	-152(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L35
	movq	%rax, %rdi
	call	__asan_report_store8@PLT
.L35:
	movq	-152(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 2 51 22
	movq	-168(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L36
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L36:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_escape 0x2e,0
	call	_Z9CopyLabelP5LabelP9NameTable@PLT
	.loc 2 52 18
	movq	-168(%rbp), %rax
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
	je	.L37
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L37:
	movq	-168(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 52 39
	leal	1(%rax), %edx
	movq	-168(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 2 54 20
	movl	$0, %r12d
	jmp	.L14
.L34:
	.loc 2 57 56
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L38
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L38:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 57 66
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L39
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L39:
	movq	24(%rax), %rsi
	.loc 2 57 85
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L40
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L40:
	movq	-152(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	.loc 2 57 92
	salq	$3, %rax
	addq	%rsi, %rax
	.loc 2 57 17
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L41
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L41:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 59 20
	movq	-176(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L42
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L42:
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 59 9
	testq	%rax, %rax
	je	.L43
	.loc 2 60 36
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL16AssigmentHandlerP6AsmCtxPK5Token
	movl	%eax, %r12d
	.loc 2 60 47
	jmp	.L14
.L43:
	.loc 2 62 16
	movl	$0, %r12d
	jmp	.L14
.L32:
	.loc 2 68 5
	cmpl	$1, -180(%rbp)
	jne	.L44
	.loc 2 70 20
	movq	-152(%rbp), %rax
	addq	$20, %rax
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
	je	.L45
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L45:
	movq	-152(%rbp), %rax
	movl	20(%rax), %eax
	.loc 2 70 9
	cmpl	$1, %eax
	jne	.L46
	.loc 2 72 24
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 72 96 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 72 102 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 72 146 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 72 152 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 72 178 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 72 196 discriminator 5
	leaq	.LC39(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 72 232 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 72 259 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 72 283 discriminator 9
	movl	$72, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 72 340 discriminator 10
	movq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 73 39
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 73 61
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 73 61 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 73 74 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$73
	leaq	.LC16(%rip), %r9
	movl	$73, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 73 74 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 73 156 is_stmt 1 discriminator 2
	jmp	.L14
.L46:
	.loc 2 76 57
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L47
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L47:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 76 67
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L48
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L48:
	movq	24(%rax), %rsi
	.loc 2 76 86
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L49
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L49:
	movq	-152(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	.loc 2 76 93
	salq	$3, %rax
	addq	%rsi, %rax
	.loc 2 76 17
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L50
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L50:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
	.loc 2 78 20
	movq	-176(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L51
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L51:
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 78 9
	testq	%rax, %rax
	je	.L52
	.loc 2 79 37
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL16AssigmentHandlerP6AsmCtxPK5Token
	movl	%eax, %r12d
	.loc 2 79 48
	jmp	.L14
.L52:
	.loc 2 81 16
	movl	$0, %r12d
	jmp	.L14
.L44:
	.loc 2 87 11
	movl	$87, %r8d
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	movl	$87, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 87 164 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 87 170 discriminator 1
	movl	$87, %r9d
	leaq	.LC16(%rip), %r8
	movl	$87, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC42(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 88 31
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 88 53
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 88 53 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 88 66 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$88
	leaq	.LC16(%rip), %r9
	movl	$88, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
.LEHE1:
	.loc 2 88 66 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 88 148 is_stmt 1 discriminator 2
	nop
.L14:
	.loc 2 89 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r12d, %edx
	.loc 2 20 5
	cmpq	%rbx, %r15
	je	.L8
	jmp	.L56
.L55:
	endbr64
	.loc 2 89 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L56:
	.loc 2 20 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r13)
	movl	$-168430091, 2147450888(%r13)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L9
.L8:
	movq	$0, 2147450880(%r13)
	movl	$0, 2147450888(%r13)
.L9:
	.loc 2 89 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
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
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2866:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2866-.LLSDACSB2866
.LLSDACSB2866:
	.uleb128 .LEHB0-.LFB2866
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2866
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L55-.LFB2866
	.uleb128 0
	.uleb128 .LEHB2-.LFB2866
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2866:
	.text
	.size	_ZL17VarInitializationP6AsmCtxPK5Tokeni, .-_ZL17VarInitializationP6AsmCtxPK5Tokeni
	.section	.rodata
.LC43:
	.string	"1 32 24 10 func_93:93"
	.align 32
.LC44:
	.string	"AssigmentHandler"
	.zero	47
	.align 32
.LC45:
	.string	"int AssigmentHandler(AsmCtx*, const Token*)"
	.zero	52
	.align 32
.LC46:
	.string	"Wrong token type for assigment\n"
	.zero	32
	.align 32
.LC47:
	.string	"; assigment\n"
	.zero	51
	.align 32
.LC48:
	.string	"%s:%d::CHECK: ExpressionHandler(ctx, RIGHT(token)) == SUCCESS is false\n"
	.zero	56
	.align 32
.LC49:
	.string	"pop "
	.zero	59
	.align 32
.LC50:
	.string	"%s:%d::CHECK: NameHandler(ctx, LEFT(token)) == SUCCESS is false\n"
	.zero	63
	.align 32
.LC51:
	.string	"\n"
	.zero	62
	.text
	.type	_ZL16AssigmentHandlerP6AsmCtxPK5Token, @function
_ZL16AssigmentHandlerP6AsmCtxPK5Token:
.LASANPC2867:
.LFB2867:
	.loc 2 92 5
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
	subq	$120, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L57
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L57
	movq	%rax, %rbx
.L57:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC43(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2867(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 2 93 40
	leaq	-64(%r14), %rax
	leaq	.LC44(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE3:
	.loc 2 94 40
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L61
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L61:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 94 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L62
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L62:
	movq	24(%rax), %rdx
	.loc 2 94 13
	movq	-160(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB4:
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 96 10
	cmpq	$0, -152(%rbp)
	jne	.L63
	.loc 2 96 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 96 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 96 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 96 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 96 255 discriminator 4
	leaq	.LC45(%rip), %r8
	movl	$96, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 96 345 discriminator 6
	leaq	.LC45(%rip), %rax
	movq	%rax, %rcx
	movl	$96, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 96 448 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 96 454 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 96 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 96 33 discriminator 9
	movl	$96, %ecx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 96 91 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 96 114 discriminator 12
	movl	$-2, %r13d
	jmp	.L64
.L63:
	.loc 2 97 10
	cmpq	$0, -160(%rbp)
	jne	.L65
	.loc 2 97 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 97 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 97 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 97 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 97 261 discriminator 4
	leaq	.LC45(%rip), %r8
	movl	$97, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 97 351 discriminator 6
	leaq	.LC45(%rip), %rax
	movq	%rax, %rcx
	movl	$97, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 97 454 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 97 460 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 97 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 97 33 discriminator 9
	movl	$97, %ecx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 97 91 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 97 114 discriminator 12
	movl	$-2, %r13d
	jmp	.L64
.L65:
	.loc 2 99 16
	movq	-160(%rbp), %rax
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
	je	.L66
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L66:
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 99 5
	cmpl	$61, %eax
	je	.L67
	.loc 2 99 44 discriminator 1
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 99 34 discriminator 1
	cmpl	$3, %eax
	je	.L67
	.loc 2 101 20
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 101 92 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 101 98 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 101 142 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 101 148 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 101 174 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 101 192 discriminator 5
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 101 237 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 101 264 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 101 288 discriminator 9
	movl	$101, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 101 346 discriminator 10
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 102 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 102 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 102 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 102 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$102
	leaq	.LC44(%rip), %r9
	movl	$102, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 102 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 102 154 is_stmt 1 discriminator 2
	jmp	.L64
.L67:
	.loc 2 105 13
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
	.loc 2 107 45
	movq	-160(%rbp), %rax
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
	movq	-160(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 107 32
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL17ExpressionHandlerP6AsmCtxPK5Token
	.loc 2 107 58
	testl	%eax, %eax
	setne	%al
	.loc 2 107 10
	testb	%al, %al
	je	.L69
	.loc 2 107 91 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 107 97 discriminator 2
	movl	$107, %ecx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC48(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 107 204 discriminator 4
	movl	$-1, %r13d
	jmp	.L64
.L69:
	.loc 2 109 13
	leaq	.LC49(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 111 39
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L70
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L70:
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 111 26
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL11NameHandlerP6AsmCtxPK5Token
	.loc 2 111 51
	testl	%eax, %eax
	setne	%al
	.loc 2 111 10
	testb	%al, %al
	je	.L71
	.loc 2 111 84 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 111 90 discriminator 2
	movl	$111, %ecx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC50(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 111 209 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 111 231 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 111 231 is_stmt 0 discriminator 5
	movq	%rax, %rdi
	.loc 2 111 244 is_stmt 1 discriminator 5
	subq	$8, %rsp
	pushq	$111
	leaq	.LC44(%rip), %r9
	movl	$111, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 111 244 is_stmt 0 discriminator 6
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 111 328 is_stmt 1 discriminator 6
	jmp	.L64
.L71:
	.loc 2 113 13
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
.LEHE4:
	.loc 2 115 12
	movl	$0, %r13d
.L64:
	.loc 2 116 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r13d, %edx
	.loc 2 92 5
	cmpq	%rbx, %r15
	je	.L58
	jmp	.L75
.L74:
	endbr64
	.loc 2 116 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L75:
	.loc 2 92 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L59
.L58:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L59:
	.loc 2 116 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
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
	.uleb128 .LEHB3-.LFB2867
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2867
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L74-.LFB2867
	.uleb128 0
	.uleb128 .LEHB5-.LFB2867
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2867:
	.text
	.size	_ZL16AssigmentHandlerP6AsmCtxPK5Token, .-_ZL16AssigmentHandlerP6AsmCtxPK5Token
	.section	.rodata
.LC52:
	.string	"1 32 24 12 func_120:120"
	.align 32
.LC53:
	.string	"ExpressionHandler"
	.zero	46
	.align 32
.LC54:
	.string	"int ExpressionHandler(AsmCtx*, const Token*)"
	.zero	51
	.align 32
.LC55:
	.string	"push "
	.zero	58
	.align 32
.LC56:
	.string	"%s:%d::CHECK: CallHandler(ctx, token) == SUCCESS is false\n"
	.zero	37
	.align 32
.LC57:
	.string	";AAAAAAAAAAAAAAAAA\n"
	.zero	44
	.align 32
.LC58:
	.string	"push r%cx\n"
	.zero	53
	.align 32
.LC59:
	.string	"Fin and Fout can't in expression\n"
	.zero	62
	.align 32
.LC60:
	.string	"%s:%d::CHECK: NativeFunctionHandler(ctx, token) == SUCCESS is false\n"
	.zero	59
	.align 32
.LC61:
	.string	"Wrong type\n"
	.zero	52
	.text
	.type	_ZL17ExpressionHandlerP6AsmCtxPK5Token, @function
_ZL17ExpressionHandlerP6AsmCtxPK5Token:
.LASANPC2868:
.LFB2868:
	.loc 2 119 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2868
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
	subq	$120, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L76
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L76
	movq	%rax, %rbx
.L76:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC52(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2868(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r13
	shrq	$3, %r13
	movl	$-235802127, 2147450880(%r13)
	movl	$-218103808, 2147450884(%r13)
	movl	$-202116109, 2147450888(%r13)
	.loc 2 120 41
	leaq	-64(%r14), %rax
	leaq	.LC53(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB6:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE6:
	.loc 2 122 10
	cmpq	$0, -152(%rbp)
	jne	.L80
.LEHB7:
	.loc 2 122 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 122 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 122 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 122 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 122 255 discriminator 4
	leaq	.LC54(%rip), %r8
	movl	$122, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 122 346 discriminator 6
	leaq	.LC54(%rip), %rax
	movq	%rax, %rcx
	movl	$122, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 122 450 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r12
	.loc 2 122 456 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 122 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 122 33 discriminator 9
	movl	$122, %ecx
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 122 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 122 115 discriminator 12
	movl	$-2, %r12d
	jmp	.L81
.L80:
	.loc 2 123 10
	cmpq	$0, -160(%rbp)
	jne	.L82
	.loc 2 123 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 123 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 123 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 123 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 123 261 discriminator 4
	leaq	.LC54(%rip), %r8
	movl	$123, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 123 352 discriminator 6
	leaq	.LC54(%rip), %rax
	movq	%rax, %rcx
	movl	$123, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 123 456 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r12
	.loc 2 123 462 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 123 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 123 33 discriminator 9
	movl	$123, %ecx
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 123 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 123 115 discriminator 12
	movl	$-2, %r12d
	jmp	.L81
.L82:
	.loc 2 125 40
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L83
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L83:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 125 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L84
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L84:
	movq	24(%rax), %rdx
	.loc 2 125 13
	movq	-160(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 127 20
	movq	-160(%rbp), %rax
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
	je	.L85
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L85:
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 127 5
	subl	$5, %eax
	cmpl	$6, %eax
	ja	.L86
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L88(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L88(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L88:
	.long	.L92-.L88
	.long	.L91-.L88
	.long	.L86-.L88
	.long	.L90-.L88
	.long	.L86-.L88
	.long	.L89-.L88
	.long	.L87-.L88
	.text
.L90:
	.loc 2 130 39
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL15ConstantHandlerP6AsmCtxPK5Token
	movl	%eax, %r12d
	.loc 2 130 50
	jmp	.L81
.L91:
	.loc 2 133 25
	leaq	.LC55(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 134 35
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL11NameHandlerP6AsmCtxPK5Token
	movl	%eax, %r12d
	.loc 2 134 46
	jmp	.L81
.L89:
	.loc 2 137 38
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL11CallHandlerP6AsmCtxPK5Token
	.loc 2 137 51
	testl	%eax, %eax
	setne	%al
	.loc 2 137 22
	testb	%al, %al
	je	.L93
	.loc 2 137 84 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 137 90 discriminator 2
	movl	$137, %ecx
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC56(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 137 203 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 137 225 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 137 225 is_stmt 0 discriminator 5
	movq	%rax, %rdi
	.loc 2 137 238 is_stmt 1 discriminator 5
	subq	$8, %rsp
	pushq	$137
	leaq	.LC53(%rip), %r9
	movl	$137, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 137 238 is_stmt 0 discriminator 6
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 137 322 is_stmt 1 discriminator 6
	jmp	.L81
.L93:
	.loc 2 139 25
	leaq	.LC57(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
	.loc 2 140 25
	movl	$99, %esi
	leaq	.LC58(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 142 24
	movl	$0, %r12d
	jmp	.L81
.L92:
	.loc 2 145 45
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL21MathOperationsHandlerP6AsmCtxPK5Token
	movl	%eax, %r12d
	.loc 2 145 56
	jmp	.L81
.L87:
	.loc 2 148 34
	movq	-160(%rbp), %rax
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
	je	.L94
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L94:
	movq	-160(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 148 17
	cmpl	$1, %eax
	je	.L95
	.loc 2 148 75 discriminator 1
	movq	-160(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 148 59 discriminator 1
	testl	%eax, %eax
	jne	.L96
.L95:
	.loc 2 150 32
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 150 104 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 150 110 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 150 154 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 150 160 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 150 186 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 150 204 discriminator 5
	leaq	.LC59(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 150 251 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 150 278 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 150 302 discriminator 9
	movl	$150, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 150 360 discriminator 10
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 151 47
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 151 69
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 151 69 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 151 82 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$151
	leaq	.LC53(%rip), %r9
	movl	$151, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 151 82 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 151 166 is_stmt 1 discriminator 2
	jmp	.L81
.L96:
	.loc 2 154 48
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_escape 0x2e,0
	call	_ZL21NativeFunctionHandlerP6AsmCtxPK5Token
	.loc 2 154 61
	testl	%eax, %eax
	setne	%al
	.loc 2 154 22
	testb	%al, %al
	je	.L97
	.loc 2 154 94 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 154 100 discriminator 2
	movl	$154, %ecx
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC60(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 154 223 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 154 245 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 154 245 is_stmt 0 discriminator 5
	movq	%rax, %rdi
	.loc 2 154 258 is_stmt 1 discriminator 5
	subq	$8, %rsp
	pushq	$154
	leaq	.LC53(%rip), %r9
	movl	$154, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 154 258 is_stmt 0 discriminator 6
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 154 342 is_stmt 1 discriminator 6
	jmp	.L81
.L97:
	.loc 2 156 24
	movl	$0, %r12d
	jmp	.L81
.L86:
	.loc 2 160 28
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 2 160 100 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 160 106 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 160 150 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 160 156 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 160 182 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 160 200 discriminator 5
	leaq	.LC61(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 160 225 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 160 252 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 160 276 discriminator 9
	movl	$160, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 160 334 discriminator 10
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 162 43
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 162 65
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 162 65 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 162 78 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$162
	leaq	.LC53(%rip), %r9
	movl	$162, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
.LEHE7:
	.loc 2 162 78 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 162 162 is_stmt 1 discriminator 2
	nop
.L81:
	.loc 2 168 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r12d, %edx
	.loc 2 119 5
	cmpq	%rbx, %r15
	je	.L77
	jmp	.L101
.L100:
	endbr64
	.loc 2 168 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L101:
	.loc 2 119 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r13)
	movl	$-168430091, 2147450888(%r13)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L78
.L77:
	movq	$0, 2147450880(%r13)
	movl	$0, 2147450888(%r13)
.L78:
	.loc 2 168 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2868:
	.section	.gcc_except_table
.LLSDA2868:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2868-.LLSDACSB2868
.LLSDACSB2868:
	.uleb128 .LEHB6-.LFB2868
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2868
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L100-.LFB2868
	.uleb128 0
	.uleb128 .LEHB8-.LFB2868
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2868:
	.text
	.size	_ZL17ExpressionHandlerP6AsmCtxPK5Token, .-_ZL17ExpressionHandlerP6AsmCtxPK5Token
	.section	.rodata
.LC62:
	.string	"1 32 24 12 func_173:173"
	.align 32
.LC63:
	.string	"NameHandler"
	.zero	52
	.align 32
.LC64:
	.string	"int NameHandler(AsmCtx*, const Token*)"
	.zero	57
	.align 32
.LC65:
	.string	"\t%s: "
	.zero	58
	.align 32
.LC66:
	.string	"Ebat! What Should I so with function label ??? "
	.zero	48
	.align 32
.LC67:
	.string	" (%s:%d)\n"
	.zero	54
	.align 32
.LC68:
	.string	" [ %d ] "
	.zero	55
	.align 32
.LC69:
	.string	"; global var '%s' (name handler) \n"
	.zero	61
	.align 32
.LC70:
	.string	" [ %d + r%cx ] "
	.zero	48
	.align 32
.LC71:
	.string	"; local var '%s'\n"
	.zero	46
	.text
	.type	_ZL11NameHandlerP6AsmCtxPK5Token, @function
_ZL11NameHandlerP6AsmCtxPK5Token:
.LASANPC2869:
.LFB2869:
	.loc 2 172 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2869
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
	je	.L102
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L102
	movq	%rax, %rbx
.L102:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC62(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2869(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 2 173 41
	leaq	-64(%r14), %rax
	leaq	.LC63(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB9:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE9:
	.loc 2 175 10
	cmpq	$0, -168(%rbp)
	jne	.L106
.LEHB10:
	.loc 2 175 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 175 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 175 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 175 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 175 255 discriminator 4
	leaq	.LC64(%rip), %r8
	movl	$175, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 175 346 discriminator 6
	leaq	.LC64(%rip), %rax
	movq	%rax, %rcx
	movl	$175, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 175 450 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 175 456 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 175 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 175 33 discriminator 9
	movl	$175, %ecx
	leaq	.LC63(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 175 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 175 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L107
.L106:
	.loc 2 176 10
	cmpq	$0, -176(%rbp)
	jne	.L108
	.loc 2 176 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 176 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 176 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 176 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 176 261 discriminator 4
	leaq	.LC64(%rip), %r8
	movl	$176, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 176 352 discriminator 6
	leaq	.LC64(%rip), %rax
	movq	%rax, %rcx
	movl	$176, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 176 456 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 176 462 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 176 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 176 33 discriminator 9
	movl	$176, %ecx
	leaq	.LC63(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 176 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 176 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L107
.L108:
	.loc 2 178 40
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L109
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L109:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 178 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L110
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L110:
	movq	24(%rax), %rdx
	.loc 2 178 13
	movq	-176(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 181 21
	movq	-176(%rbp), %rax
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
	je	.L111
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L111:
	movq	-176(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 181 10
	cmpl	$6, %eax
	je	.L112
	.loc 2 181 48 discriminator 1
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 181 120 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 181 126 discriminator 2
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 181 170 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 181 176 discriminator 4
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 181 202 discriminator 6
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 181 220 discriminator 6
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 181 256 discriminator 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 181 283 discriminator 9
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 181 307 discriminator 10
	movl	$181, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 181 365 discriminator 11
	movq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 181 412 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 181 434 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 181 434 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 2 181 447 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$181
	leaq	.LC63(%rip), %r9
	movl	$181, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 181 447 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 181 531 is_stmt 1 discriminator 14
	jmp	.L107
.L112:
	.loc 2 183 12
	movq	-176(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L113
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L113:
	movq	-176(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -152(%rbp)
	.loc 2 185 20
	movq	-152(%rbp), %rax
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
	je	.L114
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L114:
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 185 9
	cmpl	$9, %eax
	jne	.L115
	.loc 2 187 21
	leaq	.LC63(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 2 187 49 discriminator 1
	leaq	.LC66(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 187 110 discriminator 2
	movl	$187, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 188 39
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 188 61
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 188 61 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 188 74 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$188
	leaq	.LC63(%rip), %r9
	movl	$188, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 188 74 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 188 158 is_stmt 1 discriminator 2
	jmp	.L107
.L115:
	.loc 2 191 20
	movq	-152(%rbp), %rax
	addq	$20, %rax
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
	je	.L116
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L116:
	movq	-152(%rbp), %rax
	movl	20(%rax), %eax
	.loc 2 191 9
	testl	%eax, %eax
	jne	.L117
	.loc 2 193 41
	movq	-152(%rbp), %rax
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
	je	.L118
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L118:
	movq	-152(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 193 21
	movl	%eax, %esi
	leaq	.LC68(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
	.loc 2 196 70
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L119
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L119:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 196 80
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L120
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L120:
	movq	24(%rax), %rsi
	.loc 2 196 99
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L121
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L121:
	movq	-152(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	.loc 2 196 106
	salq	$3, %rax
	addq	%rsi, %rax
	.loc 2 196 21
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L122
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L122:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC69(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
.L117:
	.loc 2 200 20
	movq	-152(%rbp), %rax
	addq	$20, %rax
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
	je	.L123
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L123:
	movq	-152(%rbp), %rax
	movl	20(%rax), %eax
	.loc 2 200 9
	cmpl	$1, %eax
	jne	.L124
	.loc 2 202 21
	movq	-152(%rbp), %rax
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
	je	.L125
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L125:
	movq	-152(%rbp), %rax
	movl	16(%rax), %eax
	movl	$98, %edx
	movl	%eax, %esi
	leaq	.LC70(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 205 53
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L126
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L126:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 205 63
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L127
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L127:
	movq	24(%rax), %rsi
	.loc 2 205 82
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dil
	movq	%rax, %rcx
	andl	$7, %ecx
	addl	$3, %ecx
	cmpb	%dl, %cl
	setge	%dl
	andl	%edi, %edx
	testb	%dl, %dl
	je	.L128
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L128:
	movq	-152(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	.loc 2 205 89
	salq	$3, %rax
	addq	%rsi, %rax
	.loc 2 205 21
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L129
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L129:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC71(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
.LEHE10:
.L124:
	.loc 2 209 12
	movl	$0, %r13d
.L107:
	.loc 2 210 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r13d, %edx
	.loc 2 172 5
	cmpq	%rbx, %r15
	je	.L103
	jmp	.L133
.L132:
	endbr64
	.loc 2 210 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L133:
	.loc 2 172 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L104
.L103:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L104:
	.loc 2 210 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2869:
	.section	.gcc_except_table
.LLSDA2869:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2869-.LLSDACSB2869
.LLSDACSB2869:
	.uleb128 .LEHB9-.LFB2869
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB2869
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L132-.LFB2869
	.uleb128 0
	.uleb128 .LEHB11-.LFB2869
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE2869:
	.text
	.size	_ZL11NameHandlerP6AsmCtxPK5Token, .-_ZL11NameHandlerP6AsmCtxPK5Token
	.section	.rodata
.LC72:
	.string	"1 32 24 12 func_214:214"
	.align 32
.LC73:
	.string	"FunctionHandler"
	.zero	48
	.align 32
.LC74:
	.string	"int FunctionHandler(AsmCtx*, const Token*)"
	.zero	53
	.align 32
.LC75:
	.string	"FUNCTION"
	.zero	55
	.align 32
.LC76:
	.string	"Label for function '%s' not a function label\n"
	.zero	50
	.align 32
.LC77:
	.string	"Label has different ret type '%s', (than '%s')\n"
	.zero	48
	.align 32
.LC78:
	.string	"\t\t: %s\n\n"
	.zero	55
	.align 32
.LC79:
	.string	"%s:%d::CHECK: AddToAsm(ctx, LEFT(name)) == SUCCESS is false\n"
	.zero	35
	.align 32
.LC80:
	.string	"%s:%d::CHECK: AddToAsm(ctx, RIGHT(token)) == SUCCESS is false\n"
	.zero	33
	.text
	.type	_ZL15FunctionHandlerP6AsmCtxPK5Token, @function
_ZL15FunctionHandlerP6AsmCtxPK5Token:
.LASANPC2870:
.LFB2870:
	.loc 2 213 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2870
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
	subq	$152, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L134
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L134
	movq	%rax, %rbx
.L134:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC72(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2870(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r13
	shrq	$3, %r13
	movl	$-235802127, 2147450880(%r13)
	movl	$-218103808, 2147450884(%r13)
	movl	$-202116109, 2147450888(%r13)
	.loc 2 214 41
	leaq	-64(%r14), %rax
	leaq	.LC73(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB12:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE12:
	.loc 2 216 10
	cmpq	$0, -184(%rbp)
	jne	.L138
.LEHB13:
	.loc 2 216 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 216 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 216 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 216 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 216 255 discriminator 4
	leaq	.LC74(%rip), %r8
	movl	$216, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 216 346 discriminator 6
	leaq	.LC74(%rip), %rax
	movq	%rax, %rcx
	movl	$216, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 216 450 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r12
	.loc 2 216 456 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 216 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 216 33 discriminator 9
	movl	$216, %ecx
	leaq	.LC73(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 216 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 216 115 discriminator 12
	movl	$-2, %r12d
	jmp	.L139
.L138:
	.loc 2 217 10
	cmpq	$0, -192(%rbp)
	jne	.L140
	.loc 2 217 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 217 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 217 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 217 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 217 261 discriminator 4
	leaq	.LC74(%rip), %r8
	movl	$217, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 217 352 discriminator 6
	leaq	.LC74(%rip), %rax
	movq	%rax, %rcx
	movl	$217, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 217 456 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r12
	.loc 2 217 462 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 217 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 217 33 discriminator 9
	movl	$217, %ecx
	leaq	.LC73(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 217 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 217 115 discriminator 12
	movl	$-2, %r12d
	jmp	.L139
.L140:
	.loc 2 219 40
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L141
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L141:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 219 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L142
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L142:
	movq	24(%rax), %rdx
	.loc 2 219 13
	movq	-192(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 221 21
	movq	-192(%rbp), %rax
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
	je	.L143
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L143:
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 221 10
	cmpl	$9, %eax
	je	.L144
	.loc 2 221 52 discriminator 1
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 221 124 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 221 130 discriminator 2
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 221 174 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 221 180 discriminator 4
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 221 206 discriminator 6
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 221 224 discriminator 6
	leaq	.LC75(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 221 264 discriminator 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 221 291 discriminator 9
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 221 315 discriminator 10
	movl	$221, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 221 373 discriminator 11
	movq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 221 420 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 221 442 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 221 442 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 2 221 455 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$221
	leaq	.LC73(%rip), %r9
	movl	$221, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 221 455 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 221 539 is_stmt 1 discriminator 14
	jmp	.L139
.L144:
	.loc 2 223 12
	movq	-192(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L145
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L145:
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	.loc 2 224 12
	movq	-168(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L146
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L146:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	.loc 2 226 12
	movq	-168(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L147
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L147:
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -152(%rbp)
	.loc 2 228 15
	movq	-152(%rbp), %rax
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
	je	.L148
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L148:
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 228 5
	cmpl	$9, %eax
	je	.L149
	.loc 2 230 20
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 2 230 92 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 230 98 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 230 142 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 230 148 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 230 174 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 230 253 discriminator 5
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L150
	.loc 2 230 253 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L150:
	.loc 2 230 253 discriminator 6
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 230 263 is_stmt 1 discriminator 6
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L151
	.loc 2 230 263 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L151:
	.loc 2 230 263 discriminator 6
	movq	24(%rax), %rcx
	.loc 2 230 287 is_stmt 1 discriminator 6
	movq	-168(%rbp), %rax
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
	je	.L152
	.loc 2 230 287 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L152:
	.loc 2 230 287 discriminator 6
	movq	-168(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 230 296 is_stmt 1 discriminator 6
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 230 192 discriminator 6
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L153
	.loc 2 230 192 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L153:
	.loc 2 230 192 discriminator 6
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC76(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 230 306 is_stmt 1 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 230 333 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 230 357 discriminator 9
	movl	$230, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 230 415 discriminator 10
	movq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 231 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 231 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 231 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 231 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$231
	leaq	.LC73(%rip), %r9
	movl	$231, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 231 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 231 154 is_stmt 1 discriminator 2
	jmp	.L139
.L149:
	.loc 2 234 21
	movq	-168(%rbp), %rax
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
	je	.L154
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L154:
	movq	-168(%rbp), %rax
	movl	24(%rax), %ecx
	.loc 2 234 40
	movq	-152(%rbp), %rax
	addq	$4, %rax
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
	je	.L155
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L155:
	movq	-152(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 234 5
	cmpl	%eax, %ecx
	je	.L156
	.loc 2 236 20
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 2 236 92 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 236 98 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 236 142 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 236 148 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 236 174 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 236 307 discriminator 5
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L157
	.loc 2 236 307 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L157:
	.loc 2 236 307 discriminator 6
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 236 317 is_stmt 1 discriminator 6
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L158
	.loc 2 236 317 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L158:
	.loc 2 236 317 discriminator 6
	movq	24(%rax), %rcx
	.loc 2 236 341 is_stmt 1 discriminator 6
	movq	-168(%rbp), %rax
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
	je	.L159
	.loc 2 236 341 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L159:
	.loc 2 236 341 discriminator 6
	movq	-168(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 236 350 is_stmt 1 discriminator 6
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 236 192 discriminator 6
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L160
	.loc 2 236 192 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L160:
	.loc 2 236 192 discriminator 6
	movq	(%rax), %rcx
	.loc 2 236 260 is_stmt 1 discriminator 6
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 236 270 discriminator 6
	leaq	24(%rax), %rdx
	movq	%rdx, %rsi
	shrq	$3, %rsi
	addq	$2147450880, %rsi
	movzbl	(%rsi), %esi
	testb	%sil, %sil
	je	.L161
	.loc 2 236 270 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L161:
	.loc 2 236 270 discriminator 6
	movq	24(%rax), %r8
	.loc 2 236 288 is_stmt 1 discriminator 6
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%r9b
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%r9d, %edx
	testb	%dl, %dl
	je	.L162
	.loc 2 236 288 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L162:
	.loc 2 236 288 discriminator 6
	movq	-152(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	.loc 2 236 295 is_stmt 1 discriminator 6
	salq	$3, %rax
	addq	%r8, %rax
	.loc 2 236 192 discriminator 6
	movq	%rax, %rdx
	movq	%rdx, %rsi
	shrq	$3, %rsi
	addq	$2147450880, %rsi
	movzbl	(%rsi), %esi
	testb	%sil, %sil
	je	.L163
	.loc 2 236 192 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L163:
	.loc 2 236 192 discriminator 6
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 236 360 is_stmt 1 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 236 387 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 236 411 discriminator 9
	movl	$236, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 236 469 discriminator 10
	movq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 237 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 237 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 237 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 237 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$237
	leaq	.LC73(%rip), %r9
	movl	$237, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 237 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 237 154 is_stmt 1 discriminator 2
	jmp	.L139
.L156:
	.loc 2 240 15
	movq	-152(%rbp), %rax
	addq	$12, %rax
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
	je	.L164
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L164:
	movq	-152(%rbp), %rax
	movl	12(%rax), %ecx
	.loc 2 240 43
	movq	-160(%rbp), %rax
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
	je	.L165
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L165:
	movq	-160(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 240 5
	cmpl	%eax, %ecx
	je	.L166
	.loc 2 242 20
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 2 242 92 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 242 98 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 242 142 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 242 148 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 242 174 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 242 317 discriminator 5
	movq	-160(%rbp), %rax
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
	je	.L167
	.loc 2 242 317 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L167:
	.loc 2 242 317 discriminator 6
	movq	-160(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 242 336 is_stmt 1 discriminator 6
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL18FUNCTION_RET_TYPES(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L168
	.loc 2 242 336 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L168:
	.loc 2 242 336 discriminator 6
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL18FUNCTION_RET_TYPES(%rip), %rax
	movq	(%rdx,%rax), %rcx
	.loc 2 242 271 is_stmt 1 discriminator 6
	movq	-152(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%r8b
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%r8d, %edx
	testb	%dl, %dl
	je	.L169
	.loc 2 242 271 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L169:
	.loc 2 242 271 discriminator 6
	movq	-152(%rbp), %rax
	movl	12(%rax), %eax
	.loc 2 242 279 is_stmt 1 discriminator 6
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rsi
	leaq	_ZL18FUNCTION_RET_TYPES(%rip), %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rsi
	shrq	$3, %rsi
	addq	$2147450880, %rsi
	movzbl	(%rsi), %esi
	testb	%sil, %sil
	je	.L170
	.loc 2 242 279 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L170:
	.loc 2 242 279 discriminator 6
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL18FUNCTION_RET_TYPES(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 242 192 is_stmt 1 discriminator 6
	movq	%rax, %rdx
	leaq	.LC77(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 242 346 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 242 373 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 242 397 discriminator 9
	movl	$242, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 242 455 discriminator 10
	movq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 243 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 243 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 243 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 243 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$243
	leaq	.LC73(%rip), %r9
	movl	$243, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 243 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 243 154 is_stmt 1 discriminator 2
	jmp	.L139
.L166:
	.loc 2 246 32
	movq	-152(%rbp), %rax
	addq	$8, %rax
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
	je	.L171
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L171:
	movq	-152(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 246 24
	movl	%eax, STACK_FRAME_OFFSET(%rip)
	.loc 2 249 39
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L172
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L172:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 249 49
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L173
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L173:
	movq	24(%rax), %rcx
	.loc 2 249 73
	movq	-168(%rbp), %rax
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
	je	.L174
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L174:
	movq	-168(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 249 82
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 249 13
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L175
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L175:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC78(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
	.loc 2 252 35
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L176
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L176:
	movq	-168(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 252 23
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL8AddToAsmP6AsmCtxPK5Token
	.loc 2 252 47
	testl	%eax, %eax
	setne	%al
	.loc 2 252 10
	testb	%al, %al
	je	.L177
	.loc 2 252 80 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 252 86 discriminator 2
	movl	$252, %ecx
	leaq	.LC73(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC79(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 252 201 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 252 223 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 252 223 is_stmt 0 discriminator 5
	movq	%rax, %rdi
	.loc 2 252 236 is_stmt 1 discriminator 5
	subq	$8, %rsp
	pushq	$252
	leaq	.LC73(%rip), %r9
	movl	$252, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 252 236 is_stmt 0 discriminator 6
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 252 320 is_stmt 1 discriminator 6
	jmp	.L139
.L177:
	.loc 2 255 36
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L178
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L178:
	movq	-192(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 255 23
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_escape 0x2e,0
	call	_ZL8AddToAsmP6AsmCtxPK5Token
	.loc 2 255 49
	testl	%eax, %eax
	setne	%al
	.loc 2 255 10
	testb	%al, %al
	je	.L179
	.loc 2 255 82 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 255 88 discriminator 2
	movl	$255, %ecx
	leaq	.LC73(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC80(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 255 205 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 255 227 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 255 227 is_stmt 0 discriminator 5
	movq	%rax, %rdi
	.loc 2 255 240 is_stmt 1 discriminator 5
	subq	$8, %rsp
	pushq	$255
	leaq	.LC73(%rip), %r9
	movl	$255, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
.LEHE13:
	.loc 2 255 240 is_stmt 0 discriminator 6
	addq	$16, %rsp
	movl	%eax, %r12d
	.loc 2 255 324 is_stmt 1 discriminator 6
	jmp	.L139
.L179:
	.loc 2 257 12
	movl	$0, %r12d
.L139:
	.loc 2 258 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r12d, %edx
	.loc 2 213 5
	cmpq	%rbx, %r15
	je	.L135
	jmp	.L183
.L182:
	endbr64
	.loc 2 258 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L183:
	.loc 2 213 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r13)
	movl	$-168430091, 2147450888(%r13)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L136
.L135:
	movq	$0, 2147450880(%r13)
	movl	$0, 2147450888(%r13)
.L136:
	.loc 2 258 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2870:
	.section	.gcc_except_table
.LLSDA2870:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2870-.LLSDACSB2870
.LLSDACSB2870:
	.uleb128 .LEHB12-.LFB2870
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB2870
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L182-.LFB2870
	.uleb128 0
	.uleb128 .LEHB14-.LFB2870
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE2870:
	.text
	.size	_ZL15FunctionHandlerP6AsmCtxPK5Token, .-_ZL15FunctionHandlerP6AsmCtxPK5Token
	.section	.rodata
.LC81:
	.string	"1 32 24 12 func_262:262"
	.align 32
.LC82:
	.string	"CallHandler"
	.zero	52
	.align 32
.LC83:
	.string	"int CallHandler(AsmCtx*, const Token*)"
	.zero	57
	.align 32
.LC84:
	.string	"CALL"
	.zero	59
	.align 32
.LC85:
	.string	"\n; Setting Stack Frame\n"
	.zero	40
	.align 32
.LC86:
	.string	"push %d + r%cx\n"
	.zero	48
	.align 32
.LC87:
	.string	"pop r%cx\n\n"
	.zero	53
	.align 32
.LC88:
	.string	"call :%s\n\n"
	.zero	53
	.align 32
.LC89:
	.string	"; Setting Stack Frame Back\n"
	.zero	36
	.align 32
.LC90:
	.string	"push %d\n"
	.zero	55
	.align 32
.LC91:
	.string	"sub\n\n"
	.zero	58
	.text
	.type	_ZL11CallHandlerP6AsmCtxPK5Token, @function
_ZL11CallHandlerP6AsmCtxPK5Token:
.LASANPC2871:
.LFB2871:
	.loc 2 261 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2871
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
	subq	$152, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L184
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L184
	movq	%rax, %rbx
.L184:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC81(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2871(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 2 262 41
	leaq	-64(%r14), %rax
	leaq	.LC82(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB15:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE15:
	.loc 2 264 10
	cmpq	$0, -184(%rbp)
	jne	.L188
.LEHB16:
	.loc 2 264 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 264 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 264 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 264 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 264 255 discriminator 4
	leaq	.LC83(%rip), %r8
	movl	$264, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 264 346 discriminator 6
	leaq	.LC83(%rip), %rax
	movq	%rax, %rcx
	movl	$264, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 264 450 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 264 456 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 264 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 264 33 discriminator 9
	movl	$264, %ecx
	leaq	.LC82(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 264 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 264 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L189
.L188:
	.loc 2 265 10
	cmpq	$0, -192(%rbp)
	jne	.L190
	.loc 2 265 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 265 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 265 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 265 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 265 261 discriminator 4
	leaq	.LC83(%rip), %r8
	movl	$265, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 265 352 discriminator 6
	leaq	.LC83(%rip), %rax
	movq	%rax, %rcx
	movl	$265, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 265 456 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 265 462 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 265 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 265 33 discriminator 9
	movl	$265, %ecx
	leaq	.LC82(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 265 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 265 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L189
.L190:
	.loc 2 267 40
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L191
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L191:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 267 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L192
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L192:
	movq	24(%rax), %rdx
	.loc 2 267 13
	movq	-192(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 269 21
	movq	-192(%rbp), %rax
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
	je	.L193
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L193:
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 269 10
	cmpl	$10, %eax
	je	.L194
	.loc 2 269 48 discriminator 1
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 269 120 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 269 126 discriminator 2
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 269 170 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 269 176 discriminator 4
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 269 202 discriminator 6
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 269 220 discriminator 6
	leaq	.LC84(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 269 256 discriminator 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 269 283 discriminator 9
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 269 307 discriminator 10
	movl	$269, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 269 365 discriminator 11
	movq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 269 412 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 269 434 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 269 434 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 2 269 447 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$269
	leaq	.LC82(%rip), %r9
	movl	$269, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 269 447 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 269 531 is_stmt 1 discriminator 14
	jmp	.L189
.L194:
	.loc 2 271 12
	movq	-192(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L195
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L195:
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
.LBB2:
	.loc 2 275 15
	movq	-160(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L196
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L196:
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 275 5
	testq	%rax, %rax
	je	.L197
.LBB3:
	.loc 2 277 12
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -152(%rbp)
	.loc 2 279 15
	movq	-152(%rbp), %rax
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
	je	.L198
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L198:
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 279 5
	cmpl	$9, %eax
	je	.L199
	.loc 2 281 20
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 2 281 92 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 281 98 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 281 142 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 281 148 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 281 174 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 281 253 discriminator 5
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L200
	.loc 2 281 253 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L200:
	.loc 2 281 253 discriminator 6
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 281 263 is_stmt 1 discriminator 6
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L201
	.loc 2 281 263 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L201:
	.loc 2 281 263 discriminator 6
	movq	24(%rax), %rcx
	.loc 2 281 287 is_stmt 1 discriminator 6
	movq	-160(%rbp), %rax
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
	je	.L202
	.loc 2 281 287 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L202:
	.loc 2 281 287 discriminator 6
	movq	-160(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 281 296 is_stmt 1 discriminator 6
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 281 192 discriminator 6
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L203
	.loc 2 281 192 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L203:
	.loc 2 281 192 discriminator 6
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC76(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 281 306 is_stmt 1 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 281 333 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 281 357 discriminator 9
	movl	$281, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 281 415 discriminator 10
	movq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 282 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 282 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 282 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 282 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$282
	leaq	.LC82(%rip), %r9
	movl	$282, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 282 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 282 154 is_stmt 1 discriminator 2
	jmp	.L189
.L199:
	.loc 2 285 21
	movq	-160(%rbp), %rax
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
	je	.L204
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L204:
	movq	-160(%rbp), %rax
	movl	24(%rax), %ecx
	.loc 2 285 40
	movq	-152(%rbp), %rax
	addq	$4, %rax
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
	je	.L205
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L205:
	movq	-152(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 285 5
	cmpl	%eax, %ecx
	je	.L197
	.loc 2 287 20
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 2 287 92 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 287 98 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 287 142 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 287 148 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 287 174 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 287 307 discriminator 5
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L206
	.loc 2 287 307 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L206:
	.loc 2 287 307 discriminator 6
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 287 317 is_stmt 1 discriminator 6
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L207
	.loc 2 287 317 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L207:
	.loc 2 287 317 discriminator 6
	movq	24(%rax), %rcx
	.loc 2 287 341 is_stmt 1 discriminator 6
	movq	-160(%rbp), %rax
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
	je	.L208
	.loc 2 287 341 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L208:
	.loc 2 287 341 discriminator 6
	movq	-160(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 287 350 is_stmt 1 discriminator 6
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 287 192 discriminator 6
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L209
	.loc 2 287 192 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L209:
	.loc 2 287 192 discriminator 6
	movq	(%rax), %rcx
	.loc 2 287 260 is_stmt 1 discriminator 6
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 287 270 discriminator 6
	leaq	24(%rax), %rdx
	movq	%rdx, %rsi
	shrq	$3, %rsi
	addq	$2147450880, %rsi
	movzbl	(%rsi), %esi
	testb	%sil, %sil
	je	.L210
	.loc 2 287 270 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L210:
	.loc 2 287 270 discriminator 6
	movq	24(%rax), %r8
	.loc 2 287 288 is_stmt 1 discriminator 6
	movq	-152(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%r9b
	movq	%rax, %rsi
	andl	$7, %esi
	addl	$3, %esi
	cmpb	%dl, %sil
	setge	%dl
	andl	%r9d, %edx
	testb	%dl, %dl
	je	.L211
	.loc 2 287 288 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load4@PLT
.L211:
	.loc 2 287 288 discriminator 6
	movq	-152(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	.loc 2 287 295 is_stmt 1 discriminator 6
	salq	$3, %rax
	addq	%r8, %rax
	.loc 2 287 192 discriminator 6
	movq	%rax, %rdx
	movq	%rdx, %rsi
	shrq	$3, %rsi
	addq	$2147450880, %rsi
	movzbl	(%rsi), %esi
	testb	%sil, %sil
	je	.L212
	.loc 2 287 192 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L212:
	.loc 2 287 192 discriminator 6
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 287 360 is_stmt 1 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 287 387 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 287 411 discriminator 9
	movl	$287, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 287 469 discriminator 10
	movq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 288 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 288 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 288 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 288 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$288
	leaq	.LC82(%rip), %r9
	movl	$288, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 288 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 288 154 is_stmt 1 discriminator 2
	jmp	.L189
.L197:
.LBE3:
.LBE2:
	.loc 2 293 58
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L213
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L213:
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 293 46
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_escape 0x2e,0
	call	_ZL15ArgumentHandlerP6AsmCtxPK5Token
	movl	%eax, -164(%rbp)
	.loc 2 294 5
	cmpl	$0, -164(%rbp)
	jns	.L214
	.loc 2 295 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 295 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 295 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 295 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$295
	leaq	.LC82(%rip), %r9
	movl	$295, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 295 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 295 154 is_stmt 1 discriminator 2
	jmp	.L189
.L214:
	.loc 2 298 14
	leaq	.LC85(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
	.loc 2 299 14
	movl	STACK_FRAME_OFFSET(%rip), %eax
	movl	$98, %edx
	movl	%eax, %esi
	leaq	.LC86(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 300 14
	movl	$98, %esi
	leaq	.LC87(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 303 39
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L215
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L215:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 303 49
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L216
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L216:
	movq	24(%rax), %rcx
	.loc 2 303 73
	movq	-160(%rbp), %rax
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
	je	.L217
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L217:
	movq	-160(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 303 82
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 303 13
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L218
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L218:
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC88(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 306 14
	leaq	.LC89(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 307 14
	movl	STACK_FRAME_OFFSET(%rip), %eax
	movl	%eax, %esi
	leaq	.LC90(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 308 14
	movl	$98, %esi
	leaq	.LC58(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 309 14
	leaq	.LC91(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 310 14
	movl	$98, %esi
	leaq	.LC87(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
.LEHE16:
	.loc 2 318 12
	movl	$0, %r13d
.L189:
	.loc 2 319 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r13d, %edx
	.loc 2 261 5
	cmpq	%rbx, %r15
	je	.L185
	jmp	.L222
.L221:
	endbr64
	.loc 2 319 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L222:
	.loc 2 261 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L186
.L185:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L186:
	.loc 2 319 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2871:
	.section	.gcc_except_table
.LLSDA2871:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2871-.LLSDACSB2871
.LLSDACSB2871:
	.uleb128 .LEHB15-.LFB2871
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB2871
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L221-.LFB2871
	.uleb128 0
	.uleb128 .LEHB17-.LFB2871
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE2871:
	.text
	.size	_ZL11CallHandlerP6AsmCtxPK5Token, .-_ZL11CallHandlerP6AsmCtxPK5Token
	.section	.rodata
.LC92:
	.string	"1 32 24 12 func_323:323"
	.align 32
.LC93:
	.string	"ArgumentHandler"
	.zero	48
	.align 32
.LC94:
	.string	"int ArgumentHandler(AsmCtx*, const Token*)"
	.zero	53
	.align 32
.LC95:
	.string	"PARAMETR"
	.zero	55
	.align 32
.LC96:
	.string	"No arguments for parametr\n"
	.zero	37
	.align 32
.LC97:
	.string	";Setting parametrs for call\n"
	.zero	35
	.align 32
.LC98:
	.string	"%s:%d::CHECK: ExpressionHandler(ctx, LEFT(current_param)) == SUCCESS is false\n"
	.zero	49
	.align 32
.LC99:
	.string	"pop  [ %d + r%cx ]; %d - param pos, %d - stack frame offset\n"
	.zero	35
	.text
	.type	_ZL15ArgumentHandlerP6AsmCtxPK5Token, @function
_ZL15ArgumentHandlerP6AsmCtxPK5Token:
.LASANPC2872:
.LFB2872:
	.loc 2 322 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2872
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
	je	.L223
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L223
	movq	%rax, %rbx
.L223:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC92(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2872(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 2 323 41
	leaq	-64(%r14), %rax
	leaq	.LC93(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB18:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE18:
	.loc 2 325 10
	cmpq	$0, -168(%rbp)
	jne	.L227
.LEHB19:
	.loc 2 325 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 325 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 325 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 325 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 325 255 discriminator 4
	leaq	.LC94(%rip), %r8
	movl	$325, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 325 346 discriminator 6
	leaq	.LC94(%rip), %rax
	movq	%rax, %rcx
	movl	$325, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 325 450 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 325 456 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 325 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 325 33 discriminator 9
	movl	$325, %ecx
	leaq	.LC93(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 325 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 325 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L228
.L227:
	.loc 2 327 5
	cmpq	$0, -176(%rbp)
	jne	.L229
	.loc 2 327 24 discriminator 1
	movl	$0, %r13d
	jmp	.L228
.L229:
	.loc 2 329 40
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L230
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L230:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 329 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L231
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L231:
	movq	24(%rax), %rdx
	.loc 2 329 13
	movq	-176(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 331 21
	movq	-176(%rbp), %rax
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
	je	.L232
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L232:
	movq	-176(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 331 10
	cmpl	$12, %eax
	je	.L233
	.loc 2 331 52 discriminator 1
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 331 124 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 331 130 discriminator 2
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 331 174 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 331 180 discriminator 4
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 331 206 discriminator 6
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 331 224 discriminator 6
	leaq	.LC95(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 331 264 discriminator 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 331 291 discriminator 9
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 331 315 discriminator 10
	movl	$331, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 331 373 discriminator 11
	movq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 331 420 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 331 442 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 331 442 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 2 331 455 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$331
	leaq	.LC93(%rip), %r9
	movl	$331, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 331 455 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 331 539 is_stmt 1 discriminator 14
	jmp	.L228
.L233:
	.loc 2 333 16
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L234
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L234:
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 333 5
	testq	%rax, %rax
	jne	.L235
	.loc 2 335 20
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 2 335 92 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 335 98 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 335 142 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 335 148 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 335 174 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 335 192 discriminator 5
	leaq	.LC96(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 335 232 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 335 259 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 335 283 discriminator 9
	movl	$335, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 335 341 discriminator 10
	movq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 336 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 336 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 336 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 336 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$336
	leaq	.LC93(%rip), %r9
	movl	$336, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 336 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 336 154 is_stmt 1 discriminator 2
	jmp	.L228
.L235:
	.loc 2 339 9
	movl	$0, -156(%rbp)
	.loc 2 340 18
	movq	-176(%rbp), %rax
	movq	%rax, -152(%rbp)
	.loc 2 342 13
	leaq	.LC97(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
	.loc 2 344 5
	jmp	.L236
.L240:
	.loc 2 346 57
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L237
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L237:
	movq	-152(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 346 36
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL17ExpressionHandlerP6AsmCtxPK5Token
	.loc 2 346 69
	testl	%eax, %eax
	setne	%al
	.loc 2 346 14
	testb	%al, %al
	je	.L238
	.loc 2 346 102 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 346 108 discriminator 2
	movl	$346, %ecx
	leaq	.LC93(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC98(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 346 222 discriminator 4
	movl	$-1, %r13d
	jmp	.L228
.L238:
	.loc 2 348 18
	movl	STACK_FRAME_OFFSET(%rip), %edx
	movl	STACK_FRAME_OFFSET(%rip), %ecx
	movl	-156(%rbp), %eax
	leal	(%rcx,%rax), %esi
	movl	-156(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %ecx
	movl	$98, %edx
	leaq	.LC99(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
.LEHE19:
	.loc 2 353 28
	addl	$1, -156(%rbp)
	.loc 2 355 23
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L239
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L239:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
.L236:
	.loc 2 344 12
	cmpq	$0, -152(%rbp)
	jne	.L240
	.loc 2 358 12
	movl	-156(%rbp), %r13d
.L228:
	.loc 2 359 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r13d, %edx
	.loc 2 322 5
	cmpq	%rbx, %r15
	je	.L224
	jmp	.L244
.L243:
	endbr64
	.loc 2 359 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB20:
	call	_Unwind_Resume@PLT
.LEHE20:
.L244:
	.loc 2 322 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L225
.L224:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L225:
	.loc 2 359 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2872:
	.section	.gcc_except_table
.LLSDA2872:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2872-.LLSDACSB2872
.LLSDACSB2872:
	.uleb128 .LEHB18-.LFB2872
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB2872
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L243-.LFB2872
	.uleb128 0
	.uleb128 .LEHB20-.LFB2872
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE2872:
	.text
	.size	_ZL15ArgumentHandlerP6AsmCtxPK5Token, .-_ZL15ArgumentHandlerP6AsmCtxPK5Token
	.bss
	.align 32
	.type	_ZZL18InstructionHandlerP6AsmCtxPK5TokenE22number_of_instructions, @object
	.size	_ZZL18InstructionHandlerP6AsmCtxPK5TokenE22number_of_instructions, 4
_ZZL18InstructionHandlerP6AsmCtxPK5TokenE22number_of_instructions:
	.zero	64
	.section	.rodata
.LC100:
	.string	"1 32 24 12 func_363:363"
	.align 32
.LC101:
	.string	"InstructionHandler"
	.zero	45
	.align 32
.LC102:
	.string	"int InstructionHandler(AsmCtx*, const Token*)"
	.zero	50
	.align 32
.LC103:
	.string	"INSTRUCTION"
	.zero	52
	.align 32
.LC104:
	.string	"; instruction\n"
	.zero	49
	.align 32
.LC105:
	.string	"to do else\n"
	.zero	52
	.align 32
.LC106:
	.string	"\033[96m#TODO Check this place to improve it (%s:%d)\n%s\033[0m"
	.zero	39
	.align 32
.LC107:
	.string	"#TODO Check this place to improve it (%s:%d)\n%s"
	.zero	48
	.align 32
.LC108:
	.string	"NOT A INSTRUCTION"
	.zero	46
	.align 32
.LC109:
	.string	"; condition for %s_%d with else \n"
	.zero	62
	.align 32
.LC110:
	.string	"%s:%d::CHECK: ExpressionHandler(ctx, LEFT(token)) == SUCCESS is false\n"
	.zero	57
	.align 32
.LC111:
	.string	"je : else_label_%d\n"
	.zero	44
	.align 32
.LC112:
	.string	"; if body\n"
	.zero	53
	.align 32
.LC113:
	.string	"%s:%d::CHECK: AddToAsm(ctx, if_body) == SUCCESS is false\n"
	.zero	38
	.align 32
.LC114:
	.string	"jmp : else_end_label_%d\n"
	.zero	39
	.align 32
.LC115:
	.string	"; else body\n"
	.zero	51
	.align 32
.LC116:
	.string	": else_label_%d\n"
	.zero	47
	.align 32
.LC117:
	.string	"%s:%d::CHECK: AddToAsm(ctx, else_body) == SUCCESS is false\n"
	.zero	36
	.align 32
.LC118:
	.string	": else_end_label_%d\n"
	.zero	43
	.align 32
.LC119:
	.string	"; condition for %s_%d\n"
	.zero	41
	.align 32
.LC120:
	.string	"je : %s_end_label_%d\n"
	.zero	42
	.align 32
.LC121:
	.string	"; end of condition\n\n"
	.zero	43
	.align 32
.LC122:
	.string	"; %s body\n"
	.zero	53
	.align 32
.LC123:
	.string	": %s_end_label_%d\n"
	.zero	45
	.align 32
.LC124:
	.string	"%s:%d::CHECK: AddToAsm(ctx, LEFT(token)) == SUCCESS is false\n"
	.zero	34
	.align 32
.LC125:
	.string	"to do instructions default\n"
	.zero	36
	.text
	.type	_ZL18InstructionHandlerP6AsmCtxPK5Token, @function
_ZL18InstructionHandlerP6AsmCtxPK5Token:
.LASANPC2873:
.LFB2873:
	.loc 2 362 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2873
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
	subq	$152, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L245
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L245
	movq	%rax, %rbx
.L245:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC100(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2873(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 2 363 41
	leaq	-64(%r14), %rax
	leaq	.LC101(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB21:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE21:
	.loc 2 365 10
	cmpq	$0, -184(%rbp)
	jne	.L249
.LEHB22:
	.loc 2 365 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 365 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 365 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 365 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 365 255 discriminator 4
	leaq	.LC102(%rip), %r8
	movl	$365, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 365 346 discriminator 6
	leaq	.LC102(%rip), %rax
	movq	%rax, %rcx
	movl	$365, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 365 450 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 365 456 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 365 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 365 33 discriminator 9
	movl	$365, %ecx
	leaq	.LC101(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 365 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 365 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L250
.L249:
	.loc 2 366 10
	cmpq	$0, -192(%rbp)
	jne	.L251
	.loc 2 366 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 366 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 366 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 366 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 366 261 discriminator 4
	leaq	.LC102(%rip), %r8
	movl	$366, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 366 352 discriminator 6
	leaq	.LC102(%rip), %rax
	movq	%rax, %rcx
	movl	$366, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 366 456 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 366 462 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 366 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 366 33 discriminator 9
	movl	$366, %ecx
	leaq	.LC101(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 366 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 366 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L250
.L251:
	.loc 2 368 40
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L252
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L252:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 368 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L253
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L253:
	movq	24(%rax), %rdx
	.loc 2 368 13
	movq	-192(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 370 21
	movq	-192(%rbp), %rax
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
	je	.L254
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L254:
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 370 10
	cmpl	$2, %eax
	je	.L255
	.loc 2 370 55 discriminator 1
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 370 127 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 370 133 discriminator 2
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 370 177 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 370 183 discriminator 4
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 370 209 discriminator 6
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 370 227 discriminator 6
	leaq	.LC103(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 370 270 discriminator 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 370 297 discriminator 9
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 370 321 discriminator 10
	movl	$370, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 370 379 discriminator 11
	movq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 370 426 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 370 448 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 370 448 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 2 370 461 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$370
	leaq	.LC101(%rip), %r9
	movl	$370, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 370 461 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 370 545 is_stmt 1 discriminator 14
	jmp	.L250
.L255:
	.loc 2 374 53
	movl	_ZZL18InstructionHandlerP6AsmCtxPK5TokenE22number_of_instructions(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, _ZZL18InstructionHandlerP6AsmCtxPK5TokenE22number_of_instructions(%rip)
	movl	%eax, -164(%rbp)
	.loc 2 376 13
	leaq	.LC104(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
.LBB4:
	.loc 2 378 26
	movq	-192(%rbp), %rax
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
	je	.L256
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L256:
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 378 5
	cmpl	$2, %eax
	je	.L257
	cmpl	$2, %eax
	jg	.L258
	testl	%eax, %eax
	je	.L259
	cmpl	$1, %eax
	jne	.L258
.LBB5:
	.loc 2 382 19
	movl	$382, %r8d
	leaq	.LC101(%rip), %rax
	movq	%rax, %rcx
	movl	$382, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 382 174 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 382 180 discriminator 1
	movl	$382, %r9d
	leaq	.LC101(%rip), %r8
	movl	$382, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC42(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 383 19
	leaq	.LC105(%rip), %rax
	movq	%rax, %rcx
	movl	$383, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC106(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 383 165 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 383 171 discriminator 1
	leaq	.LC105(%rip), %r8
	movl	$383, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC107(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 383 296 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 383 302 discriminator 3
	leaq	.LC105(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 384 39
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 384 61
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 384 61 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 384 74 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$384
	leaq	.LC101(%rip), %r9
	movl	$384, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 384 74 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 384 158 is_stmt 1 discriminator 2
	jmp	.L250
.L259:
.LBB6:
.LBB7:
	.loc 2 388 26
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L260
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L260:
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 388 13
	testq	%rax, %rax
	je	.L261
	.loc 2 388 50 discriminator 1
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 388 63 discriminator 1
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	cmpb	$3, %dl
	setle	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L262
	.loc 2 388 63 is_stmt 0
	movq	%rcx, %rdi
	call	__asan_report_load4@PLT
.L262:
	.loc 2 388 63 discriminator 1
	movl	16(%rax), %eax
	.loc 2 388 84 is_stmt 1 discriminator 1
	cmpl	$2, %eax
	jne	.L261
	.loc 2 388 110 discriminator 2
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 388 129 discriminator 2
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	cmpb	$3, %dl
	setle	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L263
	.loc 2 388 129 is_stmt 0
	movq	%rcx, %rdi
	call	__asan_report_load4@PLT
.L263:
	.loc 2 388 129 discriminator 2
	movl	24(%rax), %eax
	.loc 2 388 100 is_stmt 1 discriminator 2
	cmpl	$1, %eax
	jne	.L261
.LBB8:
	.loc 2 390 41
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 390 24
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L264
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L264:
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	.loc 2 391 43
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 391 24
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L265
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L265:
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	.loc 2 393 26
	cmpq	$0, -192(%rbp)
	je	.L266
	.loc 2 393 86 discriminator 1
	movq	-192(%rbp), %rax
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
	je	.L267
	.loc 2 393 86 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L267:
	.loc 2 393 86 discriminator 1
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 393 107 is_stmt 1 discriminator 1
	cmpl	$2, %eax
	jne	.L266
	.loc 2 393 151 discriminator 3
	movq	-192(%rbp), %rax
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
	je	.L268
	.loc 2 393 151 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L268:
	.loc 2 393 151 discriminator 3
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 393 26 is_stmt 1 discriminator 3
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL12INSTRUCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L269
	.loc 2 393 26 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L269:
	.loc 2 393 26 discriminator 3
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL12INSTRUCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L270
.L266:
	.loc 2 393 26 discriminator 4
	leaq	.LC108(%rip), %rax
.L270:
	.loc 2 393 26 discriminator 6
	movl	-164(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC109(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
	.loc 2 394 57 is_stmt 1
	movq	-192(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L271
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L271:
	movq	-192(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 394 44
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL17ExpressionHandlerP6AsmCtxPK5Token
	.loc 2 394 69
	testl	%eax, %eax
	setne	%al
	.loc 2 394 22
	testb	%al, %al
	je	.L272
	.loc 2 394 102 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 394 108 discriminator 2
	movl	$394, %ecx
	leaq	.LC101(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC110(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 394 214 discriminator 4
	movl	$-1, %r13d
	jmp	.L250
.L272:
	.loc 2 396 25
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 397 50
	movl	$0, %edi
	call	_ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.loc 2 397 25
	cvttsd2sil	%xmm0, %eax
	movl	%eax, %esi
	leaq	.LC90(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 398 26
	movl	-164(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC111(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 401 25
	leaq	.LC112(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 402 35
	movq	-160(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL8AddToAsmP6AsmCtxPK5Token
	.loc 2 402 50
	testl	%eax, %eax
	setne	%al
	.loc 2 402 22
	testb	%al, %al
	je	.L273
	.loc 2 402 83 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 402 89 discriminator 2
	movl	$402, %ecx
	leaq	.LC101(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC113(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 402 182 discriminator 4
	movl	$-1, %r13d
	jmp	.L250
.L273:
	.loc 2 403 26
	movl	-164(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC114(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 405 25
	leaq	.LC115(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 406 25
	movl	-164(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC116(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 407 35
	movq	-152(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL8AddToAsmP6AsmCtxPK5Token
	.loc 2 407 52
	testl	%eax, %eax
	setne	%al
	.loc 2 407 22
	testb	%al, %al
	je	.L274
	.loc 2 407 85 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 407 91 discriminator 2
	movl	$407, %ecx
	leaq	.LC101(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC117(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 407 186 discriminator 4
	movl	$-1, %r13d
	jmp	.L250
.L274:
	.loc 2 409 26
	movl	-164(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC118(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
.LBE8:
	.loc 2 410 17
	jmp	.L328
.L261:
	.loc 2 413 26
	cmpq	$0, -192(%rbp)
	je	.L276
	.loc 2 413 75 discriminator 1
	movq	-192(%rbp), %rax
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
	je	.L277
	.loc 2 413 75 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L277:
	.loc 2 413 75 discriminator 1
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 413 96 is_stmt 1 discriminator 1
	cmpl	$2, %eax
	jne	.L276
	.loc 2 413 140 discriminator 3
	movq	-192(%rbp), %rax
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
	je	.L278
	.loc 2 413 140 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L278:
	.loc 2 413 140 discriminator 3
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 413 26 is_stmt 1 discriminator 3
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL12INSTRUCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L279
	.loc 2 413 26 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L279:
	.loc 2 413 26 discriminator 3
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL12INSTRUCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L280
.L276:
	.loc 2 413 26 discriminator 4
	leaq	.LC108(%rip), %rax
.L280:
	.loc 2 413 26 discriminator 6
	movl	-164(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC119(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 414 57 is_stmt 1
	movq	-192(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L281
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L281:
	movq	-192(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 414 44
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL17ExpressionHandlerP6AsmCtxPK5Token
	.loc 2 414 69
	testl	%eax, %eax
	setne	%al
	.loc 2 414 22
	testb	%al, %al
	je	.L282
	.loc 2 414 102 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 414 108 discriminator 2
	movl	$414, %ecx
	leaq	.LC101(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC110(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 414 214 discriminator 4
	movl	$-1, %r13d
	jmp	.L250
.L282:
	.loc 2 416 25
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 417 50
	movl	$0, %edi
	call	_ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.loc 2 417 25
	cvttsd2sil	%xmm0, %eax
	movl	%eax, %esi
	leaq	.LC90(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 418 26
	cmpq	$0, -192(%rbp)
	je	.L283
	.loc 2 418 74 discriminator 1
	movq	-192(%rbp), %rax
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
	je	.L284
	.loc 2 418 74 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L284:
	.loc 2 418 74 discriminator 1
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 418 95 is_stmt 1 discriminator 1
	cmpl	$2, %eax
	jne	.L283
	.loc 2 418 139 discriminator 3
	movq	-192(%rbp), %rax
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
	je	.L285
	.loc 2 418 139 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L285:
	.loc 2 418 139 discriminator 3
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 418 26 is_stmt 1 discriminator 3
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL12INSTRUCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L286
	.loc 2 418 26 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L286:
	.loc 2 418 26 discriminator 3
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL12INSTRUCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L287
.L283:
	.loc 2 418 26 discriminator 4
	leaq	.LC108(%rip), %rax
.L287:
	.loc 2 418 26 discriminator 6
	movl	-164(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC120(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 419 26 is_stmt 1
	leaq	.LC121(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 421 25
	cmpq	$0, -192(%rbp)
	je	.L288
	.loc 2 421 62 discriminator 1
	movq	-192(%rbp), %rax
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
	je	.L289
	.loc 2 421 62 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L289:
	.loc 2 421 62 discriminator 1
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 421 83 is_stmt 1 discriminator 1
	cmpl	$2, %eax
	jne	.L288
	.loc 2 421 127 discriminator 3
	movq	-192(%rbp), %rax
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
	je	.L290
	.loc 2 421 127 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L290:
	.loc 2 421 127 discriminator 3
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 421 25 is_stmt 1 discriminator 3
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL12INSTRUCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L291
	.loc 2 421 25 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L291:
	.loc 2 421 25 discriminator 3
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL12INSTRUCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L292
.L288:
	.loc 2 421 25 discriminator 4
	leaq	.LC108(%rip), %rax
.L292:
	.loc 2 421 25 discriminator 6
	movq	%rax, %rsi
	leaq	.LC122(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 422 48 is_stmt 1
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L293
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L293:
	movq	-192(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 422 35
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL8AddToAsmP6AsmCtxPK5Token
	.loc 2 422 61
	testl	%eax, %eax
	setne	%al
	.loc 2 422 22
	testb	%al, %al
	je	.L294
	.loc 2 422 94 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 422 100 discriminator 2
	movl	$422, %ecx
	leaq	.LC101(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC80(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 422 198 discriminator 4
	movl	$-1, %r13d
	jmp	.L250
.L294:
	.loc 2 423 26
	cmpq	$0, -192(%rbp)
	je	.L295
	.loc 2 423 71 discriminator 1
	movq	-192(%rbp), %rax
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
	je	.L296
	.loc 2 423 71 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L296:
	.loc 2 423 71 discriminator 1
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 423 92 is_stmt 1 discriminator 1
	cmpl	$2, %eax
	jne	.L295
	.loc 2 423 136 discriminator 3
	movq	-192(%rbp), %rax
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
	je	.L297
	.loc 2 423 136 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L297:
	.loc 2 423 136 discriminator 3
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 423 26 is_stmt 1 discriminator 3
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL12INSTRUCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L298
	.loc 2 423 26 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L298:
	.loc 2 423 26 discriminator 3
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL12INSTRUCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L299
.L295:
	.loc 2 423 26 discriminator 4
	leaq	.LC108(%rip), %rax
.L299:
	.loc 2 423 26 discriminator 6
	movl	-164(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC123(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
.LBE7:
	.loc 2 426 13 is_stmt 1
	jmp	.L300
.L328:
	jmp	.L300
.L257:
.LBE6:
	.loc 2 430 22
	cmpq	$0, -192(%rbp)
	je	.L301
	.loc 2 430 71 discriminator 1
	movq	-192(%rbp), %rax
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
	je	.L302
	.loc 2 430 71 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L302:
	.loc 2 430 71 discriminator 1
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 430 92 is_stmt 1 discriminator 1
	cmpl	$2, %eax
	jne	.L301
	.loc 2 430 136 discriminator 3
	movq	-192(%rbp), %rax
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
	je	.L303
	.loc 2 430 136 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L303:
	.loc 2 430 136 discriminator 3
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 430 22 is_stmt 1 discriminator 3
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL12INSTRUCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L304
	.loc 2 430 22 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L304:
	.loc 2 430 22 discriminator 3
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL12INSTRUCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L305
.L301:
	.loc 2 430 22 discriminator 4
	leaq	.LC108(%rip), %rax
.L305:
	.loc 2 430 22 discriminator 6
	movl	-164(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC119(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 431 44 is_stmt 1
	movq	-192(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L306
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L306:
	movq	-192(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 431 31
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL8AddToAsmP6AsmCtxPK5Token
	.loc 2 431 56
	testl	%eax, %eax
	setne	%al
	.loc 2 431 18
	testb	%al, %al
	je	.L307
	.loc 2 431 89 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 431 95 discriminator 2
	movl	$431, %ecx
	leaq	.LC101(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC124(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 431 192 discriminator 4
	movl	$-1, %r13d
	jmp	.L250
.L307:
	.loc 2 433 21
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 434 46
	movl	$0, %edi
	call	_ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.loc 2 434 21
	cvttsd2sil	%xmm0, %eax
	movl	%eax, %esi
	leaq	.LC90(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 435 22
	cmpq	$0, -192(%rbp)
	je	.L308
	.loc 2 435 70 discriminator 1
	movq	-192(%rbp), %rax
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
	je	.L309
	.loc 2 435 70 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L309:
	.loc 2 435 70 discriminator 1
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 435 91 is_stmt 1 discriminator 1
	cmpl	$2, %eax
	jne	.L308
	.loc 2 435 135 discriminator 3
	movq	-192(%rbp), %rax
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
	je	.L310
	.loc 2 435 135 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L310:
	.loc 2 435 135 discriminator 3
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 435 22 is_stmt 1 discriminator 3
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL12INSTRUCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L311
	.loc 2 435 22 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L311:
	.loc 2 435 22 discriminator 3
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL12INSTRUCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L312
.L308:
	.loc 2 435 22 discriminator 4
	leaq	.LC108(%rip), %rax
.L312:
	.loc 2 435 22 discriminator 6
	movl	-164(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC120(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 436 22 is_stmt 1
	leaq	.LC121(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 438 21
	cmpq	$0, -192(%rbp)
	je	.L313
	.loc 2 438 58 discriminator 1
	movq	-192(%rbp), %rax
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
	je	.L314
	.loc 2 438 58 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L314:
	.loc 2 438 58 discriminator 1
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 438 79 is_stmt 1 discriminator 1
	cmpl	$2, %eax
	jne	.L313
	.loc 2 438 123 discriminator 3
	movq	-192(%rbp), %rax
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
	je	.L315
	.loc 2 438 123 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L315:
	.loc 2 438 123 discriminator 3
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 438 21 is_stmt 1 discriminator 3
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL12INSTRUCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L316
	.loc 2 438 21 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L316:
	.loc 2 438 21 discriminator 3
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL12INSTRUCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L317
.L313:
	.loc 2 438 21 discriminator 4
	leaq	.LC108(%rip), %rax
.L317:
	.loc 2 438 21 discriminator 6
	movq	%rax, %rsi
	leaq	.LC122(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 439 44 is_stmt 1
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L318
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L318:
	movq	-192(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 439 31
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL8AddToAsmP6AsmCtxPK5Token
	.loc 2 439 57
	testl	%eax, %eax
	setne	%al
	.loc 2 439 18
	testb	%al, %al
	je	.L319
	.loc 2 439 90 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 439 96 discriminator 2
	movl	$439, %ecx
	leaq	.LC101(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC80(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 439 194 discriminator 4
	movl	$-1, %r13d
	jmp	.L250
.L319:
	.loc 2 440 22
	cmpq	$0, -192(%rbp)
	je	.L320
	.loc 2 440 67 discriminator 1
	movq	-192(%rbp), %rax
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
	je	.L321
	.loc 2 440 67 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L321:
	.loc 2 440 67 discriminator 1
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 440 88 is_stmt 1 discriminator 1
	cmpl	$2, %eax
	jne	.L320
	.loc 2 440 132 discriminator 3
	movq	-192(%rbp), %rax
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
	je	.L322
	.loc 2 440 132 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L322:
	.loc 2 440 132 discriminator 3
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 440 22 is_stmt 1 discriminator 3
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	_ZL12INSTRUCTIONS(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L323
	.loc 2 440 22 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L323:
	.loc 2 440 22 discriminator 3
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL12INSTRUCTIONS(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L324
.L320:
	.loc 2 440 22 discriminator 4
	leaq	.LC108(%rip), %rax
.L324:
	.loc 2 440 22 discriminator 6
	movl	-164(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC123(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 442 13 is_stmt 1
	jmp	.L300
.L258:
	.loc 2 446 19
	movl	$446, %r8d
	leaq	.LC101(%rip), %rax
	movq	%rax, %rcx
	movl	$446, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 446 174 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 446 180 discriminator 1
	movl	$446, %r9d
	leaq	.LC101(%rip), %r8
	movl	$446, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC42(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 447 19
	leaq	.LC125(%rip), %rax
	movq	%rax, %rcx
	movl	$447, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC106(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 447 181 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 447 187 discriminator 1
	leaq	.LC125(%rip), %r8
	movl	$447, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC107(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 447 328 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 447 334 discriminator 3
	leaq	.LC125(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 448 39
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 448 61
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 448 61 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 448 74 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$448
	leaq	.LC101(%rip), %r9
	movl	$448, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 448 74 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 448 158 is_stmt 1 discriminator 2
	jmp	.L250
.L300:
.LBE5:
.LBE4:
	.loc 2 451 13
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
.LEHE22:
	.loc 2 453 12
	movl	$0, %r13d
.L250:
	.loc 2 454 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r13d, %edx
	.loc 2 362 5
	cmpq	%rbx, %r15
	je	.L246
	jmp	.L329
.L327:
	endbr64
	.loc 2 454 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
.L329:
	.loc 2 362 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L247
.L246:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L247:
	.loc 2 454 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2873:
	.section	.gcc_except_table
.LLSDA2873:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2873-.LLSDACSB2873
.LLSDACSB2873:
	.uleb128 .LEHB21-.LFB2873
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB2873
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L327-.LFB2873
	.uleb128 0
	.uleb128 .LEHB23-.LFB2873
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE2873:
	.text
	.size	_ZL18InstructionHandlerP6AsmCtxPK5Token, .-_ZL18InstructionHandlerP6AsmCtxPK5Token
	.bss
	.align 32
	.type	_ZZL21MathOperationsHandlerP6AsmCtxPK5TokenE8bool_cnt, @object
	.size	_ZZL21MathOperationsHandlerP6AsmCtxPK5TokenE8bool_cnt, 4
_ZZL21MathOperationsHandlerP6AsmCtxPK5TokenE8bool_cnt:
	.zero	64
	.section	.rodata
.LC126:
	.string	"1 32 24 12 func_458:458"
	.align 32
.LC127:
	.string	"MathOperationsHandler"
	.zero	42
	.align 32
.LC128:
	.string	"int MathOperationsHandler(AsmCtx*, const Token*)"
	.zero	47
	.align 32
.LC129:
	.string	"OPERATOR"
	.zero	55
	.align 32
.LC130:
	.string	"%s:%d::CHECK: ExpressionHandler (ctx, RIGHT(token)) == SUCCESS is false\n"
	.zero	55
	.align 32
.LC131:
	.string	"%s:%d::CHECK: ExpressionHandler (ctx, LEFT(token)) == SUCCESS is false\n"
	.zero	56
	.align 32
.LC132:
	.string	"ADD\n"
	.zero	59
	.align 32
.LC133:
	.string	"SUB\n"
	.zero	59
	.align 32
.LC134:
	.string	"FDIV\n"
	.zero	58
	.align 32
.LC135:
	.string	"FMUL\n"
	.zero	58
	.align 32
.LC136:
	.string	"POW\n"
	.zero	59
	.align 32
.LC137:
	.string	"j%c : true_%d"
	.zero	50
	.align 32
.LC138:
	.string	"\npush 0\n"
	.zero	55
	.align 32
.LC139:
	.string	"jmp :true_end_%d\n"
	.zero	46
	.align 32
.LC140:
	.string	": true_%d\n"
	.zero	53
	.align 32
.LC141:
	.string	": true_end_%d\n"
	.zero	49
	.align 32
.LC142:
	.string	"Wrong operator %c\n"
	.zero	45
	.align 32
.LC143:
	.string	"nill ptr\n"
	.zero	54
	.text
	.type	_ZL21MathOperationsHandlerP6AsmCtxPK5Token, @function
_ZL21MathOperationsHandlerP6AsmCtxPK5Token:
.LASANPC2874:
.LFB2874:
	.loc 2 457 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2874
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
	subq	$120, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L330
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L330
	movq	%rax, %rbx
.L330:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC126(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2874(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 2 458 41
	leaq	-64(%r14), %rax
	leaq	.LC127(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB24:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE24:
	.loc 2 460 10
	cmpq	$0, -152(%rbp)
	jne	.L334
.LEHB25:
	.loc 2 460 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 460 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 460 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 460 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 460 255 discriminator 4
	leaq	.LC128(%rip), %r8
	movl	$460, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 460 346 discriminator 6
	leaq	.LC128(%rip), %rax
	movq	%rax, %rcx
	movl	$460, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 460 450 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 460 456 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 460 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 460 33 discriminator 9
	movl	$460, %ecx
	leaq	.LC127(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 460 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 460 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L335
.L334:
	.loc 2 461 10
	cmpq	$0, -160(%rbp)
	jne	.L336
	.loc 2 461 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 461 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 461 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 461 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 461 261 discriminator 4
	leaq	.LC128(%rip), %r8
	movl	$461, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 461 352 discriminator 6
	leaq	.LC128(%rip), %rax
	movq	%rax, %rcx
	movl	$461, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 461 456 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 461 462 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 461 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 461 33 discriminator 9
	movl	$461, %ecx
	leaq	.LC127(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 461 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 461 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L335
.L336:
	.loc 2 463 40
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L337
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L337:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 463 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L338
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L338:
	movq	24(%rax), %rdx
	.loc 2 463 13
	movq	-160(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 465 21
	movq	-160(%rbp), %rax
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
	je	.L339
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L339:
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 465 10
	cmpl	$5, %eax
	je	.L340
	.loc 2 465 52 discriminator 1
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 465 124 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 465 130 discriminator 2
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 465 174 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 465 180 discriminator 4
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 465 206 discriminator 6
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 465 224 discriminator 6
	leaq	.LC129(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 465 264 discriminator 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 465 291 discriminator 9
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 465 315 discriminator 10
	movl	$465, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 465 373 discriminator 11
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 465 420 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 465 442 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 465 442 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 2 465 455 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$465
	leaq	.LC127(%rip), %r9
	movl	$465, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 465 455 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 465 539 is_stmt 1 discriminator 14
	jmp	.L335
.L340:
.LBB9:
	.loc 2 467 26
	movq	-160(%rbp), %rax
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
	je	.L341
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L341:
	movq	-160(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %eax
	.loc 2 467 5
	cmpl	$62, %eax
	seta	%dl
	testb	%dl, %dl
	jne	.L342
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movabsq	$189115999977472, %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L343
	movabsq	$5764607523034234880, %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L344
	jmp	.L342
.L343:
.LBB10:
	.loc 2 474 54
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L345
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L345:
	movq	-160(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 474 41
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_escape 0x2e,0
	call	_ZL17ExpressionHandlerP6AsmCtxPK5Token
	.loc 2 474 67
	testl	%eax, %eax
	setne	%al
	.loc 2 474 18
	testb	%al, %al
	je	.L346
	.loc 2 474 100 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 474 106 discriminator 2
	movl	$474, %ecx
	leaq	.LC127(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC130(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 474 214 discriminator 4
	movl	$-1, %r13d
	jmp	.L335
.L346:
	.loc 2 475 54
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L347
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L347:
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 475 41
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL17ExpressionHandlerP6AsmCtxPK5Token
	.loc 2 475 66
	testl	%eax, %eax
	setne	%al
	.loc 2 475 18
	testb	%al, %al
	je	.L348
	.loc 2 475 99 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 475 105 discriminator 2
	movl	$475, %ecx
	leaq	.LC127(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC131(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 475 212 discriminator 4
	movl	$-1, %r13d
	jmp	.L335
.L348:
	.loc 2 476 34
	movq	-160(%rbp), %rax
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
	je	.L349
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L349:
	movq	-160(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %eax
	cmpl	$47, %eax
	je	.L350
	cmpl	$47, %eax
	jg	.L369
	cmpl	$45, %eax
	je	.L352
	cmpl	$45, %eax
	jg	.L369
	cmpl	$43, %eax
	je	.L353
	cmpl	$43, %eax
	jg	.L369
	cmpl	$4, %eax
	je	.L354
	cmpl	$42, %eax
	je	.L355
	.loc 2 476 239
	jmp	.L369
.L353:
	.loc 2 476 66
	leaq	.LC132(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 476 77
	jmp	.L356
.L352:
	.loc 2 476 102
	leaq	.LC133(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 476 113
	jmp	.L356
.L350:
	.loc 2 476 138
	leaq	.LC134(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 476 150
	jmp	.L356
.L355:
	.loc 2 476 175
	leaq	.LC135(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 476 187
	jmp	.L356
.L354:
	.loc 2 476 212
	leaq	.LC136(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 476 223
	jmp	.L356
.L369:
	.loc 2 476 239
	nop
.L356:
	.loc 2 478 20
	movl	$0, %r13d
	jmp	.L335
.L344:
	.loc 2 483 55
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L357
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L357:
	movq	-160(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 483 42
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL17ExpressionHandlerP6AsmCtxPK5Token
	.loc 2 483 68
	testl	%eax, %eax
	setne	%al
	.loc 2 483 19
	testb	%al, %al
	je	.L358
	.loc 2 483 101 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 483 107 discriminator 2
	movl	$483, %ecx
	leaq	.LC127(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC130(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 483 215 discriminator 4
	movl	$-1, %r13d
	jmp	.L335
.L358:
	.loc 2 484 55
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L359
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L359:
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 484 42
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL17ExpressionHandlerP6AsmCtxPK5Token
	.loc 2 484 67
	testl	%eax, %eax
	setne	%al
	.loc 2 484 19
	testb	%al, %al
	je	.L360
	.loc 2 484 100 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 484 106 discriminator 2
	movl	$484, %ecx
	leaq	.LC127(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC131(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 484 213 discriminator 4
	movl	$-1, %r13d
	jmp	.L335
.L360:
	.loc 2 488 22
	movl	_ZZL21MathOperationsHandlerP6AsmCtxPK5TokenE8bool_cnt(%rip), %edx
	.loc 2 488 53
	movq	-160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	addq	$2147450880, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%sil
	testb	%al, %al
	setle	%al
	andl	%esi, %eax
	testb	%al, %al
	je	.L361
	movq	%rcx, %rdi
	call	__asan_report_load1@PLT
.L361:
	movq	-160(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 488 22
	cmpb	$62, %al
	jne	.L362
	.loc 2 488 22 is_stmt 0 discriminator 1
	movl	$97, %eax
	jmp	.L363
.L362:
	.loc 2 488 22 discriminator 2
	movl	$98, %eax
.L363:
	.loc 2 488 22 discriminator 4
	movl	%eax, %esi
	leaq	.LC137(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 489 22 is_stmt 1
	leaq	.LC138(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 490 22
	movl	_ZZL21MathOperationsHandlerP6AsmCtxPK5TokenE8bool_cnt(%rip), %eax
	movl	%eax, %esi
	leaq	.LC139(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 491 22
	movl	_ZZL21MathOperationsHandlerP6AsmCtxPK5TokenE8bool_cnt(%rip), %eax
	movl	%eax, %esi
	leaq	.LC140(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 492 22
	movl	$100, %esi
	leaq	.LC90(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 493 22
	movl	_ZZL21MathOperationsHandlerP6AsmCtxPK5TokenE8bool_cnt(%rip), %eax
	movl	%eax, %esi
	leaq	.LC141(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 495 21
	movl	_ZZL21MathOperationsHandlerP6AsmCtxPK5TokenE8bool_cnt(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZZL21MathOperationsHandlerP6AsmCtxPK5TokenE8bool_cnt(%rip)
	.loc 2 497 20
	movl	$0, %r13d
	jmp	.L335
.L342:
	.loc 2 499 56
	movq	-160(%rbp), %rax
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
	je	.L364
	movq	%rdx, %rdi
	call	__asan_report_load1@PLT
.L364:
	movq	-160(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 499 19
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC142(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 500 19
	leaq	.LC143(%rip), %rax
	movq	%rax, %rcx
	movl	$500, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC106(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 500 163 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 500 169 discriminator 1
	leaq	.LC143(%rip), %r8
	movl	$500, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC107(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 500 292 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 500 298 discriminator 3
	leaq	.LC143(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 501 23
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 503 39
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 503 61
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 503 61 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 503 74 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$503
	leaq	.LC127(%rip), %r9
	movl	$503, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
.LEHE25:
	.loc 2 503 74 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 503 158 is_stmt 1 discriminator 2
	nop
.L335:
.LBE10:
.LBE9:
	.loc 2 508 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r13d, %edx
	.loc 2 457 5
	cmpq	%rbx, %r15
	je	.L331
	jmp	.L368
.L367:
	endbr64
	.loc 2 508 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
.L368:
	.loc 2 457 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L332
.L331:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L332:
	.loc 2 508 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2874:
	.section	.gcc_except_table
.LLSDA2874:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2874-.LLSDACSB2874
.LLSDACSB2874:
	.uleb128 .LEHB24-.LFB2874
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB2874
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L367-.LFB2874
	.uleb128 0
	.uleb128 .LEHB26-.LFB2874
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE2874:
	.text
	.size	_ZL21MathOperationsHandlerP6AsmCtxPK5Token, .-_ZL21MathOperationsHandlerP6AsmCtxPK5Token
	.section	.rodata
.LC144:
	.string	"1 32 24 12 func_512:512"
	.align 32
.LC145:
	.string	"NativeFunctionHandler"
	.zero	42
	.align 32
.LC146:
	.string	"int NativeFunctionHandler(AsmCtx*, const Token*)"
	.zero	47
	.align 32
.LC147:
	.string	"NATIVE_FUNCTION"
	.zero	48
	.align 32
.LC148:
	.string	"%s:%d::CHECK: ParametrHandler(ctx, LEFT(token)) == SUCCESS is false\n"
	.zero	59
	.align 32
.LC149:
	.string	"FOUT\n"
	.zero	58
	.align 32
.LC150:
	.string	"FIN\n"
	.zero	59
	.align 32
.LC151:
	.string	"FIN USES ONLY ONE PARAMETR !!!!"
	.zero	32
	.align 32
.LC152:
	.string	"; BBBBBBBBBBBBBBBBBBBBBB\n"
	.zero	38
	.align 32
.LC153:
	.string	"%s:%d::CHECK: NameHandler(ctx, var) == SUCCESS is false\n"
	.zero	39
	.align 32
.LC154:
	.string	"%s\n"
	.zero	60
	.align 32
.LC155:
	.string	"pow\n"
	.zero	59
	.align 32
.LC156:
	.string	"to do native functions default\n"
	.zero	32
	.text
	.type	_ZL21NativeFunctionHandlerP6AsmCtxPK5Token, @function
_ZL21NativeFunctionHandlerP6AsmCtxPK5Token:
.LASANPC2875:
.LFB2875:
	.loc 2 511 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2875
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
	je	.L370
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L370
	movq	%rax, %rbx
.L370:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC144(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2875(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 2 512 41
	leaq	-64(%r14), %rax
	leaq	.LC145(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB27:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE27:
	.loc 2 514 10
	cmpq	$0, -168(%rbp)
	jne	.L374
.LEHB28:
	.loc 2 514 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 514 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 514 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 514 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 514 255 discriminator 4
	leaq	.LC146(%rip), %r8
	movl	$514, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 514 346 discriminator 6
	leaq	.LC146(%rip), %rax
	movq	%rax, %rcx
	movl	$514, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 514 450 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 514 456 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 514 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 514 33 discriminator 9
	movl	$514, %ecx
	leaq	.LC145(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 514 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 514 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L375
.L374:
	.loc 2 515 10
	cmpq	$0, -176(%rbp)
	jne	.L376
	.loc 2 515 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 515 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 515 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 515 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 515 261 discriminator 4
	leaq	.LC146(%rip), %r8
	movl	$515, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 515 352 discriminator 6
	leaq	.LC146(%rip), %rax
	movq	%rax, %rcx
	movl	$515, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 515 456 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 515 462 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 515 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 515 33 discriminator 9
	movl	$515, %ecx
	leaq	.LC145(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 515 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 515 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L375
.L376:
	.loc 2 517 40
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L377
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L377:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 517 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L378
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L378:
	movq	24(%rax), %rdx
	.loc 2 517 13
	movq	-176(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 519 21
	movq	-176(%rbp), %rax
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
	je	.L379
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L379:
	movq	-176(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 519 10
	cmpl	$11, %eax
	je	.L380
	.loc 2 519 59 discriminator 1
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 519 131 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 519 137 discriminator 2
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 519 181 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 519 187 discriminator 4
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 519 213 discriminator 6
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 519 231 discriminator 6
	leaq	.LC147(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 519 278 discriminator 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 519 305 discriminator 9
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 519 329 discriminator 10
	movl	$519, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 519 387 discriminator 11
	movq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 519 434 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 519 456 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 519 456 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 2 519 469 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$519
	leaq	.LC145(%rip), %r9
	movl	$519, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 519 469 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 519 553 is_stmt 1 discriminator 14
	jmp	.L375
.L380:
.LBB11:
	.loc 2 521 26
	movq	-176(%rbp), %rax
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
	je	.L381
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L381:
	movq	-176(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 521 5
	cmpl	$4, %eax
	je	.L382
	cmpl	$4, %eax
	jg	.L383
	cmpl	$3, %eax
	jg	.L383
	cmpl	$2, %eax
	jge	.L384
	testl	%eax, %eax
	je	.L385
	cmpl	$1, %eax
	je	.L386
	jmp	.L383
.L385:
.LBB12:
	.loc 2 525 24
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L387
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L387:
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 525 13
	testq	%rax, %rax
	je	.L388
	.loc 2 526 55
	movq	-176(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 526 42
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_escape 0x2e,0
	call	_ZL15ParametrHandlerP6AsmCtxPK5Token
	.loc 2 526 67
	testl	%eax, %eax
	setne	%al
	.loc 2 526 22
	testb	%al, %al
	je	.L388
	.loc 2 526 100 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 526 106 discriminator 2
	movl	$526, %ecx
	leaq	.LC145(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC148(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 526 210 discriminator 4
	movl	$-1, %r13d
	jmp	.L375
.L388:
	.loc 2 529 21
	leaq	.LC149(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 531 20
	movl	$0, %r13d
	jmp	.L375
.L386:
.LBB13:
	.loc 2 536 21
	leaq	.LC150(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 538 33
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L389
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L389:
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 538 20
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L390
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L390:
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	.loc 2 540 24
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 540 36
	leaq	8(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L391
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L391:
	movq	8(%rax), %rax
	.loc 2 540 13
	testq	%rax, %rax
	je	.L392
	.loc 2 542 25
	leaq	.LC145(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 542 53 discriminator 1
	leaq	.LC151(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 542 98 discriminator 2
	movl	$542, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L392:
	.loc 2 545 21
	leaq	.LC152(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 546 21
	leaq	.LC49(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 547 34
	movq	-152(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL11NameHandlerP6AsmCtxPK5Token
	.loc 2 547 45
	testl	%eax, %eax
	setne	%al
	.loc 2 547 18
	testb	%al, %al
	je	.L393
	.loc 2 547 78 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 547 84 discriminator 2
	movl	$547, %ecx
	leaq	.LC145(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC153(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 547 195 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 547 217 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 547 217 is_stmt 0 discriminator 5
	movq	%rax, %rdi
	.loc 2 547 230 is_stmt 1 discriminator 5
	subq	$8, %rsp
	pushq	$547
	leaq	.LC145(%rip), %r9
	movl	$547, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 547 230 is_stmt 0 discriminator 6
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 547 314 is_stmt 1 discriminator 6
	jmp	.L375
.L393:
	.loc 2 554 20
	movl	$0, %r13d
	jmp	.L375
.L384:
.LBE13:
	.loc 2 558 51
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L394
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L394:
	movq	-176(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 558 38
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_escape 0x2e,0
	call	_ZL15ParametrHandlerP6AsmCtxPK5Token
	.loc 2 558 63
	testl	%eax, %eax
	setne	%al
	.loc 2 558 18
	testb	%al, %al
	je	.L395
	.loc 2 558 96 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 558 102 discriminator 2
	movl	$558, %ecx
	leaq	.LC145(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC148(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 558 206 discriminator 4
	movl	$-1, %r13d
	jmp	.L375
.L395:
	.loc 2 560 44
	movq	-176(%rbp), %rax
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
	je	.L396
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L396:
	movq	-176(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 560 22
	cmpl	$2, %eax
	jne	.L397
	.loc 2 560 22 is_stmt 0 discriminator 1
	leaq	.LC6(%rip), %rax
	jmp	.L398
.L397:
	.loc 2 560 22 discriminator 2
	leaq	.LC7(%rip), %rax
.L398:
	.loc 2 560 22 discriminator 4
	movq	%rax, %rsi
	leaq	.LC154(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 562 20 is_stmt 1
	movl	$0, %r13d
	jmp	.L375
.L382:
	.loc 2 566 51
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L399
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L399:
	movq	-176(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 566 38
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL15ParametrHandlerP6AsmCtxPK5Token
	.loc 2 566 63
	testl	%eax, %eax
	setne	%al
	.loc 2 566 18
	testb	%al, %al
	je	.L400
	.loc 2 566 96 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 566 102 discriminator 2
	movl	$566, %ecx
	leaq	.LC145(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC148(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 566 206 discriminator 4
	movl	$-1, %r13d
	jmp	.L375
.L400:
	.loc 2 568 45
	movq	-176(%rbp), %rax
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
	je	.L401
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L401:
	movq	-176(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 568 22
	cmpl	$2, %eax
	jne	.L402
	.loc 2 568 22 is_stmt 0 discriminator 1
	leaq	.LC6(%rip), %rax
	jmp	.L403
.L402:
	.loc 2 568 22 discriminator 2
	leaq	.LC7(%rip), %rax
.L403:
	.loc 2 568 22 discriminator 4
	movq	%rax, %rsi
	leaq	.LC155(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 570 20 is_stmt 1
	movl	$0, %r13d
	jmp	.L375
.L383:
	.loc 2 573 19
	movl	$573, %r8d
	leaq	.LC145(%rip), %rax
	movq	%rax, %rcx
	movl	$573, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 573 174 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 573 180 discriminator 1
	movl	$573, %r9d
	leaq	.LC145(%rip), %r8
	movl	$573, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC42(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 574 19
	leaq	.LC156(%rip), %rax
	movq	%rax, %rcx
	movl	$574, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC106(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 574 185 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 574 191 discriminator 1
	leaq	.LC156(%rip), %r8
	movl	$574, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC107(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 574 336 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 574 342 discriminator 3
	leaq	.LC156(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 575 39
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 575 61
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 575 61 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 2 575 74 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$575
	leaq	.LC145(%rip), %r9
	movl	$575, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
.LEHE28:
	.loc 2 575 74 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 575 158 is_stmt 1 discriminator 2
	nop
.L375:
.LBE12:
.LBE11:
	.loc 2 580 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r13d, %edx
	.loc 2 511 5
	cmpq	%rbx, %r15
	je	.L371
	jmp	.L407
.L406:
	endbr64
	.loc 2 580 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB29:
	call	_Unwind_Resume@PLT
.LEHE29:
.L407:
	.loc 2 511 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L372
.L371:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L372:
	.loc 2 580 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2875:
	.section	.gcc_except_table
.LLSDA2875:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2875-.LLSDACSB2875
.LLSDACSB2875:
	.uleb128 .LEHB27-.LFB2875
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB2875
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L406-.LFB2875
	.uleb128 0
	.uleb128 .LEHB29-.LFB2875
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE2875:
	.text
	.size	_ZL21NativeFunctionHandlerP6AsmCtxPK5Token, .-_ZL21NativeFunctionHandlerP6AsmCtxPK5Token
	.section	.rodata
.LC157:
	.string	"1 32 24 12 func_584:584"
	.align 32
.LC158:
	.string	"FunctionReturnHandler"
	.zero	42
	.align 32
.LC159:
	.string	"int FunctionReturnHandler(AsmCtx*, const Token*)"
	.zero	47
	.align 32
.LC160:
	.string	"FUNCTION_RET_TYPE"
	.zero	46
	.align 32
.LC161:
	.string	"\n; return ;\n"
	.zero	51
	.align 32
.LC162:
	.string	"\npop r%cx ;ret reg\n"
	.zero	44
	.align 32
.LC163:
	.string	"ret\n\n"
	.zero	58
	.align 32
.LC164:
	.string	";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
	.zero	58
	.text
	.type	_ZL21FunctionReturnHandlerP6AsmCtxPK5Token, @function
_ZL21FunctionReturnHandlerP6AsmCtxPK5Token:
.LASANPC2876:
.LFB2876:
	.loc 2 583 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2876
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
	subq	$120, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L408
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L408
	movq	%rax, %rbx
.L408:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC157(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2876(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 2 584 41
	leaq	-64(%r14), %rax
	leaq	.LC158(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB30:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE30:
	.loc 2 586 10
	cmpq	$0, -152(%rbp)
	jne	.L412
.LEHB31:
	.loc 2 586 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 586 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 586 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 586 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 586 255 discriminator 4
	leaq	.LC159(%rip), %r8
	movl	$586, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 586 346 discriminator 6
	leaq	.LC159(%rip), %rax
	movq	%rax, %rcx
	movl	$586, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 586 450 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 586 456 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 586 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 586 33 discriminator 9
	movl	$586, %ecx
	leaq	.LC158(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 586 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 586 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L413
.L412:
	.loc 2 587 10
	cmpq	$0, -160(%rbp)
	jne	.L414
	.loc 2 587 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 587 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 587 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 587 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 587 261 discriminator 4
	leaq	.LC159(%rip), %r8
	movl	$587, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 587 352 discriminator 6
	leaq	.LC159(%rip), %rax
	movq	%rax, %rcx
	movl	$587, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 587 456 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 587 462 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 587 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 587 33 discriminator 9
	movl	$587, %ecx
	leaq	.LC158(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 587 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 587 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L413
.L414:
	.loc 2 589 40
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L415
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L415:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 589 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L416
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L416:
	movq	24(%rax), %rdx
	.loc 2 589 13
	movq	-160(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 591 21
	movq	-160(%rbp), %rax
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
	je	.L417
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L417:
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 591 10
	cmpl	$4, %eax
	je	.L418
	.loc 2 591 61 discriminator 1
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 591 133 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 591 139 discriminator 2
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 591 183 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 591 189 discriminator 4
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 591 215 discriminator 6
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 591 233 discriminator 6
	leaq	.LC160(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 591 282 discriminator 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 591 309 discriminator 9
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 591 333 discriminator 10
	movl	$591, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 591 391 discriminator 11
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 591 438 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 591 460 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 591 460 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 2 591 473 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$591
	leaq	.LC158(%rip), %r9
	movl	$591, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 591 473 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 591 557 is_stmt 1 discriminator 14
	jmp	.L413
.L418:
	.loc 2 593 13
	leaq	.LC161(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
	.loc 2 595 17
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L419
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L419:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 595 5
	testq	%rax, %rax
	jne	.L420
	.loc 2 596 42
	movl	$0, %edi
	call	_ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.loc 2 596 17
	cvttsd2sil	%xmm0, %eax
	movl	%eax, %esi
	leaq	.LC90(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	jmp	.L421
.L420:
	.loc 2 599 20
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L422
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L422:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 599 32
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	cmpb	$3, %dl
	setle	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L423
	movq	%rcx, %rdi
	call	__asan_report_load4@PLT
.L423:
	movl	16(%rax), %eax
	.loc 2 599 9
	cmpl	$6, %eax
	jne	.L424
	.loc 2 600 22
	leaq	.LC55(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
.L424:
	.loc 2 602 40
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L425
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L425:
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 602 27
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL8AddToAsmP6AsmCtxPK5Token
	.loc 2 602 52
	testl	%eax, %eax
	setne	%al
	.loc 2 602 14
	testb	%al, %al
	je	.L421
	.loc 2 602 85 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 602 91 discriminator 2
	movl	$602, %ecx
	leaq	.LC158(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC124(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 602 207 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 602 229 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 602 229 is_stmt 0 discriminator 5
	movq	%rax, %rdi
	.loc 2 602 242 is_stmt 1 discriminator 5
	subq	$8, %rsp
	pushq	$602
	leaq	.LC158(%rip), %r9
	movl	$602, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 602 242 is_stmt 0 discriminator 6
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 602 326 is_stmt 1 discriminator 6
	jmp	.L413
.L421:
	.loc 2 605 13
	movl	$99, %esi
	leaq	.LC162(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
	.loc 2 606 13
	leaq	.LC163(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 2 608 13
	leaq	.LC164(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
.LEHE31:
	.loc 2 611 12
	movl	$0, %r13d
.L413:
	.loc 2 612 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r13d, %edx
	.loc 2 583 5
	cmpq	%rbx, %r15
	je	.L409
	jmp	.L429
.L428:
	endbr64
	.loc 2 612 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB32:
	call	_Unwind_Resume@PLT
.LEHE32:
.L429:
	.loc 2 583 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L410
.L409:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L410:
	.loc 2 612 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2876:
	.section	.gcc_except_table
.LLSDA2876:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2876-.LLSDACSB2876
.LLSDACSB2876:
	.uleb128 .LEHB30-.LFB2876
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB2876
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L428-.LFB2876
	.uleb128 0
	.uleb128 .LEHB32-.LFB2876
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE2876:
	.text
	.size	_ZL21FunctionReturnHandlerP6AsmCtxPK5Token, .-_ZL21FunctionReturnHandlerP6AsmCtxPK5Token
	.section	.rodata
.LC165:
	.string	"1 32 24 12 func_616:616"
	.align 32
.LC166:
	.string	"ParametrHandler"
	.zero	48
	.align 32
.LC167:
	.string	"int ParametrHandler(AsmCtx*, const Token*)"
	.zero	53
	.align 32
.LC168:
	.string	"%s:%d::CHECK: ParametrHandler(ctx, RIGHT(token)) == SUCCESS is false\n"
	.zero	58
	.text
	.type	_ZL15ParametrHandlerP6AsmCtxPK5Token, @function
_ZL15ParametrHandlerP6AsmCtxPK5Token:
.LASANPC2877:
.LFB2877:
	.loc 2 615 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2877
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
	subq	$120, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L430
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L430
	movq	%rax, %rbx
.L430:
	leaq	96(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC165(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2877(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 2 616 41
	leaq	-64(%r14), %rax
	leaq	.LC166(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB33:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE33:
	.loc 2 618 10
	cmpq	$0, -152(%rbp)
	jne	.L434
.LEHB34:
	.loc 2 618 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 618 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 618 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 618 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 618 255 discriminator 4
	leaq	.LC167(%rip), %r8
	movl	$618, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 618 346 discriminator 6
	leaq	.LC167(%rip), %rax
	movq	%rax, %rcx
	movl	$618, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 618 450 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 618 456 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 618 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 618 33 discriminator 9
	movl	$618, %ecx
	leaq	.LC166(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 618 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 618 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L435
.L434:
	.loc 2 619 10
	cmpq	$0, -160(%rbp)
	jne	.L436
	.loc 2 619 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 619 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 619 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 619 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 619 261 discriminator 4
	leaq	.LC167(%rip), %r8
	movl	$619, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 619 352 discriminator 6
	leaq	.LC167(%rip), %rax
	movq	%rax, %rcx
	movl	$619, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 619 456 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 2 619 462 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 619 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 619 33 discriminator 9
	movl	$619, %ecx
	leaq	.LC166(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 619 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 619 115 discriminator 12
	movl	$-2, %r13d
	jmp	.L435
.L436:
	.loc 2 621 40
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L437
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L437:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 621 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L438
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L438:
	movq	24(%rax), %rdx
	.loc 2 621 13
	movq	-160(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 623 21
	movq	-160(%rbp), %rax
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
	je	.L439
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L439:
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 623 10
	cmpl	$12, %eax
	je	.L440
	.loc 2 623 52 discriminator 1
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 623 124 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 623 130 discriminator 2
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 623 174 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 623 180 discriminator 4
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 623 206 discriminator 6
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 623 224 discriminator 6
	leaq	.LC95(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 623 264 discriminator 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 623 291 discriminator 9
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 623 315 discriminator 10
	movl	$623, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 623 373 discriminator 11
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 623 420 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 623 442 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 623 442 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 2 623 455 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$623
	leaq	.LC166(%rip), %r9
	movl	$623, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 623 455 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 2 623 539 is_stmt 1 discriminator 14
	jmp	.L435
.L440:
	.loc 2 628 16
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L441
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L441:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 628 28
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	cmpb	$3, %dl
	setle	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L442
	movq	%rcx, %rdi
	call	__asan_report_load4@PLT
.L442:
	movl	16(%rax), %eax
	.loc 2 628 5
	cmpl	$3, %eax
	je	.L443
	.loc 2 629 49
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 629 36
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_escape 0x2e,0
	call	_ZL17ExpressionHandlerP6AsmCtxPK5Token
	.loc 2 629 61
	testl	%eax, %eax
	setne	%al
	.loc 2 629 14
	testb	%al, %al
	je	.L443
	.loc 2 629 94 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 629 100 discriminator 2
	movl	$629, %ecx
	leaq	.LC166(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC110(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 629 206 discriminator 4
	movl	$-1, %r13d
	jmp	.L435
.L443:
	.loc 2 631 16
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L444
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L444:
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 631 5
	testq	%rax, %rax
	je	.L445
	.loc 2 631 38 discriminator 1
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 631 51 discriminator 1
	leaq	16(%rax), %rdx
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	cmpb	$3, %dl
	setle	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L446
	.loc 2 631 51 is_stmt 0
	movq	%rcx, %rdi
	call	__asan_report_load4@PLT
.L446:
	.loc 2 631 51 discriminator 1
	movl	16(%rax), %eax
	.loc 2 631 28 is_stmt 1 discriminator 1
	cmpl	$3, %eax
	je	.L445
	.loc 2 632 47
	movq	-160(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 632 34
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL15ParametrHandlerP6AsmCtxPK5Token
	.loc 2 632 60
	testl	%eax, %eax
	setne	%al
	.loc 2 632 14
	testb	%al, %al
	je	.L445
	.loc 2 632 93 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 632 99 discriminator 2
	movl	$632, %ecx
	leaq	.LC166(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC168(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
.LEHE34:
	.loc 2 632 204 discriminator 4
	movl	$-1, %r13d
	jmp	.L435
.L445:
	.loc 2 634 12
	movl	$0, %r13d
.L435:
	.loc 2 635 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r13d, %edx
	.loc 2 615 5
	cmpq	%rbx, %r15
	je	.L431
	jmp	.L450
.L449:
	endbr64
	.loc 2 635 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB35:
	call	_Unwind_Resume@PLT
.LEHE35:
.L450:
	.loc 2 615 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L432
.L431:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L432:
	.loc 2 635 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2877:
	.section	.gcc_except_table
.LLSDA2877:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2877-.LLSDACSB2877
.LLSDACSB2877:
	.uleb128 .LEHB33-.LFB2877
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB2877
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L449-.LFB2877
	.uleb128 0
	.uleb128 .LEHB35-.LFB2877
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE2877:
	.text
	.size	_ZL15ParametrHandlerP6AsmCtxPK5Token, .-_ZL15ParametrHandlerP6AsmCtxPK5Token
	.section	.rodata
.LC169:
	.string	"1 32 24 12 func_639:639"
	.align 32
.LC170:
	.string	"ConstantHandler"
	.zero	48
	.align 32
.LC171:
	.string	"int ConstantHandler(AsmCtx*, const Token*)"
	.zero	53
	.align 32
.LC172:
	.string	"CONSTANT"
	.zero	55
	.text
	.type	_ZL15ConstantHandlerP6AsmCtxPK5Token, @function
_ZL15ConstantHandlerP6AsmCtxPK5Token:
.LASANPC2878:
.LFB2878:
	.loc 2 638 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2878
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
	subq	$120, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L451
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L451
	movq	%rax, %rbx
.L451:
	leaq	96(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC169(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2878(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 2 639 41
	leaq	-64(%r13), %rax
	leaq	.LC170(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB36:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE36:
	.loc 2 641 10
	cmpq	$0, -152(%rbp)
	jne	.L455
.LEHB37:
	.loc 2 641 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 641 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 641 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 641 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 641 255 discriminator 4
	leaq	.LC171(%rip), %r8
	movl	$641, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 641 346 discriminator 6
	leaq	.LC171(%rip), %rax
	movq	%rax, %rcx
	movl	$641, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 641 450 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r14
	.loc 2 641 456 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r14, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 641 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 641 33 discriminator 9
	movl	$641, %ecx
	leaq	.LC170(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 641 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 641 115 discriminator 12
	movl	$-2, %r14d
	jmp	.L456
.L455:
	.loc 2 642 10
	cmpq	$0, -160(%rbp)
	jne	.L457
	.loc 2 642 45 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 642 51 discriminator 1
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 642 109 discriminator 3
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 642 255 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 642 261 discriminator 4
	leaq	.LC171(%rip), %r8
	movl	$642, %ecx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 642 352 discriminator 6
	leaq	.LC171(%rip), %rax
	movq	%rax, %rcx
	movl	$642, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 642 456 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r14
	.loc 2 642 462 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r14, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 642 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 2 642 33 discriminator 9
	movl	$642, %ecx
	leaq	.LC170(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 642 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 2 642 115 discriminator 12
	movl	$-2, %r14d
	jmp	.L456
.L457:
	.loc 2 644 40
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L458
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L458:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 644 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L459
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L459:
	movq	24(%rax), %rdx
	.loc 2 644 13
	movq	-160(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 2 646 21
	movq	-160(%rbp), %rax
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
	je	.L460
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L460:
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 646 10
	cmpl	$8, %eax
	je	.L461
	.loc 2 646 52 discriminator 1
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 646 124 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 646 130 discriminator 2
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 646 174 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 2 646 180 discriminator 4
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 2 646 206 discriminator 6
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 2 646 224 discriminator 6
	leaq	.LC172(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 2 646 264 discriminator 8
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 646 291 discriminator 9
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 646 315 discriminator 10
	movl	$646, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 646 373 discriminator 11
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 2 646 420 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 646 442 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 2 646 442 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 2 646 455 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$646
	leaq	.LC170(%rip), %r9
	movl	$646, %r8d
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 2 646 455 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r14d
	.loc 2 646 539 is_stmt 1 discriminator 14
	jmp	.L456
.L461:
	.loc 2 648 52
	movq	-160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L462
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L462:
	movq	-160(%rbp), %rax
	movsd	24(%rax), %xmm1
	.loc 2 648 38
	movsd	.LC173(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	floor@PLT
	.loc 2 648 13
	cvttsd2sil	%xmm0, %eax
	movl	%eax, %esi
	leaq	.LC90(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
.LEHE37:
	.loc 2 650 12
	movl	$0, %r14d
.L456:
	.loc 2 651 5
	leaq	-64(%r13), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r14d, %edx
	.loc 2 638 5
	cmpq	%rbx, %r15
	je	.L452
	jmp	.L466
.L465:
	endbr64
	.loc 2 651 5
	movq	%rax, %rbx
	leaq	-64(%r13), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB38:
	call	_Unwind_Resume@PLT
.LEHE38:
.L466:
	.loc 2 638 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L453
.L452:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L453:
	.loc 2 651 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2878:
	.section	.gcc_except_table
.LLSDA2878:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2878-.LLSDACSB2878
.LLSDACSB2878:
	.uleb128 .LEHB36-.LFB2878
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB2878
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L465-.LFB2878
	.uleb128 0
	.uleb128 .LEHB38-.LFB2878
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE2878:
	.text
	.size	_ZL15ConstantHandlerP6AsmCtxPK5Token, .-_ZL15ConstantHandlerP6AsmCtxPK5Token
	.globl	__asan_stack_malloc_2
	.section	.rodata
	.align 8
.LC174:
	.string	"2 32 24 10 func_37:37 96 24 4 ctx_"
	.align 32
.LC175:
	.string	"TranslateToAsm"
	.zero	49
	.align 32
.LC176:
	.string	"program"
	.zero	56
	.align 32
.LC177:
	.string	"int TranslateToAsm(const Program*, const char*)"
	.zero	48
	.align 32
.LC178:
	.string	"./src/TranslateToAsm.cpp"
	.zero	39
	.align 32
.LC179:
	.string	"name"
	.zero	59
	.align 32
.LC180:
	.string	"Program root can't be NULL, %p\n"
	.zero	32
	.align 32
.LC181:
	.string	"Program must have string arr to work properly"
	.zero	50
	.align 32
.LC182:
	.string	"Couldn't open %s for ASM file\n"
	.zero	33
	.align 32
.LC183:
	.string	"Number of global variables from program and from ctx differs (ctx: %d, program: %d)\n"
	.zero	43
	.align 32
.LC184:
	.string	"%s:%d returned SUCCESS "
	.zero	40
	.text
	.globl	_Z14TranslateToAsmPK7ProgramPKc
	.type	_Z14TranslateToAsmPK7ProgramPKc, @function
_Z14TranslateToAsmPK7ProgramPKc:
.LASANPC2879:
.LFB2879:
	.file 3 "./src/TranslateToAsm.cpp"
	.loc 3 36 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2879
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
	movq	%rsi, -240(%rbp)
	leaq	-208(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L467
	movl	$160, %edi
	call	__asan_stack_malloc_2@PLT
	testq	%rax, %rax
	je	.L467
	movq	%rax, %rbx
.L467:
	leaq	160(%rbx), %rax
	movq	%rax, %r14
	movq	$1102416563, (%rbx)
	leaq	.LC174(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2879(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-234881024, 2147450884(%r12)
	movl	$-218959118, 2147450888(%r12)
	movl	$-218103808, 2147450892(%r12)
	movl	$-202116109, 2147450896(%r12)
	.loc 3 37 40
	leaq	-128(%r14), %rax
	leaq	.LC175(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB39:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE39:
	.loc 3 38 10
	cmpq	$0, -232(%rbp)
	jne	.L471
.LEHB40:
	.loc 3 38 47 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 3 38 53 discriminator 1
	leaq	.LC176(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 38 113 discriminator 3
	leaq	.LC176(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 38 261 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 38 267 discriminator 4
	leaq	.LC177(%rip), %r8
	movl	$38, %ecx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 38 355 discriminator 6
	leaq	.LC177(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 38 456 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 3 38 462 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 38 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 38 33 discriminator 9
	movl	$38, %ecx
	leaq	.LC175(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 38 91 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 3 38 133 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 38 155 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 38 155 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 3 38 168 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$38
	leaq	.LC175(%rip), %r9
	movl	$38, %r8d
	leaq	.LC178(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 3 38 168 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 3 38 248 is_stmt 1 discriminator 14
	jmp	.L472
.L471:
	.loc 3 39 10
	cmpq	$0, -240(%rbp)
	jne	.L473
	.cfi_escape 0x2e,0
	.loc 3 39 44 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 3 39 50 discriminator 1
	leaq	.LC179(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 39 107 discriminator 3
	leaq	.LC179(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 39 252 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 39 258 discriminator 4
	leaq	.LC177(%rip), %r8
	movl	$39, %ecx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 39 346 discriminator 6
	leaq	.LC177(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 39 447 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r13
	.loc 3 39 453 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 39 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 39 33 discriminator 9
	movl	$39, %ecx
	leaq	.LC175(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 39 91 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 3 39 133 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 39 155 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 39 155 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 3 39 168 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$39
	leaq	.LC175(%rip), %r9
	movl	$39, %r8d
	leaq	.LC178(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 3 39 168 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 3 39 248 is_stmt 1 discriminator 14
	jmp	.L472
.L473:
	.loc 3 43 19
	movq	-232(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L474
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L474:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	.loc 3 43 5
	testq	%rax, %rax
	jne	.L475
	.loc 3 45 17
	leaq	.LC175(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 3 45 99 discriminator 1
	movq	-232(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L476
	.loc 3 45 99 is_stmt 0
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L476:
	.loc 3 45 99 discriminator 1
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	.loc 3 45 45 is_stmt 1 discriminator 1
	movq	%rax, %rsi
	leaq	.LC180(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 45 112 discriminator 2
	movl	$45, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 46 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 46 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 46 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 3 46 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$46
	leaq	.LC175(%rip), %r9
	movl	$46, %r8d
	leaq	.LC178(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 3 46 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 3 46 150 is_stmt 1 discriminator 2
	jmp	.L472
.L475:
	.loc 3 49 19
	movq	-232(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L477
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L477:
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	.loc 3 49 5
	testq	%rax, %rax
	jne	.L478
	.loc 3 51 17
	leaq	.LC175(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	printf@PLT
	.loc 3 51 45 discriminator 1
	leaq	.LC181(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 3 51 104 discriminator 2
	movl	$51, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 52 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 52 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 52 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 3 52 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$52
	leaq	.LC175(%rip), %r9
	movl	$52, %r8d
	leaq	.LC178(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 3 52 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 3 52 150 is_stmt 1 discriminator 2
	jmp	.L472
.L478:
	.loc 3 55 20
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	.cfi_escape 0x2e,0
	call	_ZL11OpenAsmFilePKc
	.loc 3 55 27
	testl	%eax, %eax
	setne	%al
	.loc 3 55 5
	testb	%al, %al
	je	.L479
	.loc 3 57 17
	leaq	.LC175(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 57 45 discriminator 1
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC182(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 57 94 discriminator 2
	movl	$57, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 58 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 58 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 58 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 3 58 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$58
	leaq	.LC175(%rip), %r9
	movl	$58, %r8d
	leaq	.LC178(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 3 58 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 3 58 150 is_stmt 1 discriminator 2
	jmp	.L472
.L479:
	.loc 3 61 12
	leaq	-64(%r14), %rax
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
	movl	$24, %edx
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
	je	.L480
	movl	$24, %esi
	movq	%rax, %rdi
	call	__asan_report_store_n@PLT
.L480:
	movq	$0, -64(%r14)
	movq	$0, -56(%r14)
	movq	$0, -48(%r14)
	.loc 3 62 13
	leaq	-64(%r14), %rax
	movq	%rax, -216(%rbp)
	.loc 3 64 19
	movq	-232(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_escape 0x2e,0
	call	_Z10AsmCtxCtorP6AsmCtxPK7Program@PLT
	.loc 3 64 34
	testl	%eax, %eax
	setne	%al
	.loc 3 64 5
	testb	%al, %al
	je	.L481
	.loc 3 65 16
	movl	$-1, %r13d
	jmp	.L472
.L481:
	.loc 3 70 19
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL10SetAsmFileP6AsmCtx
	.loc 3 70 25
	testl	%eax, %eax
	setne	%al
	.loc 3 70 5
	testb	%al, %al
	jne	.L496
	.loc 3 73 32
	movq	-232(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L484
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L484:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 3 73 17
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL8AddToAsmP6AsmCtxPK5Token
	.loc 3 73 38
	testl	%eax, %eax
	setne	%al
	.loc 3 73 5
	testb	%al, %al
	jne	.L497
	.loc 3 76 14
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
	je	.L486
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L486:
	movq	-216(%rbp), %rax
	movl	16(%rax), %ecx
	.loc 3 76 51
	movq	-232(%rbp), %rax
	addq	$56, %rax
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
	je	.L487
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L487:
	movq	-232(%rbp), %rax
	movl	56(%rax), %eax
	.loc 3 76 5
	cmpl	%eax, %ecx
	je	.L488
	.loc 3 78 17
	leaq	.LC175(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 78 175 discriminator 1
	movq	-232(%rbp), %rax
	addq	$56, %rax
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
	je	.L489
	.loc 3 78 175 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L489:
	.loc 3 78 175 discriminator 1
	movq	-232(%rbp), %rax
	movl	56(%rax), %edx
	.loc 3 78 45 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax
	addq	$16, %rax
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
	je	.L490
	.loc 3 78 45 is_stmt 0
	movq	%rcx, %rdi
	call	__asan_report_load4@PLT
.L490:
	.loc 3 78 45 discriminator 1
	movq	-216(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %esi
	leaq	.LC183(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 78 206 is_stmt 1 discriminator 2
	movl	$78, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 79 14
	jmp	.L483
.L488:
	.loc 3 82 23
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL14InitGlobalVarsPK6AsmCtx
	.loc 3 82 29
	testl	%eax, %eax
	setne	%al
	.loc 3 82 5
	testb	%al, %al
	jne	.L498
	.loc 3 85 17
	call	_ZL12CloseAsmFilev
	.loc 3 86 15
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10AsmCtxDtorP6AsmCtx@PLT
	.loc 3 88 31
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 88 53
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 88 53 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 3 88 66 is_stmt 1 discriminator 1
	movl	$88, %r8d
	leaq	.LC175(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC184(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 3 88 66 is_stmt 0 discriminator 2
	movl	%eax, %r13d
	.loc 3 88 116 is_stmt 1 discriminator 2
	jmp	.L472
.L496:
	.loc 3 71 14
	nop
	jmp	.L483
.L497:
	.loc 3 74 14
	nop
	jmp	.L483
.L498:
	.loc 3 83 14
	nop
.L483:
	.loc 3 92 17
	call	_ZL12CloseAsmFilev
	.loc 3 93 15
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10AsmCtxDtorP6AsmCtx@PLT
	.loc 3 95 31
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 95 53
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 95 53 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 3 95 66 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$95
	leaq	.LC175(%rip), %r9
	movl	$95, %r8d
	leaq	.LC178(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
.LEHE40:
	.loc 3 95 66 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r13d
	.loc 3 95 146 is_stmt 1 discriminator 2
	nop
.L472:
	.loc 3 96 5
	leaq	-128(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r13d, %edx
	.loc 3 36 5
	cmpq	%rbx, %r15
	je	.L468
	jmp	.L495
.L494:
	endbr64
	.loc 3 96 5
	movq	%rax, %rbx
	leaq	-128(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB41:
	call	_Unwind_Resume@PLT
.LEHE41:
.L495:
	.loc 3 36 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rsi
	movabsq	$-723401728380766731, %rdi
	movq	%rsi, 2147450880(%r12)
	movq	%rdi, 2147450888(%r12)
	movl	$-168430091, 2147450896(%r12)
	movq	248(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L469
.L468:
	movq	$0, 2147450880(%r12)
	movq	$0, 2147450888(%r12)
	movl	$0, 2147450896(%r12)
.L469:
	.loc 3 96 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2879:
	.section	.gcc_except_table
.LLSDA2879:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2879-.LLSDACSB2879
.LLSDACSB2879:
	.uleb128 .LEHB39-.LFB2879
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB2879
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L494-.LFB2879
	.uleb128 0
	.uleb128 .LEHB41-.LFB2879
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSE2879:
	.text
	.size	_Z14TranslateToAsmPK7ProgramPKc, .-_Z14TranslateToAsmPK7ProgramPKc
	.section	.rodata
.LC185:
	.string	"1 32 24 12 func_100:100"
	.align 32
.LC186:
	.string	"AddToAsm"
	.zero	55
	.align 32
.LC187:
	.string	"int AddToAsm(AsmCtx*, const Token*)"
	.zero	60
	.align 32
.LC188:
	.string	"Wrong token type\n"
	.zero	46
	.text
	.type	_ZL8AddToAsmP6AsmCtxPK5Token, @function
_ZL8AddToAsmP6AsmCtxPK5Token:
.LASANPC2880:
.LFB2880:
	.loc 3 99 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2880
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
	subq	$120, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	leaq	-144(%rbp), %r12
	movq	%r12, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L499
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L499
	movq	%rax, %r12
.L499:
	leaq	96(%r12), %rax
	movq	%rax, %r14
	movq	$1102416563, (%r12)
	leaq	.LC185(%rip), %rax
	movq	%rax, 8(%r12)
	leaq	.LASANPC2880(%rip), %rax
	movq	%rax, 16(%r12)
	movq	%r12, %r13
	shrq	$3, %r13
	movl	$-235802127, 2147450880(%r13)
	movl	$-218103808, 2147450884(%r13)
	movl	$-202116109, 2147450888(%r13)
	.loc 3 100 41
	leaq	-64(%r14), %rax
	leaq	.LC186(%rip), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
.LEHB42:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE42:
	.loc 3 101 10
	cmpq	$0, -152(%rbp)
	jne	.L503
.LEHB43:
	.loc 3 101 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 3 101 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 101 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 101 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 101 255 discriminator 4
	leaq	.LC187(%rip), %r8
	movl	$101, %ecx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 101 344 discriminator 6
	leaq	.LC187(%rip), %rax
	movq	%rax, %rcx
	movl	$101, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 101 446 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rbx
	.loc 3 101 452 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 101 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 101 33 discriminator 9
	movl	$101, %ecx
	leaq	.LC186(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 101 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 3 101 134 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 101 156 discriminator 12
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 101 156 is_stmt 0 discriminator 13
	movq	%rax, %rdi
	.loc 3 101 169 is_stmt 1 discriminator 13
	subq	$8, %rsp
	pushq	$101
	leaq	.LC186(%rip), %r9
	movl	$101, %r8d
	leaq	.LC178(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 3 101 169 is_stmt 0 discriminator 14
	addq	$16, %rsp
	movl	%eax, %ebx
	.loc 3 101 251 is_stmt 1 discriminator 14
	jmp	.L504
.L503:
	.loc 3 103 5
	cmpq	$0, -160(%rbp)
	jne	.L505
	.loc 3 104 16
	movl	$0, %ebx
	jmp	.L504
.L505:
	.loc 3 106 40
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L506
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L506:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 106 50
	leaq	24(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L507
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L507:
	movq	24(%rax), %rdx
	.loc 3 106 13
	movq	-160(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	.cfi_escape 0x2e,0
	call	_Z8LogTokenPK5TokenPKcPS3_@PLT
	.loc 3 109 20
	movq	-160(%rbp), %rax
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
	je	.L508
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L508:
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	.loc 3 109 5
	cmpl	$61, %eax
	ja	.L509
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L511(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L511(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L511:
	.long	.L509-.L511
	.long	.L522-.L511
	.long	.L521-.L511
	.long	.L520-.L511
	.long	.L519-.L511
	.long	.L518-.L511
	.long	.L517-.L511
	.long	.L509-.L511
	.long	.L516-.L511
	.long	.L515-.L511
	.long	.L514-.L511
	.long	.L513-.L511
	.long	.L512-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L509-.L511
	.long	.L510-.L511
	.text
.L517:
	.loc 3 111 38
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL11NameHandlerP6AsmCtxPK5Token
	movl	%eax, %ebx
	.loc 3 111 49
	jmp	.L504
.L520:
	.loc 3 112 53
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZL17VarInitializationP6AsmCtxPK5Tokeni
	movl	%eax, %ebx
	.loc 3 112 64
	jmp	.L504
.L515:
	.loc 3 113 46
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL15FunctionHandlerP6AsmCtxPK5Token
	movl	%eax, %ebx
	.loc 3 113 57
	jmp	.L504
.L514:
	.loc 3 114 38
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL11CallHandlerP6AsmCtxPK5Token
	movl	%eax, %ebx
	.loc 3 114 49
	jmp	.L504
.L516:
	.loc 3 115 46
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL15ConstantHandlerP6AsmCtxPK5Token
	movl	%eax, %ebx
	.loc 3 115 57
	jmp	.L504
.L521:
	.loc 3 116 53
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL18InstructionHandlerP6AsmCtxPK5Token
	movl	%eax, %ebx
	.loc 3 116 64
	jmp	.L504
.L518:
	.loc 3 117 53
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL21MathOperationsHandlerP6AsmCtxPK5Token
	movl	%eax, %ebx
	.loc 3 117 64
	jmp	.L504
.L513:
	.loc 3 118 59
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL21NativeFunctionHandlerP6AsmCtxPK5Token
	movl	%eax, %ebx
	.loc 3 118 70
	jmp	.L504
.L519:
	.loc 3 119 61
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL21FunctionReturnHandlerP6AsmCtxPK5Token
	movl	%eax, %ebx
	.loc 3 119 72
	jmp	.L504
.L512:
	.loc 3 120 46
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL15ParametrHandlerP6AsmCtxPK5Token
	movl	%eax, %ebx
	.loc 3 120 57
	jmp	.L504
.L510:
	.loc 3 123 36
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL16AssigmentHandlerP6AsmCtxPK5Token
	movl	%eax, %ebx
	.loc 3 123 47
	jmp	.L504
.L522:
	.loc 3 137 44
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L523
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L523:
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	.loc 3 137 31
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL8AddToAsmP6AsmCtxPK5Token
	.loc 3 137 56
	testl	%eax, %eax
	setne	%al
	.loc 3 137 18
	testb	%al, %al
	je	.L524
	.loc 3 137 89 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 137 95 discriminator 2
	movl	$137, %ecx
	leaq	.LC186(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC124(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 137 192 discriminator 4
	movl	$-1, %ebx
	jmp	.L504
.L524:
	.loc 3 139 24
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L525
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L525:
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 3 139 13
	testq	%rax, %rax
	je	.L526
	.loc 3 140 49
	movq	-160(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 3 140 36
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL8AddToAsmP6AsmCtxPK5Token
	.loc 3 140 62
	testl	%eax, %eax
	setne	%al
	.loc 3 140 23
	testb	%al, %al
	je	.L526
	.loc 3 140 95 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 140 101 discriminator 2
	movl	$140, %ecx
	leaq	.LC186(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC80(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 140 199 discriminator 4
	movl	$-1, %ebx
	jmp	.L504
.L526:
	.loc 3 142 20
	movl	$0, %ebx
	jmp	.L504
.L509:
	.loc 3 145 24
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 145 96 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 3 145 102 discriminator 1
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 145 146 discriminator 3
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 3 145 152 discriminator 3
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 145 178 discriminator 5
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdx
	.loc 3 145 196 discriminator 5
	leaq	.LC188(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	_ZN6Logger15log_dup_consoleEPKcz@PLT
	.loc 3 145 227 discriminator 7
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 145 254 discriminator 8
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 3 145 278 discriminator 9
	movl	$145, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 145 334 discriminator 10
	movq	-160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z10PrintTokenPK5TokenPPKc@PLT
	.loc 3 146 39
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 146 61
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 146 61 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 3 146 74 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$146
	leaq	.LC186(%rip), %r9
	movl	$146, %r8d
	leaq	.LC178(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
.LEHE43:
	.loc 3 146 74 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %ebx
	.loc 3 146 156 is_stmt 1 discriminator 2
	nop
.L504:
	.loc 3 153 5
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%ebx, %edx
	.loc 3 99 5
	cmpq	%r12, %r15
	je	.L500
	jmp	.L530
.L529:
	endbr64
	.loc 3 153 5
	movq	%rax, %rbx
	leaq	-64(%r14), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB44:
	call	_Unwind_Resume@PLT
.LEHE44:
.L530:
	.loc 3 99 5
	movq	$1172321806, (%r12)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r13)
	movl	$-168430091, 2147450888(%r13)
	movq	120(%r12), %rax
	movb	$0, (%rax)
	jmp	.L501
.L500:
	movq	$0, 2147450880(%r13)
	movl	$0, 2147450888(%r13)
.L501:
	.loc 3 153 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2880:
	.section	.gcc_except_table
.LLSDA2880:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2880-.LLSDACSB2880
.LLSDACSB2880:
	.uleb128 .LEHB42-.LFB2880
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB2880
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L529-.LFB2880
	.uleb128 0
	.uleb128 .LEHB44-.LFB2880
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE2880:
	.text
	.size	_ZL8AddToAsmP6AsmCtxPK5Token, .-_ZL8AddToAsmP6AsmCtxPK5Token
	.section	.rodata
.LC189:
	.string	"1 32 24 12 func_157:157"
	.align 32
.LC190:
	.string	"InitGlobalVars"
	.zero	49
	.align 32
.LC191:
	.string	"int InitGlobalVars(const AsmCtx*)"
	.zero	62
	.align 32
.LC192:
	.string	"\t\t: InitGlobalVars\n\n"
	.zero	43
	.align 32
.LC193:
	.string	"%s:%d::CHECK: VarInitialization((AsmCtx*) ctx, global_var->global_initialization, true) == SUCCESS is false\n"
	.zero	51
	.align 32
.LC194:
	.string	"Number of initialized global var doesn't match with number of ctx number of global vars (var_cnt: %d, ctx: %d)\n"
	.zero	48
	.text
	.type	_ZL14InitGlobalVarsPK6AsmCtx, @function
_ZL14InitGlobalVarsPK6AsmCtx:
.LASANPC2881:
.LFB2881:
	.loc 3 156 5
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2881
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
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r15
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L531
	movl	$96, %edi
	call	__asan_stack_malloc_1@PLT
	testq	%rax, %rax
	je	.L531
	movq	%rax, %rbx
.L531:
	leaq	96(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC189(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2881(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-218103808, 2147450884(%r12)
	movl	$-202116109, 2147450888(%r12)
	.loc 3 157 41
	leaq	-64(%r13), %rax
	leaq	.LC190(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB45:
	call	_ZN14FunctionLoggerC1EiPKc@PLT
.LEHE45:
	.loc 3 158 10
	cmpq	$0, -168(%rbp)
	jne	.L535
.LEHB46:
	.loc 3 158 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 3 158 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 158 105 discriminator 3
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 158 249 discriminator 4
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 158 255 discriminator 4
	leaq	.LC191(%rip), %r8
	movl	$158, %ecx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 158 344 discriminator 6
	leaq	.LC191(%rip), %rax
	movq	%rax, %rcx
	movl	$158, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 158 446 discriminator 7
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %r14
	.loc 3 158 452 discriminator 7
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%r14, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 158 27 discriminator 9
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 158 33 discriminator 9
	movl	$158, %ecx
	leaq	.LC190(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 158 92 discriminator 11
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 3 158 115 discriminator 12
	movl	$-2, %r14d
	jmp	.L536
.L535:
	.loc 3 162 31
	movq	-168(%rbp), %rax
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
	je	.L537
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L537:
	movq	-168(%rbp), %rax
	movl	16(%rax), %eax
	.loc 3 162 24
	movl	%eax, STACK_FRAME_OFFSET(%rip)
	.loc 3 164 13
	leaq	.LC164(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 3 165 13
	leaq	.LC192(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 3 167 9
	movl	$0, -156(%rbp)
	.loc 3 168 5
	jmp	.L538
.L545:
.LBB14:
	.loc 3 170 34
	movq	-168(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L539
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L539:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	.loc 3 170 47
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L540
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L540:
	movq	(%rax), %rdx
	.loc 3 170 57
	movl	-156(%rbp), %eax
	cltq
	.loc 3 170 69
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 3 170 16
	movq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L541
	movq	%rdx, %rdi
	call	__asan_report_load8@PLT
.L541:
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	.loc 3 175 36
	movq	-152(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L542
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L542:
	movq	-152(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-168(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZL17VarInitializationP6AsmCtxPK5Tokeni
	.loc 3 175 93
	testl	%eax, %eax
	setne	%al
	.loc 3 175 14
	testb	%al, %al
	je	.L543
	.loc 3 175 126 discriminator 2
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 175 132 discriminator 2
	movl	$175, %ecx
	leaq	.LC190(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC193(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 175 276 discriminator 4
	movl	$-1, %r14d
	jmp	.L536
.L543:
	.loc 3 177 21
	addl	$1, -156(%rbp)
.L538:
.LBE14:
	.loc 3 168 31
	movq	-168(%rbp), %rax
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
	je	.L544
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L544:
	movq	-168(%rbp), %rax
	movl	16(%rax), %eax
	.loc 3 168 24
	cmpl	%eax, -156(%rbp)
	jl	.L545
	.loc 3 180 30
	movq	-168(%rbp), %rax
	movl	16(%rax), %eax
	.loc 3 180 5
	cmpl	%eax, -156(%rbp)
	je	.L546
	.loc 3 182 17
	leaq	.LC190(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 182 181 discriminator 1
	movq	-168(%rbp), %rax
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
	je	.L547
	.loc 3 182 181 is_stmt 0
	movq	%rdx, %rdi
	call	__asan_report_load4@PLT
.L547:
	.loc 3 182 181 discriminator 1
	movq	-168(%rbp), %rax
	movl	16(%rax), %edx
	.loc 3 182 45 is_stmt 1 discriminator 1
	movl	-156(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC194(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 182 211 discriminator 2
	movl	$182, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC67(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 184 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 184 57
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 184 57 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	.loc 3 184 70 is_stmt 1 discriminator 1
	subq	$8, %rsp
	pushq	$184
	leaq	.LC190(%rip), %r9
	movl	$184, %r8d
	leaq	.LC178(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	.cfi_escape 0x2e,0x10
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 3 184 70 is_stmt 0 discriminator 2
	addq	$16, %rsp
	movl	%eax, %r14d
	.loc 3 184 152 is_stmt 1 discriminator 2
	jmp	.L536
.L546:
	.loc 3 187 13
	leaq	.LC163(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	.cfi_escape 0x2e,0
	call	_ZL8assprintPKcz
	.loc 3 189 13
	leaq	.LC164(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
.LEHE46:
	.loc 3 191 12
	movl	$0, %r14d
.L536:
	.loc 3 192 5
	leaq	-64(%r13), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	movl	%r14d, %edx
	.loc 3 156 5
	cmpq	%rbx, %r15
	je	.L532
	jmp	.L551
.L550:
	endbr64
	.loc 3 192 5
	movq	%rax, %rbx
	leaq	-64(%r13), %rax
	movq	%rax, %rdi
	call	_ZN14FunctionLoggerD1Ev@PLT
	call	__asan_handle_no_return@PLT
	movq	%rbx, %rdi
.LEHB47:
	call	_Unwind_Resume@PLT
.LEHE47:
.L551:
	.loc 3 156 5
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movl	$-168430091, 2147450888(%r12)
	movq	120(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L533
.L532:
	movq	$0, 2147450880(%r12)
	movl	$0, 2147450888(%r12)
.L533:
	.loc 3 192 5
	movl	%edx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2881:
	.section	.gcc_except_table
.LLSDA2881:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2881-.LLSDACSB2881
.LLSDACSB2881:
	.uleb128 .LEHB45-.LFB2881
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB46-.LFB2881
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L550-.LFB2881
	.uleb128 0
	.uleb128 .LEHB47-.LFB2881
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSE2881:
	.text
	.size	_ZL14InitGlobalVarsPK6AsmCtx, .-_ZL14InitGlobalVarsPK6AsmCtx
	.globl	__asan_stack_malloc_0
	.section	.rodata
.LC195:
	.string	"1 32 8 11 NewYorkTime"
	.align 32
.LC196:
	.string	"wb"
	.zero	61
	.align 32
.LC197:
	.string	"Couldn't create ASM_FILE %s"
	.zero	36
	.align 32
.LC198:
	.string	"OpenAsmFile"
	.zero	52
	.align 32
.LC199:
	.string	";%s\n"
	.zero	59
	.text
	.type	_ZL11OpenAsmFilePKc, @function
_ZL11OpenAsmFilePKc:
.LASANPC2882:
.LFB2882:
	.loc 3 196 5
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
	subq	$80, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	leaq	-96(%rbp), %rbx
	movq	%rbx, %r14
	cmpl	$0, __asan_option_detect_stack_use_after_return(%rip)
	je	.L552
	movl	$64, %edi
	call	__asan_stack_malloc_0@PLT
	testq	%rax, %rax
	je	.L552
	movq	%rax, %rbx
.L552:
	leaq	64(%rbx), %rax
	movq	%rax, %r13
	movq	$1102416563, (%rbx)
	leaq	.LC195(%rip), %rax
	movq	%rax, 8(%rbx)
	leaq	.LASANPC2882(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %r12
	shrq	$3, %r12
	movl	$-235802127, 2147450880(%r12)
	movl	$-202116352, 2147450884(%r12)
	.loc 3 197 5
	cmpq	$0, -104(%rbp)
	jne	.L556
	.loc 3 197 23 discriminator 1
	movl	$0, %eax
	jmp	.L560
.L556:
	.loc 3 199 22
	movq	-104(%rbp), %rax
	leaq	.LC196(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	.loc 3 199 14
	movq	%rax, _ZL8ASM_FILE(%rip)
	.loc 3 200 9
	movq	_ZL8ASM_FILE(%rip), %rax
	.loc 3 200 5
	testq	%rax, %rax
	jne	.L558
	.loc 3 202 30
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 3 202 36
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC197(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 203 15
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC197(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 204 35
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 204 57
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 204 70
	subq	$8, %rsp
	pushq	$204
	leaq	.LC198(%rip), %r9
	movl	$204, %r8d
	leaq	.LC178(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	$0, %eax
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	addq	$16, %rsp
	.loc 3 204 152
	jmp	.L560
.L558:
	.loc 3 207 12
	movq	_ZL8ASM_FILE(%rip), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setvbuf@PLT
	.loc 3 209 30
	movl	$0, %edi
	call	time@PLT
	.loc 3 209 34
	leaq	-32(%r13), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L559
	movq	%rdx, %rdi
	call	__asan_report_store8@PLT
.L559:
	movq	%rax, -32(%r13)
	.loc 3 210 14
	leaq	-32(%r13), %rax
	movq	%rax, %rdi
	call	ctime@PLT
	movq	%rax, %rsi
	leaq	.LC199(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 3 212 31
	call	_ZN6Logger11getInstanceEv@PLT
	.loc 3 212 53
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 212 66
	movl	$212, %r8d
	leaq	.LC198(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC184(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_ZN6Logger9LogMsgRetEiPKcz@PLT
	.loc 3 212 117
	nop
.L560:
	.loc 3 213 5 discriminator 1
	movl	%eax, %edx
	.loc 3 196 5 discriminator 1
	cmpq	%rbx, %r14
	je	.L553
	.loc 3 196 5 is_stmt 0
	movq	$1172321806, (%rbx)
	movabsq	$-723401728380766731, %rax
	movq	%rax, 2147450880(%r12)
	movq	56(%rbx), %rax
	movb	$0, (%rax)
	jmp	.L554
.L553:
	movq	$0, 2147450880(%r12)
.L554:
	.loc 3 213 5 is_stmt 1
	movl	%edx, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2882:
	.size	_ZL11OpenAsmFilePKc, .-_ZL11OpenAsmFilePKc
	.section	.rodata
	.align 32
.LC200:
	.string	"\n;end {document}\n"
	.zero	46
	.text
	.type	_ZL12CloseAsmFilev, @function
_ZL12CloseAsmFilev:
.LASANPC2883:
.LFB2883:
	.loc 3 216 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 217 9
	movq	_ZL8ASM_FILE(%rip), %rax
	.loc 3 217 5
	testq	%rax, %rax
	je	.L564
	.loc 3 220 13
	leaq	.LC200(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 3 221 12
	movq	_ZL8ASM_FILE(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	.loc 3 223 12
	movq	_ZL8ASM_FILE(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 3 225 14
	movq	$0, _ZL8ASM_FILE(%rip)
	.loc 3 227 5
	jmp	.L561
.L564:
	.loc 3 218 9
	nop
.L561:
	.loc 3 228 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2883:
	.size	_ZL12CloseAsmFilev, .-_ZL12CloseAsmFilev
	.section	.rodata
	.align 32
.LC201:
	.string	"int SetAsmFile(AsmCtx*)"
	.zero	40
	.align 32
.LC202:
	.string	"SetAsmFile"
	.zero	53
	.align 32
.LC203:
	.string	"call : InitGlobalVars\n"
	.zero	41
	.align 32
.LC204:
	.string	"\n;Setting Stack Frame\n"
	.zero	41
	.align 32
.LC205:
	.string	"pop r%cx\n"
	.zero	54
	.align 32
.LC206:
	.string	"\ncall : main\n"
	.zero	50
	.align 32
.LC207:
	.string	"\nhlt\n\n"
	.zero	57
	.text
	.type	_ZL10SetAsmFileP6AsmCtx, @function
_ZL10SetAsmFileP6AsmCtx:
.LASANPC2884:
.LFB2884:
	.loc 3 231 5
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
	.loc 3 232 10
	cmpq	$0, -24(%rbp)
	jne	.L566
	.loc 3 232 43 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rcx
	.loc 3 232 49 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 232 105 discriminator 1
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 232 249 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 232 255 discriminator 1
	leaq	.LC201(%rip), %r8
	movl	$232, %ecx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 232 344 discriminator 1
	leaq	.LC201(%rip), %rax
	movq	%rax, %rcx
	movl	$232, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 232 446 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rbx
	.loc 3 232 452 discriminator 1
	movl	$14, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 232 27 discriminator 1
	call	_ZN6Logger11getInstanceEv@PLT
	movq	%rax, %rdi
	.loc 3 232 33 discriminator 1
	movl	$232, %ecx
	leaq	.LC202(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	_ZN6Logger3logEPKcz@PLT
	.loc 3 232 92 discriminator 1
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 3 232 115 discriminator 1
	movl	$-2, %eax
	jmp	.L567
.L566:
	.loc 3 234 13
	leaq	.LC203(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 3 236 36
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L568
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L568:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 236 47
	leaq	56(%rax), %rdx
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	addq	$2147450880, %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%sil
	cmpb	$3, %dl
	setle	%dl
	andl	%esi, %edx
	testb	%dl, %dl
	je	.L569
	movq	%rcx, %rdi
	call	__asan_report_load4@PLT
.L569:
	movl	56(%rax), %eax
	.loc 3 236 24
	movl	%eax, STACK_FRAME_OFFSET(%rip)
	.loc 3 238 13
	leaq	.LC204(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 3 239 13
	movl	STACK_FRAME_OFFSET(%rip), %eax
	movl	%eax, %esi
	leaq	.LC90(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 3 240 13
	movl	$98, %esi
	leaq	.LC205(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 3 242 13
	leaq	.LC206(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 3 243 13
	leaq	.LC207(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 3 245 13
	leaq	.LC164(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZL8assprintPKcz
	.loc 3 247 12
	movl	$0, %eax
.L567:
	.loc 3 248 5
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2884:
	.size	_ZL10SetAsmFileP6AsmCtx, .-_ZL10SetAsmFileP6AsmCtx
	.section	.text._ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_,"axG",@progbits,_ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_,comdat
	.weak	_ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.type	_ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_, @function
_ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_:
.LASANPC3240:
.LFB3240:
	.file 4 "/usr/include/c++/11/cmath"
	.loc 4 272 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 4 273 29
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-4(%rbp), %xmm0
	.loc 4 273 33
	movq	%xmm0, %rax
	.loc 4 273 36
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3240:
	.size	_ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_, .-_ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LASANPC3669:
.LFB3669:
	.loc 3 248 5
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
	.loc 3 248 5
	cmpl	$1, -4(%rbp)
	jne	.L575
	.loc 3 248 5 is_stmt 0 discriminator 1
	leaq	.LC178(%rip), %rax
	movq	%rax, %rdi
	call	__asan_before_dynamic_init@PLT
	cmpl	$65535, -8(%rbp)
	jne	.L574
	.file 5 "/usr/include/c++/11/iostream"
	.loc 5 74 25 is_stmt 1
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
.L574:
	.loc 5 74 25 is_stmt 0 discriminator 1
	call	__asan_after_dynamic_init@PLT
.L575:
	.loc 3 248 5 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3669:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_STACK_FRAME_OFFSET, @function
_GLOBAL__sub_I_STACK_FRAME_OFFSET:
.LASANPC3670:
.LFB3670:
	.loc 3 248 5
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 248 5
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3670:
	.size	_GLOBAL__sub_I_STACK_FRAME_OFFSET, .-_GLOBAL__sub_I_STACK_FRAME_OFFSET
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_STACK_FRAME_OFFSET
	.section	.data.rel.local,"aw"
	.align 16
	.type	.LASANLOC1, @object
	.size	.LASANLOC1, 16
.LASANLOC1:
	.quad	.LC22
	.long	486
	.long	24
	.align 16
	.type	.LASANLOC2, @object
	.size	.LASANLOC2, 16
.LASANLOC2:
	.quad	.LC22
	.long	372
	.long	16
	.globl	__odr_asan.STACK_FRAME_OFFSET
	.bss
	.type	__odr_asan.STACK_FRAME_OFFSET, @object
	.size	__odr_asan.STACK_FRAME_OFFSET, 1
__odr_asan.STACK_FRAME_OFFSET:
	.zero	1
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC3, @object
	.size	.LASANLOC3, 16
.LASANLOC3:
	.quad	.LC178
	.long	22
	.long	5
	.align 16
	.type	.LASANLOC4, @object
	.size	.LASANLOC4, 16
.LASANLOC4:
	.quad	.LC178
	.long	20
	.long	14
	.section	.rodata
.LC208:
	.string	"../ATC/Buffer/my_buffer.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC5, @object
	.size	.LASANLOC5, 16
.LASANLOC5:
	.quad	.LC208
	.long	32
	.long	11
	.section	.rodata
.LC209:
	.string	"../Common/Grammar.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC6, @object
	.size	.LASANLOC6, 16
.LASANLOC6:
	.quad	.LC209
	.long	80
	.long	11
	.align 16
	.type	.LASANLOC7, @object
	.size	.LASANLOC7, 16
.LASANLOC7:
	.quad	.LC209
	.long	79
	.long	11
	.align 16
	.type	.LASANLOC8, @object
	.size	.LASANLOC8, 16
.LASANLOC8:
	.quad	.LC209
	.long	77
	.long	19
	.align 16
	.type	.LASANLOC9, @object
	.size	.LASANLOC9, 16
.LASANLOC9:
	.quad	.LC209
	.long	75
	.long	12
	.align 16
	.type	.LASANLOC10, @object
	.size	.LASANLOC10, 16
.LASANLOC10:
	.quad	.LC209
	.long	60
	.long	12
	.align 16
	.type	.LASANLOC11, @object
	.size	.LASANLOC11, 16
.LASANLOC11:
	.quad	.LC209
	.long	58
	.long	19
	.align 16
	.type	.LASANLOC12, @object
	.size	.LASANLOC12, 16
.LASANLOC12:
	.quad	.LC209
	.long	54
	.long	19
	.align 16
	.type	.LASANLOC13, @object
	.size	.LASANLOC13, 16
.LASANLOC13:
	.quad	.LC209
	.long	48
	.long	11
	.align 16
	.type	.LASANLOC14, @object
	.size	.LASANLOC14, 16
.LASANLOC14:
	.quad	.LC209
	.long	40
	.long	28
	.align 16
	.type	.LASANLOC15, @object
	.size	.LASANLOC15, 16
.LASANLOC15:
	.quad	.LC209
	.long	15
	.long	19
	.section	.rodata
	.align 8
.LC210:
	.string	"../ATC/RandomStuff/CommonEnums.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC16, @object
	.size	.LASANLOC16, 16
.LASANLOC16:
	.quad	.LC210
	.long	3
	.long	11
	.section	.rodata
.LC211:
	.string	"../ATC/Logger/LogConfig.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC17, @object
	.size	.LASANLOC17, 16
.LASANLOC17:
	.quad	.LC211
	.long	3
	.long	12
	.section	.rodata
.LC212:
	.string	"/usr/include/c++/11/iostream"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC18, @object
	.size	.LASANLOC18, 16
.LASANLOC18:
	.quad	.LC212
	.long	74
	.long	25
	.section	.rodata
.LC213:
	.string	"./headers/BackEndConfig.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC19, @object
	.size	.LASANLOC19, 16
.LASANLOC19:
	.quad	.LC213
	.long	12
	.long	11
	.align 16
	.type	.LASANLOC20, @object
	.size	.LASANLOC20, 16
.LASANLOC20:
	.quad	.LC213
	.long	9
	.long	11
	.align 16
	.type	.LASANLOC21, @object
	.size	.LASANLOC21, 16
.LASANLOC21:
	.quad	.LC213
	.long	8
	.long	11
	.align 16
	.type	.LASANLOC22, @object
	.size	.LASANLOC22, 16
.LASANLOC22:
	.quad	.LC213
	.long	4
	.long	11
	.align 16
	.type	.LASANLOC23, @object
	.size	.LASANLOC23, 16
.LASANLOC23:
	.quad	.LC213
	.long	3
	.long	11
	.section	.rodata
	.align 8
.LC214:
	.string	"../Common/Structures/Tabels/Tabels.h"
	.section	.data.rel.local
	.align 16
	.type	.LASANLOC24, @object
	.size	.LASANLOC24, 16
.LASANLOC24:
	.quad	.LC214
	.long	8
	.long	11
	.align 16
	.type	.LASANLOC25, @object
	.size	.LASANLOC25, 16
.LASANLOC25:
	.quad	.LC214
	.long	7
	.long	11
	.section	.rodata
.LC215:
	.string	"bool_cnt"
.LC216:
	.string	"number_of_instructions"
.LC217:
	.string	"STACK_FRAME_OFFSET"
.LC218:
	.string	"ASM_FILE"
.LC219:
	.string	"INDENT_SIZE"
.LC220:
	.string	"MAX_WORD_LENGTH"
.LC221:
	.string	"MAX_FUNCTION_NAME_LENGTH"
.LC222:
	.string	"MAIN_NAME"
.LC223:
	.string	"COMMENT"
.LC224:
	.string	"OPERATORS"
.LC225:
	.string	"FUNCTION_RET_TYPES"
.LC226:
	.string	"INITIALIZATORS"
	.align 8
.LC227:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS_STRUCT"
.LC228:
	.string	"NATIVE_FUNCTIONS"
.LC229:
	.string	"INSTRUCTIONS"
.LC230:
	.string	"CRINGE"
.LC231:
	.string	"STD_LOG_NAME"
.LC232:
	.string	"__ioinit"
.LC233:
	.string	"SOFT_CPU_PRECISION"
.LC234:
	.string	"RETURN_VALUE_REG"
.LC235:
	.string	"VARIABLES_ADDRESS_REG"
	.align 8
.LC236:
	.string	"START_RAM_ADDRESS_FOR_GLOBAL_VARS"
.LC237:
	.string	"START_RAM_ADDRESS"
.LC238:
	.string	"NOT_A_LABEL"
.LC239:
	.string	"NOT_DECLARED"
.LC240:
	.string	"*.LC63"
.LC241:
	.string	"*.LC184"
.LC242:
	.string	"*.LC116"
.LC243:
	.string	"*.LC11"
.LC244:
	.string	"*.LC150"
.LC245:
	.string	"*.LC183"
.LC246:
	.string	"*.LC147"
.LC247:
	.string	"*.LC194"
.LC248:
	.string	"*.LC67"
.LC249:
	.string	"*.LC54"
.LC250:
	.string	"*.LC182"
.LC251:
	.string	"*.LC51"
.LC252:
	.string	"*.LC133"
.LC253:
	.string	"*.LC48"
.LC254:
	.string	"*.LC172"
.LC255:
	.string	"*.LC205"
.LC256:
	.string	"*.LC10"
.LC257:
	.string	"*.LC68"
.LC258:
	.string	"*.LC96"
.LC259:
	.string	"*.LC158"
.LC260:
	.string	"*.LC60"
.LC261:
	.string	"*.LC112"
.LC262:
	.string	"*.LC71"
.LC263:
	.string	"*.LC159"
.LC264:
	.string	"*.LC77"
.LC265:
	.string	"*.LC34"
.LC266:
	.string	"*.LC65"
.LC267:
	.string	"*.LC110"
.LC268:
	.string	"*.LC108"
.LC269:
	.string	"*.LC27"
.LC270:
	.string	"*.LC84"
.LC271:
	.string	"*.LC102"
.LC272:
	.string	"*.LC6"
.LC273:
	.string	"*.LC105"
.LC274:
	.string	"*.LC45"
.LC275:
	.string	"*.LC93"
.LC276:
	.string	"*.LC86"
.LC277:
	.string	"*.LC25"
.LC278:
	.string	"*.LC203"
.LC279:
	.string	"*.LC191"
.LC280:
	.string	"*.LC53"
.LC281:
	.string	"*.LC179"
.LC282:
	.string	"*.LC26"
.LC283:
	.string	"*.LC76"
.LC284:
	.string	"*.LC131"
.LC285:
	.string	"*.LC137"
.LC286:
	.string	"*.LC201"
.LC287:
	.string	"*.LC80"
.LC288:
	.string	"*.LC124"
.LC289:
	.string	"*.LC5"
.LC290:
	.string	"*.LC0"
.LC291:
	.string	"*.LC59"
.LC292:
	.string	"*.LC122"
.LC293:
	.string	"*.LC198"
.LC294:
	.string	"*.LC120"
.LC295:
	.string	"*.LC164"
.LC296:
	.string	"*.LC61"
.LC297:
	.string	"*.LC19"
.LC298:
	.string	"*.LC13"
.LC299:
	.string	"*.LC192"
.LC300:
	.string	"*.LC113"
.LC301:
	.string	"*.LC12"
.LC302:
	.string	"*.LC117"
.LC303:
	.string	"*.LC22"
.LC304:
	.string	"*.LC167"
.LC305:
	.string	"*.LC143"
.LC306:
	.string	"*.LC207"
.LC307:
	.string	"*.LC190"
.LC308:
	.string	"*.LC44"
.LC309:
	.string	"*.LC83"
.LC310:
	.string	"*.LC187"
.LC311:
	.string	"*.LC2"
.LC312:
	.string	"*.LC152"
.LC313:
	.string	"*.LC21"
.LC314:
	.string	"*.LC134"
.LC315:
	.string	"*.LC162"
.LC316:
	.string	"*.LC175"
.LC317:
	.string	"*.LC196"
.LC318:
	.string	"*.LC17"
.LC319:
	.string	"*.LC46"
.LC320:
	.string	"*.LC141"
.LC321:
	.string	"*.LC128"
.LC322:
	.string	"*.LC171"
.LC323:
	.string	"*.LC30"
.LC324:
	.string	"*.LC50"
.LC325:
	.string	"*.LC160"
.LC326:
	.string	"*.LC33"
.LC327:
	.string	"*.LC177"
.LC328:
	.string	"*.LC103"
.LC329:
	.string	"*.LC199"
.LC330:
	.string	"*.LC79"
.LC331:
	.string	"*.LC23"
.LC332:
	.string	"*.LC40"
.LC333:
	.string	"*.LC193"
.LC334:
	.string	"*.LC38"
.LC335:
	.string	"*.LC3"
.LC336:
	.string	"*.LC149"
.LC337:
	.string	"*.LC115"
.LC338:
	.string	"*.LC97"
.LC339:
	.string	"*.LC39"
.LC340:
	.string	"*.LC89"
.LC341:
	.string	"*.LC29"
.LC342:
	.string	"*.LC94"
.LC343:
	.string	"*.LC178"
.LC344:
	.string	"*.LC9"
.LC345:
	.string	"*.LC138"
.LC346:
	.string	"*.LC197"
.LC347:
	.string	"*.LC181"
.LC348:
	.string	"*.LC37"
.LC349:
	.string	"*.LC156"
.LC350:
	.string	"*.LC145"
.LC351:
	.string	"*.LC78"
.LC352:
	.string	"*.LC163"
.LC353:
	.string	"*.LC98"
.LC354:
	.string	"*.LC148"
.LC355:
	.string	"*.LC107"
.LC356:
	.string	"*.LC129"
.LC357:
	.string	"*.LC132"
.LC358:
	.string	"*.LC127"
.LC359:
	.string	"*.LC7"
.LC360:
	.string	"*.LC180"
.LC361:
	.string	"*.LC204"
.LC362:
	.string	"*.LC206"
.LC363:
	.string	"*.LC139"
.LC364:
	.string	"*.LC170"
.LC365:
	.string	"*.LC55"
.LC366:
	.string	"*.LC57"
.LC367:
	.string	"*.LC95"
.LC368:
	.string	"*.LC168"
.LC369:
	.string	"*.LC119"
.LC370:
	.string	"*.LC82"
.LC371:
	.string	"*.LC58"
.LC372:
	.string	"*.LC87"
.LC373:
	.string	"*.LC136"
.LC374:
	.string	"*.LC1"
.LC375:
	.string	"*.LC70"
.LC376:
	.string	"*.LC153"
.LC377:
	.string	"*.LC73"
.LC378:
	.string	"*.LC64"
.LC379:
	.string	"*.LC202"
.LC380:
	.string	"*.LC75"
.LC381:
	.string	"*.LC69"
.LC382:
	.string	"*.LC31"
.LC383:
	.string	"*.LC146"
.LC384:
	.string	"*.LC42"
.LC385:
	.string	"*.LC135"
.LC386:
	.string	"*.LC186"
.LC387:
	.string	"*.LC85"
.LC388:
	.string	"*.LC101"
.LC389:
	.string	"*.LC166"
.LC390:
	.string	"*.LC35"
.LC391:
	.string	"*.LC140"
.LC392:
	.string	"*.LC74"
.LC393:
	.string	"*.LC4"
.LC394:
	.string	"*.LC106"
.LC395:
	.string	"*.LC91"
.LC396:
	.string	"*.LC151"
.LC397:
	.string	"*.LC49"
.LC398:
	.string	"*.LC176"
.LC399:
	.string	"*.LC18"
.LC400:
	.string	"*.LC130"
.LC401:
	.string	"*.LC142"
.LC402:
	.string	"*.LC56"
.LC403:
	.string	"*.LC88"
.LC404:
	.string	"*.LC114"
.LC405:
	.string	"*.LC32"
.LC406:
	.string	"*.LC154"
.LC407:
	.string	"*.LC47"
.LC408:
	.string	"*.LC41"
.LC409:
	.string	"*.LC188"
.LC410:
	.string	"*.LC109"
.LC411:
	.string	"*.LC28"
.LC412:
	.string	"*.LC24"
.LC413:
	.string	"*.LC121"
.LC414:
	.string	"*.LC36"
.LC415:
	.string	"*.LC123"
.LC416:
	.string	"*.LC90"
.LC417:
	.string	"*.LC118"
.LC418:
	.string	"*.LC200"
.LC419:
	.string	"*.LC155"
.LC420:
	.string	"*.LC111"
.LC421:
	.string	"*.LC16"
.LC422:
	.string	"*.LC125"
.LC423:
	.string	"*.LC99"
.LC424:
	.string	"*.LC66"
.LC425:
	.string	"*.LC20"
.LC426:
	.string	"*.LC8"
.LC427:
	.string	"*.LC161"
.LC428:
	.string	"*.LC104"
	.section	.data.rel.local
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 13696
.LASAN0:
	.quad	_ZZL21MathOperationsHandlerP6AsmCtxPK5TokenE8bool_cnt
	.quad	4
	.quad	64
	.quad	.LC215
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC1
	.quad	0
	.quad	_ZZL18InstructionHandlerP6AsmCtxPK5TokenE22number_of_instructions
	.quad	4
	.quad	64
	.quad	.LC216
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC2
	.quad	0
	.quad	STACK_FRAME_OFFSET
	.quad	4
	.quad	64
	.quad	.LC217
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC3
	.quad	__odr_asan.STACK_FRAME_OFFSET
	.quad	_ZL8ASM_FILE
	.quad	8
	.quad	64
	.quad	.LC218
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC4
	.quad	0
	.quad	_ZL11INDENT_SIZE
	.quad	4
	.quad	64
	.quad	.LC219
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC5
	.quad	0
	.quad	_ZL15MAX_WORD_LENGTH
	.quad	4
	.quad	64
	.quad	.LC220
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC6
	.quad	0
	.quad	_ZL24MAX_FUNCTION_NAME_LENGTH
	.quad	4
	.quad	64
	.quad	.LC221
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC7
	.quad	0
	.quad	_ZL9MAIN_NAME
	.quad	8
	.quad	64
	.quad	.LC222
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC8
	.quad	0
	.quad	_ZL7COMMENT
	.quad	1
	.quad	64
	.quad	.LC223
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC9
	.quad	0
	.quad	_ZL9OPERATORS
	.quad	9
	.quad	64
	.quad	.LC224
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC10
	.quad	0
	.quad	_ZL18FUNCTION_RET_TYPES
	.quad	16
	.quad	64
	.quad	.LC225
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC11
	.quad	0
	.quad	_ZL14INITIALIZATORS
	.quad	16
	.quad	64
	.quad	.LC226
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC12
	.quad	0
	.quad	_ZL33NUMBER_OF_NATIVE_FUNCTIONS_STRUCT
	.quad	4
	.quad	64
	.quad	.LC227
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC13
	.quad	0
	.quad	_ZL16NATIVE_FUNCTIONS
	.quad	80
	.quad	128
	.quad	.LC228
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC14
	.quad	0
	.quad	_ZL12INSTRUCTIONS
	.quad	32
	.quad	64
	.quad	.LC229
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC15
	.quad	0
	.quad	_ZL6CRINGE
	.quad	4
	.quad	64
	.quad	.LC230
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC16
	.quad	0
	.quad	_ZL12STD_LOG_NAME
	.quad	18
	.quad	64
	.quad	.LC231
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC17
	.quad	0
	.quad	_ZStL8__ioinit
	.quad	1
	.quad	64
	.quad	.LC232
	.quad	.LC178
	.quad	1
	.quad	.LASANLOC18
	.quad	0
	.quad	_ZL18SOFT_CPU_PRECISION
	.quad	4
	.quad	64
	.quad	.LC233
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC19
	.quad	0
	.quad	_ZL16RETURN_VALUE_REG
	.quad	4
	.quad	64
	.quad	.LC234
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC20
	.quad	0
	.quad	_ZL21VARIABLES_ADDRESS_REG
	.quad	4
	.quad	64
	.quad	.LC235
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC21
	.quad	0
	.quad	_ZL33START_RAM_ADDRESS_FOR_GLOBAL_VARS
	.quad	4
	.quad	64
	.quad	.LC236
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC22
	.quad	0
	.quad	_ZL17START_RAM_ADDRESS
	.quad	4
	.quad	64
	.quad	.LC237
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC23
	.quad	0
	.quad	_ZL11NOT_A_LABEL
	.quad	4
	.quad	64
	.quad	.LC238
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC24
	.quad	0
	.quad	_ZL12NOT_DECLARED
	.quad	4
	.quad	64
	.quad	.LC239
	.quad	.LC178
	.quad	0
	.quad	.LASANLOC25
	.quad	0
	.quad	.LC63
	.quad	12
	.quad	64
	.quad	.LC240
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC184
	.quad	24
	.quad	64
	.quad	.LC241
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC116
	.quad	17
	.quad	64
	.quad	.LC242
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	7
	.quad	64
	.quad	.LC243
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.quad	5
	.quad	64
	.quad	.LC244
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC183
	.quad	85
	.quad	128
	.quad	.LC245
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	16
	.quad	64
	.quad	.LC246
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC194
	.quad	112
	.quad	160
	.quad	.LC247
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC67
	.quad	10
	.quad	64
	.quad	.LC248
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC54
	.quad	45
	.quad	96
	.quad	.LC249
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC182
	.quad	31
	.quad	64
	.quad	.LC250
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC51
	.quad	2
	.quad	64
	.quad	.LC251
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC133
	.quad	5
	.quad	64
	.quad	.LC252
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC48
	.quad	72
	.quad	128
	.quad	.LC253
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC172
	.quad	9
	.quad	64
	.quad	.LC254
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC205
	.quad	10
	.quad	64
	.quad	.LC255
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	4
	.quad	64
	.quad	.LC256
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC68
	.quad	9
	.quad	64
	.quad	.LC257
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC96
	.quad	27
	.quad	64
	.quad	.LC258
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC158
	.quad	22
	.quad	64
	.quad	.LC259
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC60
	.quad	69
	.quad	128
	.quad	.LC260
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC112
	.quad	11
	.quad	64
	.quad	.LC261
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC71
	.quad	18
	.quad	64
	.quad	.LC262
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC159
	.quad	49
	.quad	96
	.quad	.LC263
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC77
	.quad	48
	.quad	96
	.quad	.LC264
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC34
	.quad	22
	.quad	64
	.quad	.LC265
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC65
	.quad	6
	.quad	64
	.quad	.LC266
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC110
	.quad	71
	.quad	128
	.quad	.LC267
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC108
	.quad	18
	.quad	64
	.quad	.LC268
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC27
	.quad	35
	.quad	96
	.quad	.LC269
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC84
	.quad	5
	.quad	64
	.quad	.LC270
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC102
	.quad	46
	.quad	96
	.quad	.LC271
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	4
	.quad	64
	.quad	.LC272
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC105
	.quad	12
	.quad	64
	.quad	.LC273
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC45
	.quad	44
	.quad	96
	.quad	.LC274
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC93
	.quad	16
	.quad	64
	.quad	.LC275
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC86
	.quad	16
	.quad	64
	.quad	.LC276
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC25
	.quad	33
	.quad	96
	.quad	.LC277
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC203
	.quad	23
	.quad	64
	.quad	.LC278
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC191
	.quad	34
	.quad	96
	.quad	.LC279
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC53
	.quad	18
	.quad	64
	.quad	.LC280
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC179
	.quad	5
	.quad	64
	.quad	.LC281
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC26
	.quad	10
	.quad	64
	.quad	.LC282
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC76
	.quad	46
	.quad	96
	.quad	.LC283
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC131
	.quad	72
	.quad	128
	.quad	.LC284
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC137
	.quad	14
	.quad	64
	.quad	.LC285
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC201
	.quad	24
	.quad	64
	.quad	.LC286
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC80
	.quad	63
	.quad	96
	.quad	.LC287
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC124
	.quad	62
	.quad	96
	.quad	.LC288
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC5
	.quad	4
	.quad	64
	.quad	.LC289
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	3
	.quad	64
	.quad	.LC290
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC59
	.quad	34
	.quad	96
	.quad	.LC291
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC122
	.quad	11
	.quad	64
	.quad	.LC292
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC198
	.quad	12
	.quad	64
	.quad	.LC293
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC120
	.quad	22
	.quad	64
	.quad	.LC294
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC164
	.quad	38
	.quad	96
	.quad	.LC295
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC61
	.quad	12
	.quad	64
	.quad	.LC296
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC19
	.quad	37
	.quad	96
	.quad	.LC297
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	5
	.quad	64
	.quad	.LC298
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC192
	.quad	21
	.quad	64
	.quad	.LC299
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC113
	.quad	58
	.quad	96
	.quad	.LC300
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	5
	.quad	64
	.quad	.LC301
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC117
	.quad	60
	.quad	96
	.quad	.LC302
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC22
	.quad	27
	.quad	64
	.quad	.LC303
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC167
	.quad	43
	.quad	96
	.quad	.LC304
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC143
	.quad	10
	.quad	64
	.quad	.LC305
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC207
	.quad	7
	.quad	64
	.quad	.LC306
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC190
	.quad	15
	.quad	64
	.quad	.LC307
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC44
	.quad	17
	.quad	64
	.quad	.LC308
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC83
	.quad	39
	.quad	96
	.quad	.LC309
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC187
	.quad	36
	.quad	96
	.quad	.LC310
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	6
	.quad	64
	.quad	.LC311
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.quad	26
	.quad	64
	.quad	.LC312
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC21
	.quad	50
	.quad	96
	.quad	.LC313
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC134
	.quad	6
	.quad	64
	.quad	.LC314
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC162
	.quad	20
	.quad	64
	.quad	.LC315
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC175
	.quad	15
	.quad	64
	.quad	.LC316
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC196
	.quad	3
	.quad	64
	.quad	.LC317
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC17
	.quad	6
	.quad	64
	.quad	.LC318
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC46
	.quad	32
	.quad	64
	.quad	.LC319
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC141
	.quad	15
	.quad	64
	.quad	.LC320
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC128
	.quad	49
	.quad	96
	.quad	.LC321
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC171
	.quad	43
	.quad	96
	.quad	.LC322
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC30
	.quad	27
	.quad	64
	.quad	.LC323
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC50
	.quad	65
	.quad	128
	.quad	.LC324
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC160
	.quad	18
	.quad	64
	.quad	.LC325
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC33
	.quad	7
	.quad	64
	.quad	.LC326
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC177
	.quad	48
	.quad	96
	.quad	.LC327
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC103
	.quad	12
	.quad	64
	.quad	.LC328
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC199
	.quad	5
	.quad	64
	.quad	.LC329
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC79
	.quad	61
	.quad	96
	.quad	.LC330
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC23
	.quad	22
	.quad	64
	.quad	.LC331
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC40
	.quad	26
	.quad	64
	.quad	.LC332
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC193
	.quad	109
	.quad	160
	.quad	.LC333
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC38
	.quad	25
	.quad	64
	.quad	.LC334
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	7
	.quad	64
	.quad	.LC335
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC149
	.quad	6
	.quad	64
	.quad	.LC336
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC115
	.quad	13
	.quad	64
	.quad	.LC337
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC97
	.quad	29
	.quad	64
	.quad	.LC338
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC39
	.quad	23
	.quad	64
	.quad	.LC339
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC89
	.quad	28
	.quad	64
	.quad	.LC340
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC29
	.quad	1
	.quad	64
	.quad	.LC341
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC94
	.quad	43
	.quad	96
	.quad	.LC342
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC178
	.quad	25
	.quad	64
	.quad	.LC343
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC9
	.quad	7
	.quad	64
	.quad	.LC344
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC138
	.quad	9
	.quad	64
	.quad	.LC345
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC197
	.quad	28
	.quad	64
	.quad	.LC346
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC181
	.quad	46
	.quad	96
	.quad	.LC347
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC37
	.quad	53
	.quad	96
	.quad	.LC348
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC156
	.quad	32
	.quad	64
	.quad	.LC349
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	22
	.quad	64
	.quad	.LC350
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC78
	.quad	9
	.quad	64
	.quad	.LC351
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC163
	.quad	6
	.quad	64
	.quad	.LC352
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC98
	.quad	79
	.quad	128
	.quad	.LC353
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC148
	.quad	69
	.quad	128
	.quad	.LC354
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC107
	.quad	48
	.quad	96
	.quad	.LC355
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC129
	.quad	9
	.quad	64
	.quad	.LC356
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC132
	.quad	5
	.quad	64
	.quad	.LC357
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC127
	.quad	22
	.quad	64
	.quad	.LC358
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	4
	.quad	64
	.quad	.LC359
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC180
	.quad	32
	.quad	64
	.quad	.LC360
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC204
	.quad	23
	.quad	64
	.quad	.LC361
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC206
	.quad	14
	.quad	64
	.quad	.LC362
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC139
	.quad	18
	.quad	64
	.quad	.LC363
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC170
	.quad	16
	.quad	64
	.quad	.LC364
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC55
	.quad	6
	.quad	64
	.quad	.LC365
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC57
	.quad	20
	.quad	64
	.quad	.LC366
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC95
	.quad	9
	.quad	64
	.quad	.LC367
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC168
	.quad	70
	.quad	128
	.quad	.LC368
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC119
	.quad	23
	.quad	64
	.quad	.LC369
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC82
	.quad	12
	.quad	64
	.quad	.LC370
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC58
	.quad	11
	.quad	64
	.quad	.LC371
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC87
	.quad	11
	.quad	64
	.quad	.LC372
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC136
	.quad	5
	.quad	64
	.quad	.LC373
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	5
	.quad	64
	.quad	.LC374
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC70
	.quad	16
	.quad	64
	.quad	.LC375
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC153
	.quad	57
	.quad	96
	.quad	.LC376
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC73
	.quad	16
	.quad	64
	.quad	.LC377
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC64
	.quad	39
	.quad	96
	.quad	.LC378
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC202
	.quad	11
	.quad	64
	.quad	.LC379
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC75
	.quad	9
	.quad	64
	.quad	.LC380
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC69
	.quad	35
	.quad	96
	.quad	.LC381
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC31
	.quad	10
	.quad	64
	.quad	.LC382
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC146
	.quad	49
	.quad	96
	.quad	.LC383
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC42
	.quad	58
	.quad	96
	.quad	.LC384
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC135
	.quad	6
	.quad	64
	.quad	.LC385
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC186
	.quad	9
	.quad	64
	.quad	.LC386
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC85
	.quad	24
	.quad	64
	.quad	.LC387
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC101
	.quad	19
	.quad	64
	.quad	.LC388
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC166
	.quad	16
	.quad	64
	.quad	.LC389
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC35
	.quad	5
	.quad	64
	.quad	.LC390
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC140
	.quad	11
	.quad	64
	.quad	.LC391
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC74
	.quad	43
	.quad	96
	.quad	.LC392
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	5
	.quad	64
	.quad	.LC393
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC106
	.quad	57
	.quad	96
	.quad	.LC394
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC91
	.quad	6
	.quad	64
	.quad	.LC395
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC151
	.quad	32
	.quad	64
	.quad	.LC396
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC49
	.quad	5
	.quad	64
	.quad	.LC397
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC176
	.quad	8
	.quad	64
	.quad	.LC398
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC18
	.quad	4
	.quad	64
	.quad	.LC399
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC130
	.quad	73
	.quad	128
	.quad	.LC400
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC142
	.quad	19
	.quad	64
	.quad	.LC401
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC56
	.quad	59
	.quad	96
	.quad	.LC402
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC88
	.quad	11
	.quad	64
	.quad	.LC403
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC114
	.quad	25
	.quad	64
	.quad	.LC404
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC32
	.quad	5
	.quad	64
	.quad	.LC405
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC154
	.quad	4
	.quad	64
	.quad	.LC406
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.quad	13
	.quad	64
	.quad	.LC407
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC41
	.quad	67
	.quad	128
	.quad	.LC408
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC188
	.quad	18
	.quad	64
	.quad	.LC409
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC109
	.quad	34
	.quad	96
	.quad	.LC410
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC28
	.quad	18
	.quad	64
	.quad	.LC411
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC24
	.quad	36
	.quad	96
	.quad	.LC412
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC121
	.quad	21
	.quad	64
	.quad	.LC413
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC36
	.quad	15
	.quad	64
	.quad	.LC414
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC123
	.quad	19
	.quad	64
	.quad	.LC415
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC90
	.quad	9
	.quad	64
	.quad	.LC416
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC118
	.quad	21
	.quad	64
	.quad	.LC417
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC200
	.quad	18
	.quad	64
	.quad	.LC418
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC155
	.quad	5
	.quad	64
	.quad	.LC419
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC111
	.quad	20
	.quad	64
	.quad	.LC420
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC16
	.quad	18
	.quad	64
	.quad	.LC421
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC125
	.quad	28
	.quad	64
	.quad	.LC422
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC99
	.quad	61
	.quad	96
	.quad	.LC423
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC66
	.quad	48
	.quad	96
	.quad	.LC424
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	64
	.quad	96
	.quad	.LC425
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	4
	.quad	64
	.quad	.LC426
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC161
	.quad	13
	.quad	64
	.quad	.LC427
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC104
	.quad	15
	.quad	64
	.quad	.LC428
	.quad	.LC178
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB3671:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$214, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3671:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB3672:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$214, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3672:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.section	.rodata
	.align 8
.LC173:
	.long	0
	.long	1079574528
	.text
.Letext0:
	.file 6 "../Common/Structures/Tabels/NameTable.h"
	.file 7 "../Common/Structures/Token/Token.h"
	.file 8 "../Common/Structures/Tabels/Tabels.h"
	.file 9 "../Common/Structures/Program/Program.h"
	.file 10 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stdarg.h"
	.file 12 "<built-in>"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "/usr/include/stdlib.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 23 "/usr/include/c++/11/cstdlib"
	.file 24 "/usr/include/c++/11/bits/std_abs.h"
	.file 25 "/usr/include/c++/11/type_traits"
	.file 26 "/usr/include/c++/11/concepts"
	.file 27 "/usr/include/c++/11/bits/iterator_concepts.h"
	.file 28 "/usr/include/c++/11/bits/ranges_cmp.h"
	.file 29 "/usr/include/c++/11/compare"
	.file 30 "/usr/include/c++/11/debug/debug.h"
	.file 31 "/usr/include/c++/11/cwchar"
	.file 32 "/usr/include/c++/11/bits/exception_ptr.h"
	.file 33 "/usr/include/x86_64-linux-gnu/c++/11/bits/c++config.h"
	.file 34 "/usr/include/c++/11/cstdint"
	.file 35 "/usr/include/c++/11/clocale"
	.file 36 "/usr/include/c++/11/numbers"
	.file 37 "/usr/include/c++/11/cstdio"
	.file 38 "/usr/include/c++/11/bits/ios_base.h"
	.file 39 "/usr/include/c++/11/cwctype"
	.file 40 "/usr/include/c++/11/bits/predefined_ops.h"
	.file 41 "/usr/include/c++/11/ext/type_traits.h"
	.file 42 "/usr/include/c++/11/stdlib.h"
	.file 43 "/usr/include/math.h"
	.file 44 "/usr/include/c++/11/bits/ptr_traits.h"
	.file 45 "/usr/include/c++/11/math.h"
	.file 46 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 47 "./headers/BackEndConfig.h"
	.file 48 "./src/AsmCtx.h"
	.file 49 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
	.file 50 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 51 "/usr/include/wchar.h"
	.file 52 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 53 "/usr/include/stdint.h"
	.file 54 "/usr/include/locale.h"
	.file 55 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
	.file 56 "/usr/include/wctype.h"
	.file 57 "../ATC/Logger/LogConfig.h"
	.file 58 "../ATC/Logger/FunctionLogger.h"
	.file 59 "../ATC/RandomStuff/CommonEnums.h"
	.file 60 "../Common/Grammar.h"
	.file 61 "../ATC/Buffer/my_buffer.h"
	.file 62 "/usr/include/time.h"
	.file 63 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 64 "../ATC/Logger/Logger.h"
	.file 65 "../Common/Utils/LangUtils.h"
	.file 66 "/usr/include/string.h"
	.file 67 "/usr/include/c++/11/bits/algorithmfwd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4f29
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x3b
	.long	.LASF782
	.byte	0x21
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF55
	.byte	0xa
	.byte	0xd1
	.byte	0x1b
	.long	0x3d
	.uleb128 0x11
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x11
	.byte	0x10
	.byte	0x4
	.long	.LASF5
	.uleb128 0x3c
	.long	.LASF783
	.uleb128 0x23
	.long	.LASF643
	.byte	0x7
	.long	0x74
	.byte	0x6
	.byte	0x5
	.long	0x74
	.uleb128 0xc
	.long	.LASF6
	.byte	0
	.uleb128 0xc
	.long	.LASF7
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x20
	.byte	0x6
	.byte	0xd
	.byte	0x8
	.long	0xe4
	.uleb128 0x4
	.long	.LASF9
	.byte	0x6
	.byte	0xf
	.byte	0x9
	.long	0xe4
	.byte	0
	.uleb128 0x4
	.long	.LASF10
	.byte	0x6
	.byte	0x10
	.byte	0x9
	.long	0xe4
	.byte	0x4
	.uleb128 0x4
	.long	.LASF11
	.byte	0x6
	.byte	0x12
	.byte	0x9
	.long	0xe4
	.byte	0x8
	.uleb128 0x4
	.long	.LASF12
	.byte	0x6
	.byte	0x13
	.byte	0x9
	.long	0xe4
	.byte	0xc
	.uleb128 0x4
	.long	.LASF13
	.byte	0x6
	.byte	0x15
	.byte	0x9
	.long	0xe4
	.byte	0x10
	.uleb128 0x4
	.long	.LASF14
	.byte	0x6
	.byte	0x16
	.byte	0x9
	.long	0xe4
	.byte	0x14
	.uleb128 0x4
	.long	.LASF15
	.byte	0x6
	.byte	0x18
	.byte	0x12
	.long	0x16b
	.byte	0x18
	.byte	0
	.uleb128 0x3d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.long	0xe4
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x38
	.byte	0x7
	.byte	0x16
	.byte	0x8
	.long	0x166
	.uleb128 0x4
	.long	.LASF18
	.byte	0x7
	.byte	0x18
	.byte	0xc
	.long	0x291
	.byte	0
	.uleb128 0x4
	.long	.LASF19
	.byte	0x7
	.byte	0x19
	.byte	0xc
	.long	0x291
	.byte	0x8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x7
	.byte	0x1b
	.byte	0x9
	.long	0xe4
	.byte	0x10
	.uleb128 0x4
	.long	.LASF20
	.byte	0x7
	.byte	0x1d
	.byte	0x10
	.long	0x1f3
	.byte	0x18
	.uleb128 0x4
	.long	.LASF21
	.byte	0x7
	.byte	0x1f
	.byte	0xc
	.long	0x1af
	.byte	0x20
	.uleb128 0x4
	.long	.LASF22
	.byte	0x7
	.byte	0x22
	.byte	0x11
	.long	0x296
	.byte	0x28
	.uleb128 0x4
	.long	.LASF23
	.byte	0x7
	.byte	0x24
	.byte	0x9
	.long	0xe4
	.byte	0x30
	.uleb128 0x4
	.long	.LASF24
	.byte	0x7
	.byte	0x25
	.byte	0x9
	.long	0xe4
	.byte	0x34
	.byte	0
	.uleb128 0x8
	.long	0xf0
	.uleb128 0x7
	.long	0x166
	.uleb128 0x8
	.long	0x16b
	.uleb128 0x1a
	.long	.LASF25
	.byte	0x18
	.byte	0x6
	.byte	0x1b
	.byte	0x8
	.long	0x1aa
	.uleb128 0x4
	.long	.LASF26
	.byte	0x6
	.byte	0x1d
	.byte	0xd
	.long	0x1aa
	.byte	0
	.uleb128 0x4
	.long	.LASF27
	.byte	0x6
	.byte	0x1e
	.byte	0xc
	.long	0x31
	.byte	0x8
	.uleb128 0x4
	.long	.LASF28
	.byte	0x6
	.byte	0x20
	.byte	0xc
	.long	0x31
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x1af
	.uleb128 0x7
	.long	0x7b
	.uleb128 0x1a
	.long	.LASF29
	.byte	0x10
	.byte	0x6
	.byte	0x23
	.byte	0x8
	.long	0x1e9
	.uleb128 0x25
	.string	"arr"
	.byte	0x6
	.byte	0x25
	.byte	0x11
	.long	0x1e9
	.byte	0
	.uleb128 0x4
	.long	.LASF30
	.byte	0x6
	.byte	0x27
	.byte	0x9
	.long	0xe4
	.byte	0x8
	.uleb128 0x4
	.long	.LASF31
	.byte	0x6
	.byte	0x28
	.byte	0x9
	.long	0xe4
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	0x1ee
	.uleb128 0x7
	.long	0x175
	.uleb128 0x3e
	.long	.LASF784
	.byte	0x8
	.byte	0x7
	.byte	0x7
	.byte	0x7
	.long	0x279
	.uleb128 0x15
	.long	.LASF32
	.byte	0x7
	.byte	0x9
	.byte	0x9
	.long	0xe4
	.uleb128 0x15
	.long	.LASF33
	.byte	0x7
	.byte	0xa
	.byte	0xa
	.long	0x279
	.uleb128 0x15
	.long	.LASF34
	.byte	0x7
	.byte	0xb
	.byte	0xc
	.long	0x285
	.uleb128 0x15
	.long	.LASF35
	.byte	0x7
	.byte	0xc
	.byte	0x9
	.long	0xe4
	.uleb128 0x15
	.long	.LASF36
	.byte	0x7
	.byte	0xd
	.byte	0x9
	.long	0xe4
	.uleb128 0x15
	.long	.LASF37
	.byte	0x7
	.byte	0xe
	.byte	0x9
	.long	0xe4
	.uleb128 0x15
	.long	.LASF38
	.byte	0x7
	.byte	0x10
	.byte	0xb
	.long	0x28c
	.uleb128 0x15
	.long	.LASF39
	.byte	0x7
	.byte	0x11
	.byte	0x9
	.long	0xe4
	.uleb128 0x15
	.long	.LASF40
	.byte	0x7
	.byte	0x12
	.byte	0x9
	.long	0xe4
	.uleb128 0x15
	.long	.LASF41
	.byte	0x7
	.byte	0x13
	.byte	0x9
	.long	0xe4
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.long	.LASF42
	.uleb128 0x8
	.long	0x279
	.uleb128 0x11
	.byte	0x8
	.byte	0x4
	.long	.LASF43
	.uleb128 0x7
	.long	0x279
	.uleb128 0x7
	.long	0xf0
	.uleb128 0x7
	.long	0x280
	.uleb128 0x8
	.long	0x296
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x7
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12NOT_DECLARED
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x8
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11NOT_A_LABEL
	.uleb128 0x1a
	.long	.LASF46
	.byte	0x40
	.byte	0x9
	.byte	0x7
	.byte	0x8
	.long	0x342
	.uleb128 0x4
	.long	.LASF47
	.byte	0x9
	.byte	0x9
	.byte	0xc
	.long	0x291
	.byte	0
	.uleb128 0x4
	.long	.LASF48
	.byte	0x9
	.byte	0xa
	.byte	0x9
	.long	0xe4
	.byte	0x8
	.uleb128 0x4
	.long	.LASF49
	.byte	0x9
	.byte	0xc
	.byte	0xc
	.long	0x291
	.byte	0x10
	.uleb128 0x4
	.long	.LASF50
	.byte	0x9
	.byte	0xe
	.byte	0x12
	.long	0x347
	.byte	0x18
	.uleb128 0x4
	.long	.LASF51
	.byte	0x9
	.byte	0xf
	.byte	0x9
	.long	0xe4
	.byte	0x20
	.uleb128 0x4
	.long	.LASF52
	.byte	0x9
	.byte	0x11
	.byte	0x11
	.long	0x296
	.byte	0x28
	.uleb128 0x4
	.long	.LASF53
	.byte	0x9
	.byte	0x14
	.byte	0x13
	.long	0x34c
	.byte	0x30
	.uleb128 0x4
	.long	.LASF54
	.byte	0x9
	.byte	0x15
	.byte	0x9
	.long	0xe4
	.byte	0x38
	.byte	0
	.uleb128 0x8
	.long	0x2cc
	.uleb128 0x7
	.long	0x296
	.uleb128 0x7
	.long	0x1b4
	.uleb128 0x5
	.long	.LASF56
	.byte	0xb
	.byte	0x28
	.byte	0x1b
	.long	0x35d
	.uleb128 0x3f
	.long	.LASF785
	.long	0x366
	.uleb128 0xe
	.long	0x376
	.long	0x376
	.uleb128 0xf
	.long	0x3d
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	.LASF444
	.byte	0x18
	.byte	0xc
	.byte	0
	.long	0x3ab
	.uleb128 0x28
	.long	.LASF57
	.long	0x74
	.byte	0
	.uleb128 0x28
	.long	.LASF58
	.long	0x74
	.byte	0x4
	.uleb128 0x28
	.long	.LASF59
	.long	0x3ab
	.byte	0x8
	.uleb128 0x28
	.long	.LASF60
	.long	0x3ab
	.byte	0x10
	.byte	0
	.uleb128 0x41
	.byte	0x8
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.long	.LASF61
	.uleb128 0x11
	.byte	0x2
	.byte	0x7
	.long	.LASF62
	.uleb128 0x5
	.long	.LASF63
	.byte	0xd
	.byte	0x25
	.byte	0x15
	.long	0x3c7
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.long	.LASF64
	.uleb128 0x5
	.long	.LASF65
	.byte	0xd
	.byte	0x26
	.byte	0x17
	.long	0x3ad
	.uleb128 0x5
	.long	.LASF66
	.byte	0xd
	.byte	0x27
	.byte	0x1a
	.long	0x3e6
	.uleb128 0x11
	.byte	0x2
	.byte	0x5
	.long	.LASF67
	.uleb128 0x5
	.long	.LASF68
	.byte	0xd
	.byte	0x28
	.byte	0x1c
	.long	0x3b4
	.uleb128 0x5
	.long	.LASF69
	.byte	0xd
	.byte	0x29
	.byte	0x14
	.long	0xe4
	.uleb128 0x8
	.long	0x3f9
	.uleb128 0x5
	.long	.LASF70
	.byte	0xd
	.byte	0x2a
	.byte	0x16
	.long	0x74
	.uleb128 0x5
	.long	.LASF71
	.byte	0xd
	.byte	0x2c
	.byte	0x19
	.long	0x2a
	.uleb128 0x5
	.long	.LASF72
	.byte	0xd
	.byte	0x2d
	.byte	0x1b
	.long	0x3d
	.uleb128 0x5
	.long	.LASF73
	.byte	0xd
	.byte	0x34
	.byte	0x12
	.long	0x3bb
	.uleb128 0x5
	.long	.LASF74
	.byte	0xd
	.byte	0x35
	.byte	0x13
	.long	0x3ce
	.uleb128 0x5
	.long	.LASF75
	.byte	0xd
	.byte	0x36
	.byte	0x13
	.long	0x3da
	.uleb128 0x5
	.long	.LASF76
	.byte	0xd
	.byte	0x37
	.byte	0x14
	.long	0x3ed
	.uleb128 0x5
	.long	.LASF77
	.byte	0xd
	.byte	0x38
	.byte	0x13
	.long	0x3f9
	.uleb128 0x5
	.long	.LASF78
	.byte	0xd
	.byte	0x39
	.byte	0x14
	.long	0x40a
	.uleb128 0x5
	.long	.LASF79
	.byte	0xd
	.byte	0x3a
	.byte	0x13
	.long	0x416
	.uleb128 0x5
	.long	.LASF80
	.byte	0xd
	.byte	0x3b
	.byte	0x14
	.long	0x422
	.uleb128 0x5
	.long	.LASF81
	.byte	0xd
	.byte	0x48
	.byte	0x12
	.long	0x2a
	.uleb128 0x5
	.long	.LASF82
	.byte	0xd
	.byte	0x49
	.byte	0x1b
	.long	0x3d
	.uleb128 0x5
	.long	.LASF83
	.byte	0xd
	.byte	0x98
	.byte	0x12
	.long	0x2a
	.uleb128 0x5
	.long	.LASF84
	.byte	0xd
	.byte	0x99
	.byte	0x12
	.long	0x2a
	.uleb128 0x5
	.long	.LASF85
	.byte	0xd
	.byte	0xa0
	.byte	0x12
	.long	0x2a
	.uleb128 0x29
	.byte	0x8
	.byte	0xe
	.byte	0xe
	.byte	0x1
	.long	.LASF135
	.long	0x514
	.uleb128 0x42
	.byte	0x4
	.byte	0xe
	.byte	0x11
	.byte	0x3
	.long	0x4f9
	.uleb128 0x15
	.long	.LASF86
	.byte	0xe
	.byte	0x12
	.byte	0x12
	.long	0x74
	.uleb128 0x15
	.long	.LASF87
	.byte	0xe
	.byte	0x13
	.byte	0xa
	.long	0x514
	.byte	0
	.uleb128 0x4
	.long	.LASF88
	.byte	0xe
	.byte	0xf
	.byte	0x7
	.long	0xe4
	.byte	0
	.uleb128 0x4
	.long	.LASF89
	.byte	0xe
	.byte	0x14
	.byte	0x5
	.long	0x4d7
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	0x279
	.long	0x524
	.uleb128 0xf
	.long	0x3d
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF90
	.byte	0xe
	.byte	0x15
	.byte	0x3
	.long	0x4ca
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x10
	.byte	0xf
	.byte	0xa
	.byte	0x10
	.long	0x558
	.uleb128 0x4
	.long	.LASF92
	.byte	0xf
	.byte	0xc
	.byte	0xb
	.long	0x4a6
	.byte	0
	.uleb128 0x4
	.long	.LASF93
	.byte	0xf
	.byte	0xd
	.byte	0xf
	.long	0x524
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF94
	.byte	0xf
	.byte	0xe
	.byte	0x3
	.long	0x530
	.uleb128 0x5
	.long	.LASF95
	.byte	0x10
	.byte	0x5
	.byte	0x19
	.long	0x570
	.uleb128 0x1a
	.long	.LASF96
	.byte	0xd8
	.byte	0x11
	.byte	0x31
	.byte	0x8
	.long	0x6f7
	.uleb128 0x4
	.long	.LASF97
	.byte	0x11
	.byte	0x33
	.byte	0x7
	.long	0xe4
	.byte	0
	.uleb128 0x4
	.long	.LASF98
	.byte	0x11
	.byte	0x36
	.byte	0x9
	.long	0x28c
	.byte	0x8
	.uleb128 0x4
	.long	.LASF99
	.byte	0x11
	.byte	0x37
	.byte	0x9
	.long	0x28c
	.byte	0x10
	.uleb128 0x4
	.long	.LASF100
	.byte	0x11
	.byte	0x38
	.byte	0x9
	.long	0x28c
	.byte	0x18
	.uleb128 0x4
	.long	.LASF101
	.byte	0x11
	.byte	0x39
	.byte	0x9
	.long	0x28c
	.byte	0x20
	.uleb128 0x4
	.long	.LASF102
	.byte	0x11
	.byte	0x3a
	.byte	0x9
	.long	0x28c
	.byte	0x28
	.uleb128 0x4
	.long	.LASF103
	.byte	0x11
	.byte	0x3b
	.byte	0x9
	.long	0x28c
	.byte	0x30
	.uleb128 0x4
	.long	.LASF104
	.byte	0x11
	.byte	0x3c
	.byte	0x9
	.long	0x28c
	.byte	0x38
	.uleb128 0x4
	.long	.LASF105
	.byte	0x11
	.byte	0x3d
	.byte	0x9
	.long	0x28c
	.byte	0x40
	.uleb128 0x4
	.long	.LASF106
	.byte	0x11
	.byte	0x40
	.byte	0x9
	.long	0x28c
	.byte	0x48
	.uleb128 0x4
	.long	.LASF107
	.byte	0x11
	.byte	0x41
	.byte	0x9
	.long	0x28c
	.byte	0x50
	.uleb128 0x4
	.long	.LASF108
	.byte	0x11
	.byte	0x42
	.byte	0x9
	.long	0x28c
	.byte	0x58
	.uleb128 0x4
	.long	.LASF109
	.byte	0x11
	.byte	0x44
	.byte	0x16
	.long	0x710
	.byte	0x60
	.uleb128 0x4
	.long	.LASF110
	.byte	0x11
	.byte	0x46
	.byte	0x14
	.long	0x715
	.byte	0x68
	.uleb128 0x4
	.long	.LASF111
	.byte	0x11
	.byte	0x48
	.byte	0x7
	.long	0xe4
	.byte	0x70
	.uleb128 0x4
	.long	.LASF112
	.byte	0x11
	.byte	0x49
	.byte	0x7
	.long	0xe4
	.byte	0x74
	.uleb128 0x4
	.long	.LASF113
	.byte	0x11
	.byte	0x4a
	.byte	0xb
	.long	0x4a6
	.byte	0x78
	.uleb128 0x4
	.long	.LASF114
	.byte	0x11
	.byte	0x4d
	.byte	0x12
	.long	0x3b4
	.byte	0x80
	.uleb128 0x4
	.long	.LASF115
	.byte	0x11
	.byte	0x4e
	.byte	0xf
	.long	0x3c7
	.byte	0x82
	.uleb128 0x4
	.long	.LASF116
	.byte	0x11
	.byte	0x4f
	.byte	0x8
	.long	0x71a
	.byte	0x83
	.uleb128 0x4
	.long	.LASF117
	.byte	0x11
	.byte	0x51
	.byte	0xf
	.long	0x72a
	.byte	0x88
	.uleb128 0x4
	.long	.LASF118
	.byte	0x11
	.byte	0x59
	.byte	0xd
	.long	0x4b2
	.byte	0x90
	.uleb128 0x4
	.long	.LASF119
	.byte	0x11
	.byte	0x5b
	.byte	0x17
	.long	0x734
	.byte	0x98
	.uleb128 0x4
	.long	.LASF120
	.byte	0x11
	.byte	0x5c
	.byte	0x19
	.long	0x73e
	.byte	0xa0
	.uleb128 0x4
	.long	.LASF121
	.byte	0x11
	.byte	0x5d
	.byte	0x14
	.long	0x715
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF122
	.byte	0x11
	.byte	0x5e
	.byte	0x9
	.long	0x3ab
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF123
	.byte	0x11
	.byte	0x5f
	.byte	0xa
	.long	0x31
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF124
	.byte	0x11
	.byte	0x60
	.byte	0x7
	.long	0xe4
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF125
	.byte	0x11
	.byte	0x62
	.byte	0x8
	.long	0x743
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF126
	.byte	0x12
	.byte	0x7
	.byte	0x19
	.long	0x570
	.uleb128 0x43
	.long	.LASF786
	.byte	0x11
	.byte	0x2b
	.byte	0xe
	.uleb128 0x2c
	.long	.LASF127
	.uleb128 0x7
	.long	0x70b
	.uleb128 0x7
	.long	0x570
	.uleb128 0xe
	.long	0x279
	.long	0x72a
	.uleb128 0xf
	.long	0x3d
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x703
	.uleb128 0x2c
	.long	.LASF128
	.uleb128 0x7
	.long	0x72f
	.uleb128 0x2c
	.long	.LASF129
	.uleb128 0x7
	.long	0x739
	.uleb128 0xe
	.long	0x279
	.long	0x753
	.uleb128 0xf
	.long	0x3d
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF130
	.byte	0x13
	.byte	0x34
	.byte	0x18
	.long	0x351
	.uleb128 0x5
	.long	.LASF131
	.byte	0x13
	.byte	0x54
	.byte	0x12
	.long	0x558
	.uleb128 0x8
	.long	0x75f
	.uleb128 0x7
	.long	0x6f7
	.uleb128 0x11
	.byte	0x20
	.byte	0x3
	.long	.LASF132
	.uleb128 0x11
	.byte	0x10
	.byte	0x4
	.long	.LASF133
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.long	.LASF134
	.uleb128 0x29
	.byte	0x8
	.byte	0x14
	.byte	0x3c
	.byte	0x3
	.long	.LASF136
	.long	0x7b2
	.uleb128 0x4
	.long	.LASF137
	.byte	0x14
	.byte	0x3d
	.byte	0x9
	.long	0xe4
	.byte	0
	.uleb128 0x25
	.string	"rem"
	.byte	0x14
	.byte	0x3e
	.byte	0x9
	.long	0xe4
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF138
	.byte	0x14
	.byte	0x3f
	.byte	0x5
	.long	0x78a
	.uleb128 0x29
	.byte	0x10
	.byte	0x14
	.byte	0x44
	.byte	0x3
	.long	.LASF139
	.long	0x7e6
	.uleb128 0x4
	.long	.LASF137
	.byte	0x14
	.byte	0x45
	.byte	0xe
	.long	0x2a
	.byte	0
	.uleb128 0x25
	.string	"rem"
	.byte	0x14
	.byte	0x46
	.byte	0xe
	.long	0x2a
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF140
	.byte	0x14
	.byte	0x47
	.byte	0x5
	.long	0x7be
	.uleb128 0x29
	.byte	0x10
	.byte	0x14
	.byte	0x4e
	.byte	0x3
	.long	.LASF141
	.long	0x81a
	.uleb128 0x4
	.long	.LASF137
	.byte	0x14
	.byte	0x4f
	.byte	0x13
	.long	0x44
	.byte	0
	.uleb128 0x25
	.string	"rem"
	.byte	0x14
	.byte	0x50
	.byte	0x13
	.long	0x44
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF142
	.byte	0x14
	.byte	0x51
	.byte	0x5
	.long	0x7f2
	.uleb128 0x5
	.long	.LASF143
	.byte	0x15
	.byte	0xa
	.byte	0x12
	.long	0x4be
	.uleb128 0x8
	.long	0x826
	.uleb128 0x5
	.long	.LASF144
	.byte	0x16
	.byte	0x18
	.byte	0x12
	.long	0x3bb
	.uleb128 0x5
	.long	.LASF145
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x3da
	.uleb128 0x5
	.long	.LASF146
	.byte	0x16
	.byte	0x1a
	.byte	0x13
	.long	0x3f9
	.uleb128 0x5
	.long	.LASF147
	.byte	0x16
	.byte	0x1b
	.byte	0x13
	.long	0x416
	.uleb128 0x11
	.byte	0x8
	.byte	0x7
	.long	.LASF148
	.uleb128 0x31
	.long	.LASF149
	.byte	0x14
	.value	0x330
	.byte	0xf
	.long	0x87b
	.uleb128 0x7
	.long	0x880
	.uleb128 0x44
	.long	0xe4
	.long	0x894
	.uleb128 0x1
	.long	0x894
	.uleb128 0x1
	.long	0x894
	.byte	0
	.uleb128 0x7
	.long	0x899
	.uleb128 0x45
	.uleb128 0x46
	.string	"std"
	.byte	0x21
	.value	0x116
	.byte	0xb
	.long	0x2384
	.uleb128 0x2
	.byte	0x17
	.byte	0x7f
	.byte	0xb
	.long	0x7b2
	.uleb128 0x2
	.byte	0x17
	.byte	0x80
	.byte	0xb
	.long	0x7e6
	.uleb128 0x2
	.byte	0x17
	.byte	0x86
	.byte	0xb
	.long	0x2384
	.uleb128 0x2
	.byte	0x17
	.byte	0x89
	.byte	0xb
	.long	0x23a1
	.uleb128 0x2
	.byte	0x17
	.byte	0x8c
	.byte	0xb
	.long	0x23bc
	.uleb128 0x2
	.byte	0x17
	.byte	0x8d
	.byte	0xb
	.long	0x23d2
	.uleb128 0x2
	.byte	0x17
	.byte	0x8e
	.byte	0xb
	.long	0x23e8
	.uleb128 0x2
	.byte	0x17
	.byte	0x8f
	.byte	0xb
	.long	0x23fe
	.uleb128 0x2
	.byte	0x17
	.byte	0x91
	.byte	0xb
	.long	0x2429
	.uleb128 0x2
	.byte	0x17
	.byte	0x94
	.byte	0xb
	.long	0x2445
	.uleb128 0x2
	.byte	0x17
	.byte	0x96
	.byte	0xb
	.long	0x245c
	.uleb128 0x2
	.byte	0x17
	.byte	0x99
	.byte	0xb
	.long	0x2478
	.uleb128 0x2
	.byte	0x17
	.byte	0x9a
	.byte	0xb
	.long	0x2494
	.uleb128 0x2
	.byte	0x17
	.byte	0x9b
	.byte	0xb
	.long	0x24c6
	.uleb128 0x2
	.byte	0x17
	.byte	0x9d
	.byte	0xb
	.long	0x24e7
	.uleb128 0x2
	.byte	0x17
	.byte	0xa0
	.byte	0xb
	.long	0x2508
	.uleb128 0x2
	.byte	0x17
	.byte	0xa3
	.byte	0xb
	.long	0x251b
	.uleb128 0x2
	.byte	0x17
	.byte	0xa5
	.byte	0xb
	.long	0x2528
	.uleb128 0x2
	.byte	0x17
	.byte	0xa6
	.byte	0xb
	.long	0x253a
	.uleb128 0x2
	.byte	0x17
	.byte	0xa7
	.byte	0xb
	.long	0x255a
	.uleb128 0x2
	.byte	0x17
	.byte	0xa8
	.byte	0xb
	.long	0x257a
	.uleb128 0x2
	.byte	0x17
	.byte	0xa9
	.byte	0xb
	.long	0x259a
	.uleb128 0x2
	.byte	0x17
	.byte	0xab
	.byte	0xb
	.long	0x25b1
	.uleb128 0x2
	.byte	0x17
	.byte	0xac
	.byte	0xb
	.long	0x25d7
	.uleb128 0x2
	.byte	0x17
	.byte	0xf0
	.byte	0x16
	.long	0x81a
	.uleb128 0x2
	.byte	0x17
	.byte	0xf5
	.byte	0x16
	.long	0x2638
	.uleb128 0x2
	.byte	0x17
	.byte	0xf6
	.byte	0x16
	.long	0x268f
	.uleb128 0x2
	.byte	0x17
	.byte	0xf8
	.byte	0x16
	.long	0x26ab
	.uleb128 0x2
	.byte	0x17
	.byte	0xf9
	.byte	0x16
	.long	0x2701
	.uleb128 0x2
	.byte	0x17
	.byte	0xfa
	.byte	0x16
	.long	0x26c1
	.uleb128 0x2
	.byte	0x17
	.byte	0xfb
	.byte	0x16
	.long	0x26e1
	.uleb128 0x2
	.byte	0x17
	.byte	0xfc
	.byte	0x16
	.long	0x271c
	.uleb128 0x17
	.string	"abs"
	.byte	0x18
	.byte	0x4f
	.long	.LASF150
	.long	0x4b
	.long	0x9c0
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x17
	.string	"abs"
	.byte	0x18
	.byte	0x4b
	.long	.LASF151
	.long	0x783
	.long	0x9d9
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x17
	.string	"abs"
	.byte	0x18
	.byte	0x47
	.long	.LASF152
	.long	0x285
	.long	0x9f2
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x17
	.string	"abs"
	.byte	0x18
	.byte	0x3d
	.long	.LASF153
	.long	0x44
	.long	0xa0b
	.uleb128 0x1
	.long	0x44
	.byte	0
	.uleb128 0x17
	.string	"abs"
	.byte	0x18
	.byte	0x38
	.long	.LASF154
	.long	0x2a
	.long	0xa24
	.uleb128 0x1
	.long	0x2a
	.byte	0
	.uleb128 0x17
	.string	"div"
	.byte	0x17
	.byte	0xb1
	.long	.LASF155
	.long	0x7e6
	.long	0xa42
	.uleb128 0x1
	.long	0x2a
	.uleb128 0x1
	.long	0x2a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.value	0x429
	.byte	0xb
	.long	0x2842
	.uleb128 0x13
	.byte	0x4
	.value	0x42a
	.byte	0xb
	.long	0x2836
	.uleb128 0x26
	.long	.LASF156
	.byte	0x19
	.value	0xa86
	.byte	0xd
	.uleb128 0x26
	.long	.LASF157
	.byte	0x19
	.value	0xadc
	.byte	0xd
	.uleb128 0x2d
	.long	.LASF158
	.byte	0x1a
	.byte	0xa3
	.byte	0xd
	.long	0xaa5
	.uleb128 0x1d
	.long	.LASF159
	.byte	0x1a
	.byte	0xa5
	.byte	0xf
	.uleb128 0x47
	.long	.LASF166
	.byte	0x1a
	.byte	0xe1
	.byte	0x16
	.uleb128 0x1d
	.long	.LASF160
	.byte	0x1b
	.byte	0x50
	.byte	0xf
	.uleb128 0x26
	.long	.LASF161
	.byte	0x1b
	.value	0x31d
	.byte	0xd
	.uleb128 0x26
	.long	.LASF162
	.byte	0x1b
	.value	0x3a0
	.byte	0x15
	.uleb128 0x1d
	.long	.LASF163
	.byte	0x1c
	.byte	0x40
	.byte	0xd
	.byte	0
	.uleb128 0x1d
	.long	.LASF164
	.byte	0x1d
	.byte	0x31
	.byte	0xd
	.uleb128 0x1d
	.long	.LASF163
	.byte	0x1a
	.byte	0x36
	.byte	0xd
	.uleb128 0x26
	.long	.LASF165
	.byte	0x1d
	.value	0x20e
	.byte	0xd
	.uleb128 0x32
	.long	.LASF167
	.byte	0x1d
	.value	0x357
	.byte	0x14
	.uleb128 0x1d
	.long	.LASF168
	.byte	0x1e
	.byte	0x32
	.byte	0xd
	.uleb128 0x10
	.long	.LASF169
	.byte	0x4
	.byte	0x5b
	.byte	0x3
	.long	.LASF170
	.long	0x4b
	.long	0xae9
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x10
	.long	.LASF169
	.byte	0x4
	.byte	0x57
	.byte	0x3
	.long	.LASF171
	.long	0x783
	.long	0xb03
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x10
	.long	.LASF172
	.byte	0x4
	.byte	0x6e
	.byte	0x3
	.long	.LASF173
	.long	0x4b
	.long	0xb1d
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x10
	.long	.LASF172
	.byte	0x4
	.byte	0x6a
	.byte	0x3
	.long	.LASF174
	.long	0x783
	.long	0xb37
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x10
	.long	.LASF175
	.byte	0x4
	.byte	0x81
	.byte	0x3
	.long	.LASF176
	.long	0x4b
	.long	0xb51
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x10
	.long	.LASF175
	.byte	0x4
	.byte	0x7d
	.byte	0x3
	.long	.LASF177
	.long	0x783
	.long	0xb6b
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x10
	.long	.LASF178
	.byte	0x4
	.byte	0x94
	.byte	0x3
	.long	.LASF179
	.long	0x4b
	.long	0xb8a
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x10
	.long	.LASF178
	.byte	0x4
	.byte	0x90
	.byte	0x3
	.long	.LASF180
	.long	0x783
	.long	0xba9
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x17
	.string	"cos"
	.byte	0x4
	.byte	0xbc
	.long	.LASF181
	.long	0x4b
	.long	0xbc2
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x17
	.string	"cos"
	.byte	0x4
	.byte	0xb8
	.long	.LASF182
	.long	0x783
	.long	0xbdb
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x16
	.string	"sin"
	.value	0x1ad
	.long	.LASF183
	.long	0x4b
	.long	0xbf4
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x16
	.string	"sin"
	.value	0x1a9
	.long	.LASF184
	.long	0x783
	.long	0xc0d
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x16
	.string	"tan"
	.value	0x1e6
	.long	.LASF185
	.long	0x4b
	.long	0xc26
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x16
	.string	"tan"
	.value	0x1e2
	.long	.LASF186
	.long	0x783
	.long	0xc3f
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x10
	.long	.LASF187
	.byte	0x4
	.byte	0xcf
	.byte	0x3
	.long	.LASF188
	.long	0x4b
	.long	0xc59
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x10
	.long	.LASF187
	.byte	0x4
	.byte	0xcb
	.byte	0x3
	.long	.LASF189
	.long	0x783
	.long	0xc73
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF190
	.byte	0x4
	.value	0x1c0
	.byte	0x3
	.long	.LASF191
	.long	0x4b
	.long	0xc8e
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF190
	.byte	0x4
	.value	0x1bc
	.byte	0x3
	.long	.LASF192
	.long	0x783
	.long	0xca9
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF193
	.byte	0x4
	.value	0x1f9
	.byte	0x3
	.long	.LASF194
	.long	0x4b
	.long	0xcc4
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF193
	.byte	0x4
	.value	0x1f5
	.byte	0x3
	.long	.LASF195
	.long	0x783
	.long	0xcdf
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x17
	.string	"exp"
	.byte	0x4
	.byte	0xe2
	.long	.LASF196
	.long	0x4b
	.long	0xcf8
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x17
	.string	"exp"
	.byte	0x4
	.byte	0xde
	.long	.LASF197
	.long	0x783
	.long	0xd11
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF198
	.byte	0x4
	.value	0x130
	.byte	0x3
	.long	.LASF199
	.long	0x4b
	.long	0xd31
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x295e
	.byte	0
	.uleb128 0x3
	.long	.LASF198
	.byte	0x4
	.value	0x12c
	.byte	0x3
	.long	.LASF200
	.long	0x783
	.long	0xd51
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x295e
	.byte	0
	.uleb128 0x3
	.long	.LASF201
	.byte	0x4
	.value	0x143
	.byte	0x3
	.long	.LASF202
	.long	0x4b
	.long	0xd71
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x3
	.long	.LASF201
	.byte	0x4
	.value	0x13f
	.byte	0x3
	.long	.LASF203
	.long	0x783
	.long	0xd91
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x16
	.string	"log"
	.value	0x156
	.long	.LASF204
	.long	0x4b
	.long	0xdaa
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x16
	.string	"log"
	.value	0x152
	.long	.LASF205
	.long	0x783
	.long	0xdc3
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF206
	.byte	0x4
	.value	0x169
	.byte	0x3
	.long	.LASF207
	.long	0x4b
	.long	0xdde
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF206
	.byte	0x4
	.value	0x165
	.byte	0x3
	.long	.LASF208
	.long	0x783
	.long	0xdf9
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF209
	.byte	0x4
	.value	0x17c
	.byte	0x3
	.long	.LASF210
	.long	0x4b
	.long	0xe19
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x29a3
	.byte	0
	.uleb128 0x3
	.long	.LASF209
	.byte	0x4
	.value	0x178
	.byte	0x3
	.long	.LASF211
	.long	0x783
	.long	0xe39
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x29b0
	.byte	0
	.uleb128 0x16
	.string	"pow"
	.value	0x188
	.long	.LASF212
	.long	0x4b
	.long	0xe57
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x16
	.string	"pow"
	.value	0x184
	.long	.LASF213
	.long	0x783
	.long	0xe75
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF214
	.byte	0x4
	.value	0x1d3
	.byte	0x3
	.long	.LASF215
	.long	0x4b
	.long	0xe90
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF214
	.byte	0x4
	.value	0x1cf
	.byte	0x3
	.long	.LASF216
	.long	0x783
	.long	0xeab
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x10
	.long	.LASF217
	.byte	0x4
	.byte	0xa9
	.byte	0x3
	.long	.LASF218
	.long	0x4b
	.long	0xec5
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x10
	.long	.LASF217
	.byte	0x4
	.byte	0xa5
	.byte	0x3
	.long	.LASF219
	.long	0x783
	.long	0xedf
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x10
	.long	.LASF220
	.byte	0x4
	.byte	0xf5
	.byte	0x3
	.long	.LASF221
	.long	0x4b
	.long	0xef9
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x10
	.long	.LASF220
	.byte	0x4
	.byte	0xf1
	.byte	0x3
	.long	.LASF222
	.long	0x783
	.long	0xf13
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF223
	.byte	0x4
	.value	0x108
	.byte	0x3
	.long	.LASF224
	.long	0x4b
	.long	0xf2e
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF223
	.byte	0x4
	.value	0x104
	.byte	0x3
	.long	.LASF225
	.long	0x783
	.long	0xf49
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF226
	.byte	0x4
	.value	0x11b
	.byte	0x3
	.long	.LASF227
	.long	0x4b
	.long	0xf69
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF226
	.byte	0x4
	.value	0x117
	.byte	0x3
	.long	.LASF228
	.long	0x783
	.long	0xf89
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF229
	.byte	0x4
	.value	0x223
	.byte	0x3
	.long	.LASF230
	.long	0xe4
	.long	0xfa4
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF229
	.byte	0x4
	.value	0x21e
	.byte	0x3
	.long	.LASF231
	.long	0xe4
	.long	0xfbf
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF229
	.byte	0x4
	.value	0x219
	.byte	0x3
	.long	.LASF232
	.long	0xe4
	.long	0xfda
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF233
	.byte	0x4
	.value	0x23a
	.byte	0x3
	.long	.LASF234
	.long	0x282f
	.long	0xff5
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF233
	.byte	0x4
	.value	0x236
	.byte	0x3
	.long	.LASF235
	.long	0x282f
	.long	0x1010
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF233
	.byte	0x4
	.value	0x232
	.byte	0x3
	.long	.LASF236
	.long	0x282f
	.long	0x102b
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF237
	.byte	0x4
	.value	0x255
	.byte	0x3
	.long	.LASF238
	.long	0x282f
	.long	0x1046
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF237
	.byte	0x4
	.value	0x250
	.byte	0x3
	.long	.LASF239
	.long	0x282f
	.long	0x1061
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF237
	.byte	0x4
	.value	0x248
	.byte	0x3
	.long	.LASF240
	.long	0x282f
	.long	0x107c
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF241
	.byte	0x4
	.value	0x270
	.byte	0x3
	.long	.LASF242
	.long	0x282f
	.long	0x1097
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF241
	.byte	0x4
	.value	0x26b
	.byte	0x3
	.long	.LASF243
	.long	0x282f
	.long	0x10b2
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF241
	.byte	0x4
	.value	0x263
	.byte	0x3
	.long	.LASF244
	.long	0x282f
	.long	0x10cd
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF245
	.byte	0x4
	.value	0x286
	.byte	0x3
	.long	.LASF246
	.long	0x282f
	.long	0x10e8
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF245
	.byte	0x4
	.value	0x282
	.byte	0x3
	.long	.LASF247
	.long	0x282f
	.long	0x1103
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF245
	.byte	0x4
	.value	0x27e
	.byte	0x3
	.long	.LASF248
	.long	0x282f
	.long	0x111e
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF249
	.byte	0x4
	.value	0x29d
	.byte	0x3
	.long	.LASF250
	.long	0x282f
	.long	0x1139
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF249
	.byte	0x4
	.value	0x299
	.byte	0x3
	.long	.LASF251
	.long	0x282f
	.long	0x1154
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF249
	.byte	0x4
	.value	0x295
	.byte	0x3
	.long	.LASF252
	.long	0x282f
	.long	0x116f
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF253
	.byte	0x4
	.value	0x2b3
	.byte	0x3
	.long	.LASF254
	.long	0x282f
	.long	0x118f
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF253
	.byte	0x4
	.value	0x2af
	.byte	0x3
	.long	.LASF255
	.long	0x282f
	.long	0x11af
	.uleb128 0x1
	.long	0x285
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF253
	.byte	0x4
	.value	0x2ab
	.byte	0x3
	.long	.LASF256
	.long	0x282f
	.long	0x11cf
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF257
	.byte	0x4
	.value	0x2cd
	.byte	0x3
	.long	.LASF258
	.long	0x282f
	.long	0x11ef
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF257
	.byte	0x4
	.value	0x2c9
	.byte	0x3
	.long	.LASF259
	.long	0x282f
	.long	0x120f
	.uleb128 0x1
	.long	0x285
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF257
	.byte	0x4
	.value	0x2c5
	.byte	0x3
	.long	.LASF260
	.long	0x282f
	.long	0x122f
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF261
	.byte	0x4
	.value	0x2e7
	.byte	0x3
	.long	.LASF262
	.long	0x282f
	.long	0x124f
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF261
	.byte	0x4
	.value	0x2e3
	.byte	0x3
	.long	.LASF263
	.long	0x282f
	.long	0x126f
	.uleb128 0x1
	.long	0x285
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF261
	.byte	0x4
	.value	0x2df
	.byte	0x3
	.long	.LASF264
	.long	0x282f
	.long	0x128f
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF265
	.byte	0x4
	.value	0x301
	.byte	0x3
	.long	.LASF266
	.long	0x282f
	.long	0x12af
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF265
	.byte	0x4
	.value	0x2fd
	.byte	0x3
	.long	.LASF267
	.long	0x282f
	.long	0x12cf
	.uleb128 0x1
	.long	0x285
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF265
	.byte	0x4
	.value	0x2f9
	.byte	0x3
	.long	.LASF268
	.long	0x282f
	.long	0x12ef
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF269
	.byte	0x4
	.value	0x31b
	.byte	0x3
	.long	.LASF270
	.long	0x282f
	.long	0x130f
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF269
	.byte	0x4
	.value	0x317
	.byte	0x3
	.long	.LASF271
	.long	0x282f
	.long	0x132f
	.uleb128 0x1
	.long	0x285
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF269
	.byte	0x4
	.value	0x313
	.byte	0x3
	.long	.LASF272
	.long	0x282f
	.long	0x134f
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF273
	.byte	0x4
	.value	0x335
	.byte	0x3
	.long	.LASF274
	.long	0x282f
	.long	0x136f
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF273
	.byte	0x4
	.value	0x331
	.byte	0x3
	.long	.LASF275
	.long	0x282f
	.long	0x138f
	.uleb128 0x1
	.long	0x285
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF273
	.byte	0x4
	.value	0x32d
	.byte	0x3
	.long	.LASF276
	.long	0x282f
	.long	0x13af
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF277
	.byte	0x4
	.value	0x4c2
	.byte	0x3
	.long	.LASF278
	.long	0x4b
	.long	0x13ca
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF277
	.byte	0x4
	.value	0x4be
	.byte	0x3
	.long	.LASF279
	.long	0x783
	.long	0x13e5
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF280
	.byte	0x4
	.value	0x4d4
	.byte	0x3
	.long	.LASF281
	.long	0x4b
	.long	0x1400
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF280
	.byte	0x4
	.value	0x4d0
	.byte	0x3
	.long	.LASF282
	.long	0x783
	.long	0x141b
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF283
	.byte	0x4
	.value	0x4e6
	.byte	0x3
	.long	.LASF284
	.long	0x4b
	.long	0x1436
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF283
	.byte	0x4
	.value	0x4e2
	.byte	0x3
	.long	.LASF285
	.long	0x783
	.long	0x1451
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF286
	.byte	0x4
	.value	0x4f8
	.byte	0x3
	.long	.LASF287
	.long	0x4b
	.long	0x146c
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF286
	.byte	0x4
	.value	0x4f4
	.byte	0x3
	.long	.LASF288
	.long	0x783
	.long	0x1487
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF289
	.byte	0x4
	.value	0x50a
	.byte	0x3
	.long	.LASF290
	.long	0x4b
	.long	0x14a7
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF289
	.byte	0x4
	.value	0x506
	.byte	0x3
	.long	.LASF291
	.long	0x783
	.long	0x14c7
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x16
	.string	"erf"
	.value	0x51e
	.long	.LASF292
	.long	0x4b
	.long	0x14e0
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x16
	.string	"erf"
	.value	0x51a
	.long	.LASF293
	.long	0x783
	.long	0x14f9
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF294
	.byte	0x4
	.value	0x530
	.byte	0x3
	.long	.LASF295
	.long	0x4b
	.long	0x1514
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF294
	.byte	0x4
	.value	0x52c
	.byte	0x3
	.long	.LASF296
	.long	0x783
	.long	0x152f
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF297
	.byte	0x4
	.value	0x542
	.byte	0x3
	.long	.LASF298
	.long	0x4b
	.long	0x154a
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF297
	.byte	0x4
	.value	0x53e
	.byte	0x3
	.long	.LASF299
	.long	0x783
	.long	0x1565
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF300
	.byte	0x4
	.value	0x554
	.byte	0x3
	.long	.LASF301
	.long	0x4b
	.long	0x1580
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF300
	.byte	0x4
	.value	0x550
	.byte	0x3
	.long	.LASF302
	.long	0x783
	.long	0x159b
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF303
	.byte	0x4
	.value	0x566
	.byte	0x3
	.long	.LASF304
	.long	0x4b
	.long	0x15bb
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF303
	.byte	0x4
	.value	0x562
	.byte	0x3
	.long	.LASF305
	.long	0x783
	.long	0x15db
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x16
	.string	"fma"
	.value	0x57a
	.long	.LASF306
	.long	0x4b
	.long	0x15fe
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x16
	.string	"fma"
	.value	0x576
	.long	.LASF307
	.long	0x783
	.long	0x1621
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF308
	.byte	0x4
	.value	0x58e
	.byte	0x3
	.long	.LASF309
	.long	0x4b
	.long	0x1641
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF308
	.byte	0x4
	.value	0x58a
	.byte	0x3
	.long	.LASF310
	.long	0x783
	.long	0x1661
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF311
	.byte	0x4
	.value	0x5a2
	.byte	0x3
	.long	.LASF312
	.long	0x4b
	.long	0x1681
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF311
	.byte	0x4
	.value	0x59e
	.byte	0x3
	.long	.LASF313
	.long	0x783
	.long	0x16a1
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF314
	.byte	0x4
	.value	0x754
	.byte	0x3
	.long	.LASF315
	.long	0x4b
	.long	0x16c6
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF314
	.byte	0x4
	.value	0x750
	.byte	0x3
	.long	.LASF316
	.long	0x285
	.long	0x16eb
	.uleb128 0x1
	.long	0x285
	.uleb128 0x1
	.long	0x285
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF314
	.byte	0x4
	.value	0x74c
	.byte	0x3
	.long	.LASF317
	.long	0x783
	.long	0x1710
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF314
	.byte	0x4
	.value	0x5b6
	.byte	0x3
	.long	.LASF318
	.long	0x4b
	.long	0x1730
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF314
	.byte	0x4
	.value	0x5b2
	.byte	0x3
	.long	.LASF319
	.long	0x783
	.long	0x1750
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF320
	.byte	0x4
	.value	0x5ca
	.byte	0x3
	.long	.LASF321
	.long	0xe4
	.long	0x176b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF320
	.byte	0x4
	.value	0x5c6
	.byte	0x3
	.long	.LASF322
	.long	0xe4
	.long	0x1786
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF323
	.byte	0x4
	.value	0x5dd
	.byte	0x3
	.long	.LASF324
	.long	0x4b
	.long	0x17a1
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF323
	.byte	0x4
	.value	0x5d9
	.byte	0x3
	.long	.LASF325
	.long	0x783
	.long	0x17bc
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF326
	.byte	0x4
	.value	0x5ef
	.byte	0x3
	.long	.LASF327
	.long	0x44
	.long	0x17d7
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF326
	.byte	0x4
	.value	0x5eb
	.byte	0x3
	.long	.LASF328
	.long	0x44
	.long	0x17f2
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF329
	.byte	0x4
	.value	0x601
	.byte	0x3
	.long	.LASF330
	.long	0x44
	.long	0x180d
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF329
	.byte	0x4
	.value	0x5fd
	.byte	0x3
	.long	.LASF331
	.long	0x44
	.long	0x1828
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF332
	.byte	0x4
	.value	0x613
	.byte	0x3
	.long	.LASF333
	.long	0x4b
	.long	0x1843
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF332
	.byte	0x4
	.value	0x60f
	.byte	0x3
	.long	.LASF334
	.long	0x783
	.long	0x185e
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF335
	.byte	0x4
	.value	0x626
	.byte	0x3
	.long	.LASF336
	.long	0x4b
	.long	0x1879
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF335
	.byte	0x4
	.value	0x622
	.byte	0x3
	.long	.LASF337
	.long	0x783
	.long	0x1894
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF338
	.byte	0x4
	.value	0x638
	.byte	0x3
	.long	.LASF339
	.long	0x4b
	.long	0x18af
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF338
	.byte	0x4
	.value	0x634
	.byte	0x3
	.long	.LASF340
	.long	0x783
	.long	0x18ca
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF341
	.byte	0x4
	.value	0x64a
	.byte	0x3
	.long	.LASF342
	.long	0x2a
	.long	0x18e5
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF341
	.byte	0x4
	.value	0x646
	.byte	0x3
	.long	.LASF343
	.long	0x2a
	.long	0x1900
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF344
	.byte	0x4
	.value	0x65c
	.byte	0x3
	.long	.LASF345
	.long	0x2a
	.long	0x191b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF344
	.byte	0x4
	.value	0x658
	.byte	0x3
	.long	.LASF346
	.long	0x2a
	.long	0x1936
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF347
	.byte	0x4
	.value	0x66e
	.byte	0x3
	.long	.LASF348
	.long	0x4b
	.long	0x1951
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF347
	.byte	0x4
	.value	0x66a
	.byte	0x3
	.long	.LASF349
	.long	0x783
	.long	0x196c
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF350
	.byte	0x4
	.value	0x680
	.byte	0x3
	.long	.LASF351
	.long	0x4b
	.long	0x198c
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF350
	.byte	0x4
	.value	0x67c
	.byte	0x3
	.long	.LASF352
	.long	0x783
	.long	0x19ac
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF353
	.byte	0x4
	.value	0x694
	.byte	0x3
	.long	.LASF354
	.long	0x4b
	.long	0x19cc
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF353
	.byte	0x4
	.value	0x690
	.byte	0x3
	.long	.LASF355
	.long	0x783
	.long	0x19ec
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF356
	.byte	0x4
	.value	0x6a6
	.byte	0x3
	.long	.LASF357
	.long	0x4b
	.long	0x1a0c
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF356
	.byte	0x4
	.value	0x6a2
	.byte	0x3
	.long	.LASF358
	.long	0x783
	.long	0x1a2c
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF359
	.byte	0x4
	.value	0x6ba
	.byte	0x3
	.long	.LASF360
	.long	0x4b
	.long	0x1a51
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x295e
	.byte	0
	.uleb128 0x3
	.long	.LASF359
	.byte	0x4
	.value	0x6b6
	.byte	0x3
	.long	.LASF361
	.long	0x783
	.long	0x1a76
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x295e
	.byte	0
	.uleb128 0x3
	.long	.LASF362
	.byte	0x4
	.value	0x6ce
	.byte	0x3
	.long	.LASF363
	.long	0x4b
	.long	0x1a91
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF362
	.byte	0x4
	.value	0x6ca
	.byte	0x3
	.long	.LASF364
	.long	0x783
	.long	0x1aac
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF365
	.byte	0x4
	.value	0x6e0
	.byte	0x3
	.long	.LASF366
	.long	0x4b
	.long	0x1ac7
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF365
	.byte	0x4
	.value	0x6dc
	.byte	0x3
	.long	.LASF367
	.long	0x783
	.long	0x1ae2
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF368
	.byte	0x4
	.value	0x6f2
	.byte	0x3
	.long	.LASF369
	.long	0x4b
	.long	0x1b02
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x2a
	.byte	0
	.uleb128 0x3
	.long	.LASF368
	.byte	0x4
	.value	0x6ee
	.byte	0x3
	.long	.LASF370
	.long	0x783
	.long	0x1b22
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x2a
	.byte	0
	.uleb128 0x3
	.long	.LASF371
	.byte	0x4
	.value	0x704
	.byte	0x3
	.long	.LASF372
	.long	0x4b
	.long	0x1b42
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x3
	.long	.LASF371
	.byte	0x4
	.value	0x700
	.byte	0x3
	.long	.LASF373
	.long	0x783
	.long	0x1b62
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x3
	.long	.LASF374
	.byte	0x4
	.value	0x716
	.byte	0x3
	.long	.LASF375
	.long	0x4b
	.long	0x1b7d
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF374
	.byte	0x4
	.value	0x712
	.byte	0x3
	.long	.LASF376
	.long	0x783
	.long	0x1b98
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF377
	.byte	0x4
	.value	0x728
	.byte	0x3
	.long	.LASF378
	.long	0x4b
	.long	0x1bb3
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF377
	.byte	0x4
	.value	0x724
	.byte	0x3
	.long	.LASF379
	.long	0x783
	.long	0x1bce
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x3
	.long	.LASF380
	.byte	0x4
	.value	0x77f
	.byte	0x3
	.long	.LASF381
	.long	0x4b
	.long	0x1bf3
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.uleb128 0x1
	.long	0x4b
	.byte	0
	.uleb128 0x3
	.long	.LASF380
	.byte	0x4
	.value	0x77b
	.byte	0x3
	.long	.LASF382
	.long	0x285
	.long	0x1c18
	.uleb128 0x1
	.long	0x285
	.uleb128 0x1
	.long	0x285
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x3
	.long	.LASF380
	.byte	0x4
	.value	0x777
	.byte	0x3
	.long	.LASF383
	.long	0x783
	.long	0x1c3d
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.uleb128 0x1
	.long	0x783
	.byte	0
	.uleb128 0x2
	.byte	0x1f
	.byte	0x40
	.byte	0xb
	.long	0x2eec
	.uleb128 0x2
	.byte	0x1f
	.byte	0x8d
	.byte	0xb
	.long	0x2ee0
	.uleb128 0x2
	.byte	0x1f
	.byte	0x8f
	.byte	0xb
	.long	0x2efd
	.uleb128 0x2
	.byte	0x1f
	.byte	0x90
	.byte	0xb
	.long	0x2f14
	.uleb128 0x2
	.byte	0x1f
	.byte	0x91
	.byte	0xb
	.long	0x2f30
	.uleb128 0x2
	.byte	0x1f
	.byte	0x92
	.byte	0xb
	.long	0x2f51
	.uleb128 0x2
	.byte	0x1f
	.byte	0x93
	.byte	0xb
	.long	0x2f6d
	.uleb128 0x2
	.byte	0x1f
	.byte	0x94
	.byte	0xb
	.long	0x2f89
	.uleb128 0x2
	.byte	0x1f
	.byte	0x95
	.byte	0xb
	.long	0x2fa5
	.uleb128 0x2
	.byte	0x1f
	.byte	0x96
	.byte	0xb
	.long	0x2fc2
	.uleb128 0x2
	.byte	0x1f
	.byte	0x97
	.byte	0xb
	.long	0x2fe3
	.uleb128 0x2
	.byte	0x1f
	.byte	0x98
	.byte	0xb
	.long	0x2ffa
	.uleb128 0x2
	.byte	0x1f
	.byte	0x99
	.byte	0xb
	.long	0x3007
	.uleb128 0x2
	.byte	0x1f
	.byte	0x9a
	.byte	0xb
	.long	0x302d
	.uleb128 0x2
	.byte	0x1f
	.byte	0x9b
	.byte	0xb
	.long	0x3053
	.uleb128 0x2
	.byte	0x1f
	.byte	0x9c
	.byte	0xb
	.long	0x306f
	.uleb128 0x2
	.byte	0x1f
	.byte	0x9d
	.byte	0xb
	.long	0x3095
	.uleb128 0x2
	.byte	0x1f
	.byte	0x9e
	.byte	0xb
	.long	0x30b1
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa0
	.byte	0xb
	.long	0x30c8
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa2
	.byte	0xb
	.long	0x30ea
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa3
	.byte	0xb
	.long	0x310b
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa4
	.byte	0xb
	.long	0x3127
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa6
	.byte	0xb
	.long	0x314d
	.uleb128 0x2
	.byte	0x1f
	.byte	0xa9
	.byte	0xb
	.long	0x3172
	.uleb128 0x2
	.byte	0x1f
	.byte	0xac
	.byte	0xb
	.long	0x3198
	.uleb128 0x2
	.byte	0x1f
	.byte	0xae
	.byte	0xb
	.long	0x31bd
	.uleb128 0x2
	.byte	0x1f
	.byte	0xb0
	.byte	0xb
	.long	0x31d9
	.uleb128 0x2
	.byte	0x1f
	.byte	0xb2
	.byte	0xb
	.long	0x31f9
	.uleb128 0x2
	.byte	0x1f
	.byte	0xb3
	.byte	0xb
	.long	0x321a
	.uleb128 0x2
	.byte	0x1f
	.byte	0xb4
	.byte	0xb
	.long	0x3235
	.uleb128 0x2
	.byte	0x1f
	.byte	0xb5
	.byte	0xb
	.long	0x3250
	.uleb128 0x2
	.byte	0x1f
	.byte	0xb6
	.byte	0xb
	.long	0x326b
	.uleb128 0x2
	.byte	0x1f
	.byte	0xb7
	.byte	0xb
	.long	0x3286
	.uleb128 0x2
	.byte	0x1f
	.byte	0xb8
	.byte	0xb
	.long	0x32a1
	.uleb128 0x2
	.byte	0x1f
	.byte	0xb9
	.byte	0xb
	.long	0x32cc
	.uleb128 0x2
	.byte	0x1f
	.byte	0xba
	.byte	0xb
	.long	0x32e2
	.uleb128 0x2
	.byte	0x1f
	.byte	0xbb
	.byte	0xb
	.long	0x3302
	.uleb128 0x2
	.byte	0x1f
	.byte	0xbc
	.byte	0xb
	.long	0x3322
	.uleb128 0x2
	.byte	0x1f
	.byte	0xbd
	.byte	0xb
	.long	0x3342
	.uleb128 0x2
	.byte	0x1f
	.byte	0xbe
	.byte	0xb
	.long	0x336d
	.uleb128 0x2
	.byte	0x1f
	.byte	0xbf
	.byte	0xb
	.long	0x3388
	.uleb128 0x2
	.byte	0x1f
	.byte	0xc1
	.byte	0xb
	.long	0x33a9
	.uleb128 0x2
	.byte	0x1f
	.byte	0xc3
	.byte	0xb
	.long	0x33c5
	.uleb128 0x2
	.byte	0x1f
	.byte	0xc4
	.byte	0xb
	.long	0x33e5
	.uleb128 0x2
	.byte	0x1f
	.byte	0xc5
	.byte	0xb
	.long	0x3406
	.uleb128 0x2
	.byte	0x1f
	.byte	0xc6
	.byte	0xb
	.long	0x3427
	.uleb128 0x2
	.byte	0x1f
	.byte	0xc7
	.byte	0xb
	.long	0x3447
	.uleb128 0x2
	.byte	0x1f
	.byte	0xc8
	.byte	0xb
	.long	0x345e
	.uleb128 0x2
	.byte	0x1f
	.byte	0xc9
	.byte	0xb
	.long	0x347f
	.uleb128 0x2
	.byte	0x1f
	.byte	0xca
	.byte	0xb
	.long	0x34a0
	.uleb128 0x2
	.byte	0x1f
	.byte	0xcb
	.byte	0xb
	.long	0x34c1
	.uleb128 0x2
	.byte	0x1f
	.byte	0xcc
	.byte	0xb
	.long	0x34e2
	.uleb128 0x2
	.byte	0x1f
	.byte	0xcd
	.byte	0xb
	.long	0x34fa
	.uleb128 0x2
	.byte	0x1f
	.byte	0xce
	.byte	0xb
	.long	0x3516
	.uleb128 0x2
	.byte	0x1f
	.byte	0xce
	.byte	0xb
	.long	0x3535
	.uleb128 0x2
	.byte	0x1f
	.byte	0xcf
	.byte	0xb
	.long	0x3554
	.uleb128 0x2
	.byte	0x1f
	.byte	0xcf
	.byte	0xb
	.long	0x3573
	.uleb128 0x2
	.byte	0x1f
	.byte	0xd0
	.byte	0xb
	.long	0x3592
	.uleb128 0x2
	.byte	0x1f
	.byte	0xd0
	.byte	0xb
	.long	0x35b1
	.uleb128 0x2
	.byte	0x1f
	.byte	0xd1
	.byte	0xb
	.long	0x35d0
	.uleb128 0x2
	.byte	0x1f
	.byte	0xd1
	.byte	0xb
	.long	0x35ef
	.uleb128 0x2
	.byte	0x1f
	.byte	0xd2
	.byte	0xb
	.long	0x360e
	.uleb128 0x2
	.byte	0x1f
	.byte	0xd2
	.byte	0xb
	.long	0x3632
	.uleb128 0x13
	.byte	0x1f
	.value	0x10b
	.byte	0x16
	.long	0x3656
	.uleb128 0x13
	.byte	0x1f
	.value	0x10c
	.byte	0x16
	.long	0x3672
	.uleb128 0x13
	.byte	0x1f
	.value	0x10d
	.byte	0x16
	.long	0x3693
	.uleb128 0x13
	.byte	0x1f
	.value	0x11b
	.byte	0xe
	.long	0x33a9
	.uleb128 0x13
	.byte	0x1f
	.value	0x11e
	.byte	0xe
	.long	0x314d
	.uleb128 0x13
	.byte	0x1f
	.value	0x121
	.byte	0xe
	.long	0x3198
	.uleb128 0x13
	.byte	0x1f
	.value	0x124
	.byte	0xe
	.long	0x31d9
	.uleb128 0x13
	.byte	0x1f
	.value	0x128
	.byte	0xe
	.long	0x3656
	.uleb128 0x13
	.byte	0x1f
	.value	0x129
	.byte	0xe
	.long	0x3672
	.uleb128 0x13
	.byte	0x1f
	.value	0x12a
	.byte	0xe
	.long	0x3693
	.uleb128 0x2d
	.long	.LASF384
	.byte	0x20
	.byte	0x3f
	.byte	0xd
	.long	0x2066
	.uleb128 0x33
	.long	.LASF390
	.byte	0x8
	.byte	0x20
	.byte	0x5a
	.byte	0xb
	.long	0x2058
	.uleb128 0x4
	.long	.LASF385
	.byte	0x20
	.byte	0x5c
	.byte	0xd
	.long	0x3ab
	.byte	0
	.uleb128 0x48
	.long	.LASF390
	.byte	0x20
	.byte	0x5e
	.byte	0x10
	.long	.LASF392
	.long	0x1ec9
	.long	0x1ed4
	.uleb128 0xd
	.long	0x36b4
	.uleb128 0x1
	.long	0x3ab
	.byte	0
	.uleb128 0x34
	.long	.LASF386
	.byte	0x60
	.long	.LASF387
	.long	0x1ee6
	.long	0x1eec
	.uleb128 0xd
	.long	0x36b4
	.byte	0
	.uleb128 0x34
	.long	.LASF388
	.byte	0x61
	.long	.LASF389
	.long	0x1efe
	.long	0x1f04
	.uleb128 0xd
	.long	0x36b4
	.byte	0
	.uleb128 0x49
	.long	.LASF391
	.byte	0x20
	.byte	0x63
	.byte	0xd
	.long	.LASF393
	.long	0x3ab
	.long	0x1f1c
	.long	0x1f22
	.uleb128 0xd
	.long	0x36b9
	.byte	0
	.uleb128 0x21
	.long	.LASF390
	.byte	0x20
	.byte	0x6b
	.byte	0x7
	.long	.LASF394
	.long	0x1f36
	.long	0x1f3c
	.uleb128 0xd
	.long	0x36b4
	.byte	0
	.uleb128 0x21
	.long	.LASF390
	.byte	0x20
	.byte	0x6d
	.byte	0x7
	.long	.LASF395
	.long	0x1f50
	.long	0x1f5b
	.uleb128 0xd
	.long	0x36b4
	.uleb128 0x1
	.long	0x36be
	.byte	0
	.uleb128 0x21
	.long	.LASF390
	.byte	0x20
	.byte	0x70
	.byte	0x7
	.long	.LASF396
	.long	0x1f6f
	.long	0x1f7a
	.uleb128 0xd
	.long	0x36b4
	.uleb128 0x1
	.long	0x2084
	.byte	0
	.uleb128 0x21
	.long	.LASF390
	.byte	0x20
	.byte	0x74
	.byte	0x7
	.long	.LASF397
	.long	0x1f8e
	.long	0x1f99
	.uleb128 0xd
	.long	0x36b4
	.uleb128 0x1
	.long	0x36c3
	.byte	0
	.uleb128 0x2e
	.long	.LASF398
	.byte	0x20
	.byte	0x81
	.byte	0x7
	.long	.LASF399
	.long	0x36c9
	.long	0x1fb1
	.long	0x1fbc
	.uleb128 0xd
	.long	0x36b4
	.uleb128 0x1
	.long	0x36be
	.byte	0
	.uleb128 0x2e
	.long	.LASF398
	.byte	0x20
	.byte	0x85
	.byte	0x7
	.long	.LASF400
	.long	0x36c9
	.long	0x1fd4
	.long	0x1fdf
	.uleb128 0xd
	.long	0x36b4
	.uleb128 0x1
	.long	0x36c3
	.byte	0
	.uleb128 0x21
	.long	.LASF401
	.byte	0x20
	.byte	0x8c
	.byte	0x7
	.long	.LASF402
	.long	0x1ff3
	.long	0x1ffe
	.uleb128 0xd
	.long	0x36b4
	.uleb128 0xd
	.long	0xe4
	.byte	0
	.uleb128 0x21
	.long	.LASF403
	.byte	0x20
	.byte	0x8f
	.byte	0x7
	.long	.LASF404
	.long	0x2012
	.long	0x201d
	.uleb128 0xd
	.long	0x36b4
	.uleb128 0x1
	.long	0x36c9
	.byte	0
	.uleb128 0x4a
	.long	.LASF738
	.byte	0x20
	.byte	0x9b
	.byte	0x10
	.long	.LASF740
	.long	0x282f
	.byte	0x1
	.long	0x2036
	.long	0x203c
	.uleb128 0xd
	.long	0x36b9
	.byte	0
	.uleb128 0x4b
	.long	.LASF405
	.byte	0x20
	.byte	0xb0
	.byte	0x7
	.long	.LASF406
	.long	0x36ce
	.byte	0x1
	.long	0x2051
	.uleb128 0xd
	.long	0x36b9
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x1e9b
	.uleb128 0x2
	.byte	0x20
	.byte	0x54
	.byte	0x10
	.long	0x206e
	.byte	0
	.uleb128 0x2
	.byte	0x20
	.byte	0x44
	.byte	0x1a
	.long	0x1e9b
	.uleb128 0x4c
	.long	.LASF407
	.byte	0x20
	.byte	0x50
	.byte	0x8
	.long	.LASF408
	.long	0x2084
	.uleb128 0x1
	.long	0x1e9b
	.byte	0
	.uleb128 0x31
	.long	.LASF409
	.byte	0x21
	.value	0x11c
	.byte	0x1d
	.long	0x52
	.uleb128 0x4d
	.long	.LASF787
	.uleb128 0x8
	.long	0x2091
	.uleb128 0x2
	.byte	0x22
	.byte	0x2f
	.byte	0xb
	.long	0x837
	.uleb128 0x2
	.byte	0x22
	.byte	0x30
	.byte	0xb
	.long	0x843
	.uleb128 0x2
	.byte	0x22
	.byte	0x31
	.byte	0xb
	.long	0x84f
	.uleb128 0x2
	.byte	0x22
	.byte	0x32
	.byte	0xb
	.long	0x85b
	.uleb128 0x2
	.byte	0x22
	.byte	0x34
	.byte	0xb
	.long	0x3763
	.uleb128 0x2
	.byte	0x22
	.byte	0x35
	.byte	0xb
	.long	0x376f
	.uleb128 0x2
	.byte	0x22
	.byte	0x36
	.byte	0xb
	.long	0x377b
	.uleb128 0x2
	.byte	0x22
	.byte	0x37
	.byte	0xb
	.long	0x3787
	.uleb128 0x2
	.byte	0x22
	.byte	0x39
	.byte	0xb
	.long	0x3703
	.uleb128 0x2
	.byte	0x22
	.byte	0x3a
	.byte	0xb
	.long	0x370f
	.uleb128 0x2
	.byte	0x22
	.byte	0x3b
	.byte	0xb
	.long	0x371b
	.uleb128 0x2
	.byte	0x22
	.byte	0x3c
	.byte	0xb
	.long	0x3727
	.uleb128 0x2
	.byte	0x22
	.byte	0x3e
	.byte	0xb
	.long	0x37db
	.uleb128 0x2
	.byte	0x22
	.byte	0x3f
	.byte	0xb
	.long	0x37c3
	.uleb128 0x2
	.byte	0x22
	.byte	0x41
	.byte	0xb
	.long	0x36d3
	.uleb128 0x2
	.byte	0x22
	.byte	0x42
	.byte	0xb
	.long	0x36df
	.uleb128 0x2
	.byte	0x22
	.byte	0x43
	.byte	0xb
	.long	0x36eb
	.uleb128 0x2
	.byte	0x22
	.byte	0x44
	.byte	0xb
	.long	0x36f7
	.uleb128 0x2
	.byte	0x22
	.byte	0x46
	.byte	0xb
	.long	0x3793
	.uleb128 0x2
	.byte	0x22
	.byte	0x47
	.byte	0xb
	.long	0x379f
	.uleb128 0x2
	.byte	0x22
	.byte	0x48
	.byte	0xb
	.long	0x37ab
	.uleb128 0x2
	.byte	0x22
	.byte	0x49
	.byte	0xb
	.long	0x37b7
	.uleb128 0x2
	.byte	0x22
	.byte	0x4b
	.byte	0xb
	.long	0x3733
	.uleb128 0x2
	.byte	0x22
	.byte	0x4c
	.byte	0xb
	.long	0x373f
	.uleb128 0x2
	.byte	0x22
	.byte	0x4d
	.byte	0xb
	.long	0x374b
	.uleb128 0x2
	.byte	0x22
	.byte	0x4e
	.byte	0xb
	.long	0x3757
	.uleb128 0x2
	.byte	0x22
	.byte	0x50
	.byte	0xb
	.long	0x37e7
	.uleb128 0x2
	.byte	0x22
	.byte	0x51
	.byte	0xb
	.long	0x37cf
	.uleb128 0x2
	.byte	0x23
	.byte	0x35
	.byte	0xb
	.long	0x37f3
	.uleb128 0x2
	.byte	0x23
	.byte	0x36
	.byte	0xb
	.long	0x3939
	.uleb128 0x2
	.byte	0x23
	.byte	0x37
	.byte	0xb
	.long	0x3954
	.uleb128 0x1d
	.long	.LASF410
	.byte	0x24
	.byte	0x30
	.byte	0xb
	.uleb128 0x2
	.byte	0x25
	.byte	0x62
	.byte	0xb
	.long	0x6f7
	.uleb128 0x2
	.byte	0x25
	.byte	0x63
	.byte	0xb
	.long	0x75f
	.uleb128 0x2
	.byte	0x25
	.byte	0x65
	.byte	0xb
	.long	0x3965
	.uleb128 0x2
	.byte	0x25
	.byte	0x66
	.byte	0xb
	.long	0x3977
	.uleb128 0x2
	.byte	0x25
	.byte	0x67
	.byte	0xb
	.long	0x398d
	.uleb128 0x2
	.byte	0x25
	.byte	0x68
	.byte	0xb
	.long	0x39a4
	.uleb128 0x2
	.byte	0x25
	.byte	0x69
	.byte	0xb
	.long	0x39bb
	.uleb128 0x2
	.byte	0x25
	.byte	0x6a
	.byte	0xb
	.long	0x39d1
	.uleb128 0x2
	.byte	0x25
	.byte	0x6b
	.byte	0xb
	.long	0x39e8
	.uleb128 0x2
	.byte	0x25
	.byte	0x6c
	.byte	0xb
	.long	0x3a09
	.uleb128 0x2
	.byte	0x25
	.byte	0x6d
	.byte	0xb
	.long	0x3a2a
	.uleb128 0x2
	.byte	0x25
	.byte	0x71
	.byte	0xb
	.long	0x3a46
	.uleb128 0x2
	.byte	0x25
	.byte	0x72
	.byte	0xb
	.long	0x3a6c
	.uleb128 0x2
	.byte	0x25
	.byte	0x74
	.byte	0xb
	.long	0x3a8d
	.uleb128 0x2
	.byte	0x25
	.byte	0x75
	.byte	0xb
	.long	0x3aae
	.uleb128 0x2
	.byte	0x25
	.byte	0x76
	.byte	0xb
	.long	0x3acf
	.uleb128 0x2
	.byte	0x25
	.byte	0x78
	.byte	0xb
	.long	0x3ae6
	.uleb128 0x2
	.byte	0x25
	.byte	0x79
	.byte	0xb
	.long	0x3afd
	.uleb128 0x2
	.byte	0x25
	.byte	0x7e
	.byte	0xb
	.long	0x3b0a
	.uleb128 0x2
	.byte	0x25
	.byte	0x83
	.byte	0xb
	.long	0x3b1c
	.uleb128 0x2
	.byte	0x25
	.byte	0x84
	.byte	0xb
	.long	0x3b32
	.uleb128 0x2
	.byte	0x25
	.byte	0x85
	.byte	0xb
	.long	0x3b4d
	.uleb128 0x2
	.byte	0x25
	.byte	0x87
	.byte	0xb
	.long	0x3b5f
	.uleb128 0x2
	.byte	0x25
	.byte	0x88
	.byte	0xb
	.long	0x3b76
	.uleb128 0x2
	.byte	0x25
	.byte	0x8b
	.byte	0xb
	.long	0x3b9c
	.uleb128 0x2
	.byte	0x25
	.byte	0x8d
	.byte	0xb
	.long	0x3ba8
	.uleb128 0x2
	.byte	0x25
	.byte	0x8f
	.byte	0xb
	.long	0x3bbe
	.uleb128 0x32
	.long	.LASF411
	.byte	0x21
	.value	0x12e
	.byte	0x41
	.uleb128 0x4e
	.string	"_V2"
	.byte	0x43
	.value	0x25c
	.byte	0x14
	.uleb128 0x35
	.long	.LASF707
	.long	0x231f
	.uleb128 0x4f
	.long	.LASF412
	.byte	0x1
	.byte	0x26
	.value	0x272
	.byte	0xb
	.byte	0x1
	.long	0x2319
	.uleb128 0x36
	.long	.LASF412
	.value	0x276
	.long	.LASF414
	.long	0x22b0
	.long	0x22b6
	.uleb128 0xd
	.long	0x3bda
	.byte	0
	.uleb128 0x36
	.long	.LASF413
	.value	0x277
	.long	.LASF415
	.long	0x22c9
	.long	0x22d4
	.uleb128 0xd
	.long	0x3bda
	.uleb128 0xd
	.long	0xe4
	.byte	0
	.uleb128 0x50
	.long	.LASF412
	.byte	0x26
	.value	0x27a
	.byte	0x7
	.long	.LASF416
	.byte	0x1
	.byte	0x1
	.long	0x22eb
	.long	0x22f6
	.uleb128 0xd
	.long	0x3bda
	.uleb128 0x1
	.long	0x3be4
	.byte	0
	.uleb128 0x51
	.long	.LASF398
	.byte	0x26
	.value	0x27b
	.byte	0xd
	.long	.LASF417
	.long	0x3be9
	.byte	0x1
	.byte	0x1
	.long	0x230d
	.uleb128 0xd
	.long	0x3bda
	.uleb128 0x1
	.long	0x3be4
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x228e
	.byte	0
	.uleb128 0x2
	.byte	0x27
	.byte	0x52
	.byte	0xb
	.long	0x3bfa
	.uleb128 0x2
	.byte	0x27
	.byte	0x53
	.byte	0xb
	.long	0x3bee
	.uleb128 0x2
	.byte	0x27
	.byte	0x54
	.byte	0xb
	.long	0x2ee0
	.uleb128 0x2
	.byte	0x27
	.byte	0x5c
	.byte	0xb
	.long	0x3c0b
	.uleb128 0x2
	.byte	0x27
	.byte	0x65
	.byte	0xb
	.long	0x3c26
	.uleb128 0x2
	.byte	0x27
	.byte	0x68
	.byte	0xb
	.long	0x3c41
	.uleb128 0x2
	.byte	0x27
	.byte	0x69
	.byte	0xb
	.long	0x3c57
	.uleb128 0x52
	.long	.LASF418
	.byte	0x5
	.byte	0x4a
	.byte	0x19
	.long	0x228e
	.uleb128 0x53
	.long	.LASF419
	.byte	0x4
	.value	0x110
	.byte	0x5
	.long	.LASF788
	.long	0x2681
	.uleb128 0x37
	.string	"_Tp"
	.long	0xe4
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF420
	.byte	0x14
	.value	0x25a
	.byte	0xc
	.long	0xe4
	.long	0x239b
	.uleb128 0x1
	.long	0x239b
	.byte	0
	.uleb128 0x7
	.long	0x23a0
	.uleb128 0x54
	.uleb128 0x3
	.long	.LASF421
	.byte	0x14
	.value	0x25f
	.byte	0x12
	.long	.LASF421
	.long	0xe4
	.long	0x23bc
	.uleb128 0x1
	.long	0x239b
	.byte	0
	.uleb128 0xa
	.long	.LASF422
	.byte	0x14
	.byte	0x66
	.byte	0xf
	.long	0x285
	.long	0x23d2
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0xa
	.long	.LASF423
	.byte	0x14
	.byte	0x69
	.byte	0xc
	.long	0xe4
	.long	0x23e8
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0xa
	.long	.LASF424
	.byte	0x14
	.byte	0x6c
	.byte	0x11
	.long	0x2a
	.long	0x23fe
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0x6
	.long	.LASF425
	.byte	0x14
	.value	0x33c
	.byte	0xe
	.long	0x3ab
	.long	0x2429
	.uleb128 0x1
	.long	0x894
	.uleb128 0x1
	.long	0x894
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x86e
	.byte	0
	.uleb128 0x55
	.string	"div"
	.byte	0x14
	.value	0x35c
	.byte	0xe
	.long	0x7b2
	.long	0x2445
	.uleb128 0x1
	.long	0xe4
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x6
	.long	.LASF426
	.byte	0x14
	.value	0x281
	.byte	0xe
	.long	0x28c
	.long	0x245c
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0x6
	.long	.LASF427
	.byte	0x14
	.value	0x35e
	.byte	0xf
	.long	0x7e6
	.long	0x2478
	.uleb128 0x1
	.long	0x2a
	.uleb128 0x1
	.long	0x2a
	.byte	0
	.uleb128 0x6
	.long	.LASF428
	.byte	0x14
	.value	0x3a2
	.byte	0xc
	.long	0xe4
	.long	0x2494
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x6
	.long	.LASF429
	.byte	0x14
	.value	0x3ad
	.byte	0xf
	.long	0x31
	.long	0x24b5
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x7
	.long	0x24ba
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.long	.LASF430
	.uleb128 0x8
	.long	0x24ba
	.uleb128 0x6
	.long	.LASF431
	.byte	0x14
	.value	0x3a5
	.byte	0xc
	.long	0xe4
	.long	0x24e7
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x24
	.long	.LASF433
	.byte	0x14
	.value	0x346
	.long	0x2508
	.uleb128 0x1
	.long	0x3ab
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x86e
	.byte	0
	.uleb128 0x56
	.long	.LASF432
	.byte	0x14
	.value	0x276
	.byte	0xd
	.long	0x251b
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x2f
	.long	.LASF493
	.byte	0x14
	.value	0x1c6
	.byte	0xc
	.long	0xe4
	.uleb128 0x24
	.long	.LASF434
	.byte	0x14
	.value	0x1c8
	.long	0x253a
	.uleb128 0x1
	.long	0x74
	.byte	0
	.uleb128 0xa
	.long	.LASF435
	.byte	0x14
	.byte	0x76
	.byte	0xf
	.long	0x285
	.long	0x2555
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x2555
	.byte	0
	.uleb128 0x7
	.long	0x28c
	.uleb128 0xa
	.long	.LASF436
	.byte	0x14
	.byte	0xb1
	.byte	0x11
	.long	0x2a
	.long	0x257a
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x2555
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0xa
	.long	.LASF437
	.byte	0x14
	.byte	0xb5
	.byte	0x1a
	.long	0x3d
	.long	0x259a
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x2555
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x6
	.long	.LASF438
	.byte	0x14
	.value	0x317
	.byte	0xc
	.long	0xe4
	.long	0x25b1
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0x6
	.long	.LASF439
	.byte	0x14
	.value	0x3b1
	.byte	0xf
	.long	0x31
	.long	0x25d2
	.uleb128 0x1
	.long	0x28c
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x7
	.long	0x24c1
	.uleb128 0x6
	.long	.LASF440
	.byte	0x14
	.value	0x3a9
	.byte	0xc
	.long	0xe4
	.long	0x25f3
	.uleb128 0x1
	.long	0x28c
	.uleb128 0x1
	.long	0x24ba
	.byte	0
	.uleb128 0x57
	.long	.LASF441
	.byte	0x21
	.value	0x130
	.byte	0xb
	.long	0x268f
	.uleb128 0x2
	.byte	0x17
	.byte	0xc8
	.byte	0xb
	.long	0x81a
	.uleb128 0x2
	.byte	0x17
	.byte	0xd8
	.byte	0xb
	.long	0x268f
	.uleb128 0x2
	.byte	0x17
	.byte	0xe3
	.byte	0xb
	.long	0x26ab
	.uleb128 0x2
	.byte	0x17
	.byte	0xe4
	.byte	0xb
	.long	0x26c1
	.uleb128 0x2
	.byte	0x17
	.byte	0xe5
	.byte	0xb
	.long	0x26e1
	.uleb128 0x2
	.byte	0x17
	.byte	0xe7
	.byte	0xb
	.long	0x2701
	.uleb128 0x2
	.byte	0x17
	.byte	0xe8
	.byte	0xb
	.long	0x271c
	.uleb128 0x17
	.string	"div"
	.byte	0x17
	.byte	0xd5
	.long	.LASF442
	.long	0x81a
	.long	0x2656
	.uleb128 0x1
	.long	0x44
	.uleb128 0x1
	.long	0x44
	.byte	0
	.uleb128 0x1d
	.long	.LASF443
	.byte	0x28
	.byte	0x25
	.byte	0xb
	.uleb128 0x2
	.byte	0x1f
	.byte	0xfb
	.byte	0xb
	.long	0x3656
	.uleb128 0x13
	.byte	0x1f
	.value	0x104
	.byte	0xb
	.long	0x3672
	.uleb128 0x13
	.byte	0x1f
	.value	0x105
	.byte	0xb
	.long	0x3693
	.uleb128 0x58
	.long	.LASF445
	.byte	0x1
	.byte	0x29
	.byte	0x31
	.byte	0xc
	.uleb128 0x5
	.long	.LASF446
	.byte	0x29
	.byte	0x32
	.byte	0x13
	.long	0x285
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF447
	.byte	0x14
	.value	0x362
	.byte	0x1e
	.long	0x81a
	.long	0x26ab
	.uleb128 0x1
	.long	0x44
	.uleb128 0x1
	.long	0x44
	.byte	0
	.uleb128 0xa
	.long	.LASF448
	.byte	0x14
	.byte	0x71
	.byte	0x24
	.long	0x44
	.long	0x26c1
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0xa
	.long	.LASF449
	.byte	0x14
	.byte	0xc9
	.byte	0x16
	.long	0x44
	.long	0x26e1
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x2555
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0xa
	.long	.LASF450
	.byte	0x14
	.byte	0xce
	.byte	0x1f
	.long	0x867
	.long	0x2701
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x2555
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0xa
	.long	.LASF451
	.byte	0x14
	.byte	0x7c
	.byte	0xe
	.long	0x783
	.long	0x271c
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x2555
	.byte	0
	.uleb128 0xa
	.long	.LASF452
	.byte	0x14
	.byte	0x7f
	.byte	0x14
	.long	0x4b
	.long	0x2737
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x2555
	.byte	0
	.uleb128 0x2
	.byte	0x2a
	.byte	0x27
	.byte	0xc
	.long	0x2384
	.uleb128 0x2
	.byte	0x2a
	.byte	0x2b
	.byte	0xe
	.long	0x23a1
	.uleb128 0x2
	.byte	0x2a
	.byte	0x2e
	.byte	0xe
	.long	0x2508
	.uleb128 0x2
	.byte	0x2a
	.byte	0x33
	.byte	0xc
	.long	0x7b2
	.uleb128 0x2
	.byte	0x2a
	.byte	0x34
	.byte	0xc
	.long	0x7e6
	.uleb128 0x2
	.byte	0x2a
	.byte	0x36
	.byte	0xc
	.long	0x9a7
	.uleb128 0x2
	.byte	0x2a
	.byte	0x36
	.byte	0xc
	.long	0x9c0
	.uleb128 0x2
	.byte	0x2a
	.byte	0x36
	.byte	0xc
	.long	0x9d9
	.uleb128 0x2
	.byte	0x2a
	.byte	0x36
	.byte	0xc
	.long	0x9f2
	.uleb128 0x2
	.byte	0x2a
	.byte	0x36
	.byte	0xc
	.long	0xa0b
	.uleb128 0x2
	.byte	0x2a
	.byte	0x37
	.byte	0xc
	.long	0x23bc
	.uleb128 0x2
	.byte	0x2a
	.byte	0x38
	.byte	0xc
	.long	0x23d2
	.uleb128 0x2
	.byte	0x2a
	.byte	0x39
	.byte	0xc
	.long	0x23e8
	.uleb128 0x2
	.byte	0x2a
	.byte	0x3a
	.byte	0xc
	.long	0x23fe
	.uleb128 0x2
	.byte	0x2a
	.byte	0x3c
	.byte	0xc
	.long	0x2638
	.uleb128 0x2
	.byte	0x2a
	.byte	0x3c
	.byte	0xc
	.long	0xa24
	.uleb128 0x2
	.byte	0x2a
	.byte	0x3c
	.byte	0xc
	.long	0x2429
	.uleb128 0x2
	.byte	0x2a
	.byte	0x3e
	.byte	0xc
	.long	0x2445
	.uleb128 0x2
	.byte	0x2a
	.byte	0x40
	.byte	0xc
	.long	0x245c
	.uleb128 0x2
	.byte	0x2a
	.byte	0x43
	.byte	0xc
	.long	0x2478
	.uleb128 0x2
	.byte	0x2a
	.byte	0x44
	.byte	0xc
	.long	0x2494
	.uleb128 0x2
	.byte	0x2a
	.byte	0x45
	.byte	0xc
	.long	0x24c6
	.uleb128 0x2
	.byte	0x2a
	.byte	0x47
	.byte	0xc
	.long	0x24e7
	.uleb128 0x2
	.byte	0x2a
	.byte	0x48
	.byte	0xc
	.long	0x251b
	.uleb128 0x2
	.byte	0x2a
	.byte	0x4a
	.byte	0xc
	.long	0x2528
	.uleb128 0x2
	.byte	0x2a
	.byte	0x4b
	.byte	0xc
	.long	0x253a
	.uleb128 0x2
	.byte	0x2a
	.byte	0x4c
	.byte	0xc
	.long	0x255a
	.uleb128 0x2
	.byte	0x2a
	.byte	0x4d
	.byte	0xc
	.long	0x257a
	.uleb128 0x2
	.byte	0x2a
	.byte	0x4e
	.byte	0xc
	.long	0x259a
	.uleb128 0x2
	.byte	0x2a
	.byte	0x50
	.byte	0xc
	.long	0x25b1
	.uleb128 0x2
	.byte	0x2a
	.byte	0x51
	.byte	0xc
	.long	0x25d7
	.uleb128 0x11
	.byte	0x1
	.byte	0x2
	.long	.LASF453
	.uleb128 0x5
	.long	.LASF454
	.byte	0x2b
	.byte	0xa3
	.byte	0xf
	.long	0x783
	.uleb128 0x5
	.long	.LASF455
	.byte	0x2b
	.byte	0xa4
	.byte	0x10
	.long	0x285
	.uleb128 0x11
	.byte	0x1
	.byte	0x7
	.long	.LASF456
	.uleb128 0x11
	.byte	0x2
	.byte	0x10
	.long	.LASF457
	.uleb128 0x11
	.byte	0x4
	.byte	0x10
	.long	.LASF458
	.uleb128 0x11
	.byte	0x10
	.byte	0x5
	.long	.LASF459
	.uleb128 0x2d
	.long	.LASF460
	.byte	0x2c
	.byte	0x27
	.byte	0xb
	.long	0x287f
	.uleb128 0x59
	.byte	0x1e
	.byte	0x3a
	.byte	0x18
	.long	0xac7
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x7
	.long	.LASF461
	.uleb128 0x2
	.byte	0x2d
	.byte	0x26
	.byte	0xc
	.long	0x9a7
	.uleb128 0x2
	.byte	0x2d
	.byte	0x26
	.byte	0xc
	.long	0x9c0
	.uleb128 0x2
	.byte	0x2d
	.byte	0x26
	.byte	0xc
	.long	0x9d9
	.uleb128 0x2
	.byte	0x2d
	.byte	0x26
	.byte	0xc
	.long	0x9f2
	.uleb128 0x2
	.byte	0x2d
	.byte	0x26
	.byte	0xc
	.long	0xa0b
	.uleb128 0x2
	.byte	0x2d
	.byte	0x27
	.byte	0xc
	.long	0xacf
	.uleb128 0x2
	.byte	0x2d
	.byte	0x27
	.byte	0xc
	.long	0xae9
	.uleb128 0x2
	.byte	0x2d
	.byte	0x28
	.byte	0xc
	.long	0xb03
	.uleb128 0x2
	.byte	0x2d
	.byte	0x28
	.byte	0xc
	.long	0xb1d
	.uleb128 0x2
	.byte	0x2d
	.byte	0x29
	.byte	0xc
	.long	0xb37
	.uleb128 0x2
	.byte	0x2d
	.byte	0x29
	.byte	0xc
	.long	0xb51
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2a
	.byte	0xc
	.long	0xb6b
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2a
	.byte	0xc
	.long	0xb8a
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2b
	.byte	0xc
	.long	0xba9
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2b
	.byte	0xc
	.long	0xbc2
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2c
	.byte	0xc
	.long	0xbdb
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2c
	.byte	0xc
	.long	0xbf4
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2d
	.byte	0xc
	.long	0xc0d
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2d
	.byte	0xc
	.long	0xc26
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2e
	.byte	0xc
	.long	0xc3f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2e
	.byte	0xc
	.long	0xc59
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2f
	.byte	0xc
	.long	0xc73
	.uleb128 0x2
	.byte	0x2d
	.byte	0x2f
	.byte	0xc
	.long	0xc8e
	.uleb128 0x2
	.byte	0x2d
	.byte	0x30
	.byte	0xc
	.long	0xca9
	.uleb128 0x2
	.byte	0x2d
	.byte	0x30
	.byte	0xc
	.long	0xcc4
	.uleb128 0x2
	.byte	0x2d
	.byte	0x31
	.byte	0xc
	.long	0xcdf
	.uleb128 0x2
	.byte	0x2d
	.byte	0x31
	.byte	0xc
	.long	0xcf8
	.uleb128 0x7
	.long	0xe4
	.uleb128 0x2
	.byte	0x2d
	.byte	0x32
	.byte	0xc
	.long	0xd11
	.uleb128 0x2
	.byte	0x2d
	.byte	0x32
	.byte	0xc
	.long	0xd31
	.uleb128 0x2
	.byte	0x2d
	.byte	0x33
	.byte	0xc
	.long	0xd51
	.uleb128 0x2
	.byte	0x2d
	.byte	0x33
	.byte	0xc
	.long	0xd71
	.uleb128 0x2
	.byte	0x2d
	.byte	0x34
	.byte	0xc
	.long	0xd91
	.uleb128 0x2
	.byte	0x2d
	.byte	0x34
	.byte	0xc
	.long	0xdaa
	.uleb128 0x2
	.byte	0x2d
	.byte	0x35
	.byte	0xc
	.long	0xdc3
	.uleb128 0x2
	.byte	0x2d
	.byte	0x35
	.byte	0xc
	.long	0xdde
	.uleb128 0x7
	.long	0x4b
	.uleb128 0x2
	.byte	0x2d
	.byte	0x36
	.byte	0xc
	.long	0xdf9
	.uleb128 0x7
	.long	0x783
	.uleb128 0x2
	.byte	0x2d
	.byte	0x36
	.byte	0xc
	.long	0xe19
	.uleb128 0x2
	.byte	0x2d
	.byte	0x37
	.byte	0xc
	.long	0xe39
	.uleb128 0x2
	.byte	0x2d
	.byte	0x37
	.byte	0xc
	.long	0xe57
	.uleb128 0x2
	.byte	0x2d
	.byte	0x38
	.byte	0xc
	.long	0xe75
	.uleb128 0x2
	.byte	0x2d
	.byte	0x38
	.byte	0xc
	.long	0xe90
	.uleb128 0x2
	.byte	0x2d
	.byte	0x39
	.byte	0xc
	.long	0xeab
	.uleb128 0x2
	.byte	0x2d
	.byte	0x39
	.byte	0xc
	.long	0xec5
	.uleb128 0x2
	.byte	0x2d
	.byte	0x3a
	.byte	0xc
	.long	0xedf
	.uleb128 0x2
	.byte	0x2d
	.byte	0x3a
	.byte	0xc
	.long	0xef9
	.uleb128 0x2
	.byte	0x2d
	.byte	0x3b
	.byte	0xc
	.long	0xf13
	.uleb128 0x2
	.byte	0x2d
	.byte	0x3b
	.byte	0xc
	.long	0xf2e
	.uleb128 0x2
	.byte	0x2d
	.byte	0x3c
	.byte	0xc
	.long	0xf49
	.uleb128 0x2
	.byte	0x2d
	.byte	0x3c
	.byte	0xc
	.long	0xf69
	.uleb128 0x2
	.byte	0x2d
	.byte	0x3f
	.byte	0xc
	.long	0xf89
	.uleb128 0x2
	.byte	0x2d
	.byte	0x3f
	.byte	0xc
	.long	0xfa4
	.uleb128 0x2
	.byte	0x2d
	.byte	0x3f
	.byte	0xc
	.long	0xfbf
	.uleb128 0x2
	.byte	0x2d
	.byte	0x40
	.byte	0xc
	.long	0xfda
	.uleb128 0x2
	.byte	0x2d
	.byte	0x40
	.byte	0xc
	.long	0xff5
	.uleb128 0x2
	.byte	0x2d
	.byte	0x40
	.byte	0xc
	.long	0x1010
	.uleb128 0x2
	.byte	0x2d
	.byte	0x41
	.byte	0xc
	.long	0x102b
	.uleb128 0x2
	.byte	0x2d
	.byte	0x41
	.byte	0xc
	.long	0x1046
	.uleb128 0x2
	.byte	0x2d
	.byte	0x41
	.byte	0xc
	.long	0x1061
	.uleb128 0x2
	.byte	0x2d
	.byte	0x42
	.byte	0xc
	.long	0x107c
	.uleb128 0x2
	.byte	0x2d
	.byte	0x42
	.byte	0xc
	.long	0x1097
	.uleb128 0x2
	.byte	0x2d
	.byte	0x42
	.byte	0xc
	.long	0x10b2
	.uleb128 0x2
	.byte	0x2d
	.byte	0x43
	.byte	0xc
	.long	0x10cd
	.uleb128 0x2
	.byte	0x2d
	.byte	0x43
	.byte	0xc
	.long	0x10e8
	.uleb128 0x2
	.byte	0x2d
	.byte	0x43
	.byte	0xc
	.long	0x1103
	.uleb128 0x2
	.byte	0x2d
	.byte	0x44
	.byte	0xc
	.long	0x111e
	.uleb128 0x2
	.byte	0x2d
	.byte	0x44
	.byte	0xc
	.long	0x1139
	.uleb128 0x2
	.byte	0x2d
	.byte	0x44
	.byte	0xc
	.long	0x1154
	.uleb128 0x2
	.byte	0x2d
	.byte	0x45
	.byte	0xc
	.long	0x116f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x45
	.byte	0xc
	.long	0x118f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x45
	.byte	0xc
	.long	0x11af
	.uleb128 0x2
	.byte	0x2d
	.byte	0x46
	.byte	0xc
	.long	0x11cf
	.uleb128 0x2
	.byte	0x2d
	.byte	0x46
	.byte	0xc
	.long	0x11ef
	.uleb128 0x2
	.byte	0x2d
	.byte	0x46
	.byte	0xc
	.long	0x120f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x47
	.byte	0xc
	.long	0x122f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x47
	.byte	0xc
	.long	0x124f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x47
	.byte	0xc
	.long	0x126f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x48
	.byte	0xc
	.long	0x128f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x48
	.byte	0xc
	.long	0x12af
	.uleb128 0x2
	.byte	0x2d
	.byte	0x48
	.byte	0xc
	.long	0x12cf
	.uleb128 0x2
	.byte	0x2d
	.byte	0x49
	.byte	0xc
	.long	0x12ef
	.uleb128 0x2
	.byte	0x2d
	.byte	0x49
	.byte	0xc
	.long	0x130f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x49
	.byte	0xc
	.long	0x132f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x4a
	.byte	0xc
	.long	0x134f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x4a
	.byte	0xc
	.long	0x136f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x4a
	.byte	0xc
	.long	0x138f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x4e
	.byte	0xc
	.long	0x13af
	.uleb128 0x2
	.byte	0x2d
	.byte	0x4e
	.byte	0xc
	.long	0x13ca
	.uleb128 0x2
	.byte	0x2d
	.byte	0x4f
	.byte	0xc
	.long	0x13e5
	.uleb128 0x2
	.byte	0x2d
	.byte	0x4f
	.byte	0xc
	.long	0x1400
	.uleb128 0x2
	.byte	0x2d
	.byte	0x50
	.byte	0xc
	.long	0x141b
	.uleb128 0x2
	.byte	0x2d
	.byte	0x50
	.byte	0xc
	.long	0x1436
	.uleb128 0x2
	.byte	0x2d
	.byte	0x51
	.byte	0xc
	.long	0x1451
	.uleb128 0x2
	.byte	0x2d
	.byte	0x51
	.byte	0xc
	.long	0x146c
	.uleb128 0x2
	.byte	0x2d
	.byte	0x52
	.byte	0xc
	.long	0x1487
	.uleb128 0x2
	.byte	0x2d
	.byte	0x52
	.byte	0xc
	.long	0x14a7
	.uleb128 0x2
	.byte	0x2d
	.byte	0x53
	.byte	0xc
	.long	0x14c7
	.uleb128 0x2
	.byte	0x2d
	.byte	0x53
	.byte	0xc
	.long	0x14e0
	.uleb128 0x2
	.byte	0x2d
	.byte	0x54
	.byte	0xc
	.long	0x14f9
	.uleb128 0x2
	.byte	0x2d
	.byte	0x54
	.byte	0xc
	.long	0x1514
	.uleb128 0x2
	.byte	0x2d
	.byte	0x55
	.byte	0xc
	.long	0x152f
	.uleb128 0x2
	.byte	0x2d
	.byte	0x55
	.byte	0xc
	.long	0x154a
	.uleb128 0x2
	.byte	0x2d
	.byte	0x56
	.byte	0xc
	.long	0x1565
	.uleb128 0x2
	.byte	0x2d
	.byte	0x56
	.byte	0xc
	.long	0x1580
	.uleb128 0x2
	.byte	0x2d
	.byte	0x57
	.byte	0xc
	.long	0x159b
	.uleb128 0x2
	.byte	0x2d
	.byte	0x57
	.byte	0xc
	.long	0x15bb
	.uleb128 0x2
	.byte	0x2d
	.byte	0x58
	.byte	0xc
	.long	0x15db
	.uleb128 0x2
	.byte	0x2d
	.byte	0x58
	.byte	0xc
	.long	0x15fe
	.uleb128 0x2
	.byte	0x2d
	.byte	0x59
	.byte	0xc
	.long	0x1621
	.uleb128 0x2
	.byte	0x2d
	.byte	0x59
	.byte	0xc
	.long	0x1641
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5a
	.byte	0xc
	.long	0x1661
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5a
	.byte	0xc
	.long	0x1681
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5b
	.byte	0xc
	.long	0x16a1
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5b
	.byte	0xc
	.long	0x16c6
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5b
	.byte	0xc
	.long	0x16eb
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5b
	.byte	0xc
	.long	0x1710
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5b
	.byte	0xc
	.long	0x1730
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5c
	.byte	0xc
	.long	0x1750
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5c
	.byte	0xc
	.long	0x176b
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5d
	.byte	0xc
	.long	0x1786
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5d
	.byte	0xc
	.long	0x17a1
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5e
	.byte	0xc
	.long	0x17bc
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5e
	.byte	0xc
	.long	0x17d7
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5f
	.byte	0xc
	.long	0x17f2
	.uleb128 0x2
	.byte	0x2d
	.byte	0x5f
	.byte	0xc
	.long	0x180d
	.uleb128 0x2
	.byte	0x2d
	.byte	0x60
	.byte	0xc
	.long	0x1828
	.uleb128 0x2
	.byte	0x2d
	.byte	0x60
	.byte	0xc
	.long	0x1843
	.uleb128 0x2
	.byte	0x2d
	.byte	0x61
	.byte	0xc
	.long	0x185e
	.uleb128 0x2
	.byte	0x2d
	.byte	0x61
	.byte	0xc
	.long	0x1879
	.uleb128 0x2
	.byte	0x2d
	.byte	0x62
	.byte	0xc
	.long	0x1894
	.uleb128 0x2
	.byte	0x2d
	.byte	0x62
	.byte	0xc
	.long	0x18af
	.uleb128 0x2
	.byte	0x2d
	.byte	0x63
	.byte	0xc
	.long	0x18ca
	.uleb128 0x2
	.byte	0x2d
	.byte	0x63
	.byte	0xc
	.long	0x18e5
	.uleb128 0x2
	.byte	0x2d
	.byte	0x64
	.byte	0xc
	.long	0x1900
	.uleb128 0x2
	.byte	0x2d
	.byte	0x64
	.byte	0xc
	.long	0x191b
	.uleb128 0x2
	.byte	0x2d
	.byte	0x65
	.byte	0xc
	.long	0x1936
	.uleb128 0x2
	.byte	0x2d
	.byte	0x65
	.byte	0xc
	.long	0x1951
	.uleb128 0x2
	.byte	0x2d
	.byte	0x66
	.byte	0xc
	.long	0x196c
	.uleb128 0x2
	.byte	0x2d
	.byte	0x66
	.byte	0xc
	.long	0x198c
	.uleb128 0x2
	.byte	0x2d
	.byte	0x67
	.byte	0xc
	.long	0x19ac
	.uleb128 0x2
	.byte	0x2d
	.byte	0x67
	.byte	0xc
	.long	0x19cc
	.uleb128 0x2
	.byte	0x2d
	.byte	0x68
	.byte	0xc
	.long	0x19ec
	.uleb128 0x2
	.byte	0x2d
	.byte	0x68
	.byte	0xc
	.long	0x1a0c
	.uleb128 0x2
	.byte	0x2d
	.byte	0x69
	.byte	0xc
	.long	0x1a2c
	.uleb128 0x2
	.byte	0x2d
	.byte	0x69
	.byte	0xc
	.long	0x1a51
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6a
	.byte	0xc
	.long	0x1a76
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6a
	.byte	0xc
	.long	0x1a91
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6b
	.byte	0xc
	.long	0x1aac
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6b
	.byte	0xc
	.long	0x1ac7
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6c
	.byte	0xc
	.long	0x1ae2
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6c
	.byte	0xc
	.long	0x1b02
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6d
	.byte	0xc
	.long	0x1b22
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6d
	.byte	0xc
	.long	0x1b42
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6e
	.byte	0xc
	.long	0x1b62
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6e
	.byte	0xc
	.long	0x1b7d
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6f
	.byte	0xc
	.long	0x1b98
	.uleb128 0x2
	.byte	0x2d
	.byte	0x6f
	.byte	0xc
	.long	0x1bb3
	.uleb128 0x2
	.byte	0x2d
	.byte	0xb7
	.byte	0xc
	.long	0x1bce
	.uleb128 0x2
	.byte	0x2d
	.byte	0xb7
	.byte	0xc
	.long	0x1bf3
	.uleb128 0x2
	.byte	0x2d
	.byte	0xb7
	.byte	0xc
	.long	0x1c18
	.uleb128 0x5a
	.string	"tm"
	.byte	0x38
	.byte	0x2e
	.byte	0x7
	.byte	0x8
	.long	0x2e29
	.uleb128 0x4
	.long	.LASF462
	.byte	0x2e
	.byte	0x9
	.byte	0x7
	.long	0xe4
	.byte	0
	.uleb128 0x4
	.long	.LASF463
	.byte	0x2e
	.byte	0xa
	.byte	0x7
	.long	0xe4
	.byte	0x4
	.uleb128 0x4
	.long	.LASF464
	.byte	0x2e
	.byte	0xb
	.byte	0x7
	.long	0xe4
	.byte	0x8
	.uleb128 0x4
	.long	.LASF465
	.byte	0x2e
	.byte	0xc
	.byte	0x7
	.long	0xe4
	.byte	0xc
	.uleb128 0x4
	.long	.LASF466
	.byte	0x2e
	.byte	0xd
	.byte	0x7
	.long	0xe4
	.byte	0x10
	.uleb128 0x4
	.long	.LASF467
	.byte	0x2e
	.byte	0xe
	.byte	0x7
	.long	0xe4
	.byte	0x14
	.uleb128 0x4
	.long	.LASF468
	.byte	0x2e
	.byte	0xf
	.byte	0x7
	.long	0xe4
	.byte	0x18
	.uleb128 0x4
	.long	.LASF469
	.byte	0x2e
	.byte	0x10
	.byte	0x7
	.long	0xe4
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF470
	.byte	0x2e
	.byte	0x11
	.byte	0x7
	.long	0xe4
	.byte	0x20
	.uleb128 0x4
	.long	.LASF471
	.byte	0x2e
	.byte	0x14
	.byte	0xc
	.long	0x2a
	.byte	0x28
	.uleb128 0x4
	.long	.LASF472
	.byte	0x2e
	.byte	0x15
	.byte	0xf
	.long	0x296
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.long	0x2d8d
	.uleb128 0x9
	.long	.LASF473
	.byte	0x2f
	.byte	0x3
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL17START_RAM_ADDRESS
	.uleb128 0x9
	.long	.LASF474
	.byte	0x2f
	.byte	0x4
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL33START_RAM_ADDRESS_FOR_GLOBAL_VARS
	.uleb128 0x9
	.long	.LASF475
	.byte	0x2f
	.byte	0x8
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL21VARIABLES_ADDRESS_REG
	.uleb128 0x9
	.long	.LASF476
	.byte	0x2f
	.byte	0x9
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16RETURN_VALUE_REG
	.uleb128 0x9
	.long	.LASF477
	.byte	0x2f
	.byte	0xc
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL18SOFT_CPU_PRECISION
	.uleb128 0x1a
	.long	.LASF478
	.byte	0x18
	.byte	0x30
	.byte	0x5
	.byte	0x8
	.long	0x2ed1
	.uleb128 0x4
	.long	.LASF479
	.byte	0x30
	.byte	0x7
	.byte	0x14
	.long	0x2ed6
	.byte	0
	.uleb128 0x4
	.long	.LASF480
	.byte	0x30
	.byte	0x9
	.byte	0x10
	.long	0x1ee
	.byte	0x8
	.uleb128 0x4
	.long	.LASF54
	.byte	0x30
	.byte	0xa
	.byte	0x9
	.long	0xe4
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x2e9c
	.uleb128 0x7
	.long	0x342
	.uleb128 0x8
	.long	0x2ed6
	.uleb128 0x5
	.long	.LASF481
	.byte	0x31
	.byte	0x14
	.byte	0x16
	.long	0x74
	.uleb128 0x5
	.long	.LASF482
	.byte	0x32
	.byte	0x6
	.byte	0x15
	.long	0x524
	.uleb128 0x8
	.long	0x2eec
	.uleb128 0x6
	.long	.LASF483
	.byte	0x33
	.value	0x11d
	.byte	0xf
	.long	0x2ee0
	.long	0x2f14
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x6
	.long	.LASF484
	.byte	0x33
	.value	0x2e8
	.byte	0xf
	.long	0x2ee0
	.long	0x2f2b
	.uleb128 0x1
	.long	0x2f2b
	.byte	0
	.uleb128 0x7
	.long	0x564
	.uleb128 0x6
	.long	.LASF485
	.byte	0x33
	.value	0x305
	.byte	0x11
	.long	0x24b5
	.long	0x2f51
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0xe4
	.uleb128 0x1
	.long	0x2f2b
	.byte	0
	.uleb128 0x6
	.long	.LASF486
	.byte	0x33
	.value	0x2f6
	.byte	0xf
	.long	0x2ee0
	.long	0x2f6d
	.uleb128 0x1
	.long	0x24ba
	.uleb128 0x1
	.long	0x2f2b
	.byte	0
	.uleb128 0x6
	.long	.LASF487
	.byte	0x33
	.value	0x30c
	.byte	0xc
	.long	0xe4
	.long	0x2f89
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x2f2b
	.byte	0
	.uleb128 0x6
	.long	.LASF488
	.byte	0x33
	.value	0x24c
	.byte	0xc
	.long	0xe4
	.long	0x2fa5
	.uleb128 0x1
	.long	0x2f2b
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x6
	.long	.LASF489
	.byte	0x33
	.value	0x253
	.byte	0xc
	.long	0xe4
	.long	0x2fc2
	.uleb128 0x1
	.long	0x2f2b
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.long	.LASF490
	.byte	0x33
	.value	0x291
	.byte	0xc
	.long	.LASF491
	.long	0xe4
	.long	0x2fe3
	.uleb128 0x1
	.long	0x2f2b
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.long	.LASF492
	.byte	0x33
	.value	0x2e9
	.byte	0xf
	.long	0x2ee0
	.long	0x2ffa
	.uleb128 0x1
	.long	0x2f2b
	.byte	0
	.uleb128 0x2f
	.long	.LASF494
	.byte	0x33
	.value	0x2ef
	.byte	0xf
	.long	0x2ee0
	.uleb128 0x6
	.long	.LASF495
	.byte	0x33
	.value	0x134
	.byte	0xf
	.long	0x31
	.long	0x3028
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x3028
	.byte	0
	.uleb128 0x7
	.long	0x2eec
	.uleb128 0x6
	.long	.LASF496
	.byte	0x33
	.value	0x129
	.byte	0xf
	.long	0x31
	.long	0x3053
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x3028
	.byte	0
	.uleb128 0x6
	.long	.LASF497
	.byte	0x33
	.value	0x125
	.byte	0xc
	.long	0xe4
	.long	0x306a
	.uleb128 0x1
	.long	0x306a
	.byte	0
	.uleb128 0x7
	.long	0x2ef8
	.uleb128 0x6
	.long	.LASF498
	.byte	0x33
	.value	0x152
	.byte	0xf
	.long	0x31
	.long	0x3095
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x347
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x3028
	.byte	0
	.uleb128 0x6
	.long	.LASF499
	.byte	0x33
	.value	0x2f7
	.byte	0xf
	.long	0x2ee0
	.long	0x30b1
	.uleb128 0x1
	.long	0x24ba
	.uleb128 0x1
	.long	0x2f2b
	.byte	0
	.uleb128 0x6
	.long	.LASF500
	.byte	0x33
	.value	0x2fd
	.byte	0xf
	.long	0x2ee0
	.long	0x30c8
	.uleb128 0x1
	.long	0x24ba
	.byte	0
	.uleb128 0x6
	.long	.LASF501
	.byte	0x33
	.value	0x25d
	.byte	0xc
	.long	0xe4
	.long	0x30ea
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.long	.LASF502
	.byte	0x33
	.value	0x298
	.byte	0xc
	.long	.LASF503
	.long	0xe4
	.long	0x310b
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.long	.LASF504
	.byte	0x33
	.value	0x314
	.byte	0xf
	.long	0x2ee0
	.long	0x3127
	.uleb128 0x1
	.long	0x2ee0
	.uleb128 0x1
	.long	0x2f2b
	.byte	0
	.uleb128 0x6
	.long	.LASF505
	.byte	0x33
	.value	0x265
	.byte	0xc
	.long	0xe4
	.long	0x3148
	.uleb128 0x1
	.long	0x2f2b
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x3148
	.byte	0
	.uleb128 0x7
	.long	0x376
	.uleb128 0x3
	.long	.LASF506
	.byte	0x33
	.value	0x2c7
	.byte	0xc
	.long	.LASF507
	.long	0xe4
	.long	0x3172
	.uleb128 0x1
	.long	0x2f2b
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x3148
	.byte	0
	.uleb128 0x6
	.long	.LASF508
	.byte	0x33
	.value	0x272
	.byte	0xc
	.long	0xe4
	.long	0x3198
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x3148
	.byte	0
	.uleb128 0x3
	.long	.LASF509
	.byte	0x33
	.value	0x2ce
	.byte	0xc
	.long	.LASF510
	.long	0xe4
	.long	0x31bd
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x3148
	.byte	0
	.uleb128 0x6
	.long	.LASF511
	.byte	0x33
	.value	0x26d
	.byte	0xc
	.long	0xe4
	.long	0x31d9
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x3148
	.byte	0
	.uleb128 0x3
	.long	.LASF512
	.byte	0x33
	.value	0x2cb
	.byte	0xc
	.long	.LASF513
	.long	0xe4
	.long	0x31f9
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x3148
	.byte	0
	.uleb128 0x6
	.long	.LASF514
	.byte	0x33
	.value	0x12e
	.byte	0xf
	.long	0x31
	.long	0x321a
	.uleb128 0x1
	.long	0x28c
	.uleb128 0x1
	.long	0x24ba
	.uleb128 0x1
	.long	0x3028
	.byte	0
	.uleb128 0xa
	.long	.LASF515
	.byte	0x33
	.byte	0x61
	.byte	0x11
	.long	0x24b5
	.long	0x3235
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x25d2
	.byte	0
	.uleb128 0xa
	.long	.LASF516
	.byte	0x33
	.byte	0x6a
	.byte	0xc
	.long	0xe4
	.long	0x3250
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x25d2
	.byte	0
	.uleb128 0xa
	.long	.LASF517
	.byte	0x33
	.byte	0x83
	.byte	0xc
	.long	0xe4
	.long	0x326b
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x25d2
	.byte	0
	.uleb128 0xa
	.long	.LASF518
	.byte	0x33
	.byte	0x57
	.byte	0x11
	.long	0x24b5
	.long	0x3286
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x25d2
	.byte	0
	.uleb128 0xa
	.long	.LASF519
	.byte	0x33
	.byte	0xbc
	.byte	0xf
	.long	0x31
	.long	0x32a1
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x25d2
	.byte	0
	.uleb128 0x6
	.long	.LASF520
	.byte	0x33
	.value	0x354
	.byte	0xf
	.long	0x31
	.long	0x32c7
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x32c7
	.byte	0
	.uleb128 0x7
	.long	0x2e29
	.uleb128 0xa
	.long	.LASF521
	.byte	0x33
	.byte	0xdf
	.byte	0xf
	.long	0x31
	.long	0x32e2
	.uleb128 0x1
	.long	0x25d2
	.byte	0
	.uleb128 0xa
	.long	.LASF522
	.byte	0x33
	.byte	0x65
	.byte	0x11
	.long	0x24b5
	.long	0x3302
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0xa
	.long	.LASF523
	.byte	0x33
	.byte	0x6d
	.byte	0xc
	.long	0xe4
	.long	0x3322
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0xa
	.long	.LASF524
	.byte	0x33
	.byte	0x5c
	.byte	0x11
	.long	0x24b5
	.long	0x3342
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x6
	.long	.LASF525
	.byte	0x33
	.value	0x158
	.byte	0xf
	.long	0x31
	.long	0x3368
	.uleb128 0x1
	.long	0x28c
	.uleb128 0x1
	.long	0x3368
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x3028
	.byte	0
	.uleb128 0x7
	.long	0x25d2
	.uleb128 0xa
	.long	.LASF526
	.byte	0x33
	.byte	0xc0
	.byte	0xf
	.long	0x31
	.long	0x3388
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x25d2
	.byte	0
	.uleb128 0x6
	.long	.LASF527
	.byte	0x33
	.value	0x17a
	.byte	0xf
	.long	0x285
	.long	0x33a4
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x33a4
	.byte	0
	.uleb128 0x7
	.long	0x24b5
	.uleb128 0x6
	.long	.LASF528
	.byte	0x33
	.value	0x17f
	.byte	0xe
	.long	0x783
	.long	0x33c5
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x33a4
	.byte	0
	.uleb128 0xa
	.long	.LASF529
	.byte	0x33
	.byte	0xda
	.byte	0x11
	.long	0x24b5
	.long	0x33e5
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x33a4
	.byte	0
	.uleb128 0x6
	.long	.LASF530
	.byte	0x33
	.value	0x1ad
	.byte	0x11
	.long	0x2a
	.long	0x3406
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x33a4
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x6
	.long	.LASF531
	.byte	0x33
	.value	0x1b2
	.byte	0x1a
	.long	0x3d
	.long	0x3427
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x33a4
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0xa
	.long	.LASF532
	.byte	0x33
	.byte	0x87
	.byte	0xf
	.long	0x31
	.long	0x3447
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x6
	.long	.LASF533
	.byte	0x33
	.value	0x121
	.byte	0xc
	.long	0xe4
	.long	0x345e
	.uleb128 0x1
	.long	0x2ee0
	.byte	0
	.uleb128 0x6
	.long	.LASF534
	.byte	0x33
	.value	0x103
	.byte	0xc
	.long	0xe4
	.long	0x347f
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x6
	.long	.LASF535
	.byte	0x33
	.value	0x107
	.byte	0x11
	.long	0x24b5
	.long	0x34a0
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x6
	.long	.LASF536
	.byte	0x33
	.value	0x10c
	.byte	0x11
	.long	0x24b5
	.long	0x34c1
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x6
	.long	.LASF537
	.byte	0x33
	.value	0x110
	.byte	0x11
	.long	0x24b5
	.long	0x34e2
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x24ba
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x6
	.long	.LASF538
	.byte	0x33
	.value	0x25a
	.byte	0xc
	.long	0xe4
	.long	0x34fa
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.long	.LASF539
	.byte	0x33
	.value	0x295
	.byte	0xc
	.long	.LASF540
	.long	0xe4
	.long	0x3516
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF541
	.byte	0x33
	.byte	0xa2
	.byte	0x1d
	.long	.LASF541
	.long	0x25d2
	.long	0x3535
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x24ba
	.byte	0
	.uleb128 0x10
	.long	.LASF541
	.byte	0x33
	.byte	0xa0
	.byte	0x17
	.long	.LASF541
	.long	0x24b5
	.long	0x3554
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x24ba
	.byte	0
	.uleb128 0x10
	.long	.LASF542
	.byte	0x33
	.byte	0xc6
	.byte	0x1d
	.long	.LASF542
	.long	0x25d2
	.long	0x3573
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x25d2
	.byte	0
	.uleb128 0x10
	.long	.LASF542
	.byte	0x33
	.byte	0xc4
	.byte	0x17
	.long	.LASF542
	.long	0x24b5
	.long	0x3592
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x25d2
	.byte	0
	.uleb128 0x10
	.long	.LASF543
	.byte	0x33
	.byte	0xac
	.byte	0x1d
	.long	.LASF543
	.long	0x25d2
	.long	0x35b1
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x24ba
	.byte	0
	.uleb128 0x10
	.long	.LASF543
	.byte	0x33
	.byte	0xaa
	.byte	0x17
	.long	.LASF543
	.long	0x24b5
	.long	0x35d0
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x24ba
	.byte	0
	.uleb128 0x10
	.long	.LASF544
	.byte	0x33
	.byte	0xd1
	.byte	0x1d
	.long	.LASF544
	.long	0x25d2
	.long	0x35ef
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x25d2
	.byte	0
	.uleb128 0x10
	.long	.LASF544
	.byte	0x33
	.byte	0xcf
	.byte	0x17
	.long	.LASF544
	.long	0x24b5
	.long	0x360e
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x25d2
	.byte	0
	.uleb128 0x10
	.long	.LASF545
	.byte	0x33
	.byte	0xfa
	.byte	0x1d
	.long	.LASF545
	.long	0x25d2
	.long	0x3632
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x24ba
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x10
	.long	.LASF545
	.byte	0x33
	.byte	0xf8
	.byte	0x17
	.long	.LASF545
	.long	0x24b5
	.long	0x3656
	.uleb128 0x1
	.long	0x24b5
	.uleb128 0x1
	.long	0x24ba
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x6
	.long	.LASF546
	.byte	0x33
	.value	0x181
	.byte	0x14
	.long	0x4b
	.long	0x3672
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x33a4
	.byte	0
	.uleb128 0x6
	.long	.LASF547
	.byte	0x33
	.value	0x1ba
	.byte	0x16
	.long	0x44
	.long	0x3693
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x33a4
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x6
	.long	.LASF548
	.byte	0x33
	.value	0x1c1
	.byte	0x1f
	.long	0x867
	.long	0x36b4
	.uleb128 0x1
	.long	0x25d2
	.uleb128 0x1
	.long	0x33a4
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x7
	.long	0x1e9b
	.uleb128 0x7
	.long	0x2058
	.uleb128 0x22
	.long	0x2058
	.uleb128 0x5b
	.byte	0x8
	.long	0x1e9b
	.uleb128 0x22
	.long	0x1e9b
	.uleb128 0x7
	.long	0x2096
	.uleb128 0x5
	.long	.LASF549
	.byte	0x34
	.byte	0x18
	.byte	0x13
	.long	0x3ce
	.uleb128 0x5
	.long	.LASF550
	.byte	0x34
	.byte	0x19
	.byte	0x14
	.long	0x3ed
	.uleb128 0x5
	.long	.LASF551
	.byte	0x34
	.byte	0x1a
	.byte	0x14
	.long	0x40a
	.uleb128 0x5
	.long	.LASF552
	.byte	0x34
	.byte	0x1b
	.byte	0x14
	.long	0x422
	.uleb128 0x5
	.long	.LASF553
	.byte	0x35
	.byte	0x2b
	.byte	0x18
	.long	0x42e
	.uleb128 0x5
	.long	.LASF554
	.byte	0x35
	.byte	0x2c
	.byte	0x19
	.long	0x446
	.uleb128 0x5
	.long	.LASF555
	.byte	0x35
	.byte	0x2d
	.byte	0x19
	.long	0x45e
	.uleb128 0x5
	.long	.LASF556
	.byte	0x35
	.byte	0x2e
	.byte	0x19
	.long	0x476
	.uleb128 0x5
	.long	.LASF557
	.byte	0x35
	.byte	0x31
	.byte	0x19
	.long	0x43a
	.uleb128 0x5
	.long	.LASF558
	.byte	0x35
	.byte	0x32
	.byte	0x1a
	.long	0x452
	.uleb128 0x5
	.long	.LASF559
	.byte	0x35
	.byte	0x33
	.byte	0x1a
	.long	0x46a
	.uleb128 0x5
	.long	.LASF560
	.byte	0x35
	.byte	0x34
	.byte	0x1a
	.long	0x482
	.uleb128 0x5
	.long	.LASF561
	.byte	0x35
	.byte	0x3a
	.byte	0x15
	.long	0x3c7
	.uleb128 0x5
	.long	.LASF562
	.byte	0x35
	.byte	0x3c
	.byte	0x12
	.long	0x2a
	.uleb128 0x5
	.long	.LASF563
	.byte	0x35
	.byte	0x3d
	.byte	0x12
	.long	0x2a
	.uleb128 0x5
	.long	.LASF564
	.byte	0x35
	.byte	0x3e
	.byte	0x12
	.long	0x2a
	.uleb128 0x5
	.long	.LASF565
	.byte	0x35
	.byte	0x47
	.byte	0x17
	.long	0x3ad
	.uleb128 0x5
	.long	.LASF566
	.byte	0x35
	.byte	0x49
	.byte	0x1b
	.long	0x3d
	.uleb128 0x5
	.long	.LASF567
	.byte	0x35
	.byte	0x4a
	.byte	0x1b
	.long	0x3d
	.uleb128 0x5
	.long	.LASF568
	.byte	0x35
	.byte	0x4b
	.byte	0x1b
	.long	0x3d
	.uleb128 0x5
	.long	.LASF569
	.byte	0x35
	.byte	0x57
	.byte	0x12
	.long	0x2a
	.uleb128 0x5
	.long	.LASF570
	.byte	0x35
	.byte	0x5a
	.byte	0x1b
	.long	0x3d
	.uleb128 0x5
	.long	.LASF571
	.byte	0x35
	.byte	0x65
	.byte	0x14
	.long	0x48e
	.uleb128 0x5
	.long	.LASF572
	.byte	0x35
	.byte	0x66
	.byte	0x15
	.long	0x49a
	.uleb128 0x1a
	.long	.LASF573
	.byte	0x60
	.byte	0x36
	.byte	0x33
	.byte	0x8
	.long	0x3939
	.uleb128 0x4
	.long	.LASF574
	.byte	0x36
	.byte	0x37
	.byte	0x9
	.long	0x28c
	.byte	0
	.uleb128 0x4
	.long	.LASF575
	.byte	0x36
	.byte	0x38
	.byte	0x9
	.long	0x28c
	.byte	0x8
	.uleb128 0x4
	.long	.LASF576
	.byte	0x36
	.byte	0x3e
	.byte	0x9
	.long	0x28c
	.byte	0x10
	.uleb128 0x4
	.long	.LASF577
	.byte	0x36
	.byte	0x44
	.byte	0x9
	.long	0x28c
	.byte	0x18
	.uleb128 0x4
	.long	.LASF578
	.byte	0x36
	.byte	0x45
	.byte	0x9
	.long	0x28c
	.byte	0x20
	.uleb128 0x4
	.long	.LASF579
	.byte	0x36
	.byte	0x46
	.byte	0x9
	.long	0x28c
	.byte	0x28
	.uleb128 0x4
	.long	.LASF580
	.byte	0x36
	.byte	0x47
	.byte	0x9
	.long	0x28c
	.byte	0x30
	.uleb128 0x4
	.long	.LASF581
	.byte	0x36
	.byte	0x48
	.byte	0x9
	.long	0x28c
	.byte	0x38
	.uleb128 0x4
	.long	.LASF582
	.byte	0x36
	.byte	0x49
	.byte	0x9
	.long	0x28c
	.byte	0x40
	.uleb128 0x4
	.long	.LASF583
	.byte	0x36
	.byte	0x4a
	.byte	0x9
	.long	0x28c
	.byte	0x48
	.uleb128 0x4
	.long	.LASF584
	.byte	0x36
	.byte	0x4b
	.byte	0x8
	.long	0x279
	.byte	0x50
	.uleb128 0x4
	.long	.LASF585
	.byte	0x36
	.byte	0x4c
	.byte	0x8
	.long	0x279
	.byte	0x51
	.uleb128 0x4
	.long	.LASF586
	.byte	0x36
	.byte	0x4e
	.byte	0x8
	.long	0x279
	.byte	0x52
	.uleb128 0x4
	.long	.LASF587
	.byte	0x36
	.byte	0x50
	.byte	0x8
	.long	0x279
	.byte	0x53
	.uleb128 0x4
	.long	.LASF588
	.byte	0x36
	.byte	0x52
	.byte	0x8
	.long	0x279
	.byte	0x54
	.uleb128 0x4
	.long	.LASF589
	.byte	0x36
	.byte	0x54
	.byte	0x8
	.long	0x279
	.byte	0x55
	.uleb128 0x4
	.long	.LASF590
	.byte	0x36
	.byte	0x5b
	.byte	0x8
	.long	0x279
	.byte	0x56
	.uleb128 0x4
	.long	.LASF591
	.byte	0x36
	.byte	0x5c
	.byte	0x8
	.long	0x279
	.byte	0x57
	.uleb128 0x4
	.long	.LASF592
	.byte	0x36
	.byte	0x5f
	.byte	0x8
	.long	0x279
	.byte	0x58
	.uleb128 0x4
	.long	.LASF593
	.byte	0x36
	.byte	0x61
	.byte	0x8
	.long	0x279
	.byte	0x59
	.uleb128 0x4
	.long	.LASF594
	.byte	0x36
	.byte	0x63
	.byte	0x8
	.long	0x279
	.byte	0x5a
	.uleb128 0x4
	.long	.LASF595
	.byte	0x36
	.byte	0x65
	.byte	0x8
	.long	0x279
	.byte	0x5b
	.uleb128 0x4
	.long	.LASF596
	.byte	0x36
	.byte	0x6c
	.byte	0x8
	.long	0x279
	.byte	0x5c
	.uleb128 0x4
	.long	.LASF597
	.byte	0x36
	.byte	0x6d
	.byte	0x8
	.long	0x279
	.byte	0x5d
	.byte	0
	.uleb128 0xa
	.long	.LASF598
	.byte	0x36
	.byte	0x7a
	.byte	0xe
	.long	0x28c
	.long	0x3954
	.uleb128 0x1
	.long	0xe4
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0x38
	.long	.LASF599
	.byte	0x36
	.byte	0x7d
	.byte	0x16
	.long	0x3960
	.uleb128 0x7
	.long	0x37f3
	.uleb128 0x24
	.long	.LASF600
	.byte	0x13
	.value	0x312
	.long	0x3977
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0xa
	.long	.LASF601
	.byte	0x13
	.byte	0xb2
	.byte	0xc
	.long	0xe4
	.long	0x398d
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0x6
	.long	.LASF602
	.byte	0x13
	.value	0x314
	.byte	0xc
	.long	0xe4
	.long	0x39a4
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0x6
	.long	.LASF603
	.byte	0x13
	.value	0x316
	.byte	0xc
	.long	0xe4
	.long	0x39bb
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0xa
	.long	.LASF604
	.byte	0x13
	.byte	0xe6
	.byte	0xc
	.long	0xe4
	.long	0x39d1
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0x6
	.long	.LASF605
	.byte	0x13
	.value	0x201
	.byte	0xc
	.long	0xe4
	.long	0x39e8
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0x6
	.long	.LASF606
	.byte	0x13
	.value	0x2f8
	.byte	0xc
	.long	0xe4
	.long	0x3a04
	.uleb128 0x1
	.long	0x770
	.uleb128 0x1
	.long	0x3a04
	.byte	0
	.uleb128 0x7
	.long	0x75f
	.uleb128 0x6
	.long	.LASF607
	.byte	0x13
	.value	0x250
	.byte	0xe
	.long	0x28c
	.long	0x3a2a
	.uleb128 0x1
	.long	0x28c
	.uleb128 0x1
	.long	0xe4
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0x6
	.long	.LASF608
	.byte	0x13
	.value	0x102
	.byte	0xe
	.long	0x770
	.long	0x3a46
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0x6
	.long	.LASF609
	.byte	0x13
	.value	0x2a3
	.byte	0xf
	.long	0x31
	.long	0x3a6c
	.uleb128 0x1
	.long	0x3ab
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x31
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0x6
	.long	.LASF610
	.byte	0x13
	.value	0x109
	.byte	0xe
	.long	0x770
	.long	0x3a8d
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0x6
	.long	.LASF611
	.byte	0x13
	.value	0x2c9
	.byte	0xc
	.long	0xe4
	.long	0x3aae
	.uleb128 0x1
	.long	0x770
	.uleb128 0x1
	.long	0x2a
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x6
	.long	.LASF612
	.byte	0x13
	.value	0x2fd
	.byte	0xc
	.long	0xe4
	.long	0x3aca
	.uleb128 0x1
	.long	0x770
	.uleb128 0x1
	.long	0x3aca
	.byte	0
	.uleb128 0x7
	.long	0x76b
	.uleb128 0x6
	.long	.LASF613
	.byte	0x13
	.value	0x2ce
	.byte	0x11
	.long	0x2a
	.long	0x3ae6
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0x6
	.long	.LASF614
	.byte	0x13
	.value	0x202
	.byte	0xc
	.long	0xe4
	.long	0x3afd
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0x2f
	.long	.LASF615
	.byte	0x13
	.value	0x208
	.byte	0xc
	.long	0xe4
	.uleb128 0x24
	.long	.LASF616
	.byte	0x13
	.value	0x324
	.long	0x3b1c
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0xa
	.long	.LASF617
	.byte	0x13
	.byte	0x98
	.byte	0xc
	.long	0xe4
	.long	0x3b32
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0xa
	.long	.LASF618
	.byte	0x13
	.byte	0x9a
	.byte	0xc
	.long	0xe4
	.long	0x3b4d
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0x24
	.long	.LASF619
	.byte	0x13
	.value	0x2d3
	.long	0x3b5f
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0x24
	.long	.LASF620
	.byte	0x13
	.value	0x148
	.long	0x3b76
	.uleb128 0x1
	.long	0x770
	.uleb128 0x1
	.long	0x28c
	.byte	0
	.uleb128 0x6
	.long	.LASF621
	.byte	0x13
	.value	0x14c
	.byte	0xc
	.long	0xe4
	.long	0x3b9c
	.uleb128 0x1
	.long	0x770
	.uleb128 0x1
	.long	0x28c
	.uleb128 0x1
	.long	0xe4
	.uleb128 0x1
	.long	0x31
	.byte	0
	.uleb128 0x38
	.long	.LASF622
	.byte	0x13
	.byte	0xbc
	.byte	0xe
	.long	0x770
	.uleb128 0xa
	.long	.LASF623
	.byte	0x13
	.byte	0xcd
	.byte	0xe
	.long	0x28c
	.long	0x3bbe
	.uleb128 0x1
	.long	0x28c
	.byte	0
	.uleb128 0x6
	.long	.LASF624
	.byte	0x13
	.value	0x29c
	.byte	0xc
	.long	0xe4
	.long	0x3bda
	.uleb128 0x1
	.long	0xe4
	.uleb128 0x1
	.long	0x770
	.byte	0
	.uleb128 0x7
	.long	0x228e
	.uleb128 0x8
	.long	0x3bda
	.uleb128 0x22
	.long	0x2319
	.uleb128 0x22
	.long	0x228e
	.uleb128 0x5
	.long	.LASF625
	.byte	0x37
	.byte	0x26
	.byte	0x1b
	.long	0x3d
	.uleb128 0x5
	.long	.LASF626
	.byte	0x38
	.byte	0x30
	.byte	0x1a
	.long	0x3c06
	.uleb128 0x7
	.long	0x405
	.uleb128 0xa
	.long	.LASF627
	.byte	0x37
	.byte	0x9f
	.byte	0xc
	.long	0xe4
	.long	0x3c26
	.uleb128 0x1
	.long	0x2ee0
	.uleb128 0x1
	.long	0x3bee
	.byte	0
	.uleb128 0xa
	.long	.LASF628
	.byte	0x38
	.byte	0x37
	.byte	0xf
	.long	0x2ee0
	.long	0x3c41
	.uleb128 0x1
	.long	0x2ee0
	.uleb128 0x1
	.long	0x3bfa
	.byte	0
	.uleb128 0xa
	.long	.LASF629
	.byte	0x38
	.byte	0x34
	.byte	0x12
	.long	0x3bfa
	.long	0x3c57
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0xa
	.long	.LASF630
	.byte	0x37
	.byte	0x9b
	.byte	0x11
	.long	0x3bee
	.long	0x3c6d
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0x5c
	.long	0x2357
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0xe
	.long	0x280
	.long	0x3c8c
	.uleb128 0xf
	.long	0x3d
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.long	0x3c7c
	.uleb128 0x9
	.long	.LASF631
	.byte	0x39
	.byte	0x3
	.byte	0xc
	.long	0x3c8c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12STD_LOG_NAME
	.uleb128 0x33
	.long	.LASF632
	.byte	0x18
	.byte	0x3a
	.byte	0xb
	.byte	0x7
	.long	0x3d6e
	.uleb128 0x4
	.long	.LASF633
	.byte	0x3a
	.byte	0xe
	.byte	0xd
	.long	0xe4
	.byte	0
	.uleb128 0x4
	.long	.LASF634
	.byte	0x3a
	.byte	0x10
	.byte	0xd
	.long	0xe4
	.byte	0x4
	.uleb128 0x4
	.long	.LASF635
	.byte	0x3a
	.byte	0x11
	.byte	0xd
	.long	0xe4
	.byte	0x8
	.uleb128 0x4
	.long	.LASF636
	.byte	0x3a
	.byte	0x12
	.byte	0x15
	.long	0x296
	.byte	0x10
	.uleb128 0x5d
	.long	.LASF632
	.byte	0x3a
	.byte	0x14
	.byte	0x9
	.long	.LASF637
	.long	0x3cfc
	.long	0x3d07
	.uleb128 0xd
	.long	0x3d73
	.uleb128 0x1
	.long	0x3d7d
	.byte	0
	.uleb128 0x5e
	.long	.LASF398
	.byte	0x3a
	.byte	0x15
	.byte	0x19
	.long	.LASF638
	.long	0x3d82
	.long	0x3d1f
	.long	0x3d2a
	.uleb128 0xd
	.long	0x3d73
	.uleb128 0x1
	.long	0x3d7d
	.byte	0
	.uleb128 0x5f
	.long	.LASF632
	.byte	0x3a
	.byte	0x18
	.byte	0x9
	.long	.LASF639
	.byte	0x1
	.long	0x3d40
	.byte	0
	.long	0x3d50
	.uleb128 0xd
	.long	0x3d73
	.uleb128 0x1
	.long	0xe4
	.uleb128 0x1
	.long	0x296
	.byte	0
	.uleb128 0x60
	.long	.LASF640
	.byte	0x3a
	.byte	0x19
	.byte	0x9
	.long	.LASF641
	.byte	0x1
	.long	0x3d62
	.byte	0
	.uleb128 0xd
	.long	0x3d73
	.uleb128 0xd
	.long	0xe4
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x3ca7
	.uleb128 0x7
	.long	0x3ca7
	.uleb128 0x8
	.long	0x3d73
	.uleb128 0x22
	.long	0x3d6e
	.uleb128 0x22
	.long	0x3ca7
	.uleb128 0x9
	.long	.LASF642
	.byte	0x3b
	.byte	0x3
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6CRINGE
	.uleb128 0x23
	.long	.LASF644
	.byte	0x5
	.long	0xe4
	.byte	0x3b
	.byte	0x5
	.long	0x3dc0
	.uleb128 0xc
	.long	.LASF645
	.byte	0
	.uleb128 0x30
	.long	.LASF646
	.sleb128 -1
	.uleb128 0x30
	.long	.LASF647
	.sleb128 -2
	.byte	0
	.uleb128 0x23
	.long	.LASF648
	.byte	0x5
	.long	0xe4
	.byte	0x3c
	.byte	0x3
	.long	0x3e4a
	.uleb128 0xc
	.long	.LASF649
	.byte	0x1
	.uleb128 0xc
	.long	.LASF650
	.byte	0x2
	.uleb128 0xc
	.long	.LASF651
	.byte	0x3
	.uleb128 0xc
	.long	.LASF652
	.byte	0x4
	.uleb128 0xc
	.long	.LASF653
	.byte	0x5
	.uleb128 0xc
	.long	.LASF654
	.byte	0x6
	.uleb128 0xc
	.long	.LASF655
	.byte	0x7
	.uleb128 0xc
	.long	.LASF656
	.byte	0x8
	.uleb128 0xc
	.long	.LASF657
	.byte	0x9
	.uleb128 0xc
	.long	.LASF658
	.byte	0xa
	.uleb128 0xc
	.long	.LASF659
	.byte	0xb
	.uleb128 0xc
	.long	.LASF660
	.byte	0xc
	.uleb128 0xc
	.long	.LASF661
	.byte	0x3d
	.uleb128 0xc
	.long	.LASF662
	.byte	0x2c
	.uleb128 0xc
	.long	.LASF663
	.byte	0x7b
	.uleb128 0xc
	.long	.LASF664
	.byte	0x7d
	.uleb128 0xc
	.long	.LASF665
	.byte	0x28
	.uleb128 0xc
	.long	.LASF666
	.byte	0x29
	.uleb128 0xc
	.long	.LASF667
	.byte	0x3b
	.uleb128 0x30
	.long	.LASF668
	.sleb128 -999
	.byte	0
	.uleb128 0x23
	.long	.LASF669
	.byte	0x7
	.long	0x74
	.byte	0x3c
	.byte	0xe
	.long	0x3e78
	.uleb128 0x19
	.string	"IF"
	.byte	0
	.uleb128 0xc
	.long	.LASF670
	.byte	0x1
	.uleb128 0xc
	.long	.LASF671
	.byte	0x2
	.uleb128 0xc
	.long	.LASF672
	.byte	0x3
	.uleb128 0xc
	.long	.LASF673
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	0x29b
	.long	0x3e88
	.uleb128 0xf
	.long	0x3d
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x3e78
	.uleb128 0x9
	.long	.LASF674
	.byte	0x3c
	.byte	0xf
	.byte	0x13
	.long	0x3e88
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12INSTRUCTIONS
	.uleb128 0x1a
	.long	.LASF675
	.byte	0x10
	.byte	0x3c
	.byte	0x17
	.byte	0x8
	.long	0x3ed8
	.uleb128 0x25
	.string	"str"
	.byte	0x3c
	.byte	0x19
	.byte	0x11
	.long	0x296
	.byte	0
	.uleb128 0x4
	.long	.LASF676
	.byte	0x3c
	.byte	0x1a
	.byte	0x9
	.long	0xe4
	.byte	0x8
	.uleb128 0x4
	.long	.LASF677
	.byte	0x3c
	.byte	0x1b
	.byte	0x9
	.long	0xe4
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x3ea3
	.uleb128 0x23
	.long	.LASF678
	.byte	0x7
	.long	0x74
	.byte	0x3c
	.byte	0x1e
	.long	0x3f12
	.uleb128 0xc
	.long	.LASF679
	.byte	0
	.uleb128 0x19
	.string	"FIN"
	.byte	0x1
	.uleb128 0x19
	.string	"SIN"
	.byte	0x2
	.uleb128 0x19
	.string	"COS"
	.byte	0x3
	.uleb128 0x19
	.string	"POW"
	.byte	0x4
	.uleb128 0xc
	.long	.LASF680
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0x3ed8
	.long	0x3f22
	.uleb128 0xf
	.long	0x3d
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x3f12
	.uleb128 0x9
	.long	.LASF681
	.byte	0x3c
	.byte	0x28
	.byte	0x1c
	.long	0x3f22
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16NATIVE_FUNCTIONS
	.uleb128 0x9
	.long	.LASF682
	.byte	0x3c
	.byte	0x30
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL33NUMBER_OF_NATIVE_FUNCTIONS_STRUCT
	.uleb128 0xe
	.long	0x29b
	.long	0x3f63
	.uleb128 0xf
	.long	0x3d
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	0x3f53
	.uleb128 0x9
	.long	.LASF683
	.byte	0x3c
	.byte	0x36
	.byte	0x13
	.long	0x3f63
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL14INITIALIZATORS
	.uleb128 0x9
	.long	.LASF684
	.byte	0x3c
	.byte	0x3a
	.byte	0x13
	.long	0x3f63
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL18FUNCTION_RET_TYPES
	.uleb128 0xe
	.long	0x280
	.long	0x3fa4
	.uleb128 0xf
	.long	0x3d
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x3f94
	.uleb128 0x9
	.long	.LASF685
	.byte	0x3c
	.byte	0x3c
	.byte	0xc
	.long	0x3fa4
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL9OPERATORS
	.uleb128 0x23
	.long	.LASF686
	.byte	0x7
	.long	0x74
	.byte	0x3c
	.byte	0x3d
	.long	0x3fff
	.uleb128 0x19
	.string	"ADD"
	.byte	0x2b
	.uleb128 0x19
	.string	"SUB"
	.byte	0x2d
	.uleb128 0x19
	.string	"DIV"
	.byte	0x2f
	.uleb128 0x19
	.string	"MUL"
	.byte	0x2a
	.uleb128 0x19
	.string	"OUT"
	.byte	0x3c
	.uleb128 0x19
	.string	"IN"
	.byte	0x3e
	.uleb128 0xc
	.long	.LASF687
	.byte	0x3e
	.uleb128 0xc
	.long	.LASF688
	.byte	0x3c
	.byte	0
	.uleb128 0x9
	.long	.LASF689
	.byte	0x3c
	.byte	0x4b
	.byte	0xc
	.long	0x280
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL7COMMENT
	.uleb128 0x9
	.long	.LASF690
	.byte	0x3c
	.byte	0x4d
	.byte	0x13
	.long	0x29b
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL9MAIN_NAME
	.uleb128 0x9
	.long	.LASF691
	.byte	0x3c
	.byte	0x4f
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL24MAX_FUNCTION_NAME_LENGTH
	.uleb128 0x9
	.long	.LASF692
	.byte	0x3c
	.byte	0x50
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL15MAX_WORD_LENGTH
	.uleb128 0x9
	.long	.LASF693
	.byte	0x3d
	.byte	0x20
	.byte	0xb
	.long	0xeb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11INDENT_SIZE
	.uleb128 0x9
	.long	.LASF694
	.byte	0x3
	.byte	0x14
	.byte	0xe
	.long	0x770
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL8ASM_FILE
	.uleb128 0x61
	.long	.LASF789
	.byte	0x3
	.byte	0x16
	.byte	0x5
	.long	0xe4
	.uleb128 0x9
	.byte	0x3
	.quad	STACK_FRAME_OFFSET
	.uleb128 0x62
	.long	.LASF724
	.long	0x3ab
	.uleb128 0x2a
	.long	0x22b6
	.long	.LASF695
	.long	0x40b3
	.long	0x40bd
	.uleb128 0x2b
	.long	.LASF697
	.long	0x3bdf
	.byte	0
	.uleb128 0x2a
	.long	0x229d
	.long	.LASF696
	.long	0x40ce
	.long	0x40d8
	.uleb128 0x2b
	.long	.LASF697
	.long	0x3bdf
	.byte	0
	.uleb128 0xa
	.long	.LASF698
	.byte	0x3e
	.byte	0xb7
	.byte	0xe
	.long	0x28c
	.long	0x40ee
	.uleb128 0x1
	.long	0x40ee
	.byte	0
	.uleb128 0x7
	.long	0x832
	.uleb128 0xa
	.long	.LASF699
	.byte	0x3e
	.byte	0x4c
	.byte	0xf
	.long	0x826
	.long	0x4109
	.uleb128 0x1
	.long	0x4109
	.byte	0
	.uleb128 0x7
	.long	0x826
	.uleb128 0x10
	.long	.LASF700
	.byte	0x30
	.byte	0xe
	.byte	0x5
	.long	.LASF701
	.long	0xe4
	.long	0x4128
	.uleb128 0x1
	.long	0x4128
	.byte	0
	.uleb128 0x7
	.long	0x2e9c
	.uleb128 0x10
	.long	.LASF702
	.byte	0x30
	.byte	0xd
	.byte	0x5
	.long	.LASF703
	.long	0xe4
	.long	0x414c
	.uleb128 0x1
	.long	0x4128
	.uleb128 0x1
	.long	0x2ed6
	.byte	0
	.uleb128 0xa
	.long	.LASF223
	.byte	0x3f
	.byte	0xa6
	.byte	0xf
	.long	0x285
	.long	0x4162
	.uleb128 0x1
	.long	0x285
	.byte	0
	.uleb128 0x2a
	.long	0x3d50
	.long	.LASF704
	.long	0x4173
	.long	0x417d
	.uleb128 0x2b
	.long	.LASF697
	.long	0x3d78
	.byte	0
	.uleb128 0x10
	.long	.LASF705
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.long	.LASF706
	.long	0x1af
	.long	0x419c
	.uleb128 0x1
	.long	0x1af
	.uleb128 0x1
	.long	0x1ee
	.byte	0
	.uleb128 0x35
	.long	.LASF708
	.long	0x4221
	.uleb128 0x2e
	.long	.LASF709
	.byte	0x40
	.byte	0x33
	.byte	0xd
	.long	.LASF710
	.long	0xe4
	.long	0x41bd
	.long	0x41ce
	.uleb128 0xd
	.long	0x4221
	.uleb128 0x1
	.long	0xe4
	.uleb128 0x1
	.long	0x296
	.uleb128 0x18
	.byte	0
	.uleb128 0x21
	.long	.LASF711
	.byte	0x40
	.byte	0x27
	.byte	0xe
	.long	.LASF712
	.long	0x41e2
	.long	0x41ee
	.uleb128 0xd
	.long	0x4221
	.uleb128 0x1
	.long	0x296
	.uleb128 0x18
	.byte	0
	.uleb128 0x63
	.string	"log"
	.byte	0x40
	.byte	0x24
	.byte	0xe
	.long	.LASF790
	.byte	0x1
	.long	0x4203
	.long	0x420f
	.uleb128 0xd
	.long	0x4221
	.uleb128 0x1
	.long	0x296
	.uleb128 0x18
	.byte	0
	.uleb128 0x64
	.long	.LASF791
	.byte	0x40
	.byte	0x19
	.byte	0x18
	.long	.LASF792
	.long	0x426e
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	0x419c
	.uleb128 0x39
	.long	.LASF713
	.byte	0x5
	.long	.LASF717
	.long	0x423f
	.uleb128 0x1
	.long	0x16b
	.uleb128 0x1
	.long	0x347
	.byte	0
	.uleb128 0x6
	.long	.LASF714
	.byte	0x42
	.value	0x1a3
	.byte	0xe
	.long	0x28c
	.long	0x4256
	.uleb128 0x1
	.long	0xe4
	.byte	0
	.uleb128 0x6
	.long	.LASF715
	.byte	0x13
	.value	0x164
	.byte	0xc
	.long	0xe4
	.long	0x426e
	.uleb128 0x1
	.long	0x296
	.uleb128 0x18
	.byte	0
	.uleb128 0x22
	.long	0x419c
	.uleb128 0x39
	.long	.LASF716
	.byte	0x7
	.long	.LASF718
	.long	0x4291
	.uleb128 0x1
	.long	0x16b
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x347
	.byte	0
	.uleb128 0x2a
	.long	0x3d2a
	.long	.LASF719
	.long	0x42a2
	.long	0x42c4
	.uleb128 0x2b
	.long	.LASF697
	.long	0x3d78
	.uleb128 0x65
	.string	"lvl"
	.byte	0x3a
	.byte	0x18
	.byte	0x1c
	.long	0xe4
	.uleb128 0x66
	.long	.LASF720
	.byte	0x3a
	.byte	0x18
	.byte	0x2d
	.long	0x296
	.byte	0
	.uleb128 0x6
	.long	.LASF721
	.byte	0x13
	.value	0x16d
	.byte	0xc
	.long	0xe4
	.long	0x42e5
	.uleb128 0x1
	.long	0x770
	.uleb128 0x1
	.long	0x296
	.uleb128 0x1
	.long	0x3148
	.byte	0
	.uleb128 0x67
	.long	.LASF793
	.quad	.LFB3670
	.quad	.LFE3670-.LFB3670
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x68
	.long	.LASF794
	.quad	.LFB3669
	.quad	.LFE3669-.LFB3669
	.uleb128 0x1
	.byte	0x9c
	.long	0x4336
	.uleb128 0x14
	.long	.LASF722
	.byte	0x3
	.byte	0xf8
	.byte	0x5
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF723
	.byte	0x3
	.byte	0xf8
	.byte	0x5
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x69
	.long	0x2363
	.quad	.LFB3240
	.quad	.LFE3240-.LFB3240
	.uleb128 0x1
	.byte	0x9c
	.long	0x436b
	.uleb128 0x37
	.string	"_Tp"
	.long	0xe4
	.uleb128 0x1b
	.string	"__x"
	.byte	0x4
	.value	0x110
	.byte	0xf
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF727
	.byte	0x3
	.byte	0xe6
	.long	0xe4
	.quad	.LFB2884
	.quad	.LFE2884-.LFB2884
	.uleb128 0x1
	.byte	0x9c
	.long	0x43c2
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x3
	.byte	0xe6
	.byte	0x20
	.long	0x4128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF725
	.long	0x43d2
	.uleb128 0x9
	.byte	0x3
	.quad	.LC201
	.uleb128 0xb
	.long	.LASF726
	.long	0x43e7
	.uleb128 0x9
	.byte	0x3
	.quad	.LC202
	.byte	0
	.uleb128 0xe
	.long	0x280
	.long	0x43d2
	.uleb128 0xf
	.long	0x3d
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.long	0x43c2
	.uleb128 0xe
	.long	0x280
	.long	0x43e7
	.uleb128 0xf
	.long	0x3d
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x43d7
	.uleb128 0x6a
	.long	.LASF795
	.byte	0x3
	.byte	0xd7
	.byte	0x6
	.quad	.LFB2883
	.quad	.LFE2883-.LFB2883
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF728
	.byte	0x3
	.byte	0xc3
	.long	0xe4
	.quad	.LFB2882
	.quad	.LFE2882-.LFB2882
	.uleb128 0x1
	.byte	0x9c
	.long	0x445a
	.uleb128 0x14
	.long	.LASF729
	.byte	0x3
	.byte	0xc3
	.byte	0x2b
	.long	0x29b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xb
	.long	.LASF726
	.long	0x446a
	.uleb128 0x9
	.byte	0x3
	.quad	.LC198
	.uleb128 0x9
	.long	.LASF730
	.byte	0x3
	.byte	0xd1
	.byte	0xc
	.long	0x826
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.long	0x280
	.long	0x446a
	.uleb128 0xf
	.long	0x3d
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.long	0x445a
	.uleb128 0x1c
	.long	.LASF731
	.byte	0x3
	.byte	0x9b
	.long	0xe4
	.quad	.LFB2881
	.quad	.LFE2881-.LFB2881
	.uleb128 0x1
	.byte	0x9c
	.long	0x4508
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x3
	.byte	0x9b
	.byte	0x2a
	.long	0x4508
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x9
	.long	.LASF732
	.byte	0x3
	.byte	0x9d
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x451d
	.uleb128 0x9
	.byte	0x3
	.quad	.LC190
	.uleb128 0xb
	.long	.LASF725
	.long	0x4532
	.uleb128 0x9
	.byte	0x3
	.quad	.LC191
	.uleb128 0x9
	.long	.LASF733
	.byte	0x3
	.byte	0xa7
	.byte	0x9
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x27
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x9
	.long	.LASF734
	.byte	0x3
	.byte	0xaa
	.byte	0x10
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x2ed1
	.uleb128 0xe
	.long	0x280
	.long	0x451d
	.uleb128 0xf
	.long	0x3d
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.long	0x450d
	.uleb128 0xe
	.long	0x280
	.long	0x4532
	.uleb128 0xf
	.long	0x3d
	.byte	0x21
	.byte	0
	.uleb128 0x8
	.long	0x4522
	.uleb128 0x1c
	.long	.LASF735
	.byte	0x3
	.byte	0x62
	.long	0xe4
	.quad	.LFB2880
	.quad	.LFE2880-.LFB2880
	.uleb128 0x1
	.byte	0x9c
	.long	0x45ae
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x3
	.byte	0x62
	.byte	0x1e
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x14
	.long	.LASF736
	.byte	0x3
	.byte	0x62
	.byte	0x36
	.long	0x170
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x9
	.long	.LASF737
	.byte	0x3
	.byte	0x64
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x3fa4
	.uleb128 0x9
	.byte	0x3
	.quad	.LC186
	.uleb128 0xb
	.long	.LASF725
	.long	0x45be
	.uleb128 0x9
	.byte	0x3
	.quad	.LC187
	.byte	0
	.uleb128 0xe
	.long	0x280
	.long	0x45be
	.uleb128 0xf
	.long	0x3d
	.byte	0x23
	.byte	0
	.uleb128 0x8
	.long	0x45ae
	.uleb128 0x6b
	.long	.LASF739
	.byte	0x3
	.byte	0x23
	.byte	0x5
	.long	.LASF741
	.long	0xe4
	.quad	.LFB2879
	.quad	.LFE2879-.LFB2879
	.uleb128 0x1
	.byte	0x9c
	.long	0x466e
	.uleb128 0x14
	.long	.LASF479
	.byte	0x3
	.byte	0x23
	.byte	0x2a
	.long	0x2edb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x14
	.long	.LASF729
	.byte	0x3
	.byte	0x23
	.byte	0x45
	.long	0x29b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x6c
	.long	.LASF796
	.byte	0x3
	.byte	0x5a
	.byte	0x5
	.quad	.L483
	.uleb128 0x9
	.long	.LASF742
	.byte	0x3
	.byte	0x25
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x3
	.byte	0x7e
	.sleb128 -128
	.uleb128 0xb
	.long	.LASF726
	.long	0x451d
	.uleb128 0x9
	.byte	0x3
	.quad	.LC175
	.uleb128 0xb
	.long	.LASF725
	.long	0x467e
	.uleb128 0x9
	.byte	0x3
	.quad	.LC177
	.uleb128 0x9
	.long	.LASF743
	.byte	0x3
	.byte	0x3d
	.byte	0xc
	.long	0x2e9c
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0x3a
	.string	"ctx"
	.byte	0x3
	.byte	0x3e
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0xe
	.long	0x280
	.long	0x467e
	.uleb128 0xf
	.long	0x3d
	.byte	0x2f
	.byte	0
	.uleb128 0x8
	.long	0x466e
	.uleb128 0x1f
	.long	.LASF744
	.value	0x27d
	.long	0xe4
	.quad	.LFB2878
	.quad	.LFE2878-.LFB2878
	.uleb128 0x1
	.byte	0x9c
	.long	0x46fb
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x2
	.value	0x27d
	.byte	0x25
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x20
	.long	.LASF736
	.value	0x27d
	.byte	0x37
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x12
	.long	.LASF745
	.value	0x27f
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7d
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x470b
	.uleb128 0x9
	.byte	0x3
	.quad	.LC170
	.uleb128 0xb
	.long	.LASF725
	.long	0x4720
	.uleb128 0x9
	.byte	0x3
	.quad	.LC171
	.byte	0
	.uleb128 0xe
	.long	0x280
	.long	0x470b
	.uleb128 0xf
	.long	0x3d
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.long	0x46fb
	.uleb128 0xe
	.long	0x280
	.long	0x4720
	.uleb128 0xf
	.long	0x3d
	.byte	0x2a
	.byte	0
	.uleb128 0x8
	.long	0x4710
	.uleb128 0x1f
	.long	.LASF746
	.value	0x266
	.long	0xe4
	.quad	.LFB2877
	.quad	.LFE2877-.LFB2877
	.uleb128 0x1
	.byte	0x9c
	.long	0x479d
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x2
	.value	0x266
	.byte	0x25
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x20
	.long	.LASF736
	.value	0x266
	.byte	0x37
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x12
	.long	.LASF747
	.value	0x268
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x470b
	.uleb128 0x9
	.byte	0x3
	.quad	.LC166
	.uleb128 0xb
	.long	.LASF725
	.long	0x4720
	.uleb128 0x9
	.byte	0x3
	.quad	.LC167
	.byte	0
	.uleb128 0x1f
	.long	.LASF748
	.value	0x246
	.long	0xe4
	.quad	.LFB2876
	.quad	.LFE2876-.LFB2876
	.uleb128 0x1
	.byte	0x9c
	.long	0x4815
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x2
	.value	0x246
	.byte	0x2b
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x20
	.long	.LASF736
	.value	0x246
	.byte	0x3d
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x12
	.long	.LASF749
	.value	0x248
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x4825
	.uleb128 0x9
	.byte	0x3
	.quad	.LC158
	.uleb128 0xb
	.long	.LASF725
	.long	0x483a
	.uleb128 0x9
	.byte	0x3
	.quad	.LC159
	.byte	0
	.uleb128 0xe
	.long	0x280
	.long	0x4825
	.uleb128 0xf
	.long	0x3d
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.long	0x4815
	.uleb128 0xe
	.long	0x280
	.long	0x483a
	.uleb128 0xf
	.long	0x3d
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.long	0x482a
	.uleb128 0x1f
	.long	.LASF750
	.value	0x1fe
	.long	0xe4
	.quad	.LFB2875
	.quad	.LFE2875-.LFB2875
	.uleb128 0x1
	.byte	0x9c
	.long	0x48da
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x2
	.value	0x1fe
	.byte	0x2b
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF736
	.value	0x1fe
	.byte	0x3d
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x12
	.long	.LASF751
	.value	0x200
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x4825
	.uleb128 0x9
	.byte	0x3
	.quad	.LC145
	.uleb128 0xb
	.long	.LASF725
	.long	0x483a
	.uleb128 0x9
	.byte	0x3
	.quad	.LC146
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x6d
	.string	"var"
	.byte	0x2
	.value	0x21a
	.byte	0x14
	.long	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF752
	.value	0x1c8
	.long	0xe4
	.quad	.LFB2874
	.quad	.LFE2874-.LFB2874
	.uleb128 0x1
	.byte	0x9c
	.long	0x497a
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x2
	.value	0x1c8
	.byte	0x2b
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x20
	.long	.LASF736
	.value	0x1c8
	.byte	0x3d
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x12
	.long	.LASF753
	.value	0x1ca
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x4825
	.uleb128 0x9
	.byte	0x3
	.quad	.LC127
	.uleb128 0xb
	.long	.LASF725
	.long	0x483a
	.uleb128 0x9
	.byte	0x3
	.quad	.LC128
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x12
	.long	.LASF754
	.value	0x1e6
	.byte	0x18
	.long	0xe4
	.uleb128 0x9
	.byte	0x3
	.quad	_ZZL21MathOperationsHandlerP6AsmCtxPK5TokenE8bool_cnt
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF755
	.value	0x169
	.long	0xe4
	.quad	.LFB2873
	.quad	.LFE2873-.LFB2873
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a4a
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x2
	.value	0x169
	.byte	0x28
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x20
	.long	.LASF736
	.value	0x169
	.byte	0x3a
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x12
	.long	.LASF756
	.value	0x16b
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x4a5a
	.uleb128 0x9
	.byte	0x3
	.quad	.LC101
	.uleb128 0xb
	.long	.LASF725
	.long	0x4a6f
	.uleb128 0x9
	.byte	0x3
	.quad	.LC102
	.uleb128 0x12
	.long	.LASF757
	.value	0x174
	.byte	0x10
	.long	0xe4
	.uleb128 0x9
	.byte	0x3
	.quad	_ZZL18InstructionHandlerP6AsmCtxPK5TokenE22number_of_instructions
	.uleb128 0x12
	.long	.LASF758
	.value	0x176
	.byte	0x9
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x27
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x12
	.long	.LASF759
	.value	0x186
	.byte	0x18
	.long	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x12
	.long	.LASF760
	.value	0x187
	.byte	0x18
	.long	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x280
	.long	0x4a5a
	.uleb128 0xf
	.long	0x3d
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.long	0x4a4a
	.uleb128 0xe
	.long	0x280
	.long	0x4a6f
	.uleb128 0xf
	.long	0x3d
	.byte	0x2d
	.byte	0
	.uleb128 0x8
	.long	0x4a5f
	.uleb128 0x1f
	.long	.LASF761
	.value	0x141
	.long	0xe4
	.quad	.LFB2872
	.quad	.LFE2872-.LFB2872
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b0c
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x2
	.value	0x141
	.byte	0x25
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF736
	.value	0x141
	.byte	0x37
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x12
	.long	.LASF762
	.value	0x143
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x470b
	.uleb128 0x9
	.byte	0x3
	.quad	.LC93
	.uleb128 0xb
	.long	.LASF725
	.long	0x4720
	.uleb128 0x9
	.byte	0x3
	.quad	.LC94
	.uleb128 0x12
	.long	.LASF763
	.value	0x153
	.byte	0x9
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x12
	.long	.LASF764
	.value	0x154
	.byte	0x12
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x1f
	.long	.LASF765
	.value	0x104
	.long	0xe4
	.quad	.LFB2871
	.quad	.LFE2871-.LFB2871
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bc6
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x2
	.value	0x104
	.byte	0x21
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x20
	.long	.LASF736
	.value	0x104
	.byte	0x33
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x12
	.long	.LASF766
	.value	0x106
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x446a
	.uleb128 0x9
	.byte	0x3
	.quad	.LC82
	.uleb128 0xb
	.long	.LASF725
	.long	0x4bd6
	.uleb128 0x9
	.byte	0x3
	.quad	.LC83
	.uleb128 0x12
	.long	.LASF729
	.value	0x10f
	.byte	0xc
	.long	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x12
	.long	.LASF763
	.value	0x125
	.byte	0x9
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x27
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x12
	.long	.LASF767
	.value	0x115
	.byte	0xc
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x280
	.long	0x4bd6
	.uleb128 0xf
	.long	0x3d
	.byte	0x26
	.byte	0
	.uleb128 0x8
	.long	0x4bc6
	.uleb128 0x1c
	.long	.LASF768
	.byte	0x2
	.byte	0xd4
	.long	0xe4
	.quad	.LFB2870
	.quad	.LFE2870-.LFB2870
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c82
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x2
	.byte	0xd4
	.byte	0x25
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x14
	.long	.LASF736
	.byte	0x2
	.byte	0xd4
	.byte	0x37
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x9
	.long	.LASF769
	.byte	0x2
	.byte	0xd6
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x470b
	.uleb128 0x9
	.byte	0x3
	.quad	.LC73
	.uleb128 0xb
	.long	.LASF725
	.long	0x4720
	.uleb128 0x9
	.byte	0x3
	.quad	.LC74
	.uleb128 0x9
	.long	.LASF729
	.byte	0x2
	.byte	0xdf
	.byte	0xc
	.long	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x9
	.long	.LASF12
	.byte	0x2
	.byte	0xe0
	.byte	0xc
	.long	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x9
	.long	.LASF767
	.byte	0x2
	.byte	0xe2
	.byte	0xc
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x1c
	.long	.LASF770
	.byte	0x2
	.byte	0xab
	.long	0xe4
	.quad	.LFB2869
	.quad	.LFE2869-.LFB2869
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d09
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x2
	.byte	0xab
	.byte	0x21
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x14
	.long	.LASF736
	.byte	0x2
	.byte	0xab
	.byte	0x33
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x9
	.long	.LASF771
	.byte	0x2
	.byte	0xad
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x446a
	.uleb128 0x9
	.byte	0x3
	.quad	.LC63
	.uleb128 0xb
	.long	.LASF725
	.long	0x4bd6
	.uleb128 0x9
	.byte	0x3
	.quad	.LC64
	.uleb128 0x9
	.long	.LASF772
	.byte	0x2
	.byte	0xb7
	.byte	0xc
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x1c
	.long	.LASF773
	.byte	0x2
	.byte	0x76
	.long	0xe4
	.quad	.LFB2868
	.quad	.LFE2868-.LFB2868
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d80
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x2
	.byte	0x76
	.byte	0x27
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x14
	.long	.LASF736
	.byte	0x2
	.byte	0x76
	.byte	0x39
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x9
	.long	.LASF774
	.byte	0x2
	.byte	0x78
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x3c8c
	.uleb128 0x9
	.byte	0x3
	.quad	.LC53
	.uleb128 0xb
	.long	.LASF725
	.long	0x4d90
	.uleb128 0x9
	.byte	0x3
	.quad	.LC54
	.byte	0
	.uleb128 0xe
	.long	0x280
	.long	0x4d90
	.uleb128 0xf
	.long	0x3d
	.byte	0x2c
	.byte	0
	.uleb128 0x8
	.long	0x4d80
	.uleb128 0x1c
	.long	.LASF775
	.byte	0x2
	.byte	0x5b
	.long	0xe4
	.quad	.LFB2867
	.quad	.LFE2867-.LFB2867
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e0c
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x2
	.byte	0x5b
	.byte	0x26
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x14
	.long	.LASF736
	.byte	0x2
	.byte	0x5b
	.byte	0x38
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x9
	.long	.LASF776
	.byte	0x2
	.byte	0x5d
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x4e1c
	.uleb128 0x9
	.byte	0x3
	.quad	.LC44
	.uleb128 0xb
	.long	.LASF725
	.long	0x4e31
	.uleb128 0x9
	.byte	0x3
	.quad	.LC45
	.byte	0
	.uleb128 0xe
	.long	0x280
	.long	0x4e1c
	.uleb128 0xf
	.long	0x3d
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x4e0c
	.uleb128 0xe
	.long	0x280
	.long	0x4e31
	.uleb128 0xf
	.long	0x3d
	.byte	0x2b
	.byte	0
	.uleb128 0x8
	.long	0x4e21
	.uleb128 0x1c
	.long	.LASF777
	.byte	0x2
	.byte	0x13
	.long	0xe4
	.quad	.LFB2866
	.quad	.LFE2866-.LFB2866
	.uleb128 0x1
	.byte	0x9c
	.long	0x4edd
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x2
	.byte	0x13
	.byte	0x27
	.long	0x4128
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x14
	.long	.LASF736
	.byte	0x2
	.byte	0x13
	.byte	0x39
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x14
	.long	.LASF778
	.byte	0x2
	.byte	0x13
	.byte	0x44
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x9
	.long	.LASF779
	.byte	0x2
	.byte	0x15
	.byte	0x14
	.long	0x3ca7
	.uleb128 0x2
	.byte	0x7e
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF726
	.long	0x3c8c
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.uleb128 0xb
	.long	.LASF725
	.long	0x4eed
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x9
	.long	.LASF780
	.byte	0x2
	.byte	0x22
	.byte	0xc
	.long	0x291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x9
	.long	.LASF772
	.byte	0x2
	.byte	0x25
	.byte	0xc
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xe
	.long	0x280
	.long	0x4eed
	.uleb128 0xf
	.long	0x3d
	.byte	0x31
	.byte	0
	.uleb128 0x8
	.long	0x4edd
	.uleb128 0x6e
	.long	.LASF797
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.quad	.LFB2865
	.quad	.LFE2865-.LFB2865
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF781
	.byte	0x1
	.byte	0x25
	.byte	0x23
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x18
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.byte	0x27
	.long	0x753
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x22
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 32
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 38
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
	.uleb128 0x37
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 65
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
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x3b
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4d
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x5
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
	.uleb128 0x54
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.byte	0
	.byte	0
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5c
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5d
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
	.uleb128 0x5e
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
	.uleb128 0x5f
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
	.uleb128 0x60
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
	.uleb128 0x61
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x62
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
	.uleb128 0x63
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
	.uleb128 0x64
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
	.uleb128 0x65
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
	.uleb128 0x66
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
	.uleb128 0x67
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
	.uleb128 0x68
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
	.uleb128 0x69
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
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
	.uleb128 0x6a
	.uleb128 0x2e
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
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6b
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
	.uleb128 0x6c
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
	.uleb128 0x6d
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
	.uleb128 0x6e
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
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB3240
	.quad	.LFE3240-.LFB3240
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
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB3240
	.uleb128 .LFE3240-.LFB3240
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF303:
	.string	"fdim"
.LASF227:
	.string	"_ZSt4fmodee"
.LASF38:
	.string	"t_name_ptr"
.LASF152:
	.string	"_ZSt3absd"
.LASF150:
	.string	"_ZSt3abse"
.LASF151:
	.string	"_ZSt3absf"
.LASF354:
	.string	"_ZSt10nexttowardee"
.LASF605:
	.string	"fgetc"
.LASF144:
	.string	"int8_t"
.LASF30:
	.string	"size_of_tables_arr"
.LASF154:
	.string	"_ZSt3absl"
.LASF373:
	.string	"_ZSt6scalbnfi"
.LASF324:
	.string	"_ZSt6lgammae"
.LASF251:
	.string	"_ZSt7signbitd"
.LASF55:
	.string	"size_t"
.LASF252:
	.string	"_ZSt7signbitf"
.LASF153:
	.string	"_ZSt3absx"
.LASF464:
	.string	"tm_hour"
.LASF89:
	.string	"__value"
.LASF765:
	.string	"CallHandler"
.LASF313:
	.string	"_ZSt4fminff"
.LASF207:
	.string	"_ZSt5log10e"
.LASF208:
	.string	"_ZSt5log10f"
.LASF495:
	.string	"mbrlen"
.LASF789:
	.string	"STACK_FRAME_OFFSET"
.LASF686:
	.string	"OPERATOR_NUM"
.LASF286:
	.string	"cbrt"
.LASF131:
	.string	"fpos_t"
.LASF161:
	.string	"__cust_iswap"
.LASF228:
	.string	"_ZSt4fmodff"
.LASF146:
	.string	"int32_t"
.LASF74:
	.string	"__uint_least8_t"
.LASF273:
	.string	"isunordered"
.LASF49:
	.string	"root"
.LASF476:
	.string	"RETURN_VALUE_REG"
.LASF108:
	.string	"_IO_save_end"
.LASF726:
	.string	"__func__"
.LASF764:
	.string	"current_param"
.LASF302:
	.string	"_ZSt5expm1f"
.LASF214:
	.string	"sqrt"
.LASF796:
	.string	"FAILURE_EXIT"
.LASF447:
	.string	"lldiv"
.LASF145:
	.string	"int16_t"
.LASF160:
	.string	"__cust_imove"
.LASF734:
	.string	"global_var"
.LASF519:
	.string	"wcscspn"
.LASF311:
	.string	"fmin"
.LASF778:
	.string	"init_globals"
.LASF386:
	.string	"_M_addref"
.LASF391:
	.string	"_M_get"
.LASF452:
	.string	"strtold"
.LASF143:
	.string	"time_t"
.LASF449:
	.string	"strtoll"
.LASF416:
	.string	"_ZNSt8ios_base4InitC4ERKS0_"
.LASF748:
	.string	"FunctionReturnHandler"
.LASF730:
	.string	"NewYorkTime"
.LASF101:
	.string	"_IO_write_base"
.LASF623:
	.string	"tmpnam"
.LASF138:
	.string	"div_t"
.LASF790:
	.string	"_ZN6Logger3logEPKcz"
.LASF147:
	.string	"int64_t"
.LASF432:
	.string	"quick_exit"
.LASF706:
	.string	"_Z9CopyLabelP5LabelP9NameTable"
.LASF117:
	.string	"_lock"
.LASF421:
	.string	"at_quick_exit"
.LASF577:
	.string	"int_curr_symbol"
.LASF655:
	.string	"VARIABLE"
.LASF306:
	.string	"_ZSt3fmaeee"
.LASF162:
	.string	"__cust_access"
.LASF561:
	.string	"int_fast8_t"
.LASF541:
	.string	"wcschr"
.LASF372:
	.string	"_ZSt6scalbnei"
.LASF649:
	.string	"STATEMENT"
.LASF194:
	.string	"_ZSt4tanhe"
.LASF195:
	.string	"_ZSt4tanhf"
.LASF9:
	.string	"type"
.LASF588:
	.string	"n_cs_precedes"
.LASF149:
	.string	"__compar_fn_t"
.LASF106:
	.string	"_IO_save_base"
.LASF496:
	.string	"mbrtowc"
.LASF342:
	.string	"_ZSt5lrinte"
.LASF343:
	.string	"_ZSt5lrintf"
.LASF683:
	.string	"INITIALIZATORS"
.LASF6:
	.string	"GLOBAL"
.LASF667:
	.string	"END_OF_STATEMENT"
.LASF532:
	.string	"wcsxfrm"
.LASF448:
	.string	"atoll"
.LASF584:
	.string	"int_frac_digits"
.LASF392:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EPv"
.LASF352:
	.string	"_ZSt9nextafterff"
.LASF606:
	.string	"fgetpos"
.LASF92:
	.string	"__pos"
.LASF110:
	.string	"_chain"
.LASF517:
	.string	"wcscoll"
.LASF600:
	.string	"clearerr"
.LASF275:
	.string	"_ZSt11isunordereddd"
.LASF114:
	.string	"_cur_column"
.LASF188:
	.string	"_ZSt4coshe"
.LASF639:
	.string	"_ZN14FunctionLoggerC4EiPKc"
.LASF414:
	.string	"_ZNSt8ios_base4InitC4Ev"
.LASF735:
	.string	"AddToAsm"
.LASF654:
	.string	"NAME"
.LASF86:
	.string	"__wch"
.LASF333:
	.string	"_ZSt5log1pe"
.LASF65:
	.string	"__uint8_t"
.LASF787:
	.string	"type_info"
.LASF353:
	.string	"nexttoward"
.LASF422:
	.string	"atof"
.LASF773:
	.string	"ExpressionHandler"
.LASF423:
	.string	"atoi"
.LASF424:
	.string	"atol"
.LASF316:
	.string	"_ZSt5hypotddd"
.LASF694:
	.string	"ASM_FILE"
.LASF543:
	.string	"wcsrchr"
.LASF579:
	.string	"mon_decimal_point"
.LASF660:
	.string	"PARAMETR"
.LASF130:
	.string	"va_list"
.LASF397:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EOS0_"
.LASF274:
	.string	"_ZSt11isunorderedee"
.LASF2:
	.string	"long int"
.LASF399:
	.string	"_ZNSt15__exception_ptr13exception_ptraSERKS0_"
.LASF652:
	.string	"FUNCTION_RET_TYPE"
.LASF700:
	.string	"AsmCtxDtor"
.LASF680:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS"
.LASF711:
	.string	"log_dup_console"
.LASF511:
	.string	"vwprintf"
.LASF440:
	.string	"wctomb"
.LASF348:
	.string	"_ZSt9nearbyinte"
.LASF349:
	.string	"_ZSt9nearbyintf"
.LASF127:
	.string	"_IO_marker"
.LASF672:
	.string	"RETURN"
.LASF594:
	.string	"int_n_cs_precedes"
.LASF413:
	.string	"~Init"
.LASF628:
	.string	"towctrans"
.LASF62:
	.string	"short unsigned int"
.LASF641:
	.string	"_ZN14FunctionLoggerD4Ev"
.LASF493:
	.string	"rand"
.LASF249:
	.string	"signbit"
.LASF304:
	.string	"_ZSt4fdimee"
.LASF696:
	.string	"_ZNSt8ios_base4InitC1Ev"
.LASF482:
	.string	"mbstate_t"
.LASF708:
	.string	"Logger"
.LASF679:
	.string	"FOUT"
.LASF193:
	.string	"tanh"
.LASF409:
	.string	"nullptr_t"
.LASF315:
	.string	"_ZSt5hypoteee"
.LASF746:
	.string	"ParametrHandler"
.LASF560:
	.string	"uint_least64_t"
.LASF221:
	.string	"_ZSt4fabse"
.LASF222:
	.string	"_ZSt4fabsf"
.LASF450:
	.string	"strtoull"
.LASF549:
	.string	"uint8_t"
.LASF347:
	.string	"nearbyint"
.LASF176:
	.string	"_ZSt4atane"
.LASF177:
	.string	"_ZSt4atanf"
.LASF96:
	.string	"_IO_FILE"
.LASF209:
	.string	"modf"
.LASF231:
	.string	"_ZSt10fpclassifyd"
.LASF230:
	.string	"_ZSt10fpclassifye"
.LASF232:
	.string	"_ZSt10fpclassifyf"
.LASF617:
	.string	"remove"
.LASF776:
	.string	"func_93"
.LASF438:
	.string	"system"
.LASF237:
	.string	"isinf"
.LASF336:
	.string	"_ZSt4log2e"
.LASF625:
	.string	"wctype_t"
.LASF398:
	.string	"operator="
.LASF503:
	.string	"__isoc99_swscanf"
.LASF725:
	.string	"__PRETTY_FUNCTION__"
.LASF51:
	.string	"number_of_strings"
.LASF229:
	.string	"fpclassify"
.LASF494:
	.string	"getwchar"
.LASF618:
	.string	"rename"
.LASF757:
	.string	"number_of_instructions"
.LASF296:
	.string	"_ZSt4erfcf"
.LASF485:
	.string	"fgetws"
.LASF76:
	.string	"__uint_least16_t"
.LASF61:
	.string	"unsigned char"
.LASF763:
	.string	"number_of_parametrs"
.LASF121:
	.string	"_freeres_list"
.LASF589:
	.string	"n_sep_by_space"
.LASF210:
	.string	"_ZSt4modfePe"
.LASF751:
	.string	"func_512"
.LASF601:
	.string	"fclose"
.LASF545:
	.string	"wmemchr"
.LASF185:
	.string	"_ZSt3tane"
.LASF186:
	.string	"_ZSt3tanf"
.LASF265:
	.string	"islessequal"
.LASF247:
	.string	"_ZSt8isnormald"
.LASF246:
	.string	"_ZSt8isnormale"
.LASF248:
	.string	"_ZSt8isnormalf"
.LASF337:
	.string	"_ZSt4log2f"
.LASF226:
	.string	"fmod"
.LASF491:
	.string	"__isoc99_fwscanf"
.LASF141:
	.string	"7lldiv_t"
.LASF73:
	.string	"__int_least8_t"
.LASF785:
	.string	"__builtin_va_list"
.LASF501:
	.string	"swprintf"
.LASF56:
	.string	"__gnuc_va_list"
.LASF407:
	.string	"rethrow_exception"
.LASF46:
	.string	"Program"
.LASF678:
	.string	"NATIVE_FUNCTIONS_NUM"
.LASF341:
	.string	"lrint"
.LASF14:
	.string	"local_type"
.LASF666:
	.string	"EXPRESSION_CLOSING_BRACKET"
.LASF20:
	.string	"value"
.LASF687:
	.string	"BIGGER"
.LASF187:
	.string	"cosh"
.LASF474:
	.string	"START_RAM_ADDRESS_FOR_GLOBAL_VARS"
.LASF47:
	.string	"token_arr"
.LASF42:
	.string	"char"
.LASF52:
	.string	"path_to_src_file"
.LASF427:
	.string	"ldiv"
.LASF473:
	.string	"START_RAM_ADDRESS"
.LASF442:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF797:
	.string	"assprint"
.LASF299:
	.string	"_ZSt4exp2f"
.LASF630:
	.string	"wctype"
.LASF15:
	.string	"global_initialization"
.LASF559:
	.string	"uint_least32_t"
.LASF39:
	.string	"t_name_id"
.LASF191:
	.string	"_ZSt4sinhe"
.LASF192:
	.string	"_ZSt4sinhf"
.LASF732:
	.string	"func_157"
.LASF253:
	.string	"isgreater"
.LASF597:
	.string	"int_n_sign_posn"
.LASF591:
	.string	"n_sign_posn"
.LASF415:
	.string	"_ZNSt8ios_base4InitD4Ev"
.LASF173:
	.string	"_ZSt4asine"
.LASF668:
	.string	"UNKNOWN_TYPE"
.LASF345:
	.string	"_ZSt6lrounde"
.LASF346:
	.string	"_ZSt6lroundf"
.LASF206:
	.string	"log10"
.LASF410:
	.string	"numbers"
.LASF136:
	.string	"5div_t"
.LASF614:
	.string	"getc"
.LASF662:
	.string	"SEPARATOR"
.LASF37:
	.string	"t_function_ret_type"
.LASF713:
	.string	"PrintToken"
.LASF483:
	.string	"btowc"
.LASF290:
	.string	"_ZSt8copysignee"
.LASF705:
	.string	"CopyLabel"
.LASF98:
	.string	"_IO_read_ptr"
.LASF239:
	.string	"_ZSt5isinfd"
.LASF238:
	.string	"_ZSt5isinfe"
.LASF240:
	.string	"_ZSt5isinff"
.LASF580:
	.string	"mon_thousands_sep"
.LASF596:
	.string	"int_p_sign_posn"
.LASF504:
	.string	"ungetwc"
.LASF58:
	.string	"fp_offset"
.LASF613:
	.string	"ftell"
.LASF250:
	.string	"_ZSt7signbite"
.LASF174:
	.string	"_ZSt4asinf"
.LASF307:
	.string	"_ZSt3fmafff"
.LASF27:
	.string	"arr_size"
.LASF417:
	.string	"_ZNSt8ios_base4InitaSERKS0_"
.LASF428:
	.string	"mblen"
.LASF178:
	.string	"atan2"
.LASF583:
	.string	"negative_sign"
.LASF332:
	.string	"log1p"
.LASF718:
	.string	"_Z8LogTokenPK5TokenPKcPS3_"
.LASF592:
	.string	"int_p_cs_precedes"
.LASF220:
	.string	"fabs"
.LASF750:
	.string	"NativeFunctionHandler"
.LASF489:
	.string	"fwprintf"
.LASF721:
	.string	"vfprintf"
.LASF271:
	.string	"_ZSt13islessgreaterdd"
.LASF109:
	.string	"_markers"
.LASF548:
	.string	"wcstoull"
.LASF291:
	.string	"_ZSt8copysignff"
.LASF301:
	.string	"_ZSt5expm1e"
.LASF582:
	.string	"positive_sign"
.LASF465:
	.string	"tm_mday"
.LASF183:
	.string	"_ZSt3sine"
.LASF184:
	.string	"_ZSt3sinf"
.LASF32:
	.string	"t_instruction"
.LASF283:
	.string	"atanh"
.LASF80:
	.string	"__uint_least64_t"
.LASF661:
	.string	"ASSIGMENT"
.LASF276:
	.string	"_ZSt11isunorderedff"
.LASF22:
	.string	"ptr_to_src_code"
.LASF782:
	.string	"GNU C++20 11.3.0 -mtune=generic -march=x86-64 -g -std=c++20 -fstrict-overflow -fstack-protector -fcheck-new -fsized-deallocation -fno-omit-frame-pointer -fPIE -fsanitize=address,leak -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF518:
	.string	"wcscpy"
.LASF369:
	.string	"_ZSt7scalblnel"
.LASF715:
	.string	"printf"
.LASF508:
	.string	"vswprintf"
.LASF437:
	.string	"strtoul"
.LASF627:
	.string	"iswctype"
.LASF196:
	.string	"_ZSt3expe"
.LASF197:
	.string	"_ZSt3expf"
.LASF537:
	.string	"wmemset"
.LASF213:
	.string	"_ZSt3powff"
.LASF404:
	.string	"_ZNSt15__exception_ptr13exception_ptr4swapERS0_"
.LASF513:
	.string	"__isoc99_vwscanf"
.LASF663:
	.string	"BLOCK_OPENING_BRACKET"
.LASF270:
	.string	"_ZSt13islessgreateree"
.LASF488:
	.string	"fwide"
.LASF7:
	.string	"LOCAL"
.LASF317:
	.string	"_ZSt5hypotfff"
.LASF374:
	.string	"tgamma"
.LASF456:
	.string	"char8_t"
.LASF325:
	.string	"_ZSt6lgammaf"
.LASF330:
	.string	"_ZSt7llrounde"
.LASF331:
	.string	"_ZSt7llroundf"
.LASF97:
	.string	"_flags"
.LASF651:
	.string	"INITIALIZATOR"
.LASF405:
	.string	"__cxa_exception_type"
.LASF470:
	.string	"tm_isdst"
.LASF370:
	.string	"_ZSt7scalblnfl"
.LASF691:
	.string	"MAX_FUNCTION_NAME_LENGTH"
.LASF524:
	.string	"wcsncpy"
.LASF223:
	.string	"floor"
.LASF676:
	.string	"function"
.LASF335:
	.string	"log2"
.LASF382:
	.string	"_ZSt4lerpddd"
.LASF500:
	.string	"putwchar"
.LASF737:
	.string	"func_100"
.LASF455:
	.string	"double_t"
.LASF400:
	.string	"_ZNSt15__exception_ptr13exception_ptraSEOS0_"
.LASF648:
	.string	"TokenType"
.LASF534:
	.string	"wmemcmp"
.LASF340:
	.string	"_ZSt4logbf"
.LASF775:
	.string	"AssigmentHandler"
.LASF758:
	.string	"current_instruction"
.LASF272:
	.string	"_ZSt13islessgreaterff"
.LASF199:
	.string	"_ZSt5frexpePi"
.LASF681:
	.string	"NATIVE_FUNCTIONS"
.LASF72:
	.string	"__uint64_t"
.LASF426:
	.string	"getenv"
.LASF50:
	.string	"string_arr"
.LASF723:
	.string	"__priority"
.LASF558:
	.string	"uint_least16_t"
.LASF653:
	.string	"OPERATOR"
.LASF338:
	.string	"logb"
.LASF3:
	.string	"long unsigned int"
.LASF334:
	.string	"_ZSt5log1pf"
.LASF142:
	.string	"lldiv_t"
.LASF394:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4Ev"
.LASF781:
	.string	"format"
.LASF254:
	.string	"_ZSt9isgreateree"
.LASF784:
	.string	"TokenValue"
.LASF388:
	.string	"_M_release"
.LASF13:
	.string	"var_number"
.LASF375:
	.string	"_ZSt6tgammae"
.LASF677:
	.string	"number_of_parametres"
.LASF460:
	.string	"__gnu_debug"
.LASF78:
	.string	"__uint_least32_t"
.LASF287:
	.string	"_ZSt4cbrte"
.LASF288:
	.string	"_ZSt4cbrtf"
.LASF53:
	.string	"name_table_arr"
.LASF139:
	.string	"6ldiv_t"
.LASF100:
	.string	"_IO_read_base"
.LASF319:
	.string	"_ZSt5hypotff"
.LASF743:
	.string	"ctx_"
.LASF211:
	.string	"_ZSt4modffPf"
.LASF603:
	.string	"ferror"
.LASF23:
	.string	"line"
.LASF747:
	.string	"func_616"
.LASF366:
	.string	"_ZSt5rounde"
.LASF367:
	.string	"_ZSt5roundf"
.LASF697:
	.string	"this"
.LASF458:
	.string	"char32_t"
.LASF125:
	.string	"_unused2"
.LASF544:
	.string	"wcsstr"
.LASF25:
	.string	"NameTable"
.LASF752:
	.string	"MathOperationsHandler"
.LASF471:
	.string	"tm_gmtoff"
.LASF733:
	.string	"var_init_cnt"
.LASF19:
	.string	"right_child"
.LASF294:
	.string	"erfc"
.LASF33:
	.string	"t_operator"
.LASF256:
	.string	"_ZSt9isgreaterff"
.LASF280:
	.string	"asinh"
.LASF587:
	.string	"p_sep_by_space"
.LASF376:
	.string	"_ZSt6tgammaf"
.LASF674:
	.string	"INSTRUCTIONS"
.LASF393:
	.string	"_ZNKSt15__exception_ptr13exception_ptr6_M_getEv"
.LASF133:
	.string	"__float128"
.LASF774:
	.string	"func_120"
.LASF28:
	.string	"number_of_labels"
.LASF523:
	.string	"wcsncmp"
.LASF749:
	.string	"func_584"
.LASF113:
	.string	"_old_offset"
.LASF107:
	.string	"_IO_backup_base"
.LASF612:
	.string	"fsetpos"
.LASF595:
	.string	"int_n_sep_by_space"
.LASF505:
	.string	"vfwprintf"
.LASF243:
	.string	"_ZSt5isnand"
.LASF242:
	.string	"_ZSt5isnane"
.LASF244:
	.string	"_ZSt5isnanf"
.LASF722:
	.string	"__initialize_p"
.LASF24:
	.string	"indent"
.LASF716:
	.string	"LogToken"
.LASF70:
	.string	"__uint32_t"
.LASF378:
	.string	"_ZSt5trunce"
.LASF379:
	.string	"_ZSt5truncf"
.LASF4:
	.string	"long long int"
.LASF656:
	.string	"CONSTANT"
.LASF675:
	.string	"NativeFunctionStruct"
.LASF516:
	.string	"wcscmp"
.LASF90:
	.string	"__mbstate_t"
.LASF479:
	.string	"program"
.LASF535:
	.string	"wmemcpy"
.LASF753:
	.string	"func_458"
.LASF466:
	.string	"tm_mon"
.LASF164:
	.string	"__cmp_cat"
.LASF745:
	.string	"func_639"
.LASF48:
	.string	"number_of_tokens"
.LASF637:
	.string	"_ZN14FunctionLoggerC4ERKS_"
.LASF555:
	.string	"int_least32_t"
.LASF431:
	.string	"mbtowc"
.LASF159:
	.string	"__cust_swap"
.LASF103:
	.string	"_IO_write_end"
.LASF792:
	.string	"_ZN6Logger11getInstanceEv"
.LASF215:
	.string	"_ZSt4sqrte"
.LASF216:
	.string	"_ZSt4sqrtf"
.LASF64:
	.string	"signed char"
.LASF572:
	.string	"uintmax_t"
.LASF533:
	.string	"wctob"
.LASF647:
	.string	"BAD_ARGUMENT"
.LASF658:
	.string	"CALL"
.LASF57:
	.string	"gp_offset"
.LASF34:
	.string	"t_constant"
.LASF365:
	.string	"round"
.LASF31:
	.string	"number_of_tables"
.LASF714:
	.string	"strerror"
.LASF134:
	.string	"float"
.LASF783:
	.string	"decltype(nullptr)"
.LASF390:
	.string	"exception_ptr"
.LASF590:
	.string	"p_sign_posn"
.LASF568:
	.string	"uint_fast64_t"
.LASF463:
	.string	"tm_min"
.LASF81:
	.string	"__intmax_t"
.LASF104:
	.string	"_IO_buf_base"
.LASF112:
	.string	"_flags2"
.LASF17:
	.string	"Token"
.LASF8:
	.string	"unsigned int"
.LASF646:
	.string	"FAILURE"
.LASF329:
	.string	"llround"
.LASF502:
	.string	"swscanf"
.LASF643:
	.string	"LOCALITY_NUM"
.LASF616:
	.string	"perror"
.LASF166:
	.string	"__cust"
.LASF704:
	.string	"_ZN14FunctionLoggerD1Ev"
.LASF777:
	.string	"VarInitialization"
.LASF526:
	.string	"wcsspn"
.LASF684:
	.string	"FUNCTION_RET_TYPES"
.LASF738:
	.string	"operator bool"
.LASF710:
	.string	"_ZN6Logger9LogMsgRetEiPKcz"
.LASF67:
	.string	"short int"
.LASF611:
	.string	"fseek"
.LASF439:
	.string	"wcstombs"
.LASF621:
	.string	"setvbuf"
.LASF318:
	.string	"_ZSt5hypotee"
.LASF359:
	.string	"remquo"
.LASF179:
	.string	"_ZSt5atan2ee"
.LASF780:
	.string	"var_name"
.LASF29:
	.string	"NameTableArr"
.LASF360:
	.string	"_ZSt6remquoeePi"
.LASF562:
	.string	"int_fast16_t"
.LASF626:
	.string	"wctrans_t"
.LASF59:
	.string	"overflow_arg_area"
.LASF255:
	.string	"_ZSt9isgreaterdd"
.LASF759:
	.string	"if_body"
.LASF689:
	.string	"COMMENT"
.LASF685:
	.string	"OPERATORS"
.LASF200:
	.string	"_ZSt5frexpfPi"
.LASF284:
	.string	"_ZSt5atanhe"
.LASF285:
	.string	"_ZSt5atanhf"
.LASF170:
	.string	"_ZSt4acose"
.LASF171:
	.string	"_ZSt4acosf"
.LASF412:
	.string	"Init"
.LASF418:
	.string	"__ioinit"
.LASF167:
	.string	"__cmp_alg"
.LASF124:
	.string	"_mode"
.LASF401:
	.string	"~exception_ptr"
.LASF698:
	.string	"ctime"
.LASF742:
	.string	"func_37"
.LASF574:
	.string	"decimal_point"
.LASF506:
	.string	"vfwscanf"
.LASF236:
	.string	"_ZSt8isfinitef"
.LASF615:
	.string	"getchar"
.LASF119:
	.string	"_codecvt"
.LASF180:
	.string	"_ZSt5atan2ff"
.LASF610:
	.string	"freopen"
.LASF88:
	.string	"__count"
.LASF441:
	.string	"__gnu_cxx"
.LASF771:
	.string	"func_173"
.LASF381:
	.string	"_ZSt4lerpeee"
.LASF257:
	.string	"isgreaterequal"
.LASF368:
	.string	"scalbln"
.LASF769:
	.string	"func_214"
.LASF453:
	.string	"bool"
.LASF557:
	.string	"uint_least8_t"
.LASF602:
	.string	"feof"
.LASF181:
	.string	"_ZSt3cose"
.LASF182:
	.string	"_ZSt3cosf"
.LASF553:
	.string	"int_least8_t"
.LASF132:
	.string	"__unknown__"
.LASF720:
	.string	"func_name"
.LASF475:
	.string	"VARIABLES_ADDRESS_REG"
.LASF786:
	.string	"_IO_lock_t"
.LASF433:
	.string	"qsort"
.LASF795:
	.string	"CloseAsmFile"
.LASF540:
	.string	"__isoc99_wscanf"
.LASF571:
	.string	"intmax_t"
.LASF760:
	.string	"else_body"
.LASF5:
	.string	"long double"
.LASF454:
	.string	"float_t"
.LASF702:
	.string	"AsmCtxCtor"
.LASF728:
	.string	"OpenAsmFile"
.LASF411:
	.string	"__cxx11"
.LASF499:
	.string	"putwc"
.LASF320:
	.string	"ilogb"
.LASF445:
	.string	"__enable_if<true, double>"
.LASF126:
	.string	"FILE"
.LASF298:
	.string	"_ZSt4exp2e"
.LASF355:
	.string	"_ZSt10nexttowardfe"
.LASF269:
	.string	"islessgreater"
.LASF563:
	.string	"int_fast32_t"
.LASF140:
	.string	"ldiv_t"
.LASF599:
	.string	"localeconv"
.LASF118:
	.string	"_offset"
.LASF44:
	.string	"NOT_DECLARED"
.LASF709:
	.string	"LogMsgRet"
.LASF87:
	.string	"__wchb"
.LASF175:
	.string	"atan"
.LASF305:
	.string	"_ZSt4fdimff"
.LASF425:
	.string	"bsearch"
.LASF669:
	.string	"INSTUCTIONS_NUM"
.LASF63:
	.string	"__int8_t"
.LASF659:
	.string	"NATIVE_FUNCTION"
.LASF695:
	.string	"_ZNSt8ios_base4InitD1Ev"
.LASF266:
	.string	"_ZSt11islessequalee"
.LASF741:
	.string	"_Z14TranslateToAsmPK7ProgramPKc"
.LASF148:
	.string	"long long unsigned int"
.LASF542:
	.string	"wcspbrk"
.LASF403:
	.string	"swap"
.LASF60:
	.string	"reg_save_area"
.LASF546:
	.string	"wcstold"
.LASF593:
	.string	"int_p_sep_by_space"
.LASF235:
	.string	"_ZSt8isfinited"
.LASF234:
	.string	"_ZSt8isfinitee"
.LASF671:
	.string	"WHILE"
.LASF201:
	.string	"ldexp"
.LASF550:
	.string	"uint16_t"
.LASF547:
	.string	"wcstoll"
.LASF198:
	.string	"frexp"
.LASF83:
	.string	"__off_t"
.LASF664:
	.string	"BLOCK_CLOSING_BRACKET"
.LASF719:
	.string	"_ZN14FunctionLoggerC1EiPKc"
.LASF128:
	.string	"_IO_codecvt"
.LASF396:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EDn"
.LASF408:
	.string	"_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE"
.LASF690:
	.string	"MAIN_NAME"
.LASF462:
	.string	"tm_sec"
.LASF169:
	.string	"acos"
.LASF300:
	.string	"expm1"
.LASF620:
	.string	"setbuf"
.LASF350:
	.string	"nextafter"
.LASF525:
	.string	"wcsrtombs"
.LASF75:
	.string	"__int_least16_t"
.LASF564:
	.string	"int_fast64_t"
.LASF122:
	.string	"_freeres_buf"
.LASF468:
	.string	"tm_wday"
.LASF268:
	.string	"_ZSt11islessequalff"
.LASF289:
	.string	"copysign"
.LASF344:
	.string	"lround"
.LASF21:
	.string	"t_label_ptr"
.LASF645:
	.string	"SUCCESS"
.LASF673:
	.string	"NUMBER_OF_INSTUCTIONS"
.LASF497:
	.string	"mbsinit"
.LASF469:
	.string	"tm_yday"
.LASF68:
	.string	"__uint16_t"
.LASF527:
	.string	"wcstod"
.LASF528:
	.string	"wcstof"
.LASF172:
	.string	"asin"
.LASF529:
	.string	"wcstok"
.LASF530:
	.string	"wcstol"
.LASF554:
	.string	"int_least16_t"
.LASF94:
	.string	"__fpos_t"
.LASF155:
	.string	"_ZSt3divll"
.LASF631:
	.string	"STD_LOG_NAME"
.LASF137:
	.string	"quot"
.LASF95:
	.string	"__FILE"
.LASF277:
	.string	"acosh"
.LASF377:
	.string	"trunc"
.LASF267:
	.string	"_ZSt11islessequaldd"
.LASF66:
	.string	"__int16_t"
.LASF565:
	.string	"uint_fast8_t"
.LASF779:
	.string	"func_21"
.LASF598:
	.string	"setlocale"
.LASF116:
	.string	"_shortbuf"
.LASF54:
	.string	"number_of_global_vars"
.LASF510:
	.string	"__isoc99_vswscanf"
.LASF158:
	.string	"ranges"
.LASF490:
	.string	"fwscanf"
.LASF481:
	.string	"wint_t"
.LASF729:
	.string	"name"
.LASF459:
	.string	"__int128"
.LASF419:
	.string	"floor<int>"
.LASF12:
	.string	"ret_type"
.LASF699:
	.string	"time"
.LASF707:
	.string	"ios_base"
.LASF84:
	.string	"__off64_t"
.LASF478:
	.string	"AsmCtx"
.LASF692:
	.string	"MAX_WORD_LENGTH"
.LASF295:
	.string	"_ZSt4erfce"
.LASF309:
	.string	"_ZSt4fmaxee"
.LASF406:
	.string	"_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv"
.LASF608:
	.string	"fopen"
.LASF791:
	.string	"getInstance"
.LASF480:
	.string	"global_vars"
.LASF69:
	.string	"__int32_t"
.LASF629:
	.string	"wctrans"
.LASF575:
	.string	"thousands_sep"
.LASF703:
	.string	"_Z10AsmCtxCtorP6AsmCtxPK7Program"
.LASF507:
	.string	"__isoc99_vfwscanf"
.LASF156:
	.string	"__swappable_details"
.LASF204:
	.string	"_ZSt3loge"
.LASF205:
	.string	"_ZSt3logf"
.LASF788:
	.string	"_ZSt5floorIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_"
.LASF619:
	.string	"rewind"
.LASF105:
	.string	"_IO_buf_end"
.LASF339:
	.string	"_ZSt4logbe"
.LASF766:
	.string	"func_262"
.LASF308:
	.string	"fmax"
.LASF362:
	.string	"rint"
.LASF521:
	.string	"wcslen"
.LASF241:
	.string	"isnan"
.LASF263:
	.string	"_ZSt6islessdd"
.LASF539:
	.string	"wscanf"
.LASF281:
	.string	"_ZSt5asinhe"
.LASF282:
	.string	"_ZSt5asinhf"
.LASF569:
	.string	"intptr_t"
.LASF26:
	.string	"label_arr"
.LASF189:
	.string	"_ZSt4coshf"
.LASF435:
	.string	"strtod"
.LASF451:
	.string	"strtof"
.LASF165:
	.string	"__cmp_cust"
.LASF436:
	.string	"strtol"
.LASF168:
	.string	"__debug"
.LASF585:
	.string	"frac_digits"
.LASF644:
	.string	"ReturnStatus"
.LASF578:
	.string	"currency_symbol"
.LASF739:
	.string	"TranslateToAsm"
.LASF259:
	.string	"_ZSt14isgreaterequaldd"
.LASF371:
	.string	"scalbn"
.LASF385:
	.string	"_M_exception_object"
.LASF712:
	.string	"_ZN6Logger15log_dup_consoleEPKcz"
.LASF552:
	.string	"uint64_t"
.LASF292:
	.string	"_ZSt3erfe"
.LASF520:
	.string	"wcsftime"
.LASF767:
	.string	"func"
.LASF233:
	.string	"isfinite"
.LASF93:
	.string	"__state"
.LASF657:
	.string	"FUNCTION"
.LASF768:
	.string	"FunctionHandler"
.LASF420:
	.string	"atexit"
.LASF262:
	.string	"_ZSt6islessee"
.LASF731:
	.string	"InitGlobalVars"
.LASF363:
	.string	"_ZSt4rinte"
.LASF364:
	.string	"_ZSt4rintf"
.LASF740:
	.string	"_ZNKSt15__exception_ptr13exception_ptrcvbEv"
.LASF79:
	.string	"__int_least64_t"
.LASF115:
	.string	"_vtable_offset"
.LASF581:
	.string	"mon_grouping"
.LASF326:
	.string	"llrint"
.LASF314:
	.string	"hypot"
.LASF258:
	.string	"_ZSt14isgreaterequalee"
.LASF224:
	.string	"_ZSt5floore"
.LASF225:
	.string	"_ZSt5floorf"
.LASF11:
	.string	"number_of_vars"
.LASF515:
	.string	"wcscat"
.LASF727:
	.string	"SetAsmFile"
.LASF446:
	.string	"__type"
.LASF755:
	.string	"InstructionHandler"
.LASF622:
	.string	"tmpfile"
.LASF135:
	.string	"11__mbstate_t"
.LASF632:
	.string	"FunctionLogger"
.LASF383:
	.string	"_ZSt4lerpfff"
.LASF190:
	.string	"sinh"
.LASF762:
	.string	"func_323"
.LASF82:
	.string	"__uintmax_t"
.LASF434:
	.string	"srand"
.LASF264:
	.string	"_ZSt6islessff"
.LASF10:
	.string	"name_id"
.LASF218:
	.string	"_ZSt4ceile"
.LASF219:
	.string	"_ZSt4ceilf"
.LASF472:
	.string	"tm_zone"
.LASF71:
	.string	"__int64_t"
.LASF624:
	.string	"ungetc"
.LASF129:
	.string	"_IO_wide_data"
.LASF322:
	.string	"_ZSt5ilogbf"
.LASF212:
	.string	"_ZSt3powee"
.LASF512:
	.string	"vwscanf"
.LASF40:
	.string	"t_number_of_variables"
.LASF514:
	.string	"wcrtomb"
.LASF573:
	.string	"lconv"
.LASF321:
	.string	"_ZSt5ilogbe"
.LASF260:
	.string	"_ZSt14isgreaterequalff"
.LASF99:
	.string	"_IO_read_end"
.LASF429:
	.string	"mbstowcs"
.LASF18:
	.string	"left_child"
.LASF635:
	.string	"current_indent"
.LASF522:
	.string	"wcsncat"
.LASF43:
	.string	"double"
.LASF395:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4ERKS0_"
.LASF357:
	.string	"_ZSt9remainderee"
.LASF536:
	.string	"wmemmove"
.LASF724:
	.string	"__dso_handle"
.LASF45:
	.string	"NOT_A_LABEL"
.LASF551:
	.string	"uint32_t"
.LASF484:
	.string	"fgetwc"
.LASF486:
	.string	"fputwc"
.LASF650:
	.string	"INSTRUCTION"
.LASF111:
	.string	"_fileno"
.LASF16:
	.string	"Label"
.LASF566:
	.string	"uint_fast16_t"
.LASF487:
	.string	"fputws"
.LASF567:
	.string	"uint_fast32_t"
.LASF509:
	.string	"vswscanf"
.LASF323:
	.string	"lgamma"
.LASF498:
	.string	"mbsrtowcs"
.LASF261:
	.string	"isless"
.LASF120:
	.string	"_wide_data"
.LASF754:
	.string	"bool_cnt"
.LASF389:
	.string	"_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv"
.LASF736:
	.string	"token"
.LASF77:
	.string	"__int_least32_t"
.LASF202:
	.string	"_ZSt5ldexpei"
.LASF402:
	.string	"_ZNSt15__exception_ptr13exception_ptrD4Ev"
.LASF665:
	.string	"EXPRESSION_OPENING_BRACKET"
.LASF457:
	.string	"char16_t"
.LASF586:
	.string	"p_cs_precedes"
.LASF467:
	.string	"tm_year"
.LASF358:
	.string	"_ZSt9remainderff"
.LASF688:
	.string	"LESS"
.LASF380:
	.string	"lerp"
.LASF744:
	.string	"ConstantHandler"
.LASF634:
	.string	"guard_level"
.LASF609:
	.string	"fread"
.LASF217:
	.string	"ceil"
.LASF640:
	.string	"~FunctionLogger"
.LASF443:
	.string	"__ops"
.LASF163:
	.string	"__detail"
.LASF102:
	.string	"_IO_write_ptr"
.LASF461:
	.string	"__int128 unsigned"
.LASF351:
	.string	"_ZSt9nextafteree"
.LASF477:
	.string	"SOFT_CPU_PRECISION"
.LASF327:
	.string	"_ZSt6llrinte"
.LASF328:
	.string	"_ZSt6llrintf"
.LASF772:
	.string	"label"
.LASF794:
	.string	"__static_initialization_and_destruction_0"
.LASF384:
	.string	"__exception_ptr"
.LASF693:
	.string	"INDENT_SIZE"
.LASF682:
	.string	"NUMBER_OF_NATIVE_FUNCTIONS_STRUCT"
.LASF203:
	.string	"_ZSt5ldexpfi"
.LASF633:
	.string	"old_level"
.LASF293:
	.string	"_ZSt3erff"
.LASF41:
	.string	"t_varible_number"
.LASF157:
	.string	"__swappable_with_details"
.LASF387:
	.string	"_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv"
.LASF492:
	.string	"getwc"
.LASF607:
	.string	"fgets"
.LASF36:
	.string	"t_native_function"
.LASF297:
	.string	"exp2"
.LASF642:
	.string	"CRINGE"
.LASF85:
	.string	"__time_t"
.LASF576:
	.string	"grouping"
.LASF761:
	.string	"ArgumentHandler"
.LASF570:
	.string	"uintptr_t"
.LASF556:
	.string	"int_least64_t"
.LASF361:
	.string	"_ZSt6remquoffPi"
.LASF35:
	.string	"t_initializator"
.LASF717:
	.string	"_Z10PrintTokenPK5TokenPPKc"
.LASF538:
	.string	"wprintf"
.LASF638:
	.string	"_ZN14FunctionLoggeraSERKS_"
.LASF91:
	.string	"_G_fpos_t"
.LASF356:
	.string	"remainder"
.LASF604:
	.string	"fflush"
.LASF770:
	.string	"NameHandler"
.LASF123:
	.string	"__pad5"
.LASF312:
	.string	"_ZSt4fminee"
.LASF670:
	.string	"ELSE"
.LASF430:
	.string	"wchar_t"
.LASF444:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF636:
	.string	"function_name"
.LASF793:
	.string	"_GLOBAL__sub_I_STACK_FRAME_OFFSET"
.LASF310:
	.string	"_ZSt4fmaxff"
.LASF531:
	.string	"wcstoul"
.LASF756:
	.string	"func_363"
.LASF245:
	.string	"isnormal"
.LASF701:
	.string	"_Z10AsmCtxDtorP6AsmCtx"
.LASF278:
	.string	"_ZSt5acoshe"
.LASF279:
	.string	"_ZSt5acoshf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/arsenyfucker/Cprojects/Lang/Translator/BackEnd"
.LASF0:
	.string	"./src/TranslateToAsm.cpp"
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
