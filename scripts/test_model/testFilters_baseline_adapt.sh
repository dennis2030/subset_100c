fullpath=$1
filename="${fullpath##*/}"
accLogName=$filename".acc"
touch $accLogName
echo "process "$filename
echo "process origin..."
echo "==========origin==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/origin_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process nashville..."
echo "==========nashville==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/nashville_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process 1977..."
echo "==========1977==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/1977_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process gotham..."
echo "==========gotham==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/gotham_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process hudson..."
echo "==========hudson==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/hudson_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process kelvin..."
echo "==========kelvin==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/kelvin_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process valencia..."
echo "==========valencia==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/valencia_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process brannan..."
echo "==========brannan==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/brannan_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process lofi..."
echo "==========lofi==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/lofi_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process sierra..."
echo "==========sierra==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/sierra_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process apollo..."
echo "==========apollo==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/apollo_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process amaro..."
echo "==========amaro==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/amaro_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process inkwell..."
echo "==========inkwell==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/inkwell_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process mayfair..."
echo "==========mayfair==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/mayfair_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process rise..."
echo "==========rise==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/rise_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process willow..."
echo "==========willow==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/willow_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process walden..."
echo "==========walden==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/walden_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process xproII..."
echo "==========xproII==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/xproII_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process toaster..."
echo "==========toaster==========" >> $accLogName
~/caffe_cudnn/build/tools/caffe test -model ~/caffe_cudnn/examples/caffenet/val/toaster_val.prototxt -weights $fullpath -iterations 100 -gpu 1 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "All filter processed."
