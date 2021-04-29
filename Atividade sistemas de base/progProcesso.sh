#!/bin/bash
read VALOR
while [ $VALOR -gt "1" ]&&[ $VALOR -lt "11" ]
do
	SOMA=$((SOMA+$VALOR))
	VALOR=$(($VALOR-1))
done
./progImpressao.sh $SOMA