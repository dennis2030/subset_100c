#!/usr/bin/env python
import sys
from os import listdir
from os.path import isfile, join

filter_list = ['origin', 'nashville', '1977', 'gotham', 'hudson', 'kelvin', 'valencia', 'brannan', 'lofi', 'sierra', 'apollo', 'amaro', 'inkwell', 'mayfair', 'rise', 'willow', 'walden', 'xproII', 'toaster']
in_training_list = ['origin', 'nashville', '1977', 'gotham', 'hudson', 'kelvin']

class Accuracy:
#    rank_acc1, rank_acc5, rank_loss = None
    def __init__(self, acc1, acc5, loss):
        self.acc1 = acc1
        self.acc5 = acc5
        self.loss = loss
    def __str__(self):
        return str(self.acc1) + ' ' + str(self.acc5) + ' ' + str(self.loss)

def rank_simple(vector):
    return sorted(range(len(vector)), key=vector.__getitem__)

def rankdata(a):
    n = len(a)
    ivec=rank_simple(a)
    svec=[a[rank] for rank in ivec]
    sumranks = 0
    dupcount = 0
    newarray = [0]*n
    for i in xrange(n):
        sumranks += i
        dupcount += 1
        if i==n-1 or svec[i] != svec[i+1]:
            averank = sumranks / float(dupcount) + 1
            for j in xrange(i-dupcount+1,i+1):
                newarray[ivec[j]] = averank
            sumranks = 0 
            dupcount = 0
    return newarray

def readAcc(fname):
    f = open(fname, 'r')
    lines = f.readlines()
    acc_dict = {}
    sum_acc1 = 0.0
    sum_acc5 = 0.0
    sum_loss = 0.0
    for i in xrange(0, len(lines), 5):
        top1_line = lines[i+1].strip()
        acc1 = float(top1_line.split(' ')[-1])*100.0
        sum_acc1 += acc1

        top5_line = lines[i+2].strip()
        acc5 = float(top5_line.split(' ')[-1])*100.0
        sum_acc5 += acc5

        loss_lines = lines[i+3].strip()
        loss = float( loss_lines.split('(')[0].strip().split(' ')[-1] )
        sum_loss += loss

        acc = Accuracy(acc1, acc5, loss)
        acc_dict[filter_list[i/5]] = acc

    acc_dict['average'] = Accuracy(sum_acc1/len(filter_list), sum_acc5/len(filter_list), sum_loss/len(filter_list))
    return acc_dict
def readAllAccInDir(accDir):

    onlyfiles = [ f for f in listdir(accDir) if isfile(join(accDir,f)) ]
    model_dict = {}
    for f in onlyfiles:
        acc_dict = readAcc(accDir+'/'+f)
        model_dict[f] = acc_dict
    return model_dict


def __main__():

    if(len(sys.argv) < 2):
        print 'Usage:./genAccCsv.py path/to/accDir'
        return
    
    accDir = sys.argv[1]
    model_dict = readAllAccInDir(accDir)
    tmpS = ''
    for filter in filter_list:
        tmpS += ' ,' + filter
    tmpS += ',in_training,out_of_training,average'
    print tmpS.strip()

    for key, value in model_dict.iteritems():
        tmpS = key
        in_training_acc1 = 0.0
        in_training_acc5 = 0.0
        in_training_loss = 0.0
        out_of_training_acc1 = 0.0
        out_of_training_acc5 = 0.0
        out_of_training_loss = 0.0

        for filter in filter_list:
            acc = value[filter]
            tmpS += ',' + str(acc.acc1) +'%/'+ str(acc.acc5) +'%/'+ str(acc.loss)
            if(filter in in_training_list):
                in_training_acc1 += acc.acc1
                in_training_acc5 += acc.acc5
                in_training_loss += acc.loss
            else:
                out_of_training_acc1 += acc.acc1
                out_of_training_acc5 += acc.acc5
                out_of_training_loss += acc.loss
        tmpS += ',' + str(in_training_acc1/len(in_training_list)) + '%/' + str(in_training_acc5/len(in_training_list)) + '%/' + str(in_training_loss/len(in_training_list))
        tmpS += ',' + str(out_of_training_acc1/(len(filter_list)-len(in_training_list))) + '%/' + str(out_of_training_acc5/(len(filter_list)-len(in_training_list))) + '%/' + str(out_of_training_loss/(len(filter_list)-len(in_training_list)))
        acc = value['average']
        tmpS += ',' + str(acc.acc1) +'%/'+ str(acc.acc5) +'%/'+ str(acc.loss)
        print tmpS

if __name__ == '__main__':
    __main__()
