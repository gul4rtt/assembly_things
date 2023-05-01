global _main

section .data
    hello db "hello world!", 0xa

section .text

_main:
    mov eax, 0x04 ; syscall write
    mov ebx, 0x01
    mov ecx, hello
    mov edx, 0x0d 
    int 0x80 

    mov eax, 0x01 ; syscall exit
    mov ebx, 0x00
    int 0x80

; nasm -f elf32 hello.asm
; ld --entry _main -m elf_i386 hello.o -o hello.elf
