section .text
        global ft_strlen

ft_strlen:
        mov rbx, 0      ; initialize length counter to 0
loop:
        mov cl, [rdi]   ; load the current character
        cmp cl, 0       ; check if it is the null terminator
        je exit_loop    ; if it is, exit the loop
        inc rdi         ; increment pointer to next character
        inc rbx         ; increment length counter
        jmp loop        ; continue looping
exit_loop:
        mov rdi, rbx    ; move the length into rdi for return value
        mov rax, rbx    ; move the length into rax for return value
        ret             ; return from the function
