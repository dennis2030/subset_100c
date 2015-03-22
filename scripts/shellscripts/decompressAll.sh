for fname in `ls $1`;
do
    prefix=(${fname//./ })
    mkdir $prefix
    tar -xvf $fname -C $prefix
done
