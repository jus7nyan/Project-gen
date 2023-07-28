;  rdi - 1
;  rsi - 2
;  rdx - 3
;  rcx - 4
;  r8  - 5
;  r9  - 6
; void foo(rdi, rsi, rdx, rcx, r8, r9)

section .note.GNU-stack


section .data
    prnt_fmt db "%s", 0
    prnt_fmt_n db "%s", 10

section .bss


section .text
    extern exit
    extern printf
    extern gets

    global exit_
    global write_
    global writel_
    global input_




write_:
    push    rsi
    push    rax

    mov     rsi, rdi
    mov     rdi, prnt_fmt
    mov     rax, 0
    call    printf
    
    pop     rax
    pop     rsi

    ret

writel_:
    push    rsi
    push    rax

    mov     rsi, rdi
    mov     rdi, prnt_fmt_n
    mov     rax, 0
    call    printf
    
    pop     rax
    pop     rsi

    ret


input_:
    call    gets

    ret

exit_:
    push    rdi
    push    rax

    mov     rdi, 0
	mov     rax, 0
   	call    exit
    
    pop     rax
    pop     rdi

    ret