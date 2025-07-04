section .text
        global ft_strlen

ft_strlen:
        mov rsi, 0      ; initialize length counter to 0

loop:
        mov cl, [rdi]   ; load the current character
        cmp cl, 0       ; check if it is the null terminator
        je return       ; if it is, exit the loop

        inc rdi         ; increment pointer to next character
        inc rsi         ; increment length counter
        jmp loop        ; continue looping

return:
        mov rax, rsi    ; move the length into rax for return value
        ret             ; return from the function
