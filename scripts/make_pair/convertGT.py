#!/usr/bin/env python
import sys
from random import shuffle

def __usage__():
    print 'Usage:./convertGT.py originGT outputGT'

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
    shuffle(input_lines)
    filter_list = ["", "_Nashville", "_1977", "_hudson", "_gotham", "_kelvin"]
    for i in xrange(0, len(input_lines), 8):
        for j in xrange(0, 6):
            for k in xrange(0, 8):
                tmp_list = input_lines[i+k].split('.')
                tmpS = tmp_list[0] + filter_list[j] + '.' + tmp_list[1]
                output_f.write(tmpS)

    output_f.close()

if __name__ == '__main__':
    __main__()
