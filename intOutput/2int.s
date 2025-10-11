.intel_syntax noprefix
.global _start 


.section .bss
  .lcomm buffer , 64
 .lcomm output, 4 

.section .data
  msg1: .asciz "Enter The First Number:"
  msg2: .asciz "Enter The Second Number:"


.section .text 
 _start:
 mov rax , 1 
 mov rdi , 1 
 lea rsi , [msg1]
 mov rdx , 23 
 syscall 


 mov rax , 0
 mov rdi , 0
 lea rsi , [buffer]
 mov rdx , 64 
 syscall 

 lea rdi , [buffer]
 call asc_to_int
 mov r10 , rax  

 xor buffer , buffer 
 mov rax , 1 
 mov rdi , 1 
 lea rsi , [msg2]
 mov rdx , 24 
 syscall

 mov rax , 0 
 mov rdi , 0
 lea rsi , [buffer]
 mov rdx , 64 
 syscall 

 lea rdi , [buffer]
 call asc_to_int
 mov r11 , rax 


add r10 , r11 
mov r12 , r10 #sum 

mov rdi , r12 
call int_to_asc 

mov rax , 1 
mov rdi , 1 
lea rsi , [output]
mov rdx , 4
syscall 

mov rax , 60 
mov rdi ,69
syscall


asc_to_int:
    mov r10b , [rdi]
    sub r10b , '0'

    mov r11b , [rdi +1]
    sub r11b , '0'

    movzx r11, r11b
    movzx r10 , r10b 
    imul r10 , 10 
    add r10 , r11

    mov rax , r10 
    ret 

int_to_asc:
    mov ax , di
    mov bl , 10 
    div bl 

    add al , 48 
    mov [output ], al 

    add ah ,48 
    mov [output +1 ] , ah 
    ret 
