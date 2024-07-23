.intel_syntax noprefix
# Where we start our program
.global _start

# Our welcome message
.hello.str:
  .asciz "12345678\n"

# Useful constants to remember
.equ STDOUT,1
.equ WRITE,1
.equ EXIT,60

.text

_writeHello:
  # write to stdout
  mov rax, WRITE
  mov rdi, STDOUT
  lea rsi, .hello.str
  mov rdx, 10
  syscall

_exitProgram:
  # exit
  mov rax, EXIT
  mov rdi, 0
  syscall

# Entry point
_start:

  mov rbp, rsp

  call _writeHello
  call _exitProgram

  pop rbp
