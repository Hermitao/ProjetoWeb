#!/bin/bash
echo "Aumento salárial"
echo
echo -n "Digite o salário atual: "
read SALARIO
echo -n "Digite o percentual (0/100): "
read PORC
DIFERENCA=0
DIFERENCA=$(echo "scale=2; ($SALARIO*$PORC/100)"| bc)
SALNOVO=0
SALNOVO=$(echo "scale=2; ($SALARIO+$DIFERENCA)"| bc)
echo "O novo salário passou para $SALNOVO e a diferença é de $DIFERENCA"

