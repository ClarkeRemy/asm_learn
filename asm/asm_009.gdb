set width 0
set height 0
set verbose off
set debuginfod enabled off

layout asm
break _start
run
x/x &num
stepi
stepi
stepi
stepi
x/x &num