#!/bin/bash
echo
echo -n "Qual a nota para ser aprovado? "
read M_APROVADO
echo -n "Qual a nota para ser reprovado? "
read M_REPROVADO
echo -n "Qual a nota para fazer a recuperação? "
read M_RECUPERACAO
echo -n "Digite a nota 1: "
read N1
echo -n "Digite a nota 2: "
read N2
echo -n "Digite a nota 3: "
read N3
echo -n "Digite a nota 4: "
read N4
MEDIA = $(($N1+$N2+$N3+$N4)/4)
echo
if [ $MEDIA -ge M_PAROVADO ]
then 
	echo "APROVADO"
elif [ $MEDIA -ge M_RECUPERACAO ] && [ $MEDIA -le M_APROVADO ]
then 
	echo "RECUPERACAO"
else
then
	echo "REPROVADO"
fi
