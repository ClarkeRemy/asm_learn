set startup-quietly on
set width 0
set height 0
set verbose off
set debuginfod enabled off

break _start
break _start.after_sub
break _start.after_add

run
info register eax
info register rax
info register eflags

# sub
continue
info register eax
info register rax
info register eflags

# add
continue
info register eax
info register rax
info register eflags

continue
q
y