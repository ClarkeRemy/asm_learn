.intel_syntax noprefix
.text
.global _start

_start:
  mov al,2
  mov bl,3
  mul bl
_start.mul_1:

  mov al,0xFF
  mov bl,2
  mul bl
_start.mul_2:

  mov al,0xFF
  mov bl,2
  imul bl
_start.imul:

  mov rax,1
  int 0x80
