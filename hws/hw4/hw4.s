	.file	"hw4.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.globl	decode4
	.type	decode4, @function
decode4:
.LFB0:
	.cfi_startproc
	addq	%rdi, %rsi
	imulq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$15, %rax
	salq	$31, %rax
	andq	%rdx, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	decode4, .-decode4
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
