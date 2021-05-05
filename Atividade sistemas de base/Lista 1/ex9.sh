#!/bin/bash
echo -n "N1:"
read N1
echo -n "N2:"
read N2
echo -n "N3:"
read N3
echo -n "N4:"
read N4
echo
echo -n "Aprovado: "
read APROVADO
echo -n Reprovado:"
read REPROVADO
echo -n "Recuperacao: "
read RECUPERACAO
SOMA=$(($N1+$N2+$N3+N4))
MEDIA=$SOMA/4
if [ $MEDIA -gt $APROVADO ]; then
        echo "Aprovado"
elif [ $MEDIA -lt $APROVADO -a $MEDIA -gt $RECUPERACAO ]; then
        echo "Recuperacao"
else
        echo "reprovado"

