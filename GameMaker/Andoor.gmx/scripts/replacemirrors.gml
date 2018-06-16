currentx=0
currenty=0
for (i=1; i<=273; i+=1){
nexttomeid=global.mirrordata[i]
show_debug_message(nexttomeid)
nexttomename = object_get_name(nexttomeid.object_index)
if (nexttomename==o_Irot){
with(nexttomeid){instance_destroy()}
instance_create(currentx, currenty, oI_rot)
}
else if (nexttomename==oI_rot){
with(nexttomeid){instance_destroy()}
instance_create(currentx, currenty, o_Irot)
}

if (currentx==600){
currentx=0;
currenty+=30;
} else{
currentx+=30;
}
}
