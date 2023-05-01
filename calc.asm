extern _ShellExecuteA

global _main

section .data
    open db "open",0
    cmd db "cmd",0
    command db "/c calc.exe"

section .text
_main:
    PUSH 0
    PUSH 0
    PUSH command
    PUSH cmd
    PUSH open
    PUSH 0
    CALL _ShellExecuteA

; abre a calculadora do windows
; nasm -f win32 calc.asm
; golink /entry _main calc.obj Shell32.dll /mix
