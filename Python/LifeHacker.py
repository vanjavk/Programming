import sys
import time
import json
import multiprocessing
import os
import base64
from _thread import *
from urllib import request
import urllib
import random
import shutil
import re
import requests
import winsound
import socket
import io
import cfscrape
from robobrowser import RoboBrowser
try:
    import Image
except ImportError:
    from PIL import Image
import pytesseract
 


def getnewest():
    url = "https://api.prntscr.com/v1/"
    data = {'jsonrpc': '2.0', 'id':1, "method":"save",'params':{"img_url":"http://i.prntscr.com/fa0725e095ee4c439dabc9cec6a82b72.png","thumb_url":"http://i.prntscr.com/fa0725e095ee4c439dabc9cec6a82b72.png","width":0,"height":0,"delete_hash":"","dpr":1}}
    headers = {'Content-type': 'application/x-www-form-urlencoded','User-Agent': 'Mozilla/5.0'}
    r = requests.post(url, data=json.dumps(data), headers=headers)
    #print(r.status_code, r.reason, r.content)
    return json.loads(r.text)["result"]["url"][-6:]
def testpicture(path,size,boje,strcode,pather,imgname,ocrtoread,ocrtext,ocrread,bojeamazont):


    f = open(path, 'rb')
    pic=Image.open(f)
    procentpsc,procentgta,procentbijelo,procentamazon,procentg2a,tvprocent,procentpriv,procentsteam1,procentsteam2,procentdarkg2a=0,0,0,0,0,0,0,0,0,0
    procentamazon3=list()
    procentamazon3.append(0)
    procentamazon3.append(0)
    procentamazon3.append(0)
    procentamazon3.append(0)#
    procentsteamemail=list()
    procentsteamemail.append(0)
    procentsteamemail.append(0)
    procentamazonredeem=list()
    procentamazonredeem.append(0)
    procentamazonredeem.append(0)
    procentamazonredeem.append(0)
    procentstarwars=list()
    procentstarwars.append(0)
    procentstarwars.append(0)
    procentgamestop=list()#http://i.imgur.com/qEmO7Az.png
    procentgamestop.append(0)
    procentgamestop.append(0)
    procentg2aadd=list()#procent g2a add codes
    procentg2aadd.append(0)#bijela pozadina iza kodova
    procentg2aadd.append(0)# obrub
    procentg2aadd.append(0)##bijela POJEDINACNO
    procentg2aadd.append(0)#gamekey siva pozadina
    procentg2aadd.append(0)## zuta pozadina
    procentg2aadd.append(0)#gamekey OKOLO siva pozadina
    procentoriginkey=list()#procent http://i.imgur.com/iRQVS61.png
    procentoriginkey.append(0)#bijela pozadina iza kodova,
    procentegifter=list()#e gifter http://i.imgur.com/1j4Cwpo.png
    procentegifter.append(0)#plavetno email http://i.imgur.com/iM2Ozm5.png
    procentegifter.append(0)#plavetno menu
    procentegifter.append(0)#plavetno ispod
    procentbundlestars=list()#e procentbundlestars http://i.imgur.com/fb5vmlV.png
    procentbundlestars.append(0)#sivo
    procentbundlestars.append(0)#zeleno
    procentbundlestars.append(0)#sivokod
    procentether=list()#e etherwallet.com http://i.imgur.com/ylXXHD1.png
    procentether.append(0)#bijelo 251 251 251
    procentether.append(0)#sivo sredina
    procentether.append(0)#lijevo plavo
    procentpsnwwii=list()#e 
    procentpsnwwii.append(0)#17 17 17 crno
    procentpsnwwii.append(0)#sivo
    procentg2apay=list()#e 
    procentg2apay.append(0)#
    
    pix=pic.load()
    picx=pic.size[0]
    picy=pic.size[1]
    if picy>4000:
        return
    quality=1
    if quality==1:
        for i in range(size):
            for j in range(size):
                try:
                    pixel=pix[i*(picx//size),j*(picy//size)][:3]
                except:
                    pixel=(0,0,0)
                if pixel in boje:
                    procentpsc+=1
                    #print(i*(picx//size),j*(picy//size),pix[i*(picx//size),j*(picy//size)])
                elif pixel in[(248, 152, 29),(248,153,29),(248,165,27),(241,194,65)]:
                    procentgta+=1
                elif pixel in[(150, 0, 0),(249,209,95),(255,250,206)]:
                    procentpriv+=1
##                elif pixel in[(51, 51, 51)]:
##                    procentsteam1+=1
##                elif pixel in[(244, 244, 244)]:
##                    procentsteam2+=1
                elif pixel==(131,135,140):
                    procentdarkg2a+=1
                elif pixel==(255,255,255):
                    procentbijelo+=1
                elif pixel==(250,250,250):
                    procentg2aadd[0]+=1
                elif pixel==(255,254,187):
                    procentg2aadd[4]+=1#zuta pozadina g2aadd
                elif pixel==(224,224,224):
                    procentg2aadd[3]+=1#siva gamekey pozadina g2aadd
                elif pixel==(235,235,235):
                    procentg2aadd[5]+=1#siva OKOLO gamekey pozadina g2aadd
                elif pixel in [(248,247,242)]:
                    procentamazon+=1
                elif pixel==(216,255,140):
                    procentg2a+=1
                elif pixel==(0,170,0):#zelena slika s 3 boje
                    procentamazon3[0]+=1
                elif pixel==(204,204,204):#siva slika s 3 boje
                    procentamazon3[1]+=1
                elif pixel==(23,33,46):#svijetlo
                    procentsteamemail[0]+=1
                elif pixel==(18,26,37):#tamno
                    procentsteamemail[1]+=1
                elif pixel==(238,238,238):
                    procentamazon3[2]+=1
                elif pixel==(246,246,246):#siva u kodu #claimcodeslika
                    procentamazonredeem[2]+=1
                elif pixel==(247,247,247):#siva boja u kodu #starwars
                    procentstarwars[0]+=1
                elif pixel==(133,145,158):#siva boja iznad #gamestop
                    procentgamestop[0]+=1
                elif pixel==(222,74,74):#crvena boja pritn card #gamestop
                    procentgamestop[1]+=1
                elif pixel==(222,74,74):#crvena boja pritn card #gamestop
                    procentgamestop[1]+=1
                    
                elif pixel==(3,151,213):#plava boja email egifter
                    procentegifter[0]+=1
                elif pixel==(40,149,196):#plava boja menu egifter
                    procentegifter[1]+=1
                elif pixel==(39,148,196):#plava boja ispod egifter
                    procentegifter[2]+=1
                    
                elif pixel==(33,33,33):#siva boja bundle
                    procentbundlestars[0]+=1
                elif pixel==(208,254,0):#zelena boja bundle
                    procentbundlestars[1]+=1
                elif pixel==(27,27,27):#siva-mjesto za kod boja bundle
                    procentbundlestars[2]+=1
                elif pixel==(251,251,251):#bijelo pozadina
                    procentether[0]+=1
                elif pixel==(220,224,229):#sivo sredina
                    procentether[1]+=1
                elif pixel==(46,72,104):#lijevo plavo
                    procentether[2]+=1
##                elif pixel==(17,17,17):#crno
##                    procentpsnwwii[0]+=1
##                elif pixel==(34,34,34):#sivo
##                    procentpsnwwii[1]+=1
                elif pixel==(242,242,250):#sivo
                    procentg2apay[0]+=1
                #elif pixel in [(0,100,200),(81,168,255)]:
                #    tvprocent+=1
        if picy<4000:
            polax=picx//2
            for j in range(picy):
                try:
                    pixel=pix[polax,j][:3]
                except:
                    pixel=(0,0,0)
                if pixel==(187,211,222):#plavo oko koda #claimcodeslika
                    procentamazonredeem[0]+=1
                elif pixel==(231,118,0):#narandjasto oko claimanja #claimcodeslika
                    procentamazonredeem[1]+=1
                elif pixel==(128,128,128):#tamni border #starwars http://i.imgur.com/I4rPe3o.png
                    procentstarwars[1]+=1
                elif pixel==(173,173,173):#border od addanja kodova g2aadd
                    procentg2aadd[1]+=1
                elif pixel==(250,250,250):#border od addanja kodova g2aadd
                    procentg2aadd[2]+=1
                elif pixel==(222,222,222):#border origina keya
                    procentoriginkey[0]+=1

                    
                
                
            
    
    if procentpsc>200:
        print("PSC",strcode,"|",procentpsc,"/",size*size)
        shutil.copyfile(path, pather+"PSC\\"+imgname)
        winsound.Beep(300,1000)
        pic.show()
    elif tvprocent>1:
        winsound.Beep(200,1000)
        print("TV pic",strcode,"|",tvprocent,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
       
        #if procentgta>1000:
        pic.show()
    elif procentamazon>15:
        winsound.Beep(200,1000)
        print("AMAZON1 pic",strcode,"|",procentamazon,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
       
        #if procentgta>1000:
        pic.show()
    elif sum(procentsteamemail)>50:
        winsound.Beep(200,1000)
        print("steamemail pic",strcode,"|",procentsteamemail,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
       
        #if procentgta>1000:
        pic.show()
    elif procentamazon3[0]>15 and procentamazon3[1]>15 and procentamazon3[2]>15:
        winsound.Beep(200,1000)
        print("AMAZON3 pic",strcode,"|",procentamazon3,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
       
        #if procentgta>1000:
        pic.show()
    elif procentgta>2:
        winsound.Beep(300,1000)
        print("AMAZON pic",strcode,"|",procentgta,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
       
        #if procentgta>1000:
        pic.show()
    elif procentg2a>3:
        winsound.Beep(300,1000)
        print("G2A pic",strcode,"|",procentg2a,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
       
        #if procentgta>1000:
        pic.show()
    elif procentdarkg2a>10:
        winsound.Beep(300,1000)
        print("DG2A pic",strcode,"|",procentdarkg2a,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
       
        #if procentgta>1000:
        pic.show()
    elif procentpriv>15:
        winsound.Beep(300,1000)
        print("PRIV pic",strcode,"|",procentpriv,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
       
        #if procentgta>1000:
        pic.show()
    elif (procentamazonredeem[2]>15 and (procentamazonredeem[0]>0 or procentamazonredeem[1]>0)) or (procentbijelo>50 and procentamazonredeem[1]>1):

        print("AMAZONredeem",strcode,"|",procentamazonredeem,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
        winsound.Beep(300,300)
        pic.show()
    elif procentstarwars[0]>75 and procentstarwars[1]>1 and procentbijelo>50:
        winsound.Beep(300,1000)
        print("starwars pic",strcode,"|",procentstarwars,procentbijelo,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
        pic.show()
    elif procentgamestop[0]>20 and procentgamestop[1]>2 and procentbijelo>50:
        winsound.Beep(300,1000)
        print("gamestop pic",strcode,"|",procentgamestop,procentbijelo,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
        pic.show()
    elif procentg2aadd[0]>100 and procentg2aadd[1]>1 and procentg2aadd[2]>15 and procentbijelo>10:
        winsound.Beep(305,250)
        winsound.Beep(295,250)
        winsound.Beep(305,250)
        winsound.Beep(295,250)
        print("g2aadd pic",strcode,"|",procentg2aadd,procentbijelo,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
        pic.show()
    elif procentg2aadd[3]>10 and procentg2aadd[4]>10 and procentg2aadd[5]>10 and procentbijelo>10:
        winsound.Beep(305,250)
        winsound.Beep(295,250)
        winsound.Beep(305,250)
        winsound.Beep(295,250)
        print("g2aadd2 pic",strcode,"|",procentg2aadd,procentbijelo,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
        pic.show()
    elif procentoriginkey[0]==2 and procentbijelo>1000 and picy<400:
        winsound.Beep(300,1000)
        print("origin pic",strcode,"|",procentoriginkey,procentbijelo,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
        pic.show()
    elif procentegifter[0]+procentegifter[1]+procentegifter[2]>30:
        winsound.Beep(300,1000)
        print("egifter pic",strcode,"|",procentegifter,procentbijelo,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
        pic.show()
    elif procentbundlestars[0]>5 and procentbundlestars[1]>5 and procentbundlestars[2]>5:
        winsound.Beep(300,1000)
        print("bundlestar pic",strcode,"|",procentbundlestars,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
        pic.show()
    elif procentether[2]>2:
        winsound.Beep(300,1000)
        print("ETHER pic",strcode,"|",procentether,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
        pic.show()
##    elif procentpsnwwii[0]>50 and procentpsnwwii[1]>20:
##        winsound.Beep(300,1000)
##        print("PSNWWIi pic",strcode,"|",procentpsnwwii,"/",size*size)
##        shutil.copyfile(path, pather+"GTA\\"+imgname)
##        pic.show()
    elif procentg2apay[0]>100 and procentbijelo>100:
        winsound.Beep(300,1000)
        print("g2apay pic",strcode,"|",procentg2apay,"/",size*size)
        shutil.copyfile(path, pather+"GTA\\"+imgname)
        pic.show()
       
        #if procentgta>1000:
       
        #if procentgta>1000:

##    elif procentsteam1>15 and procentsteam2>15:
##        winsound.Beep(300,1000)
##        print("STEAM pic",strcode,"|",procentsteam1,procentsteam2,"/",size*size)
##        shutil.copyfile(path, pather+"GTA\\"+imgname)
##       
##        #if procentgta>1000:
##        pic.show()
    
    
##    elif procentbijelo>1300 and procentamazon>1:
##        rijecines="eur gbp usd pin cash marke classic .de .com".split()
##        rijeci="bestel lung gesche schein angeg geben paysafe serien nummer bestell liefer".split()
##        shutil.copyfile(path, ocrtoread+imgname)
##        while os.path.isfile(ocrtext+strcode+'.txt')==False:
##            time.sleep(0.5)
##        time.sleep(0.3)
##        amazp=0
##        tekstamazona=open(ocrtext+strcode+'.txt', 'r', encoding="utf8").read().lower()
##        for rijec in "#car bestellung geschenkgutschein marke:".split():
##            if rijec in tekstamazona:
##                amazp+=6
##        if "amazo" in tekstamazona:
##            amazp+=4
##        for rijec in "gift code coupon claim card paysafe".split():
##            if rijec in tekstamazona:
##                amazp+=3
##        for rijec in rijeci:
##            if rijec in tekstamazona:
##                amazp+=2
##        for rijec in rijecines:
##            if rijec in tekstamazona:
##                amazp+=1
##        if amazp>5:
##            print("AMAZ",amazp,strcode,"|",procentbijelo,"/",size*size,procentamazon,"/",size*size)
##            winsound.Beep(300,1000)
##            pic.show()
##            shutil.copyfile(path, pather+"GTA\\"+imgname)
##        elif amazp>0:
##            print("AMA",amazp,strcode,"|",procentbijelo,"/",size*size,procentamazon,"/",size*size)
##            shutil.copyfile(path, pather+"GTA\\"+imgname)
            
            

        
        
        
def getips():
    print("GETTINGS IPS")
    from urllib import request
    import random
    import re
    import socket
    link="http://proxylist.hidemyass.com/search-1301708#listable"
    #proxy_host = '92.47.195.250:3128'
    req = request.Request(link, headers={'User-Agent': 'Mozilla/5.0'})
    #req.set_proxy(proxy_host, 'http')
    r = request.urlopen(req)
    rread=r.read().decode()
    #print(r.read())
    ipovi=list()
    retry=1
    relovi=list()
    reloviind=list()
    for m in re.finditer('<tr class=""  rel="',rread):
        #print('found', m.start(), m.end())
        endofrel=rread.find('">',m.end())
        #print(endofrel)
        #print(rread[m.end():endofrel])
        relovi.append(rread[m.end():endofrel])
        reloviind.append(endofrel)
    for m in re.finditer('<tr class="altshade"  rel="',rread):
        #print('found', m.start(), m.end())
        endofrel=rread.find('">',m.end())
        #print(endofrel)
        #print(rread[m.end():endofrel])
        relovi.append(rread[m.end():endofrel])
        reloviind.append(endofrel)
    #print(len(relovi))
    dobristylovi=list()
    dicter=dict()
    for i in range(20):
        dio=rread[reloviind[i]:reloviind[i+25]]
        for m in re.finditer('{display:inline}',dio):
            #print(dio[m.start()-4:m.start()])
            dobristylovi.append(dio[m.start()-4:m.start()])
        #print (dobristylovi)
        spandio=dio[dio.find("</style>"):dio.find("</td>",dio.find("</style>"))].replace("div","span")
        portdio=dio.find("<td>",dio.find("</td>",dio.find("</style>")))+4
        port=""
        for kar in range(20):
            #print(dio[portdio+kar])
            if dio[portdio+kar].isdigit():
                port+=dio[portdio+kar]
        #print(spandio)
        for m in re.finditer('display: inline">',spandio):
            #print(spandio[m.end():spandio.find("</",m.end())])
            dicter[m.end()]=spandio[m.end():spandio.find("</",m.end())]
        for j in dobristylovi:
            for m in re.finditer(j+'">',spandio):
                #print(spandio[m.end():spandio.find("</",m.end())])
                dicter[m.end()]=spandio[m.end():spandio.find("</",m.end())]

        for m in re.finditer('class="',spandio):
            rez=spandio[m.end():spandio.find('">',m.end())]
            if len(rez)<4:
                #print(spandio[spandio.find('">',m.end())+2:spandio.find('</',m.end())])
                dicter[spandio.find('">',m.end())+2]=spandio[spandio.find('">',m.end())+2:spandio.find('</',m.end())]

        for m in re.finditer('</span>',spandio):
            rez=spandio[m.end():spandio.find('<span',m.end())]
            if len(rez)>0 and len(rez)<15:
                #print(rez)
                dicter[m.end()]=rez
                

        zadnjidio=spandio[len(spandio)-20:len(spandio)]
        #print(zadnjidio)
        rez=zadnjidio[zadnjidio.find(">"):zadnjidio.find("<")].replace(" ","")
        #print(rez)
        dicter[len(spandio)]=rez
        #print( sorted(dicter.items()))
        ip=""
        chars = set('0123456789.')
        for key,value in sorted(dicter.items()):
            if any((c not in chars) for c in value):
                #print(value)
                pass
            else:
                ip+=value
                   
        
        
        try:
            socket.inet_aton(ip)
            ipovi.append(ip+":"+port)
            pass
            #print(ip+":"+port)
        except socket.error:
            pass
            #print("INVALID IP",ip)
            
        dicter=dict()
        
        #print(spandio)
    print("GOT",len(ipovi),"IPS")
    return ipovi


############################
def loadoptions():
    try:
        return json.load(open('lifehacker.json', 'r'))["options"]
    except:
        print("Corrupted or missing json file. Generating default one...")
        defaultjsonoptions='''{"options":{
	"strcode":"dddddd",
	"pausetime":"0.3",
	"usetesseract":"f",
	"useproxy":"f",
	"useonlyproxy":"f",
	"imgsavefolder":"c:/prntscr/",
	"imgreadfolder":"c:/ocrread/",
	"imgtextfolder":"c:/ocrtext/",
	"imgtoreadfolder":"c:/ocrtoread/"
}}'''
        return json.loads(defaultjsonoptions)["options"]

def createpather(pather):
    while os.path.isdir(pather)==False:
        try:
            os.makedirs(pather)
        except:
            time.sleep(0.1)
            print("Can't create folder!!!")

    

def threaded_client(link,strcode,pather,yesno,proxyiji,useproxy,onlyproxy,boje,bojeamazont,options):
    retry=0
    retryn=0
    scraper=0
    proxy_host=""

    if onlyproxy.lower()=="t":
        minzaproxy=-1
    else:
        minzaproxy=1

    source_code=""
    #scraper = cfscrape.create_scraper()
    def testit(source_code,browserid):
        if source_code.find("503 Service Temporarily Unavailable")==-1 and source_code.find("Error - Timeout")==-1:
            #if browserid==3:
                #print("HEHEHEHEHEHEHEHEHEHEH")
                #print(source_code.find("503 Service Temporarily Unavailable"))
                #print(source_code)
                #print(source_code.find("503 Service Temporarily Unavailable"))
                #print("HEHEHEHEHEHEHEHEHEHEH")
            return True
        else:
            return False
    #freeproxservers="de fr nl no uk nj il".split()
    freeproxservers="de fr no nj".split()
    random.shuffle(freeproxservers)
    while retry==0 and retryn<10 and source_code=="" and scraper==0:
        retryn+=1
        try:
            browserid=1
            source_code=requests.get(link,headers={'User-Agent': 'Mozilla/5.0'}).content.decode()
            if testit(source_code,browserid)==True:
                break
            else:
                source_code=""
        except:
            print("request1error")
            pass



        
#        try:
#            browserid=2
#            source_code=requests.get("http://anonymouse.org/cgi-bin/anon-www.cgi/"+link).content.decode()
#
#                
#            if testit(source_code,browserid)==True:
#                break
#            else:
#                source_code=""
#        except:
#            print("request2error")
#            pass
        try:
            #freeproxservers="de il fr nl no uk nj".split()
            
            browserid=3
            #source_code=requests.get("https://www.filterbypass.me/s.php?k="+link).content.decode()
            #source_code=requests.get("http://webproxy.to/browse.php?u="+link).content.decode()
            #source_code=requests.get("http://prnt.sc.http.s71.wbprx.com/"+strcode).content.decode()
            sesija = requests.Session()
            sesija.headers['User-Agent'] = 'Mozilla/5.0'

            browser = RoboBrowser(history=True,parser='lxml',session=sesija)
            browser.open('https://www.proxfree.com/')
            form = browser.get_form(action='//de.proxfree.com/request.php?do=go')
            form.action='//de.proxfree.com/request.php?do=go'.replace("de",freeproxservers[0])
            
            form['get'].value = 'http://prnt.sc/'+strcode
            browser.submit_form(form)
            browser
            source_code=str(browser.parsed)
            #print(source_code)
            
            if testit(source_code,browserid)==True:
                break
            else:
                source_code=""
        except Exception as e:
            print("request3error", e, freeproxservers[0])
            pass
    retryn=0
    
    while retry==0 and retryn<2 and source_code=="" and scraper==1 and browserid!=3:
        retryn+=1
        try:
            source_code=scraper.get(link).content.decode()
            break
        except:
            print("errr4or")
            pass
        try:
            source_code=scraper.get("http://anonymouse.org/cgi-bin/anon-www.cgi/"+link).content.decode()
            break
        except:
            print("err00r")
            pass
    if source_code=="":
        print("hey source code is fuckedup",browserid)

        #if browserid==3:
        #    print(browser.parsed)
    #print(source_code)
##            
##
##
##        
##        lol=0
##        try:
##            if retryn==7:
##                lol=1
##                #print(link)
##                req = request.Request("http://anonymouse.org/cgi-bin/anon-www.cgi/"+link, headers={'User-Agent': 'Mozilla/5.0'})
##            else:
##                req = request.Request(link, headers={'User-Agent': 'Mozilla/5.1'})
##
##                    
##                
##            #print(link)
##
##            if retryn>minzaproxy:
##                if useproxy.lower()=="t" and lol==0:
##                    #print(proxyiji)
##                    random.shuffle(proxyiji)
##                    #print("no")
##                    proxy_host = proxyiji[0]
##                    #print(proxyiji)
##                    req.set_proxy(proxy_host, 'http')
##                    
##                    #print("Using proxy",proxy_host)
##
##            r = request.urlopen(req)
##            retry=1
##            if retryn>0:
##                pass
##                #print("SUCCESS",retryn,strcode)
##        except Exception as e:
##            print(e)
##            
##            
##            if retryn>0:
##                #print(strcode,retryn)
##                pass
##                #print("PROXY",retryn,proxy_host)
##            else:
##                pass
##                #print("ERROR",retryn,strcode)
##            retryn+=1
##            time.sleep(0.1)
##            
##
##    try:
##        bytecode = r.read()
##        source_code = bytecode.decode()
##        print(source_code)
##    except:
##        print("error")
##        exit()
        
    if source_code.find('img-fotki.yandex.ru/get/49649/5191850.0/0_173a7b_211be8ff_orig')!=-1:
        print("503",browserid,strcode)
        #threaded_client(link,strcode,pather,yesno,proxyiji,useproxy,onlyproxy,boje,bojeamazont,options)

    #if source_code.find("<title>503 Service Temporarily Unavailable</title>")!=-1:
    #    print("TOO EARLY")
    #    threaded_client(link,strcode,pather,yesno,proxyiji,useproxy,onlyproxy,boje,bojeamazont,options)
    #    exit()
####AAA1
 #   if browserid==3:
 #       dijeslika=source_code.find("image.prntscr.com/image/")
    #    slika=source_code[dijeslika:source_code.find('","',dijeslika+26)]

        #####AAA1 -3.7.2017 enkriptiran source???
    if source_code.find("0_173a7b_211be8ff.png")==-1:
        if browserid==3:
            dijeslika=source_code.find("/image/")
            slika=source_code[dijeslika+7:source_code.find('" n',dijeslika)]
            slika="image.prntscr.com/image/"+slika
            

        else:
            dijeslika=source_code.find("image.prntscr.com/image/")
            slika=source_code[dijeslika:source_code.find('"/>',dijeslika+26)]
        
        if len(slika)>64:
            dijeslika=source_code.find("image.prntscr.com/image/")
            slika=source_code[dijeslika:source_code.find('">',dijeslika+26)]
    else:
        print("PICTURE DELETED")
    if slika=="":
        print(source_code)
    #print(slika)
##    if int(source_code.find('<meta name="twitter:image:src" content="'))==-1:
##                    
##        slika=str(source_code[int(source_code.find('<meta name="twitter:image:src" content="'))+40:int(source_code.find('"/> <meta property="og'))])
##        #print (slika)
##        #print (slika[21:53])
##    else:
##        slika=str(source_code[int(source_code.find('<meta name="twitter:image:src" content="'))+40:int(source_code.find('"/> <meta property="og'))])
##        #print (slika)
##        #print (slika[19:26])
    slika=slika.replace(".http.s71.wbprx.com","")
    if slika[-4:]=="jpeg":
        imgname=strcode + slika[-5:]
        path = pather + strcode + slika[-5:]
    else:
        imgname=strcode + slika[-4:]
        path = pather + strcode + slika[-4:]
    
    #urllib.request.urlretrieve(request.Request(slika, headers={'User-Agent': 'Mozilla/5.0'}), path)
    #if slika=="":
    #    print(strcode)
    try:
        opener = urllib.request.URLopener()
    except:
        print("hah")
    
    opener.addheader('User-Agent', 'Mozilla/5.0')
    try:
        opener.retrieve("http://"+slika, path)
##        browser = RoboBrowser(history=True,parser='lxml')
##        browser.open('https://www.proxfree.com/')
##        form = browser.get_form(action='//de.proxfree.com/request.php?do=go')
##        form.action='//de.proxfree.com/request.php?do=go'.replace("de",freeproxservers[0])
##        
##        form['get'].value = "http://"+slika
##        browser.submit_form(form)
##        browser
##        content = browser.response.content
##        with open(path, "wb") as output:
##          output.write(content)
##          #print(path)
    except:
        try:
            
            sesija = requests.Session()
            sesija.headers['User-Agent'] = 'Mozilla/5.0'

            browser = RoboBrowser(history=True,parser='lxml',session=sesija)
            browser.open('https://www.proxfree.com/')
            form = browser.get_form(action='//de.proxfree.com/request.php?do=go')
            form.action='//de.proxfree.com/request.php?do=go'.replace("de",freeproxservers[0])
            
            form['get'].value = "http://"+slika
            browser.submit_form(form)
            browser
            content = browser.response.content
            with open(path, "wb") as output:
              output.write(content)
              print(path, "errori svudi",slika,browserid,freeproxservers[0])
            #opener.retrieve("http://"+slika, path)
            
        except:
            print("we failed twicez", strcode,browserid,slika,freeproxservers[0])
            #print(source_code)
        #print(source_code)
        #print("WE FAILED OPENERz", strcode,browserid,slika)
        return
    #print(path)
    start_new_thread(testpicture,(path,50,boje,strcode,pather,imgname,options["imgtoreadfolder"],options["imgtextfolder"],options["imgreadfolder"],bojeamazont))
    #multiprocessing.Process(target=testpicture,args=(path,50,boje,strcode,pather,imgname,options["imgtoreadfolder"],options["imgtextfolder"],options["imgreadfolder"],bojeamazont)).start()
    #print("a",path,"a")
    if yesno=="t":
        f = open(path, 'rb')
        slikadata=Image.open(f)
        ocrrr=pytesseract.image_to_string(slikadata)
        l=strcode+" ######################################################"+"\n"+ocrrr+"\n"
        open('ocr.txt', 'a').write(l)
def calculate(old,new,letter):
    razlika=list()
    for i in range(len(new)):
        razlika.append(letter.find(new[i])-letter.find(old[i]))
    razlika.reverse()
    ukupno=0
    x=0
    print(razlika)
    for i in razlika:
        ukupno+=i*(len(letter)**x)
        x+=1
    return ukupno
        
    
        
        

def main():
    novaslika=True
    #link="https://vanjavk.xyz/license/license.txt"
    #req = request.Request(link, headers={'User-Agent': 'Mozilla/5.0'})
    #r = request.urlopen(req)
    #licenselist=r.read().decode().split("\r\n")
    licenselist="vanjavk vanja borna".split()
    print(licenselist)
    
    boje=[(0, 138, 202),(235, 100, 31),(239, 239, 241),(239, 239, 240),(55, 164, 220),(21, 139, 200),(17,129,198),(0,138,201)]
    if "borna" not in licenselist:
        sys.exit()
        quit()
        exit(),
    bojeamazon=open('amazonboje.txt', 'r').read().split("\n")
    #print(bojeamazon[1])
    bojeamazont=list()
    for i in bojeamazon:
        bojeamazont.append(tuple(map(int, i.replace("(","").replace(" ","").replace(")","").split(','))))
    bojeamazont=list()
    #proxyiji=getips()
    proxyiji=list()
    options=loadoptions()
    strcode=options["strcode"]
    pather=options["imgsavefolder"]

    #pather=lh_options[1]
    #strcode = lh_options[0]
    #strcode =str(input())
    #strcode = 'c7fmt5'
            
    listcode=list(filter(None, strcode))

    letter = '0123456789abcdefghijklmnopqrstuvwxyz'
    print(listcode)
    emptydir=False
    print(os.path.isdir(pather))
    time.sleep(0.1)
    novisc=1000
    while emptydir==False:
        
        try:
            shutil.rmtree(pather, ignore_errors=True)
            createpather(pather)
            for dirpath, dirnames, files in os.walk(pather):
                print (dirpath, 'is empty')
                if not files:
                    emptydir=True
                    
                
            print("Deleted",pather)
            time.sleep(0.1)
        except:
            time.sleep(0.1)
            print("Can't delete folder&files, probably in use??")



    while os.path.isdir(pather)==False:
        try:
            os.makedirs(pather)
        except:
            time.sleep(0.1)
            print("Can't create folder!!!")
    while os.path.isdir(pather+"PSC")==False:
        try:
            os.makedirs(pather+"PSC")
        except:
            time.sleep(0.1)
            print("Can't create PSC folder!!!")
    while os.path.isdir(pather+"GTA")==False:
        try:
            os.makedirs(pather+"GTA")
        except:
            time.sleep(0.1)
            print("Can't create GTA folder!!!")
    while 1:
        while 1:
            while 1:
                while 1:
                    novisc+=1
                    strcode=''.join(str(e) for e in listcode)
                    link="http://prnt.sc/" + strcode
                    #refreshproxies=random.randint(1,1000)
                    #if refreshproxies==1:
                    #    proxyiji=getips()
                    #print(options["pausetime"])
                    
                    if "borna" in licenselist:
                        #print("hey")

                        #multiprocessing.Process(target=threaded_client,args=(link,strcode,pather,options["usetesseract"],proxyiji,options["useproxy"],options["useonlyproxy"],boje,bojeamazont,options)).start()
                        #proc.daemon=True
                        #print(options["pausetime"])
                        start_new_thread(threaded_client,(link,strcode,pather,options["usetesseract"],proxyiji,options["useproxy"],options["useonlyproxy"],boje,bojeamazont,options))
                    if novaslika==True:
                        if novisc>300:
                            old=listcode
                            new=list(getnewest())
                            
                            print(old)
                            razlikaslika=calculate(old,new,letter)
                            razlikavrijeme=razlikaslika*float(options["pausetime"])
                            if razlikavrijeme>10:
                                if razlikavrijeme>30:
                                    options["pausetime"]-=0.01
                                    if options["pausetime"]<0.06:
                                        options["pausetime"]=0.06
                                else:
                                    options["pausetime"]-=0.004
                                    if options["pausetime"]<0.06:
                                        options["pausetime"]=0.06
                                    
                            else:
                                options["pausetime"]+=0.004
                            if razlikavrijeme>100:
                                options["pausetime"]-=0.01
                                if options["pausetime"]<0.06:
                                    options["pausetime"]=0.06
                                listcode=new
                                print("got new pic", listcode)
                            elif razlikaslika>250:
                                listcode=new
                                print("got new pic", listcode)
                                
                                
                            print("You're late",razlikaslika,"pictures or",razlikavrijeme,"seconds at",options["pausetime"])
                            novisc=0
                            
                            time.sleep(2)
                    time.sleep(float(options["pausetime"]))
                    if listcode[5]=='z':
                        listcode[5]='0'
                        break
                    else:
                        listcode[5]=letter[int(letter.find(listcode[5]))+1]
                if listcode[4]=='z':
                    listcode[4]='0'
                    break
                else:
                    listcode[4]=letter[int(letter.find(listcode[4]))+1]
            if listcode[3]=='z':
                listcode[3]='0'
                break
            else:
                listcode[3]=letter[int(letter.find(listcode[3]))+1]
        if listcode[2]=='z':
            listcode[2]='0'
            break
        else:
            listcode[2]=letter[int(letter.find(listcode[2]))+1]                            
if __name__ == '__main__':
    main()                   
                        
