#!/usr/bin/env sh
# Compute the mean image from the imagenet training leveldb
# N.B. this is available in data/ilsvrc12

~/caffe_cudnn/build/tools/compute_image_mean /tmp3/bean/filter_lmdb/set3_finetune_train_100c_lmdb/ \
  /tmp3/bean/filter_lmdb/set3_finetune_train_100c_mean.binaryproto

echo "Done."
