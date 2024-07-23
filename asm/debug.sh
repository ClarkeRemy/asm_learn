NAME=$1

./assemble.sh ${NAME}
gdb -q --command=${NAME}.gdb ${NAME}

exit 0