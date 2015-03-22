fullpath=$1
filename="${fullpath##*/}"
accLogName=$filename".acc"
touch $accLogName
echo "process "$filename
echo "process origin..."
echo "==========origin==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/origin_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process nashville..."
echo "==========nashville==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/nashville_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process 1977..."
echo "==========1977==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/1977_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process gotham..."
echo "==========gotham==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/gotham_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process hudson..."
echo "==========hudson==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/hudson_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process kelvin..."
echo "==========kelvin==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/kelvin_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process valencia..."
echo "==========valencia==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process brannan..."
echo "==========brannan==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/brannan_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process lofi..."
echo "==========lofi==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/lofi_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process sierra..."
echo "==========sierra==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/sierra_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process apollo..."
echo "==========apollo==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/apollo_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process amaro..."
echo "==========amaro==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/amaro_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process inkwell..."
echo "==========inkwell==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/inkwell_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process mayfair..."
echo "==========mayfair==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/mayfair_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process rise..."
echo "==========rise==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/rise_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process willow..."
echo "==========willow==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/willow_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process walden..."
echo "==========walden==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/walden_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process xproII..."
echo "==========xproII==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/xproII_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "process toaster..."
echo "==========toaster==========" >> $accLogName
~/caffe_cc/build/tools/caffe test -model ~/caffe_cudnn/examples/filter5_100c/val/toaster_val.prototxt -weights $fullpath -iterations 100 -gpu 0 &> /tmp/tmp.out
tail -n 3 /tmp/tmp.out > /tmp/tmp.out2
awk -F] '{print $2;}' /tmp/tmp.out2 >> $accLogName
echo "============================" >> $accLogName
echo "All filter processed."