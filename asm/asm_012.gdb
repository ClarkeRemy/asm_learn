set width 0
set height 0
set verbose off
set debuginfod enabled off


break _start
run
info register al

break _start.mul_1
continue
info register al

break _start.mul_2
continue
info register al
info register ah
info register ax
info register eflags
continue

break _start.imul
info register al
info register ah
info register ax
info register eflags
continue

q
y
