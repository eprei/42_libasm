extern __errno_location

section .text
        global ft_read

ft_read:
        mov rax, 0                                 ; syscall number for sys_read
        syscall                                    ; invoke the syscall, it stores the return value in rax
        cmp rax, 0                                 ; check if the syscall was successful
        jl error                                   ; if not, an error occurred and so we jump to error

        ret                                        ; if successful, just return

error:
         neg rax                                   ; negate the return value to get a positive error code
         mov rdi, rax                              ; move the error code to rdi to store it in errno later
         call __errno_location wrt ..plt           ; get the address of errno and store it in rax
         mov [rax], rdi                            ; store the error code in errno
         mov rax, -1                               ; return -1 to indicate an error occurred
         ret                                       ; return from the function