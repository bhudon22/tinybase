// Copyright (C) 
// Author: Dylan Muller

.intel_syntax noprefix
.text
.globl _start, syscall

_start:
	xor rbp,rbp /* rbp = 0 */
	pop rdi /* rdi = argc, rsp= rsp + 8 */
	mov rsi,rsp /* rsi = char *ptr[] */
	and rsp,-16 /* align rsp to 16 bytes */
	call main
	mov rdi,rax /* rax = main return value */
	mov rax,60 /* syscall= 0x3c (exit) */
	syscall
	ret

syscall:
	mov rax,rdi
	mov rdi,rsi
	mov rsi,rdx
	mov rdx,rcx
	mov r10,r8
	mov r8,r9
	syscall
	ret
