var currentlevel;
global.explodedpotezi=0
//Argumente zu Variablen
poteziinput = argument0
global.brojpoteza=string_length(string(poteziinput))
for (i=1; i<=global.brojpoteza+1; i+=1){
    newblock=string_copy(poteziinput,1,1)
    poteziinput=string_delete(poteziinput,1,1)
    global.explodedpotezi[i]=real(newblock)
}

