.intel_syntax noprefix
.data

  string1: .asciz "ABA"
  string2: .asciz "CDE"

.text

.global _start

_start:
  mov bl,[string1]
  mov cl,[string2]
  mov eax,1
  int 0x80
