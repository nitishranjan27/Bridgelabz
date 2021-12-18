Result=$((RANDOM%2))
while [ ${Result} -lt 11 ]
do
 if [[ ${Result} -eq 0 ]]; 
 then
    echo "HEADS"
 elif [[ ${Result} -eq 1 ]]; 
 then
     echo "TAILS"
 else
     echo "Coin Wrong"
 fi
done