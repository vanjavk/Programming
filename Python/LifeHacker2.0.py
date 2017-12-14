import requests
import json
import time
import random
import math
import functools
import urllib
import multiprocessing
import threading
debug=1
#base36 = '0123456789abcdefghijklmnopqrstuvwxyz'
def dlrawpic(url,path,pic):
    #opener = urllib.request.URLopener()
    #opener.addheader('User-Agent', 'Mozilla/5.0')
    #headers={'User-Agent':'Mozilla/5.0'}
    while 1:
        r = requests.get(url, stream=True)
        try:
            if r.status_code == 200:
                with open(path+".png", 'wb') as f:
                    for chunk in r.iter_content(1024):
                        f.write(chunk)
            return {'status':1,'pic':pic}
        except Exception as e:
            print(e)
            return {'status':0,'pic':pic}
        
    
def bxtoint(x,base=36,symbols = '0123456789abcdefghijklmnopqrstuvwxyz'):
    y=list(str(x))
    z=0
    for i in range(0,len(y)):
        z+=symbols.find(y[0])*(base**(len(y)-1))
        y.pop(0)
    return z
def inttobx(x,base=36,symbols = '0123456789abcdefghijklmnopqrstuvwxyz'):
    y=list(str(x))
    z=""
    while(x>0):
        z+=symbols[x%base]
        x=x//base
    return z[::-1]
def getnewest(x="dddddd"):
    global debug
    if debug==1:
        time.sleep(0.1+random.random()*0.02 )
        return inttobx(random.randint(60466176,2176782335))
    url = "https://api.prntscr.com/v1/"
    data = {'jsonrpc': '2.0', 'id':1, "method":"save",'params':{"img_url":"http://i.prntscr.com/fa0725e095ee4c439dabc9cec6a82b72.png","thumb_url":"http://i.prntscr.com/fa0725e095ee4c439dabc9cec6a82b72.png","width":0,"height":0,"delete_hash":"","dpr":1}}
    headers = {'Content-type': 'application/x-www-form-urlencoded','User-Agent': 'Mozilla/5.0'}
    while(1):
        try:
            r = requests.post(url, data=json.dumps(data), headers=headers)
            x=json.loads(r.text)["result"]["url"][-6:]
        except Exception as e:
            print("Could not get new picture. Retrying in 3 seconds...")
            time.sleep(3)
    
    #print(r.status_code, r.reason, r.content)
    return x
def newoptions():
    return 0
def killthreads(t):
    for i in range(len(t)):
        if not t[i].is_alive():
            print("killed",i)
            t.pop(i)
            return t
    return t
def loadoptions():
    try:
        x=json.load(open('lifehacker.json', 'r'))["options"]
        if len(x["strcode"])!=6:
            print("INCORRECT LENGTH, DELETE CONFIG FILE!")
        return json.load(open('lifehacker.json', 'r'))["options"]
    except:
        print("Corrupted or missing json file. Generating default one...")
        defaultjsonoptions='''{"options":{
	"strcode":"'''+getnewest()+'''",
	"pausetime/auto":"0.3",
	"pausetime/auto":"0.3",
	"useproxy/only":"f",
	"imgsavefolder":"c:/prntscr/"
}}'''
        return json.loads(defaultjsonoptions)["options"]              
class list5(list):
    def __init__(self,size=5):
        self.size=5
    def append(self, item):
        list.append(self, item)
        if len(self) > self.size: self[:1]=[]
class dict5(dict):
    def __init__(self,size=5):
        self.size=5
    def valuesx(self,x=0):
        list1=list()
        for i in self.values():
            list1.append(i[x])
        return list1
    def approxtime(self,default):
        if len(self) < self.size: return default
        values=list(self.values())
        return sum(map(lambda i:(values[i+1]['t12']-values[i]['t12'])/(bxtoint(values[i+1]['code'])-bxtoint(values[i]['code'])), range(len(self)-1)))/(len(self)-1)
        #return sum(map(lambda i:values[i+1]['t12']-values[i]['t12'], range(len(self)-1))/len(self-1)
        #return sum(list(self.valuesx(1)))/len(self.keys())
        #sort1=sorted((self.keys()))
        #sort2=list()
        #for i in range(self.size-1):
        #    sort2.append(sort1[i+1]-sort1[i])
    
    def append(self,item1,item2):
        self[item1]=item2
        if len(self) > self.size: del self[min(self.keys())]

if __name__=="__main__":
    options=loadoptions()
    #print("Loaded options:\n"+options["strcode"]+"\n"+options["pausetime"])
    newcodes=dict5()
    pic=getnewest()
    koliko=100
    y=0.01
    t=[]
    while 1:
        t12=time.time()
        newcodes.append(t12,{'t12':t12,'code':pic})
        for i in range(koliko):
            t1=time.time()
            ###

            while(len(t)>=5):
                killthreads(t)
            
            t.append(threading.Thread(target=dlrawpic, args=("https://image.prntscr.com/image/PC7MGdpZRPabHCKSGNjyfg.png","c:\\prntscr1\\"+str(random.randint(1,100000)),pic)))
            t[-1].start()

            #dlrawpic("https://image.prntscr.com/image/PC7MGdpZRPabHCKSGNjyfg.png","c:\\prntscr1\\"+str(random.randint(1,100000)))
            
            
            ###
            t2=time.time()
            processtime=round(y-(y-(t2-t1)),3)
            latetime=round(-(y-(t2-t1)),3)
            print("processing time:",processtime,"late time:",latetime,"pic:",pic)
            time.sleep(max(0,y-(t2-t1)))
        y=newcodes.approxtime(y)
      
