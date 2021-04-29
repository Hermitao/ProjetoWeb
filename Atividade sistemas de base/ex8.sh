#! /bin/bash
echo -n "Digite o primeiro numero: "
read N1
echo -n "Digite o segundo numero: "
read N2
echo -n "Digite o terceiro numero: "
read N3
echo
if [ $N1 -ge $N2 ] && [ $N2 -ge $N3 ]
then
	clear
	echo "$N1 $N2 $N3"
elif [ $N1 -ge $N2 ] && [ $N3 -ge $N2 ]
then
	clear
	echo "$N1 $N3 $N2"
elif [ $N2 -ge $N1 ] && [ $N1 -ge $N3 ]
then
	clear
	echo "$N2 $N1 $N3"
elif [ $N2 -ge $N1 ] && [ $N3 -ge $N1 ]
then
	clear
	echo "$N1 $N3 $N2"
elif [ $N3 -ge $N1 ] && [ $N1 -ge $N2 ]
then
	clear
	echo "$N3 $N1 $N2"
elif [ $N3 -ge $N1 ] && [ $N2 -ge $N1 ]
then
	clear
	echo "$N3 $N2 $N1"	
fi 
