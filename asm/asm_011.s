.intel_syntax noprefix
.data

.text
.global _start

_start:
  mov eax,3
  mov ebx,5
  sub eax,ebx
_start.after_sub:

  mov ebx,2
  add eax,ebx
_start.after_add:

  mov eax,1
  int 0x80