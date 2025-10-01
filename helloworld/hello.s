.intel_syntax noprefix
.global _start 

 _start :
  mov rax , 1
  mov rdi , 1
  lea rsi , [hello_world]
  mov rdx ,15
  syscall

  # haha i wont load up 1 , lets even see what will happen
  mov rax , 1 
  mov rdi , 1 
  lea rsi , [name]
  mov rdx , 10
  syscall

  mov rax , 1 
  mov rdi , 2 
  lea rsi ,[latest_anime_quote]
  mov rdx ,16
  syscall



  #sys exit
  mov rax,60 
  mov rdi,69
  syscall


hello_world:
  .asciz "Hello, World!\n"

name:
  .asciz "Haaziq Ali"

latest_anime_quote:
  .asciz "you are an idiot"
