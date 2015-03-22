#!/usr/bin/env python
import h5py
import numpy as np

def __main__():
    a = [1.0 for x in range(0, 1)]
    with h5py.File('allOnes.h5') as f:
        f['dummy_data'] = a
        f['one_label'] = a
if __name__ == '__main__':
    __main__()
