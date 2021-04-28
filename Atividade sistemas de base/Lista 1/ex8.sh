#! /bin/bash
echo -n "Digite o primeiro numero: "
read N1
echo -n "Digite o segundo numero: "
read N2
echo -n "Digite o terceiro numero: "
read N3
echo
if [ $N1 -gt $N2 ]
	if [ $N2 -gt $N3 ]
	then
		echo "$N1, $N2, $N3"
	
	else
		echo "$N1, $N3, $N2" 
	fi	
fi
