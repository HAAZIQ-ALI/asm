.intel_syntax noprefix
.global _start 

.section .data
  byte_chan: .word 



  output: .ascii "0\n"

.section .text 
_start:
    add al , 5
    add al , 4 

    add al , '0'
    mov [output] , al 

    #mov-innng and sys-callling to print 
    mov rax , 1 
    mov rdi , 1 
    lea rsi , [output]
    mov rdx , 2 
    syscall 

    #sys-callling for pickupppppp 
    mov rax , 60
    mov rdi , 69 
    syscall



