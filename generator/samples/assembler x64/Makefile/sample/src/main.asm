; // rdi - первый аргумент
; // rsi - второй аргумент
; // rdx - третий аргумент
; // rcx - четвертый аргумент
; // r8  - пятый аргумент
; // r9  - шестой аргумент

section .note.GNU-stack

section .data
    hello:     db 'Hello world!',10
    helloLen:  equ $-hello

section .text
    global main


main:
    mov eax,4            ; 'write' system call = 4
	mov ebx,1            ; file descriptor 1 = STDOUT
	mov ecx,hello        ; string to write
	mov edx,helloLen     ; length of string to write
	int 80h              ; call the kernel

	mov eax,1            ; 'exit' system call
	mov ebx,0            ; exit with error code 0
	int 80h              ; call the kernel