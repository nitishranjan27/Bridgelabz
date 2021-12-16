geometric=("Pencil" "Rubber" "Divider" "Protector")

echo "Before Adding the Array : " ${geometric[@]}
geometric[4]="Scale"
echo "After Adding the Array : " ${geometric[@]}

echo "Before Updating the Array : " ${geometric[@]}
geometric[2]="Compass"
echo "After Updating the Array : " ${geometric[@]}

echo "Length/Headcount of the Array is : " ${#geometric[@]}

echo "Index-Based of the Array is : " ${!geometric[@]}
