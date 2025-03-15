section .text ; Section for code (text segment) 
    global main ; Entry point for the program

section .data ; this is where we define our data, kinda like a variable in C
    variable db 0 ; variable to store the value, db means define byte which is 8 bits, so we can store 0-255 or -128 to 127 in it

main: ; Main function
    mov rax, 5 ; Move the value 5 into rax register
    mov [variable], rax ; Store the value of rax into the variable
    ret ; Return from main function