items=`ls *.java`
for item in $items
do
    fileName=`echo $item | awk -F. '{ print $1 }'`
    if [ -d $fileName ]
    then
        echo "**** I am From If-Condition ****"
        rm -rf $fileName
    fi
    mkdir $fileName
    cp -r $item $fileName
done