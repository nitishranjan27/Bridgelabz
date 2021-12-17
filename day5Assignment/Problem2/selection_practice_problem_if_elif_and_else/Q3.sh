a=10
b=20
c=30
echo "The three number is = $a , $b , $c"
if [ $a -eq $b -a $a -eq $c ]; then
    echo "All the three numbers are equal"
elif [[ $a -eq $b || $b -eq $c || $c -eq $a ]]; then
    echo "I cannot figure out which number is largest"
else
    if [ $a -gt $b -a $a -gt $c ]; then
        echo "$a is max number"
    elif [ $b -gt $a -a $b -gt $c ]; then
        echo "$b is max number"
    elif [ $c -gt $a -a $c -gt $b ]; then
        echo "$c is max number"
    fi
fi


val=$((a + b * c))
echo "a + b * c : $val"

val=$((c + a / b))
echo "c + a / b : $val"

val=$((a % b + c))
echo "a % b + c : $val"

val=$((a * b +c))
echo "a * b + c : $val"


