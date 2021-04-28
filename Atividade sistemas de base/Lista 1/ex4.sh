#! /bin/bash
echo -n "Digite a altura: "
read ALTURA
echo -n "Digite a largura: "
read LARGURA
echo -n "Digite o comprimento: "
read COMPRIMENTO
VOLUME=0
VOLUME=$(echo "scale=2; ($ALTURA*$LARGURA*$COMPRIMENTO)"| bc)
echo
echo "O volume é: $VOLUME"
