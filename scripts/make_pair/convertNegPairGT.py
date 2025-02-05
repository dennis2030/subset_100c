#!/usr/bin/env python
import sys
import random
from random import shuffle

def __usage__():
    print 'Usage:./convertNegPairGT.py originGT outputGT'

def getRandomImg(input_lines, randList):
    tmpInt = random.randint(0, len(input_lines)-1)
    prefix = input_lines[tmpInt].strip().split('.')[0]
    label = input_lines[tmpInt].strip().split(' ')[1]
    final_tuple = (prefix, label)
    if( int(label) in randList ):
        final_tuple = getRandomImg(input_lines, randList)
    return final_tuple
def __main__():
    
    # print usage if arguments are too few
    if( len(sys.argv) < 3):
        __usage__()
        return
    
    # read parameters
    inputGTName = sys.argv[1]
    outputGTName = sys.argv[2]

    input_lines = open(inputGTName, 'r').readlines()
    dup_input_lines = input_lines
    output_f = open(outputGTName,'w')

    # shuffle input lines
#    shuffle(input_lines)
    final_list = []
    filter_list = ["", "_Amaro", "_Inkwell", "_Rise", "_Willow", "_Walden"]
    sampleNum = 6

    for i in xrange(0, len(input_lines)):
        prefix = input_lines[i].strip().split('.')[0]
        label = input_lines[i].strip().split(' ')[1]
        randList = []
        randList.append(int(label))
        for j in xrange(0, sampleNum):
            tmp_tuple = getRandomImg(input_lines, randList)
            randList.append(int(tmp_tuple[1]))
            tmpS = prefix + filter_list[j] + '.JPEG ' + label + ' ' + tmp_tuple[0] + filter_list[j] + '.JPEG ' + tmp_tuple[1] + '\n'
            final_list.append(tmpS)
   
    shuffle(final_list)
    for i in xrange(0, len(final_list)):
        output_f.write(final_list[i])
    output_f.close()
if __name__ == '__main__':
    __main__()
