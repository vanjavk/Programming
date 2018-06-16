global.leveleditorstring=""
currentx=0
currenty=0
for (i=1; i<=273; i+=1){
if(currenty=0){
tamoid= instance_position(currentx+15, currenty+22, all );
}else{
tamoid= instance_position(currentx+15, currenty+13, all );
}

if (tamoid>0){
tamoname = object_get_name(tamoid.object_index)
}else{
tamoname = "ospace"
}

if(tamoname=="owall"){
global.leveleditorstring+="2"
}else if(tamoname=="oplayere"){
global.leveleditorstring+="3"
}else if(tamoname=="oqueen"){
global.leveleditorstring+="4"
}else if(tamoname=="ogold"){
global.leveleditorstring+="5"
}else if(tamoname=="osand"){
global.leveleditorstring+="6"
}else if(tamoname=="ostatue"){
global.leveleditorstring+="7"
}else if(tamoname=="oball"){
global.leveleditorstring+="8"
}else if(tamoname=="ostatueblock"){
global.leveleditorstring+="9"
}else if(tamoname=="oballblock"){
global.leveleditorstring+="10"
}else if(tamoname=="ostatueballblock"){
global.leveleditorstring+="11"
}else if(tamoname=="olaserright"){
global.leveleditorstring+="12"
}else if(tamoname=="olaserdown"){
global.leveleditorstring+="13"
}else if(tamoname=="olaserleft"){
global.leveleditorstring+="14"
}else if(tamoname=="olaserup"){
global.leveleditorstring+="15"
}else if(tamoname=="oredright"){
global.leveleditorstring+="16"
}else if(tamoname=="oreddown"){
global.leveleditorstring+="17"
}else if(tamoname=="oredleft"){
global.leveleditorstring+="18"
}else if(tamoname=="oredup"){
global.leveleditorstring+="19"
}else if(tamoname=="oredrightleft"){
global.leveleditorstring+="20"
}else if(tamoname=="oredupdown"){
global.leveleditorstring+="21"
}else if(tamoname=="oyellowright"){
global.leveleditorstring+="22"
}else if(tamoname=="oyellowdown"){
global.leveleditorstring+="23"
}else if(tamoname=="oyellowleft"){
global.leveleditorstring+="24"
}else if(tamoname=="oyellowup"){
global.leveleditorstring+="25"
}else if(tamoname=="oyellowrightleft"){
global.leveleditorstring+="26"
}else if(tamoname=="oyellowupdown"){
global.leveleditorstring+="27"
}else if(tamoname=="ogreenright"){
global.leveleditorstring+="28"
}else if(tamoname=="ogreendown"){
global.leveleditorstring+="29"
}else if(tamoname=="ogreenleft"){
global.leveleditorstring+="30"
}else if(tamoname=="ogreenup"){
global.leveleditorstring+="31"
}else if(tamoname=="ogreenrightleft"){
global.leveleditorstring+="32"
}else if(tamoname=="ogreenupdown"){
global.leveleditorstring+="33"
}else if(tamoname=="oteleport11"){
global.leveleditorstring+="34"
}else if(tamoname=="oteleport12"){
global.leveleditorstring+="35"
}else if(tamoname=="oteleport21"){
global.leveleditorstring+="36"
}else if(tamoname=="oteleport22"){
global.leveleditorstring+="37"
}else if(tamoname=="oI_rot"){
global.leveleditorstring+="38"
}else if(tamoname=="o_Irot"){
global.leveleditorstring+="39"
}else if(tamoname=="obutton"){
global.leveleditorstring+="40"
}else{
global.leveleditorstring+="1"
}
global.leveleditorstring+=","





if (currentx==600){
currentx=0;
currenty+=30;
} else{
currentx+=30;
}
}
analytics_event_ext("Level editor string", global.leveleditorstring)
