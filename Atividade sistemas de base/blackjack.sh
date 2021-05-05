#!/usr/bin/bash

sumPlayer=0
sumDealer=0
bustPlayer=0
keepPlaying="s"
playerWon=0

numOfAces=0
numOfAcesDealer=0

addCard()
{
	arg1=$1
	card=$(shuf -i 1-13 -n 1)
	if [ "$arg1" == "dealer" ]
	then
		printf "Carta do dealer vale $card"
	else
		printf "Carta vale $card"
	fi
	if [ "$card" -gt 10 ]; then
		printf ", convertendo para 10\n"
		card=10
	elif [ "$card" -eq 1 ]; then
		printf ", um Às\n"
		if [ "$arg1" == "dealer" ]; then
			numOfAcesDealer=$(($numOfAcesDealer + 1))
		else
			numOfAces=$(($numOfAces + 1))
		fi
		testNum=0
		if [ "$arg1" == "dealer" ]; then
			testNum=$((sumDealer + 11))
		else
			testNum=$(($sumPlayer + 11))
		fi
		if [[ "$testNum" -lt 22 ]]; then
			card=11
		else
			if [ "$arg1" == "dealer" ]; then
				numOfAcesDealer=$(($numOfAcesDealer - 1))
			else
				numOfAces=$(($numOfAces - 1))
			fi
		fi
	else
		echo
	fi
	if [ "$arg1" == "dealer" ] 
	then
		sumDealer=$(($sumDealer + $card)) 
	else
		sumPlayer=$(($sumPlayer + $card))
		if [[ "$sumPlayer" -eq 21 ]]; then
			printf "21! Você ganhou!\n"
			playerWon=1
		fi
	fi
}

while [ "$keepPlaying" == "s" ]; do

	sumPlayer=0
	sumDealer=0
	bustPlayer=0
	numOfAces=0
	numOfAcesDealer=0
	playerWon=0
	
	clear

	addCard 
	addCard
	printf "SOMA: $sumPlayer\n"

	addCard dealer
	printf "SOMA DO DEALER: $sumDealer\n"

	while [[ ("$sumPlayer" -lt 22) && ("$playerWon" -lt 1) ]]; do
		printf "(h)it ou (s)tay?\n"
		read OPTION
		if [ $OPTION == "h" ]; then
			addCard
			if [ $sumPlayer -gt 21 ]; then
				if [[ "$numOfAces" -gt 0 ]]; then
					sumPlayer=$(($sumPlayer - 10))
					numOfAces=$(($numOfAces - 1))
				else
					printf "Estourou!\n"
					bustPlayer=1
					break
				fi
			fi
			printf "SOMA: $sumPlayer\n"
		else
			break
		fi
	done

	if [[ ("$bustPlayer" -eq 0) && ("$playerWon" -lt 1) ]]; then
		addCard dealer
		if [ $sumDealer -gt 21 ]; then
			if [[ "$numOfAcesDealer" -gt 0 ]]; then
				sumPlayer=$(($sumDealer - 10))
				numOfAces=$(($numOfAcesDealer - 1))
			fi
		fi

		printf "SOMA DO DEALER: $sumDealer\n"
		while true; do
			if [[ "$sumDealer" -gt 21 ]]; then
				printf "Dealer estourou! Você ganhou.\n"
				break
			elif [[ ("$sumDealer" -lt 17) && ("$sumDealer" -lt "$sumPlayer") ]]; then
				addCard dealer
				printf "SOMA DO DEALER: $sumDealer\n"
			elif [[ ("$sumDealer" -lt "$sumPlayer") ]]; then
				addCard dealer
				printf "SOMA DO DEALER: $sumDealer\n"
			elif [[ ("$sumDealer" -gt "$sumPlayer") ]]; then
				printf "Dealer ganhou!\n";
				break
			fi
		done
	fi

	printf "Continuar jogando? (s/n)\n"
	read keepPlaying

done

clear
