currenntx=0
currennty=0
for (i=1; i<=273; i+=1){

if(instance_position(currenntx+15, currennty+15, oI_rot)!=noone){
    nextttomeid = instance_position(currenntx+15, currennty+15, oI_rot)}
else if(instance_position(currenntx+15, currennty+15, o_Irot)!=noone){
    nextttomeid = instance_position(currenntx+15, currennty+15, o_Irot)
}
else{nextttomeid=0}
    
if (nextttomeid>0){
nextttomename = object_get_name(nextttomeid.object_index)
}else{
nextttomename = "none"
}


if (nextttomename=="o_Irot"){
with(nextttomeid){instance_destroy()};
instance_create(currenntx, currennty, oI_rot)
}
else if (nextttomename=="oI_rot"){
with(nextttomeid){instance_destroy()};
instance_create(currenntx, currennty, o_Irot)
}



if (currenntx==600){
currenntx=0;
currennty+=30;
} else{
currenntx+=30;
}
}
