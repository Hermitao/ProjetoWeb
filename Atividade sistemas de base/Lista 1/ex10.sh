read X
read Y
read Z
SOMA1=$(($X+$Y))
SOMA2=$(($X+$Z))
SOMA3=$(($Y+$Z))
echo 
if [ $SOMA1 -lt $Z ]; then
        echo "Nao forma"
        exit
elif [ $SOMA2 -lt  $Y ]; then
        echo "Nao forma"
        exit
elif [ $SOMA3 -lt $X ]; then
        echo "Nao Forma"
        exit
fi
 
if [ $X -ne $Z ]&&[ $X -ne $Y ]&&[ $Y -ne $Z ]; then
        echo "ESCALENO"
elif [ $X -eq $Z -a $X -ne $Y ]; then
        echo "ISOSCELES"
elif [ $Y -eq $Z -a $Y -ne $X ]; then
        echo "ISOSCELES"
elif [ $Y -eq $X -a $Y -ne $Z ]; then
        echo "ISOSCELES"