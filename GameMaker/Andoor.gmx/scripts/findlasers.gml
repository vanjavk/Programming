leveldata = explode_script(global.currentlevel)

currentx=0
currenty=0
for (i=1; i<=273; i+=1){
if(leveldata[i]==13){
dolaser(currentx,currenty,olazordown,0,30)
}
if (currentx==600){
currentx=0;
currenty+=30;
} else{
currentx+=30;
}
}

currentx=0
currenty=0
for (i=1; i<=273; i+=1){
if(leveldata[i]==12){
dolaser(currentx,currenty,olazorright,30,0)
}
if (currentx==600){
currentx=0;
currenty+=30;
} else{
currentx+=30;
}
}

currentx=0
currenty=0
for (i=1; i<=273; i+=1){
if(leveldata[i]==14){
dolaser(currentx,currenty,olazorleft,-30,0)
}
if (currentx==600){
currentx=0;
currenty+=30;
} else{
currentx+=30;
}
}


currentx=0
currenty=0
for (i=1; i<=273; i+=1){
if(leveldata[i]==15){
dolaser(currentx,currenty,olazorup,0,-30)
}
if (currentx==600){
currentx=0;
currenty+=30;
} else{
currentx+=30;
}
}
