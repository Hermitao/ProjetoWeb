#!/bin/bash
clear
echo
echo "Entre com o salário atual do funcionário: "
read SALARIO
echo
echo "Entre com o percentual do aumento: "
read AUMENTO
echo
ENFEITE=1
SALARIO2=0
AUMENTO2=0
DIFERENCA=0
AUMENTO2=$((($AUMENTO/100)+$ENFEITE))
SALARIO2=$(($SALARIO*$AUMENTO2))
echo
echo "O novo salário é de: $SALARIO2"
echo
DIFERENCA=$(($SALARIO2-$SALARIO))
echo "O aumento foi de: $DIFERENCA"
