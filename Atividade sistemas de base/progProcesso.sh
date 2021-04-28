#!/bin/bash
clear
echo -n "Insira um valor entre 2-10: "
read VALOR
echo
SOMA=0
while [ $VALOR -gt "1" ]
do
	echo -n "Entre com um valor: "
	read ADICIONANDO
	SOMA=$(($SOMA+$ADICIONANDO))
done
echo -n "A soma dos números é: $SOMA"
echo