global _main

section .data
    hello db "hello world!",0x0a
section .text

_main:
    mov eax, 0x04
    mov ebx, 0x01
    mov ecx, hello
    mov edx, 0x0d
    int 0x80
    mov eax, 0x01
    mov ebx, 0x00
    int 0x80

    ;0x04->eax fd->ebx buf>ecx count->edx
    ;ssize_t write(int fd, const void *buf, size_t count);
