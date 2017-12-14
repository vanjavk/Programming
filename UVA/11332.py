# -*- coding: utf-8 -*-
"""
Created on Fri Dec  1 12:57:55 2017

@author: vanjavk
"""
import sys
x=int(input())
while(x!=0):
    while(len(list(str(x)))!=1):
        x=sum(map(int,list(str(x))))
    sys.stdout.write(str(x)+'\n')
    x=int(input())