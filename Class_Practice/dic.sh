declare -A movies
movies[marathi]="paandu"
movies[hindi]="kick"
movies[telugu]="bahubali"
movies[tamil]="master"

echo "Before Adding In Dictionary : " ${movies[@]}
movies[malayalam]="charlie"
echo "After Adding In Dictionary : " ${movies[@]}

echo "Before Updating In Dictionary : " ${movies[@]}
movies[telugu]="arjunreddy"
echo "After Updating In Dictionary : " ${movies[@]}


echo "Length/HeadCount Of An Dictionary :" ${#movies[@]}

echo "keys Of An Dictionary :" ${!movies[@]}