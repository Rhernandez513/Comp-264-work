	.file	"hw5.c"
	.text
	.globl	switch_prob
	.type	switch_prob, @function
switch_prob:
.LFB0:
	.cfi_startproc
	subq	$60, %rsi
	cmpq	$5, %rsi
	ja	.L9
	jmp	*.L8(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L8:
	.quad	.L3
	.quad	.L9
	.quad	.L4
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.text
.L3:
	leaq	0(,%rdi,8), %rax
	ret
.L4:
	movq	%rdi, %rax
	sarq	$3, %rax
	ret
.L7:
	movq	%rdi, %rax
	salq	$4, %rax
	subq	%rax, %rdi
	movq	%rdi, %rax
	ret
.L5:
	imulq	%rdi, %rdi
.L6:
	leaq	75(%rdi), %rax
	ret
.L9:
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	switch_prob, .-switch_prob
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
