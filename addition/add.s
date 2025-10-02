.intel_syntax noprefix
.global _start 

.section .bss
  .lcomm buffer , 64 


.section .data 
  msg:
  .asciz "Enter The First Number:"
  msg2:
  .asciz "Enter The Second Number:"



.section .text
  _start:
  mov rax ,1 
  mov rdi ,1
  lea rsi ,msg
  mov rdx , 23 
  syscall #msg 1 printed 

  mov rax ,0
  mov rdi ,0 
  lea rsi , buffer 
  mov rdx , 64 
  syscall #Intercepted the input 
  
  movzx r10 ,byte ptr [buffer]#pointed intercepted input to r10
  sub r10 ,'0'

  mov rax ,1 
  mov rdi ,1 
  lea rsi ,msg2 
  mov rdx ,24
  syscall #msg2 printed 

  mov rax ,0 
  mov rdi ,0
  lea rsi ,buffer 
  mov rdx ,64 
  syscall #intercepted 2nd input 


  movzx r11 ,byte ptr [buffer]
  sub r11 ,'0'
  mov byte ptr [buffer], 0

  

  add r10 ,r11
  add r10 ,'0'
  mov byte ptr [buffer],r10b
  mov byte ptr [buffer+1],10

  mov rax ,1
  mov rdi ,1
  lea rsi ,buffer
  mov rdx ,2
  syscall 





  mov rax ,60
  mov rdi ,69
  syscall 






