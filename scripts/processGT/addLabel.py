#!/usr/bin/env python
import sys

def __main__():
    if( len(sys.argv) < 3):
        print 'Usage:./addLabel.py label.txt train_no_label.txt'
        return

    label_lines = open(sys.argv[1],'r').readlines()
    train_lines = open(sys.argv[2],'r').readlines()
    label_dict = {}
    for line in label_lines:
        tmp_list = line.strip().split(' ')
        prefix = tmp_list[0]
        label = tmp_list[1]
        label_dict[prefix] = label
    
    for line  in train_lines:
        prefix = line.strip().split('/')[0]
        print line.strip() + ' ' + label_dict[prefix]

if __name__ == '__main__':
    __main__()
