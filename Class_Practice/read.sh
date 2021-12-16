echo "Select the arthematic opration = "
echo "1.Add 2.Sub 3.Mul 4.Div"
output=0
read opration
read -p "enter A number = " a
read -p "enter B number = " b

case $opration in
                   1)
                         output=$((a+b))
                    ;;
                    2)
                         output=$((a-b))
                    ;;
                    3)
                         output=$((a*b))
                    ;;
                    4)
                         output=$((a/b))
                    ;;
                    *)
                         echo "wrong option"
                    ;;                      
esac

echo "Total output is = $output"