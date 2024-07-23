.intel_syntax noprefix
.global _start

.data
b: .byte 0xFF
n: .2byte 0x5


.text


.equ WRITE,1
.equ STDOUT,1
_output.n:
  mov rax, WRITE
  mov rdi, STDOUT
  lea rsi, n
  mov rdx, 2
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

  mov rax,1
  mov rbx,[n]
  int 0x80

  pop rbp
