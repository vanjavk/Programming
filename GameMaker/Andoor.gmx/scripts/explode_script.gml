var currentlevel;
currentlevel = argument0
for (i=1; i<=1200; i+=1){
    noviblokzarez = string_pos(",",currentlevel)
    newblock=string_copy(currentlevel,1,noviblokzarez-1)
    currentlevel=string_delete(currentlevel,1,noviblokzarez)
    leveeltmp[i]=real(newblock)
}
leveeltmp[1200]=2
return leveeltmp;
