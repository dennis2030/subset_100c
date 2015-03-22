filtername=$1
cd ~/caffe_cudnn/examples/filter5_100c/val/
sed "s/hudson/$filtername/g" hudson_val.prototxt > ${filtername}_val.prototxt
