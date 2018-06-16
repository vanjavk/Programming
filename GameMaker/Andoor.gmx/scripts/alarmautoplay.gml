if (global.playercanplay==false){
if(global.explodedpotezi[global.explodedpotezii]==1){
move(30,0)
colorize()}
else if(global.explodedpotezi[global.explodedpotezii]==2){
move(-30,0)
colorize()}
else if(global.explodedpotezi[global.explodedpotezii]==3){
move(0,-30)
colorize()}
else if(global.explodedpotezi[global.explodedpotezii]==4){
move(0,30)
colorize()}
global.explodedpotezii=global.explodedpotezii+1
if(global.explodedpotezii>global.brojpoteza){
global.playercanplay=true
global.autoplaying=false}}
else{
global.autoplaying=false}
