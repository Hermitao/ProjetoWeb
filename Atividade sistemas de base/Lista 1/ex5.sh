#!/bin/bash
clear
echo
echo "Informe a quantidade de quilômetros percorridos: "
read KM
echo
echo "Infome a quantidade de gasolina abastecida: "
read GASOSA
echo
CONSUMO=0
CONSUMO=$(($KM/$GASOSA))
echo
echo "O carro rende $CONSUMO km por litro de gasolina."
echo
