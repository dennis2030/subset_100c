filtername=$1
cd /project/project-socialmedia/bean_subset/gt/
sed "s/hudson/$filtername/g" hudson_val_100c.txt > ${filtername}_val_100c.txt
echo ${filtername}_val_100c.txt has been created.
cd ~/custom_caffe/caffe/examples/filter5_100c/contrastive_fc7/
sed "s/hudson/$filtername/g" create_hudson.sh > create_${filtername}.sh
chmod +x create_${filtername}.sh
cd ../../../
./examples/filter5_100c/contrastive_fc7/create_${filtername}.sh
cd ~/caffe_cudnn/examples/filter5_100c/val/
sed "s/hudson/$filtername/g" hudson_val.prototxt > ${filtername}_val.prototxt
