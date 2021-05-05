#!/bin/bash
clear
echo
echo "Entre com os dimensões da caixa: "
echo -n "Altura: "
read ALTURA
echo -n "Largura: "
read LARGURA
echo -n "Comprimento: "
read COMPRIMENTO
VOLUME=0
VOLUME=$(($ALTURA*$COMPRIMENTO*$LARGURA))
echo
echo "O volume da caixa é de: $VOLUME"
