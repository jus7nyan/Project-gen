; // rdi - первый аргумент
; // rsi - второй аргумент
; // rdx - третий аргумент
; // rcx - четвертый аргумент
; // r8  - пятый аргумент
; // r9  - шестой аргумент

section .note.GNU-stack


section .data
       

section .text
        global say_hi
        global say_text
        global text_test

say_text:
        mov rax, 4
        mov rbx, 1
        mov rcx, rdi
        mov rdx, rsi
        int 80h
        ret