leveldata = argument0
currentx=0
currenty=0

for (i=1; i<=273; i+=1){

if(leveldata[i]==2){
instance_create(currentx,currenty,owall);}
else if(leveldata[i]==3){
global.playerpos=i
if(global.loadlevel==false){
instance_create(currentx,currenty,oplayer);}
else if(global.loadlevel==true){
instance_create(currentx,currenty,oplayere);
}}
else if(leveldata[i]==4){
instance_create(currentx,currenty,oqueen);}
else if(leveldata[i]==5){
instance_create(currentx,currenty,ogold);}
else if(leveldata[i]==6){
instance_create(currentx,currenty,osand);}
else if(leveldata[i]==7){
instance_create(currentx,currenty,ostatue);}
else if(leveldata[i]==8){
instance_create(currentx,currenty,oball);}
else if(leveldata[i]==9){
instance_create(currentx,currenty,ostatueblock);}
else if(leveldata[i]==10){
instance_create(currentx,currenty,oballblock);}
else if(leveldata[i]==11){
instance_create(currentx,currenty,ostatueballblock);}
else if(leveldata[i]==12){
instance_create(currentx,currenty,olaserright);}
else if(leveldata[i]==13){
instance_create(currentx,currenty,olaserdown);}
else if(leveldata[i]==14){
instance_create(currentx,currenty,olaserleft);}
else if(leveldata[i]==15){
instance_create(currentx,currenty,olaserup);}
else if(leveldata[i]==16){
instance_create(currentx,currenty,oredright);}
else if(leveldata[i]==17){
instance_create(currentx,currenty,oreddown);}
else if(leveldata[i]==18){
instance_create(currentx,currenty,oredleft);}
else if(leveldata[i]==19){
instance_create(currentx,currenty,oredup);}
else if(leveldata[i]==20){
instance_create(currentx,currenty,oredrightleft);}
else if(leveldata[i]==21){
instance_create(currentx,currenty,oredupdown);}
else if(leveldata[i]==22){
instance_create(currentx,currenty,oyellowright);}
else if(leveldata[i]==23){
instance_create(currentx,currenty,oyellowdown);}
else if(leveldata[i]==24){
instance_create(currentx,currenty,oyellowleft);}
else if(leveldata[i]==25){
instance_create(currentx,currenty,oyellowup);}
else if(leveldata[i]==26){
instance_create(currentx,currenty,oyellowrightleft);}
else if(leveldata[i]==27){
instance_create(currentx,currenty,oyellowupdown);}
else if(leveldata[i]==28){
instance_create(currentx,currenty,ogreenright);}
else if(leveldata[i]==29){
instance_create(currentx,currenty,ogreendown);}
else if(leveldata[i]==30){
instance_create(currentx,currenty,ogreenleft);}
else if(leveldata[i]==31){
instance_create(currentx,currenty,ogreenup);}
else if(leveldata[i]==32){
instance_create(currentx,currenty,ogreenrightleft);}
else if(leveldata[i]==33){
instance_create(currentx,currenty,ogreenupdown);}
else if(leveldata[i]==34){
instance_create(currentx,currenty,oteleport11);
global.teleport11x=currentx
global.teleport11y=currenty}
else if(leveldata[i]==35){
instance_create(currentx,currenty,oteleport12);
global.teleport12x=currentx
global.teleport12y=currenty}
else if(leveldata[i]==36){
instance_create(currentx,currenty,oteleport21);
global.teleport21x=currentx
global.teleport21y=currenty}
else if(leveldata[i]==37){
instance_create(currentx,currenty,oteleport22);
global.teleport22x=currentx
global.teleport22y=currenty}
else if(leveldata[i]==38){
instance_create(currentx,currenty,oI_rot);}
else if(leveldata[i]==39){
instance_create(currentx,currenty,o_Irot);}
else if(leveldata[i]==40){
instance_create(currentx,currenty,obutton);}


myyobjects=1

if (currentx==600){
currentx=0;
currenty+=30;
} else{
currentx+=30;
}
}
return myyobjects;
