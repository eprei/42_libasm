section .text
        global ft_strcpy

ft_strcpy:
        mov rax, rdi        ; save the destination pointer in rax to return it later

loop:
        mov cl, [rsi]       ; load the current character from source
        mov [rdi], cl       ; copy the character to destination
        cmp cl, 0           ; check if the character is the null terminator
        je exit_loop        ; if it is, exit the loop

        inc rsi             ; move to the next character in source
        inc rdi             ; move to the next position in destination
        jmp loop            ; repeat the loop

exit_loop:
        ret                 ; return from the function
