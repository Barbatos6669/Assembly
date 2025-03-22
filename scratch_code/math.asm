; simple math operations
section .text
    global main ; Entry point for the program

main: ; Main function
    xor rax, rax ; Clear rax register
    mov rax, 6
    mov rbx, 4
    mul rbx
    ret ; Return from main function

