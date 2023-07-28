;  rdi - 1
;  rsi - 2
;  rdx - 3
;  rcx - 4
;  r8  - 5
;  r9  - 6
; void foo(rdi, rsi, rdx, rcx, r8, r9)

section .note.GNU-stack


section .data
	hello db "Hello, What is your name?: ", 0
	meet db "Nice to meet you, ", 0
	

section .bss
	name resb 256


section .text
	extern exit_
	extern write_
	extern writel_
	extern input_

	global main


main:
	mov 	rdi, hello
	call 	write_

	mov 	rdi, name
	call 	input_

	mov 	rdi, meet
	call 	write_

	mov 	rdi, name
	call 	writel_


	call 	exit_
	leave