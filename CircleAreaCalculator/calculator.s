.intel_syntax noprefix 
.global _start 

.section .bss
.lcomm buffer , 64 

.section .data
  pi: .quad 0x400921FB54442D18

  msg1: .asciz "Enter The radius (in cm):"
  msg2: .asciz "Area :"
  

.section .text
 _start:
 mov rax , 1 
 mov rdi , 1 
 lea rsi , msg1 
 mov rdx , 25 
 syscall #writing msg1 

 mov rax , 0
 mov rdi , 0
 lea rsi , buffer 
 mov rdx , 64 
 syscall #getting the radius 
 
 movzx r10 , byte ptr [buffer]
 sub r10 , '0' 

 mov rax , r10 
 mul r10 
 mov r10 , rax 

#Calculating the Area 
  mov rax , [pi]
  imul r11 , rax , r10


mov rax , 1 
mov rdi , 1 
lea rsi , msg2 
mov rdx , 6 
syscall

mov rax , 1 
mov rdi , 1 
lea rsi , r11 
mov rdx , 64 
syscall 


mov rax , 60 
mov rdi , 69 
syscall 
