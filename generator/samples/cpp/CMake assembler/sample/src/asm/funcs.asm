; rdi - первый аргумент
; rsi - второй аргумент
; rdx - третий аргумент
; rcx - четвертый аргумент
; r8  - пятый аргумент
; r9  - шестой аргумент

section .note.GNU-stack


section .data
       prntl_format db "%s",10,0
       prnt_format db "%s",0

section .bss
        inpt resd 0

section .text
        global print
        global printl
        global input

        extern printf
        extern fgets
        extern stdin

printl:
        push rsi
        push rax

        mov rsi, rdi
        mov rdi, prntl_format
        mov rax, 0
        call printf
        
        pop rax
        pop rsi

        ret
print:
        push rsi
        push rax

        mov rsi, rdi
        mov rdi, prnt_format
        mov rax, 0
        call printf
        
        pop rax
        pop rsi

        ret

input:
        push rdx
        push rsi

        mov rdx, [stdin]
        mov rdi, inpt
        mov rsi, 256
        call fgets
        lea rax, inpt

        pop rsi
        pop rdx

        ret