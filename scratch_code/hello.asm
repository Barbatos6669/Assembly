section .data ; Section for data (data segment) 
    message db 'Hello, World!', 0 ; Null-terminated string
    fmt db '%s', 10, 0 ; Format string for printf

section .text ; Section for code (text segment)
    global main ; Entry point for the program
    extern printf ; External function from C library

main: ; Main function
    sub rsp, 32 ; sub: align stack, rsp: stack pointer, 32: 32 bytes
    mov rcx, fmt ; mov: move, rcx: register, fmt: format string
    mov rdx, message ; mov: move, rdx: register, message: string to print
    call printf ; Call printf function
    add rsp, 32 ; Clean up stack
    ret ; Return from main function