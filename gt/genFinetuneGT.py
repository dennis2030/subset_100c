#!/usr/bin/env python
import sys
from random import shuffle
def __main__():
    if( len(sys.argv) < 3):
        print 'Usage:./genFinetuneGT.py originalGT outputGT'
        return
    lines = open(sys.argv[1],'r').readlines()
    output_f = open(sys.argv[2],'w')
    filter_list = ["", "_Valencia", "_Brannan", "_Mayfair", "_Apollo", "_Sierra"]
    final_lines = []
    for line in lines:
        tmp_list = line.strip().split(' ')
        label = tmp_list[1]
        prefix = tmp_list[0].split('.')[0]
        for filter in filter_list:
            final_lines.append(prefix + filter + '.JPEG ' + label + '\n')
    shuffle(final_lines)
    for line in final_lines:
        output_f.write(line)
if __name__ == '__main__':
    __main__()
