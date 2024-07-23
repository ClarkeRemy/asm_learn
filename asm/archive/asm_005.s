.intel_syntax noprefix
.data

.text

.global _start
_start:
  mov eax,1 # exit ?
  mov ebx,1 # error code ?
  int 0x80  # sys interupt ?
