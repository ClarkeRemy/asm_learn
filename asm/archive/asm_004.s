.intel_syntax noprefix

.data

n:       .long 52
padding: .long 0
ten:     .long 10

.text
.global _start

_start:

  push rbp

  # division
  lea rax, n
  mov rdx, 0
  idivq ten # results are stored in rax and rdx
            # remainder in rdx
  mov rdx, 0
  idivq ten
  cmp rax, 0

  mov rax, 60
  mov rdi, 0
  syscall

  pop rbp
