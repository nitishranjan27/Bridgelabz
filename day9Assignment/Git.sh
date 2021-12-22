data=$((RANDOM%3))
totalAmount=1500
workingHours=6
salary=0
echo "The Random value is ===> $data"
if [ $data == 2 ]
then
       salary=$((totalAmount*workingHours))
       echo "Full Time Employee"
elif [ $data == 1 ]
then
        partTime=$((workingHours/2)) 
        salary=$((partTime*totalAmount))
        echo "Part Time Employee"
else [ $data == 0 ]
         echo "Employee Absent"   
fi
          echo "His/Her toatal salary is $salary"
             
