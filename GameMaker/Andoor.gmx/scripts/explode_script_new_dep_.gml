var currentlevel;

//Argumente zu Variablen
currentlevel = argument0
for (i=1; i<=273; i+=1){
    noviblokzarez = string_pos(",",currentlevel)
    newblock=string_copy(currentlevel,1,noviblokzarez-1)
    currentlevel=string_delete(currentlevel,1,noviblokzarez)
    if(newblock==3){
    leveeltmp[i]=newblock}
    else{leveeltmp[i]=1}
}
leveeltmp[273]=2
return leveeltmp;
