.intel_syntax noprefix
.global _start

.data
n: .long 39 # '

.text

.equ WRITE,1
.equ STDOUT,1
_writeOut:
  mov rax, WRITE
  mov rdi, STDOUT
  lea rsi, n
  mov rdx,2
  syscall
  ret

.equ EXIT,60
_exitProgram:
  mov rax, EXIT
  mov rdi, 0
  syscall
  ret

_start:

  mov rbp, rsp

  call _writeOut
  call _exitProgram

  pop rbp
