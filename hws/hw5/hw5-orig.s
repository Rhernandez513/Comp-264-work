.file "switch_prob2-soln.c"
.text
.globl switch_prob
.type switch_prob, @function
switch_prob:
.LFB0:
.cfi_startproc
subq $60, %rsi
cmpq $5, %rsi
ja .L2
jmp *.L7(,%rsi,8)
.section .rodata
.align 8
.align 4
.L7:
.quad .L3
.quad .L2
.quad .L3
.quad .L4
.quad .L5
.quad .L6
.text
.L3:
leaq 0(,%rdi,8), %rax
ret
.L4:
movq %rdi, %rax
sarq $3, %rax
ret
.L5:
movq %rdi, %rax
salq $4, %rax
subq %rdi, %rax
movq %rax, %rdi
.L6:
imulq %rdi, %rdi
.L2:
leaq 75(%rdi), %rax
ret
.cfi_endproc
.LFE0:
.size switch_prob, .-switch_prob
.ident "GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
.section .note.GNU-stack,"",@progbits
