section .text
        global ft_strcmp

ft_strcmp:
        mov rax, 0          ; initialize return value to 0

loop:
        mov al, [rdi]       ; load one character from s1
        mov dl, [rsi]       ; load one character from s2
        cmp al, dl          ; compare characters from s1 and s2
        ja greater          ; if s1 > s2, jump to greater
        jb minor            ; if s1 < s2, jump to minor

        ; characters are equal
        ; check if is the end of string s1
        cmp al, 0           ; check if it is the null terminator
        je exit             ; if it is, we reached the end of s1 and we exit

        ; check if is the end of string s2
        cmp dl, 0           ; check if it is the null terminator
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
