default rel
bits 64

section .data
	enterMsg db "Running...", 0xd, 0xa, 0

section .text
	global _main
	extern printf

_main:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 32
	xor		rax, rax
	lea		rcx, [enterMsg]
	call	printf
	leave
	ret
