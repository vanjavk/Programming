# -*- coding: utf-8 -*-
"""
Created on Wed Nov 29 12:11:19 2017

@author: vanjavk
"""
import sys
x=""
for s in tuple(sys.stdin):
    x+=s
while (x.find('"')+1):
    x=x.replace('"','``',1)
    x=x.replace('"',"''",1)
sys.stdout.write(x)
