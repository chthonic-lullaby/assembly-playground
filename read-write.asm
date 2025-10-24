;needs work, only reads in 2 characters
;I need to figure out how uninitialized data works in assembly before I can make progress with this file


section .text
	global _start

write_msg:
mov rax, 1 ;1 to rax register to for a write syscall
mov rdi, 1 ;std out arg
mov rsi, in_msg
mov rdx, 14 ;length of message, don't count the null at the end
syscall
ret

read_msg:
mov rax, 0 ;1 to rax register to for a write syscall
mov rdi, 0 ;std out arg
mov rsi, in_msg
mov rdx, 2 ;length of message, don't count the null at the end
syscall
ret


_start:
call read_msg
call write_msg


exit:
mov rax, 60
mov rdi, 0
syscall


section .data
msg: db "Hello, World!", 10, 0


section .bss
in_msg: RESB 10
