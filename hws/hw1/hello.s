	.file	"hello.c"
	.text
	.globl	file_exist
	.type	file_exist, @function
file_exist:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	file_exist, .-file_exist
	.section	.rodata
.LC0:
	.string	"hello"
.LC1:
	.string	"Eat..."
.LC2:
	.string	"Sleep..."
.LC3:
	.string	"Rave..."
.LC4:
	.string	"Repeat...\n"
.LC5:
	.string	"hello.o"
.LC6:
	.string	"%s"
.LC7:
	.string	".o exists!"
.LC8:
	.string	"hello.i"
.LC9:
	.string	".i exists!"
.LC10:
	.string	"hello.s"
.LC11:
	.string	".s exists"
.LC12:
	.string	"hello.c"
.LC13:
	.string	".c exists!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	$.LC0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L3
.L4:
	movl	$.LC1, %edi
	call	puts
	movl	$.LC2, %edi
	call	puts
	movl	$.LC3, %edi
	call	puts
	movl	$.LC4, %edi
	call	puts
	addl	$1, -4(%rbp)
.L3:
	cmpl	$4, -4(%rbp)
	jle	.L4
	movl	$.LC5, %edi
	call	file_exist
	testl	%eax, %eax
	je	.L5
	movl	$.LC6, %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC7, %edi
	call	puts
.L5:
	movl	$.LC8, %edi
	call	file_exist
	testl	%eax, %eax
	je	.L6
	movl	$.LC6, %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC9, %edi
	call	puts
.L6:
	movl	$.LC10, %edi
	call	file_exist
	testl	%eax, %eax
	je	.L7
	movl	$.LC6, %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC11, %edi
	call	puts
.L7:
	movl	$.LC12, %edi
	call	file_exist
	testl	%eax, %eax
	je	.L8
	movl	$.LC6, %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$.LC13, %edi
	call	puts
.L8:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
