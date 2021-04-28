#! /bin/bash
echo -n "Digite o primeiro valor: "
read V1
echo -n "Digite o segundo valor: "
read V2
echo -n "Digite o terceiro valor: "
read V3
echo -n "Digite o quarto valor: "
read V4
echo -n "Digite o quito valor: "
read V5
echo -n "Digite o sexto valor: "
read V6
RESULTADO=0
RESULTADO=$(($V1+$V2+$V3+$V4+$V5+$V6))
MEDIA=0
MEDIA=$(echo "scale=2; ($RESULTADO/6)"| bc)
echo
echo "O resultado da média é: $MEDIA"
