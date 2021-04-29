#!/usr/bin/bash

arg1=$1

printf "Somatório = $1\n"
printf "Deseja realizar mais um somatório? (s/n)\n"
read OPTION
if [ "$OPTION" == "s" ]; then
	./progEntrada.sh
else
	printf "Programa terminado.\n"
fi

./progProcesso.sh