default rel
bits 64

section .data
	msgBoxTitle db "Neat title here...", 0
	msgBoxContent db "Content of message box", 0

section .text
	global _main
	extern MessageBoxA

_main:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 32

	mov		rcx, 0
	lea		rdx, [msgBoxContent]
	lea		r8, [msgBoxTitle]
	mov		r9, 48
	call	MessageBoxA

	xor		rax, rax
	leave
	ret
