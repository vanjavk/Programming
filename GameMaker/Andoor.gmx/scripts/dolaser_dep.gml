varx=argument0
vary=argument1
lazer=argument2
direkcijax=argument3
direkcijay=argument4


nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, all );
if(instance_position(varx+direkcijax+15, vary+direkcijay+15, ostatue)!=noone){
    nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, ostatue )}
if(instance_position(varx+direkcijax+15, vary+direkcijay+15, oball)!=noone){
    nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, oball)}
if(instance_position(varx+direkcijax+15, vary+direkcijay+15, oplayer)!=noone){
    nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, oplayer)}
if (nexttomeid>0){
nexttomename = object_get_name(nexttomeid.object_index)
}else{
nexttomename = "ospace"
}
kolkoputa=1

while(nexttomename = "ospace" or nexttomename = "oI_rot" or nexttomename = "o_Irot"){
instance_create(varx+direkcijax*kolkoputa, vary+direkcijay*kolkoputa,lazer)
kolkoputa=kolkoputa+1
nexttomeid = instance_position(varx+direkcijax*kolkoputa+15, vary+direkcijay*kolkoputa+15, all );
if(instance_position(varx+direkcijax*kolkoputa+15, vary+direkcijay*kolkoputa+15, ostatue)!=noone){
    nexttomeid = instance_position(varx+direkcijax*kolkoputa+15, vary+direkcijay*kolkoputa+15, ostatue )}
if(instance_position(varx+direkcijax*kolkoputa+15, vary+direkcijay*kolkoputa+15, oball)!=noone){
    nexttomeid = instance_position(varx+direkcijax*kolkoputa+15, vary+direkcijay*kolkoputa+15, oball)}
if(instance_position(varx+direkcijax*kolkoputa+15, vary+direkcijay*kolkoputa+15, oplayer)!=noone){
    nexttomeid = instance_position(varx+direkcijax*kolkoputa+15, vary+direkcijay*kolkoputa+15, oplayer)}
if (nexttomeid>0){
nexttomename = object_get_name(nexttomeid.object_index)
}else{
nexttomename = "ospace"
}
}
if(nexttomename = "oplayer"){
electricmove();
room_restart();
}
