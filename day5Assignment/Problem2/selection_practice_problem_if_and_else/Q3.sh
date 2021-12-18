echo "Enter a year to check - "
read y
if [[ $(( y % 4 )) = 0 && $(( y % 400 )) = 0 || $(( y % 100)) != 0 ]]
then
        echo "$y is a Leap year"
else
        echo "$y is not a Leap year"
fi