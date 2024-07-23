set width 0
set height 0
set verbose off
set debuginfod enabled off

# layout asm
break _start
break _start0
run
info register rax
continue
info register rax
info register eflags

q
y