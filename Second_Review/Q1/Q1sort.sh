
read -p "Enter the first Number = " a
read -p "Enter the second Number = " b
read -p "Enter the third Number = " c
echo "First Number:$a"
echo "Second Number:$b"
echo "Third Number:$c"
result1=$(($a+($b*$c)))
result2=$((($a*$b)+$c))
result3=$(($c+($a/$b)))
result4=$((($a%$b)+$c))
echo "The result is = $result1, $result2,  $result3, $result4"

declare -A test_var
test_var[key1]=$result1
test_var['key2']=$result2
test_var['key3']=$result3

another_key_var='key4'
another_value_var=$result4
test_var[$another_key_var]=$another_value_var

counter=0
Array[((counter++))]=$result1
Array[((counter++))]=$result2
Array[((counter++))]=$result3
Array[((counter++))]=$result4

echo "Original Numbers in array:"
for (( i = 0; i <= 3; i++ ))
    do
      echo ${Array[$i]}
    done

for (( i = 0; i <= 3; i++ ))
do
   for (( j = $i; j <= 3; j++ ))
   do
      if [ ${Array[$i]} -gt ${Array[$j]}  ]; then
       t=${Array[$i]}
       Array[$i]=${Array[$j]}
       Array[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in Assending Order:"
for (( i=0; i <= 3; i++ )) 
do
  echo ${Array[$i]}
done
for (( i = 0; i <= 3; i++ ))
do
   for (( j = $i; j <= 3; j++ ))
   do
      if [ ${Array[$i]} -lt ${Array[$j]}  ]; then
       t=${Array[$i]}
       Array[$i]=${Array[$j]}
       Array[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in Descending Order:"
for (( i=0; i <= 3; i++ ))
do
  echo ${Array[$i]}
done