num=$((RANDOM%3))
totalAmount=1600
workShift=8
salary=0
if [ $num == 2 ]
then
       salary=$((totalAmount*workShift))
       echo "full time Employee"
elif [ $num == 1 ]
then 
        partTime=$((workShift/2))
        salary=$((partTime*totalAmount))
        echo "Part time Employee"
else 
       echo "Employee Absent"       
fi
          echo "Employee Total salary = $salary"
