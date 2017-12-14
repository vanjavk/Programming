# -*- coding: utf-8 -*-
"""
Created on Fri Dec  1 18:25:04 2017

@author: vanjavk
"""

import sys
x=""
for s in tuple(sys.stdin):
    x+=s
y=x.split("\n")

for j in range(len(y)//2):
    x=y[j*2]
    sum1,sum2=0,0
    for i in range(26):
        sum1+=x.count("abcdefghijklmnopqrstuvwxyz"[i])*(i+1)
    for i in range(26):
        sum1+=x.count("ABCDEFGHIJKLMNOPQRSTUVWXYZ"[i])*(i+1)
    x=y[j*2+1]
    for i in range(26):
        sum2+=x.count("abcdefghijklmnopqrstuvwxyz"[i])*(i+1)
    for i in range(26):
        sum2+=x.count("ABCDEFGHIJKLMNOPQRSTUVWXYZ"[i])*(i+1)
    while(len(list(str(sum1)))!=1):
        sum1=sum(map(int,list(str(sum1))))
    while(len(list(str(sum2)))!=1):
        sum2=sum(map(int,list(str(sum2))))
    result=str(round(min(sum1,sum2)/max(sum1,sum2)*100,2))
    if len(result)-result.find(".")<3:
        result+="0"
    print(result,'%')