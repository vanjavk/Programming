# -*- coding: utf-8 -*-
"""
Created on Mon Dec  4 19:09:59 2017

@author: vanjavk
"""
k=int(input())
for j in range(k):
    input()
    n=int(input())
    lista=list()
    for i in range(n):
        l=list(map(int,input().split()))
        lista.append(l[0]-l[1])
    if len(set(lista))==1:
        print("yes")
        if k>1 and j!=k-1:
            print()
    else:
        print("no")
        if k>1 and j!=k-1:
            print()