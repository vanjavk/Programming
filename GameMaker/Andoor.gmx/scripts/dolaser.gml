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
if(instance_position(varx+direkcijax+15, vary+direkcijay+15, oI_rot)!=noone){
    nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, oI_rot)}
if(instance_position(varx+direkcijax+15, vary+direkcijay+15, o_Irot)!=noone){
    nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, o_Irot)}
if (nexttomeid>0){
nexttomename = object_get_name(nexttomeid.object_index)
}else{
nexttomename = "ospace"
}
kolkoputa=1

while(nexttomename == "ospace" or nexttomename == "oI_rot" or nexttomename == "o_Irot"){
if (nexttomename == "oI_rot"){
varx=varx+direkcijax
vary=vary+direkcijay
    if (direkcijax==30){
    direkcijax=0
    direkcijay=30
    instance_create(varx, vary, oI_right)
    }
    else if (direkcijax== -30){
    direkcijax=0
    direkcijay= -30
    instance_create(varx, vary, oI_left)
    }
    else if (direkcijay==30){
    direkcijax=30
    direkcijay=0
    instance_create(varx, vary, oI_down)
    }
    else if (direkcijay== -30){
    direkcijax= -30
    direkcijay=0
    instance_create(varx, vary, oI_up)
    }
}else if(nexttomename == "o_Irot"){
varx=varx+direkcijax
vary=vary+direkcijay
    if (direkcijax==30){
    direkcijax=0
    direkcijay= -30
    instance_create(varx, vary, o_Iright)
    }
    else if (direkcijax== -30){
    direkcijax=0
    direkcijay=30
    instance_create(varx, vary, o_Ileft)
    }
    else if (direkcijay==30){
    direkcijax= -30
    direkcijay=0
    instance_create(varx, vary, o_Idown)
    }
    else if (direkcijay== -30){
    direkcijax=30
    direkcijay=0
    instance_create(varx, vary, o_Iup)
    }
}
if (direkcijax==30){
lazer=olazorright
}else if (direkcijax== -30){
lazer=olazorleft
}else if (direkcijay==30){
lazer=olazordown
}else if (direkcijay== -30){
lazer=olazorup
}
if (nexttomename == "ospace"){
instance_create(varx+direkcijax, vary+direkcijay,lazer)
varx=varx+direkcijax
vary=vary+direkcijay}
nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, all );
if(instance_position(varx+direkcijax+15, vary+direkcijay+15, ostatue)!=noone){
    nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, ostatue )}
if(instance_position(varx+direkcijax+15, vary+direkcijay+15, oball)!=noone){
    nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, oball)}
if(instance_position(varx+direkcijax+15, vary+direkcijay+15, oplayer)!=noone){
    nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, oplayer)}
if(instance_position(varx+direkcijax+15, vary+direkcijay+15, oI_rot)!=noone){
    nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, oI_rot)}
if(instance_position(varx+direkcijax+15, vary+direkcijay+15, o_Irot)!=noone){
    nexttomeid = instance_position(varx+direkcijax+15, vary+direkcijay+15, o_Irot)}
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
