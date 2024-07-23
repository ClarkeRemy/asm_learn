.intel_syntax noprefix
.data

.bss

.text
.global _start

_start:
  mov al,0b11111111
  mov bl,0b0001
  add al,bl
  adc ah,0
_start0:

  int 0x80
