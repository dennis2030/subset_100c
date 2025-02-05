#!/usr/bin/env python
import sys
import h5py
import numpy as np

def __main__():
    
    if(len(sys.argv) < 4):
        print 'Usage: ./createContrastiveHDF5.py firstC secondC output.h5'
        return

    firstC_fname = sys.argv[1]
    secondC_fname = sys.argv[2]
    
    first_lines = open(firstC_fname,'r').readlines()
    second_lines = open(secondC_fname,'r').readlines()
    
    output_f = h5py.File(sys.argv[3])

    result_label = np.empty([len(first_lines), 1])

    for i in range(0, len(first_lines)):
        first_label = first_lines[i].strip().split(' ')[1]
        second_label = second_lines[i].strip().split(' ')[1]

        if(first_label == second_label):
            result_label[i] = 1.0
        else:
            result_label[i] = 0.0
    output_f['data'] = np.ones((len(first_lines),2,2))
    output_f['label'] = result_label.astype(np.float32)



if __name__ == '__main__':
    __main__()
