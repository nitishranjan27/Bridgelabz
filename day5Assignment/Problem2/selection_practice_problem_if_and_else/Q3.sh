FLIP=$(($(($RANDOM%10))%2))
echo "The coin Number is = $FLIP"
if [ $FLIP -eq 1 ];then
    echo "heads"
else
    echo "tails"
fi