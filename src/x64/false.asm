section .data
	text db "False - Multicall binary",10,"Copyright 2023 Daniel Hejduk",10,"Returns exit code 1",10
	len equ $-text

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, len
	syscall

	mov rax, 60
	mov rdi, 1
	syscall
