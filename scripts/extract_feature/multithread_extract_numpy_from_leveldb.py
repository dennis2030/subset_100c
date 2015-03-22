#!/usr/bin/env python
import leveldb
import binascii
import numpy as np
import caffe
import sys
from caffe.proto import caffe_pb2

import inspect
import multiprocessing as mp

db = leveldb.LevelDB(sys.argv[1])
dbName = sys.argv[1]
if(dbName[-1] != '/'):
    dbName += '/'
db_prefix = dbName.split('/')[-2]
f_list = open(sys.argv[2],'r').readlines()
f_list = [x.strip() for x in f_list]

def worker(i):
    global db
    global db_prefix
    global f_list
    datum = caffe_pb2.Datum.FromString(db.Get(str(i)))
    arr = caffe.io.datum_to_array(datum)[0]
    prefix = f_list[i].split('.')[0]
    np.save('/project/project-socialmedia/bean_subset/npy/'+ prefix + '_' + db_prefix +'.npy', arr)
    return arr
        
def readLevelDB(dbName):
    print 'Start reading ' + dbName
    
    count = len(f_list)
    pool = mp.Pool(mp.cpu_count() + 2)
    jobs = []

    for i in xrange(0, count):
        if(i % 1000 == 0):
            print str(i) + ' files add to queue.'

        job = pool.apply_async(worker, (i, ))
        jobs.append(job)
    print str(count) + ' files add to queue.'
    for job in jobs:
        job.get()
    pool.close()
    pool.join()
    print 'Finish readling ' + dbName

def __main__():
    if( len(sys.argv) < 3 ):
        print 'Usage:./multithread_extract_numpy_from_leveldb.py dbName filelist'
        return 
    global dbName
    readLevelDB(dbName)    

if __name__ == '__main__':
    __main__()



