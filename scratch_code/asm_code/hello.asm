section .data
    message db "Hello, World!", 0 ; null-terminated string

section .text
    global main ; Entry point for the program
    extern printf ; External function from C library

main:
    sub rsp, 8 ; Align stack for printf
    mov rcx, message ; First argument to printf (message)
    call printf ; Call printf function
    add rsp, 8 ; Clean up stack
    ret ; Return from main
    