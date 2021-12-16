items=`ls *.java *.js *.py *.cs`
for item in $items
do
   
    fileName=`echo $item | awk -F. '{print $1}'`
    fileName1=`echo $item | awk -F. '{print $2}'`
    if [ ! -z "$fileName/$fileName1" ]
    then
         echo "Data Uploded Successfully"  
           rm -rf $fileName $fileName1
    fi 
     mkdir -p $fileName $fileName1
     cp -r $item $fileName1
     mv $fileName1 $fileName
done
