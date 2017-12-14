# -*- coding: utf-8 -*-
"""
Created on Mon Dec  4 18:55:17 2017

@author: vanjavk
"""

n=int(input())
for i in range(n):
    xy=list(map(int,input().split()))
    result=(xy[0]//3)*(xy[1]//3)
    print(result)

