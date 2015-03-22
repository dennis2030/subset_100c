#!/usr/bin/env python
import sys

def __main__():
    if( len(sys.argv) < 3):
        print 'Usage:./mapValToSubset.py val.txt mapping_100.txt'
        return
    val_lines = open(sys.argv[1],'r').readlines()
    mapping_lines = open(sys.argv[2],'r').readlines()
    mapping_dict = {}
    for line in mapping_lines:
        tmp_list = line.strip().split(' ')
        origin_label = tmp_list[2]
        mapped_label = tmp_list[1]
        mapping_dict[origin_label] = mapped_label
    for line in val_lines:
        tmp_list = line.strip().split(' ')
        label = tmp_list[1]
        if(label in mapping_dict):
            print tmp_list[0] + ' ' +mapping_dict[label]


if __name__ == '__main__':
    __main__()
