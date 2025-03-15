section .text ; Section for code (text segment) 
    global main ; Entry point for the program

main: ; Main function
    mov rax, 10 ; Move the value 10 into rax register
    add rax, 5 ; Add 5 to the value in rax register
    ret ; Return from main function

