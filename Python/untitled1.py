# -*- coding: utf-8 -*-
"""
Created on Fri Dec  1 18:25:04 2017

@author: vanjavk
"""
"""
import sys
x=""
for s in tuple(sys.stdin):
    x+=s
"""

x=input()
sum1,sum2=0,0
for i in range(26):
    sum1+=x.count("abcdefghijklmnopqrstuvwxyz"[i])*(i+1)
x=input()
for i in range(26):
    sum2+=x.count("ABCDEFGHIJKLMNOPQRSTUVWXYZ"[i])*(i+1)
print(round(sum1/sum2*100,2)
