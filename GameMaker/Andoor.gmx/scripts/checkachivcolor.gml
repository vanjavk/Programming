arrg = argument0
if (global.language=="ENG"){
tekst="Moves: "
}else if(global.language=="HR"){
tekst="Potezi: "
}
if (arrg==0){
draw_set_color(c_red);
}else if(arrg==1){
draw_set_color(c_green);
}else if(arrg==2){
draw_set_color(c_yellow);
}else{
draw_set_color(c_white);
if (global.language=="ENG"){
tekst="ERROR?? "
}else if(global.language=="HR"){
tekst="GREŠKA?? "
}
}






return tekst
