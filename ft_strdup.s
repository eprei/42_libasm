extern ft_strlen
extern ft_strcpy
extern malloc

section .text
        global ft_strdup

ft_strdup:
       push rdi                     ; save the original string pointer on the stack
       call ft_strlen wrt ..plt     ; call ft_strlen to get the length of the string
       inc rax                      ; increment the length by 1 for the null terminator
       mov rdi, rax                 ; rdi now contains the length of the string in rax
       call malloc wrt ..plt        ; allocate memory for the duplicate string
       cmp rax, 0                   ; check if malloc failed
       je return                    ; if it did, return NULL (rax is 0)

       mov rdi, rax                 ; rdi now contains the pointer to the allocated memory
       pop rsi                      ; restore the original string pointer from rdi
       call ft_strcpy wrt ..plt     ; copy the string to the allocated memory

return:
       ret                          ; return from the function
