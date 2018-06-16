leveldata = argument0
currentx=0
currenty=0

for (i=1; i<=273; i+=1){

if(leveldata[i]==2){
show_debug_message("currentstring"+i);
show_debug_message(leveldata[i]);
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==3){
global.playerpos=i
global.playerobj = instance_create(currentx,currenty,oplayer);}
else if(leveldata[i]==4){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==5){
tmp = instance_create(currentx,currenty,ogold);}
else if(leveldata[i]==6){
tmp = instance_create(currentx,currenty,ostatue);}
else if(leveldata[i]==7){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==8){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==9){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==10){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==11){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==12){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==13){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==14){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==15){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==16){
tmp = instance_create(currentx,currenty,oball);}
else if(leveldata[i]==17){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==18){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==19){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==20){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==21){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==22){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==23){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==24){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==25){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==26){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==27){
tmp = instance_create(currentx,currenty,owall);}
else if(leveldata[i]==28){
tmp = instance_create(currentx,currenty,owall);}




myyobjects[i]= tmp;


if (currentx==600){
currentx=0;
currenty+=30;
} else{
currentx+=30;
}
}
return myyobjects;
