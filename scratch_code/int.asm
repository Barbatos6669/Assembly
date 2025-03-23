section .text 
    global _start

_start:
    ; Initialize variables
    mov rax, 5          ; Initialize variable a with 5
    mov rbx, 10         ; Initialize variable b with 10
    mov rcx, 15         ; Initialize variable c with 15
    mov rdx, 20         ; Initialize variable d with 20

    ; Perform addition
    add rax, rbx        ; a = a + b
    add rax, rcx        ; a = a + c
    add rax, rdx        ; a = a + d

    ;subtraction
    sub rbx, rcx        ; b = b - c
    sub rbx, rdx        ; b = b - d

    ; multiplication
    imul rax, rbx       ; a = a * b

    ; division
    mov rdx, 0          ; Clear RDX before division
    mov rbx, 2          ; Set divisor to 2
    idiv rbx            ; a = a / b
        
    ; Exit program
    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; exit code 0
    syscall
