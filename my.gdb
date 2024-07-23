set width 0
set height 0
set verbose off
set debuginfod enabled off
# set logging on


break asm_learn::_main01
break asm_learn::_main02
run

# _main01
finish
info locals
continue

# _main02
finish
info locals
continue

q
y
