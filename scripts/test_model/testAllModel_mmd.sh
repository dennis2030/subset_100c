modelDir=$1
accDir=$2
for model in `ls $1*.caffemodel`
do
    fname=`basename $model`
    echo $fname
    if [ -f "$accDir$fname".acc ]
    then
        echo "$accDir$fname".acc already exists.
    else
        echo Generating "$accDir$fname".acc.
        ./testFilters_mmd.sh $model
    fi        
done
