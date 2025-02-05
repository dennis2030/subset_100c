modelPath=$1
modelName=`basename $modelPath`
filterList=("origin" "nashville" "1977" "gotham" "hudson" "kelvin" "valencia" "brannan" "lofi" "sierra" "apollo" "amaro" "inkwell" "mayfair" "rise" "willow" "walden" "xproII" "toaster")
for filter in ${filterList[@]}
do
    cd /project/project-socialmedia/bean_subset/scripts/extract_feature
    ~/caffe_cudnn/build/tools/extract_features $modelPath  ~/caffe_cudnn/examples/filter5_100c/val/${filter}_val.prototxt pool5,fc7 ../../features/${modelName}_${filter}_pool5,../../features/${modelName}_${filter}_fc7 100 GPU 0
    ./multithread_extract_numpy_from_leveldb.py ../../features/${modelName}_${filter}_fc7 ../../gt/${filter}_val_100c.txt
    cd ../../npy/
    mkdir ${modelName}_${filter}
    mv *_${filter}_*.npy ${modelName}_${filter}
    cd /project/project-socialmedia/bean_subset/npy/${modelName}_${filter}/
    npylistName=/project/project-socialmedia/bean_subset/scripts/t-sne/${modelName}_fc7.npylist
    touch $npylistName
    ls -d -1 $PWD/*.npy >> $npylistName
done
: <<'END'
./multithread_extract_numpy_from_leveldb.py ../../features/valencia_baseline/ ../../gt/valencia_val_100c.txt
./multithread_extract_numpy_from_leveldb.py ../../features/brannan_baseline/ ../../gt/brannan_val_100.txt
./multithread_extract_numpy_from_leveldb.py ../../features/nashville_baseline/ ../../gt/Nashville_val_100c.txt
cd ../../npy/
mkdir valencia_baseline
mv *_valencia_*.npy valencia_baseline/
mkdir brannan_baseline
mv *_brannan_*.npy brannan_baseline/
mkdir nashville_baseline
mv *_nashville_*.npy nashville_baseline/
cd valencia_baseline/
ls -d -1 $PWD/*.* > ~/t-sne/3_val_baseline.npylist
cd ../brannan_baseline/
ls -d -1 $PWD/*.* >> ~/t-sne/3_val_baseline.npylist
cd ../nashville_baseline/
ls -d -1 $PWD/*.* >> ~/t-sne/3_val_baseline.npylist
cd ~/t-sne
END
