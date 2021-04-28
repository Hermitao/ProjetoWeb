#!/bin/bash
echo -n "Quiilometros percoridos: "
read KM
echo -n "Quantidade abastecida: "
read LITROS
CONSUMO=0
CONSUMO=$(echo "scale=2; ($KM/$LITROS)"| bc)
echo
echo "O consumo foi de: $CONSUMO KM/L"

