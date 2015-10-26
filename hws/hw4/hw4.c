/* Comp 264 hw4.c 
 * Objective: Create a C function that generates specified assembly code
 * 
 * By: Robert David Hernandez
 * Github: rhernandez513 
 */

long decode4(long x, long y, long z) {
  // x -> %rdi
  // y -> %rsi
  // z -> %rdx

  x += y;           /* addq %rsi, %rdi */
  x *= z;           /* imulq %rdx, %rdi */
  long tmp = x;     /* movq %rdi, %rax */
  tmp = tmp >> 15;  /* sarq $15, %rax */
  tmp <<= 31;       /* salq $31, %rax */
  tmp = tmp & x;    /* andq %rdi, %rax */
  return tmp;       /* ret */
}
