; writes the classic Hello World! to standard out

section .text
	global _start

_start:
mov rax, 1 ;1 to rax register to for a write syscall
mov rdi, 1 ;std out arg
mov rsi, msg
mov rdx, 14 ;length of message, don't count the null at the end
syscall




exit:
mov rax, 60
mov rdi, 0
syscall


section .data
msg: db "Hello, World!", 10, 0

