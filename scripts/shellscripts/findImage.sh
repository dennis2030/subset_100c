for dirName in `ls $1`;
do
    echo $dirName `ls $1/$dirName | wc -l`
done
