	.file	"hw5.c"
	.text
	.globl	switch_prob
	.type	switch_prob, @function
switch_prob:
.LFB0:
	.cfi_startproc
	subq	$60, %rsi
	cmpq	$5, %rsi
	ja	.L2
	jmp	*.L4(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L4:
	.quad	.L3
	.quad	.L2
	.quad	.L5
	.quad	.L6
	.quad	.L8
	.quad	.L8
	.text
.L3:
	leaq	0(,%rdi,8), %rax
	ret
.L5:
	movq	%rdi, %rax
	sarq	$3, %rax
	ret
.L6:
	movq	%rdi, %rax
	imulq	%rdi, %rax
	ret
.L2:
	leaq	(%rdi,%rdi,4), %rax
	movq	%rax, %rdi
	salq	$4, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	ret
.L8:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	switch_prob, .-switch_prob
	.ident	"GCC: (Ubuntu 5.2.1-22ubuntu2) 5.2.1 20151010"
	.section	.note.GNU-stack,"",@progbits
