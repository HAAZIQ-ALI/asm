.intel_syntax noprefix
.global _start 

.section .bss
  .lcomm buffer ,64 #64 bytes for input



.section .data
  msg:
  .asciz "Enter your Name !\n"
  msg2:
  .asciz "thats a coool name\nDamn you are pretty\n"
  msg3:
  .asciz "but you are an idiot "


.section .text 
_start:
  #asking the name 
  mov rax , 1
  mov rdi , 1
  lea rsi , msg
  mov rdx , 19
  syscall


  #now asking the input 
  mov rax , 0
  mov rdi , 0
  lea rsi , buffer
  mov rdx , 64
  syscall

  mov r15 , rax #ponting the input to r15 

  # msg 2 
  mov rax , 1
  mov rdi , 1
  lea rsi , msg2
  mov rdx , 40  
  syscall

#printing the name 
  mov rax , 1 
  mov rdi , 1 
  lea rsi , buffer
  mov rdx , r15 
  syscall 

  mov rax , 1 
  mov rdi , 1 
  lea rsi , msg3
  mov rdx , 20
  syscall #printing msg3 



  #returning 0 (success)
  mov rax , 60 
  mov rdi , 69 
  syscall 





