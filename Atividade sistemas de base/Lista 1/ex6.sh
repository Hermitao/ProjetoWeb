#! /bin/bash
echo -n "Digite um numero: "
read N1
RESULTADO=0
RESULTADO=$(($N1/2))
if [ $RESULTADO -eq 0 ]
then
	echo "Divisivel por 2"
else
	echo "Não divisivel por 2"
fi
