.intel_syntax noprefix
.global _start

.equ READ,0
.equ WRITE,1
.equ STDIN,0
.equ STDOUT,1
.equ EXIT,60

.equ AGE_ALLOC_SIZE,16

# Somewhere to store the input
.bss
  age: .skip AGE_ALLOC_SIZE 
  # allocates room for 16 bytes

# text segment of the program
.text

_getAge:
  mov rax, READ
  mov rdi, STDIN
  lea rsi, age
  mov rdx, AGE_ALLOC_SIZE
  syscall
  ret

_printAge:
  mov rax, WRITE
  mov rdi, STDOUT
  lea rsi, age
  mov rdx, AGE_ALLOC_SIZE
  syscall
  ret

 

_exitProgram:
  mov rax, EXIT
  mov rdi, 0
  syscall
  ret

_start:

  mov rbp, rsp

  call _getAge
  call _printAge
  call _exitProgram

  pop rbp
