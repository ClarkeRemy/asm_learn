#! /usr/bin/sh

NAME=$1

as -msyntax=intel -o ${NAME}.o ${NAME}.s
ld -o ${NAME} ${NAME}.o
./${NAME}

echo -e '\nexit code : '$?
exit 0
