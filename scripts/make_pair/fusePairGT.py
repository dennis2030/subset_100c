#!/usr/bin/env python
import sys
import random
from random import shuffle

def __main__():
    f1 = open(sys.argv[1], 'r')
    f2 = open(sys.argv[2], 'r')
    f_out = open(sys.argv[3], 'w')
    f1_lines = f1.readlines()
    f2_lines = f2.readlines()

    fuse_lines = f1_lines + f2_lines

    shuffle(fuse_lines)

    for line in fuse_lines:
        f_out.write(line)

if __name__ == '__main__':
    __main__()
