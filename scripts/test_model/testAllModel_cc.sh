modelDir=$1
accDir=$2
for model in `ls $1*.caffemodel`
do
    fname=`basename $model`
    if [ -f "$accDir$fname".acc ]
    then
        echo "$accDir$fname".acc already exists.
    else
        echo Generating "$accDir$fname".acc.
        ./testFilters_cc.sh $model
    fi        
done
