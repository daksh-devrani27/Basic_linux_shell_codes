read -p"Enter number: " a
digit=0
c=$a
while [ $c -ne 0 ]
do
    digit=$(( $digit + 1 ))
    c=$(( $c / 10 ))
done
echo $digit
sum=0
c=$a
b=0
while [ $c -ne 0 ]
do
    b=$(( $c % 10 ))
    i=0
    num=1
    while [ $i -lt $digit ]
    do
	num=$(( $num * $b ))
	i=$(( $i + 1 ))
    done
    sum=$(( $sum + $num ))
    c=$(( $c / 10 ))
done
if [[ $a -eq $sum ]]
then
    echo "Number is armsrtrong"
else
    echo "Number not armstrong"
fi
