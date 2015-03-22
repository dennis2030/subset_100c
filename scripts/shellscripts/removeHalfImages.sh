for dirs in `ls -p | grep "/"`
do
    count=0;
    removeNum=500;
    for img in `ls $dirs`
    do
        if [ $count -ge $removeNum ]; then
            rm $dirs$img;
        fi
        count=$((count+1));
    done
done
