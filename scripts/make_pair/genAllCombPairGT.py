#!/usr/bin/env python
import sys
import random
from random import shuffle

def __usage__():
    print 'Usage:./convertPairGT.py originGT outputGT'

def __main__():
    
    # print usage if arguments are too few
    if( len(sys.argv) < 3):
        __usage__()
        return
    
    # read parameters
    inputGTName = sys.argv[1]
    outputGTName = sys.argv[2]

    input_lines = open(inputGTName, 'r').readlines()
    output_f = open(outputGTName,'w')

    # shuffle input lines
#    shuffle(input_lines)
    final_list = []
    filter_list = ["", "_Nashville", "_1977", "_hudson", "_gotham", "_kelvin", "_valencia", "_brannan", "_lofi", "_sierra", "_apollo", "_amaro", "_inkwell", "_mayfair", "_rise", "_willow", "_walden", "_xproII", "_toaster"]
    filter_tuple = []
    filter_num = len(filter_list)

    for j in xrange(0, filter_num):
        for k in xrange(j+1, filter_num):
            filter_tuple.append( (j, k) )

    for i in xrange(0, len(input_lines)):
        prefix = input_lines[i].split('.')[0]
        label = input_lines[i].strip().split(' ')[1]
        for tup in filter_tuple:
            tmpS = prefix + filter_list[tup[0]] + '.JPEG ' + label + ' ' + prefix + filter_list[tup[1]] + '.JPEG ' + label + '\n'
            final_list.append(tmpS)
    shuffle(final_list)
    for i in xrange(0, len(final_list)):
        output_f.write(final_list[i])
    output_f.close()
if __name__ == '__main__':
    __main__()
