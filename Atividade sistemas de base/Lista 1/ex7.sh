#! /bin/bash
echo -n "Digite um numero: "
read N1
RESULTADO=0
RESULTADO=$(($N1%2))
if [ $RESULTADO -eq 0 ]
then
	echo "$N1 par"
else
	echo "$N1 impar"
fi
