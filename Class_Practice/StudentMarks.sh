echo "Marks of class students"
echo "nitish rohan harish sita"

read class

math=0
english=0
biology=0
hindi=0
physics=0
totalSubject=5

function marks() {
                    sum=$(($1+$2+$3+$4+$5))
                    Avg=$(($sum/$totalSubject))
                    echo "*********MARKSHEET OF STUDENT***********"
                    echo "Name of the student = $class"
                    echo "Math marks = $1"
                    echo "English marks = $2"
                    echo "Biology marks = $3"
                    echo "Hindi marks = $4"
                    echo "Physics marks = $5"
                    echo "Total marks = $1+$2+$3+$4+$5 = $sum"
                    echo "Avarage = $sum/$totalSubject  = $Avg"
}

case $class in
              nitish)
                   math=70
                   english=60
                   biology=50
                   hindi=80
                   physics=90
                   marks $math $english $biology $hindi $physics
              ;;
             rohan)
                   math=50
                   english=30
                   biology=70
                   hindi=90
                   physics=40
                    marks $math $english $biology $hindi $physics
              ;;
             sita)
                   math=30
                   english=80
                   biology=70
                   hindi=90
                   physics=100
                    marks $math $english $biology $hindi $physics
             ;;
             *)
                echo "student not in list"
              ;;
esac