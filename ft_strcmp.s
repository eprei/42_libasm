section .text
        global ft_strcmp

ft_strcmp:
        mov rax, 0          ; initialize return value to 0

loop:
        mov al, [rdi]       ; load the first character from s1 to be subtracted by the first character of s2
        mov dl, [rdi]       ; load the first character from s1 to later check if is the null terminator
        sub al, [rsi]       ; subtract the first character from s2
        cmp al, 0           ; check if the result is zero
        jg greater          ; if greater than zero, s1 > s2
        jl minor            ; if less than zero, s1 < s2

        ; characters are equal
        ; check if is the end of string s1
        cmp dl, 0           ; check if the current character of s1 is the null terminator
        je exit             ; if it is, we reached the end of s1 and we exit

        ; check if is the end of string s2
        mov cl, [rsi]       ; load the character from s2 to a register to check if it is the null terminator
        cmp cl, 0           ; check if it is the null terminator
        je exit             ; if it is, if we reached the end of s2 and we exit

        inc rdi             ; move to the next character in s1
        inc rsi             ; move to the next character in s2
        jmp loop            ; repeat the loop

equals:
        mov rax, 0          ; since the strings are equal, we set the return value to 0
        jmp exit            ; exit the loop

minor:
        mov rax, -1         ; since s1 < s2, we set the return value to -1
        jmp exit            ; exit

greater:
        mov rax, 1          ; since s1 > s2, we set the return value to 1
        jmp exit            ; exit

exit:
        ret                 ; return from the function
