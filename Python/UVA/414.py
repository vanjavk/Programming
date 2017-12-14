# -*- coding: utf-8 -*-
"""
Created on Wed Nov 29 07:53:03 2017

@author: vanjavk
"""
x=1
while(x):
    x=int(input())
    if not x:
        break
    l=list()
    for i in range(x):
        l.append(input())
        
    lb=list(map(lambda i:i.count(" "), l))
    try:
        minb=min(lb)
    except:
        minb=0
    y=sum(map(lambda i:i.count(" ")-minb, l))
    print(y)
    