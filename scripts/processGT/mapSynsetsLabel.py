#!/usr/bin/env python
import sys

def __main__():
    if( len(sys.argv) < 3):
        print 'Usage: ./mapSynsetsLabel.py synsets.txt label.txt'
        return
    synsets_f = open(sys.argv[1],'r')
    
    label_f = open(sys.argv[2],'r')

    synsets_lines = synsets_f.readlines()
    synsets_lines = [x.strip() for x in synsets_lines]
    label_lines = label_f.readlines()

    for i in xrange(0, len(label_lines)):
        prefix = label_lines[i].strip().split(' ')[0]
        idx = synsets_lines.index(prefix)
        print label_lines[i].strip() + ' ' + str(idx)


if __name__ == '__main__':
    __main__()
