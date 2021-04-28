echo -n "Digite o primeiro lado: "
read x
echo -n "Digite o segundo lado: " 
read y
echo -n "Digite o terceiro lado: " 
read z
if [[ x -ne z ]] && [[ x -ne y ]] && [[ y -ne z ]]; then
echo "ESCALENO"
elif [[ x -ne z ]]
then
echo "ISOSCELES"
elif [[ y -ne z ]]
then
echo "ISOSCELES"
elif [[ z -ne x ]]
then
echo "ISOSCELES"
else
echo "EQUILATERO"
fi