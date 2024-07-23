.intel_syntax noprefix
.bss
  num: .space 3

.data
  num2: .space 3,2

.text

.global _start

_start:
  mov bl,1
  mov bl,[num2]
  mov [num],bl
  mov [num+1],bl
  mov [num+2],bl

  mov eax,1
  int 0x80
