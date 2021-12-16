items=`ls`
for item in $items
do
 extName=`echo $item | awk -F. '{ print $2 }'`
 case $extName in
                py)
                     echo "This is a Python File"
                ;;
                html)
                      echo "This is a HTML File"
                 ;;
                 java)
                      echo "This is a JAVA File"
                 ;;
                 *)
                      echo "Something wents to wrong"
 esac
done               