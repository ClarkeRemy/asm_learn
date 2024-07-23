.intel_syntax noprefix

.data
  num: .byte 5
  num2: .byte 2

.text
.global _start

_start:
  mov cl,[num]
  mov ch,[num2]

  # EXIT only reads the bottom byte!
  mov rax,60
  mov rdi,rcx
  syscall

  # l pop rbx

#  mov rax,1
#  int 0x80

