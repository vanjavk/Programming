colorize()
direkcijax=argument0
direkcijay=argument1
willmove=false
if direkcijax>0{
global.potezinum=global.potezi+"right,"
global.potezi=global.potezi+"1"
}
if direkcijax<0{
global.potezinum=global.potezi+"left,"
global.potezi=global.potezi+"2"
}
if direkcijay<0{
global.potezinum=global.potezi+"up,"
global.potezi=global.potezi+"3"
}
if direkcijay>0{
global.potezinum=global.potezi+"down,"
global.potezi=global.potezi+"4"
}


//selfid = instance_position(x+15, y+15, oplayer);
nexttomeid = instance_position(x+direkcijax+15, y+direkcijay+15, all );
if(instance_position(x+direkcijax+15, y+direkcijay+15, ostatue)!=noone){
    nexttomeid = instance_position(x+direkcijax+15, y+direkcijay+15, ostatue )}
if(instance_position(x+direkcijax+15, y+direkcijay+15, oball)!=noone){
    nexttomeid = instance_position(x+direkcijax+15, y+direkcijay+15, oball)}
nexttome2id = instance_position(x+direkcijax*2+15, y+direkcijay*2+15, all );
if(instance_position(x+direkcijax*2+15, y+direkcijay*2+15, ostatue)!=noone){
    nexttome2id = instance_position(x+direkcijax*2+15, y+direkcijay*2+15, ostatue )}
if(instance_position(x+direkcijax*2+15, y+direkcijay*2+15, oball)!=noone){
    nexttome2id = instance_position(x+direkcijax*2+15, y+direkcijay*2+15, oball)}
//show_debug_message(nexttomeid)
//nexttomename = object_get_name(nexttomeid.object_index)
if (nexttomeid>0){
nexttomename = object_get_name(nexttomeid.object_index)
}else{
nexttomename = "ospace"
}
if (nexttome2id>0){
nexttome2name = object_get_name(nexttome2id.object_index)
}else{
nexttome2name = "ospace"
}
//nexttome2name = object_get_name(nexttome2id.object_index)
//show_debug_message(nexttomename)


if(nexttomename=="owall"){
//self.x=x+direkcijax
//self.y=y+direkcija
}else if(nexttomename=="oqueen"){

if(!instance_exists(ogold)){

if(global.currentlevelname=="oblevel1"){
if (string_length(global.potezi)<string_length(global.obl1) or string_length(global.obl1)<2){
global.obl1=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl1',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel2"){
if (string_length(global.potezi)<string_length(global.obl2) or string_length(global.obl2)<2){
global.obl2=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl2',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel3"){
if (string_length(global.potezi)<string_length(global.obl3) or string_length(global.obl3)<2){
global.obl3=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl3',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel4"){
if (string_length(global.potezi)<string_length(global.obl4) or string_length(global.obl4)<2){
global.obl4=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl4',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel5"){
if (string_length(global.potezi)<string_length(global.obl5) or string_length(global.obl5)<2){
global.obl5=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl5',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel6"){
if (string_length(global.potezi)<string_length(global.obl6) or string_length(global.obl6)<2){
global.obl6=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl6',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel7"){
if (string_length(global.potezi)<string_length(global.obl7) or string_length(global.obl7)<2){
global.obl7=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl7',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel8"){
if (string_length(global.potezi)<string_length(global.obl8) or string_length(global.obl8)<2){
global.obl8=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl8',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel9"){
if (string_length(global.potezi)<string_length(global.obl9) or string_length(global.obl9)<2){
global.obl9=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl9',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel10"){
if (string_length(global.potezi)<string_length(global.obl10) or string_length(global.obl10)<2){
global.obl10=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl10',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel11"){
if (string_length(global.potezi)<string_length(global.obl11) or string_length(global.obl11)<2){
global.obl11=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl11',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel12"){
if (string_length(global.potezi)<string_length(global.obl12) or string_length(global.obl12)<2){
global.obl12=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl12',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel13"){
if (string_length(global.potezi)<string_length(global.obl13) or string_length(global.obl13)<2){
global.obl13=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl13',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel14"){
if (string_length(global.potezi)<string_length(global.obl14) or string_length(global.obl14)<2){
global.obl14=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl14',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel15"){
if (string_length(global.potezi)<string_length(global.obl15) or string_length(global.obl15)<2){
global.obl15=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl15',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel16"){
if (string_length(global.potezi)<string_length(global.obl16) or string_length(global.obl16)<2){
global.obl16=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl16',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel17"){
if (string_length(global.potezi)<string_length(global.obl17) or string_length(global.obl17)<2){
global.obl17=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl17',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel18"){
if (string_length(global.potezi)<string_length(global.obl18) or string_length(global.obl18)<2){
global.obl18=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl18',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel19"){
if (string_length(global.potezi)<string_length(global.obl19) or string_length(global.obl19)<2){
global.obl19=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl19',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel20"){
if (string_length(global.potezi)<string_length(global.obl20) or string_length(global.obl20)<2){
global.obl20=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl20',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel21"){
if (string_length(global.potezi)<string_length(global.obl21) or string_length(global.obl21)<2){
global.obl21=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl21',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel22"){
if (string_length(global.potezi)<string_length(global.obl22) or string_length(global.obl22)<2){
global.obl22=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl22',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel23"){
if (string_length(global.potezi)<string_length(global.obl23) or string_length(global.obl23)<2){
global.obl23=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl23',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel24"){
if (string_length(global.potezi)<string_length(global.obl24) or string_length(global.obl24)<2){
global.obl24=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl24',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oblevel25"){
if (string_length(global.potezi)<string_length(global.obl25) or string_length(global.obl25)<2){
global.obl25=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','obl25',global.potezi);
ini_close()}
}
if(global.currentlevelname=="oelevel1"){
if (string_length(global.potezi)<string_length(global.oel1) or string_length(global.oel1)<2){
global.oel1=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel1',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel2"){
if (string_length(global.potezi)<string_length(global.oel2) or string_length(global.oel2)<2){
global.oel2=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel2',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel3"){
if (string_length(global.potezi)<string_length(global.oel3) or string_length(global.oel3)<2){
global.oel3=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel3',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel4"){
if (string_length(global.potezi)<string_length(global.oel4) or string_length(global.oel4)<2){
global.oel4=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel4',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel5"){
if (string_length(global.potezi)<string_length(global.oel5) or string_length(global.oel5)<2){
global.oel5=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel5',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel6"){
if (string_length(global.potezi)<string_length(global.oel6) or string_length(global.oel6)<2){
global.oel6=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel6',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel7"){
if (string_length(global.potezi)<string_length(global.oel7) or string_length(global.oel7)<2){
global.oel7=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel7',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel8"){
if (string_length(global.potezi)<string_length(global.oel8) or string_length(global.oel8)<2){
global.oel8=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel8',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel9"){
if (string_length(global.potezi)<string_length(global.oel9) or string_length(global.oel9)<2){
global.oel9=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel9',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel10"){
if (string_length(global.potezi)<string_length(global.oel10) or string_length(global.oel10)<2){
global.oel10=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel10',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel11"){
if (string_length(global.potezi)<string_length(global.oel11) or string_length(global.oel11)<2){
global.oel11=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel11',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel12"){
if (string_length(global.potezi)<string_length(global.oel12) or string_length(global.oel12)<2){
global.oel12=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel12',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel13"){
if (string_length(global.potezi)<string_length(global.oel13) or string_length(global.oel13)<2){
global.oel13=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel13',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel14"){
if (string_length(global.potezi)<string_length(global.oel14) or string_length(global.oel14)<2){
global.oel14=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel14',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel15"){
if (string_length(global.potezi)<string_length(global.oel15) or string_length(global.oel15)<2){
global.oel15=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel15',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel16"){
if (string_length(global.potezi)<string_length(global.oel16) or string_length(global.oel16)<2){
global.oel16=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel16',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel17"){
if (string_length(global.potezi)<string_length(global.oel17) or string_length(global.oel17)<2){
global.oel17=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel17',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel18"){
if (string_length(global.potezi)<string_length(global.oel18) or string_length(global.oel18)<2){
global.oel18=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel18',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel19"){
if (string_length(global.potezi)<string_length(global.oel19) or string_length(global.oel19)<2){
global.oel19=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel19',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel20"){
if (string_length(global.potezi)<string_length(global.oel20) or string_length(global.oel20)<2){
global.oel20=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel20',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel21"){
if (string_length(global.potezi)<string_length(global.oel21) or string_length(global.oel21)<2){
global.oel21=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel21',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel22"){
if (string_length(global.potezi)<string_length(global.oel22) or string_length(global.oel22)<2){
global.oel22=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel22',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel23"){
if (string_length(global.potezi)<string_length(global.oel23) or string_length(global.oel23)<2){
global.oel23=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel23',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel24"){
if (string_length(global.potezi)<string_length(global.oel24) or string_length(global.oel24)<2){
global.oel24=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel24',global.potezi);
ini_close()}
}else if(global.currentlevelname=="oelevel25"){
if (string_length(global.potezi)<string_length(global.oel25) or string_length(global.oel25)<2){
global.oel25=global.potezi
ini_open('save.ini')
    ini_write_string('SLOT1','oel25',global.potezi);
ini_close()}
}








checkachiv()
nextlevel()

if(global.currentlevelname=="otlevel2"){
room_goto(pretut2)}
else if(global.currentlevelname=="otlevel3"){
room_goto(pretut3)}
else if(global.currentlevelname=="otlevel4"){
room_goto(pretut4)}
else if(global.currentlevelname=="otlevel5"){
room_goto(pretut5)}
else if(global.currentlevelname=="otlevel6"){
room_goto(pretut6)}
else
{room_restart()}}
}else if(nexttomename=="ogold"){
with(nexttomeid){instance_destroy()}
goldmove();
willmove=true
}else if(nexttomename=="osand"){
with(nexttomeid){instance_destroy()}
sandmove();
willmove=true
}else if(nexttomename=="ostatue"){
if(nexttome2name=="ospace" or nexttome2id==noone or nexttome2name=="ostatueballblock" or nexttome2name=="ostatueblock" or nexttome2name=="olazordown" or nexttome2name=="olazorup" or nexttome2name=="olazorleft" or nexttome2name=="olazorright" or nexttome2name=="obutton"){
if(nexttome2name=="ostatueballblock" or nexttome2name=="ostatueblock"){
chainmove();}else if(nexttome2name=="obutton"){
findanddomirrors();
}
with(nexttome2id){instance_destroy()
heavymove();}
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="ogreenright" or nexttome2name=="ogreenrightleft") and direkcijax==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="ogreenleft" or nexttome2name=="ogreenrightleft") and direkcijax==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="ogreendown" or nexttome2name=="ogreenupdown") and direkcijay==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="ogreenup" or nexttome2name=="ogreenupdown") and direkcijay==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="oredright" or nexttome2name=="oredrightleft") and direkcijax==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="oredleft" or nexttome2name=="oredrightleft") and direkcijax==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="oreddown" or nexttome2name=="oredupdown") and direkcijay==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="oredup" or nexttome2name=="oredupdown") and direkcijay==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="oyellowright" or nexttome2name=="oyellowrightleft") and direkcijax==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="oyellowleft" or nexttome2name=="oyellowrightleft") and direkcijax==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="oyellowdown" or nexttome2name=="oyellowupdown") and direkcijay==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttome2name=="oyellowup" or nexttome2name=="oyellowupdown") and direkcijay==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}
}else if(nexttomename=="oball"){
kolkoputa=3
moveagain=true
nexttoballid=nexttome2id
nexttoballname=nexttome2name
while(moveagain==true){
if(nexttoballname=="ospace" or nexttoballid==noone or nexttoballname=="ostatueballblock" or nexttoballname=="oballblock" or nexttoballname=="olazordown" or nexttoballname=="olazorup" or nexttoballname=="olazorleft" or nexttoballname=="olazorright" or nexttoballname=="obutton"){
if(nexttoballname=="ostatueballblock" or nexttoballname=="oballblock"){
chainmove();
}else if(nexttoballname=="obutton"){
findanddomirrors();
}
with(nexttoballid){instance_destroy()
heavymove();}
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="ogreenright" or nexttoballname=="ogreenrightleft") and direkcijax==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="ogreenleft" or nexttoballname=="ogreenrightleft") and direkcijax==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="ogreendown" or nexttoballname=="ogreenupdown") and direkcijay==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="ogreenup" or nexttoballname=="ogreenupdown") and direkcijay==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="oredright" or nexttoballname=="oredrightleft") and direkcijax==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="oredleft" or nexttoballname=="oredrightleft") and direkcijax==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="oreddown" or nexttoballname=="oredupdown") and direkcijay==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="oredup" or nexttoballname=="oredupdown") and direkcijay==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="oyellowright" or nexttoballname=="oyellowrightleft") and direkcijax==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="oyellowleft" or nexttoballname=="oyellowrightleft") and direkcijax==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="oyellowdown" or nexttoballname=="oyellowupdown") and direkcijay==30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else if((nexttoballname=="oyellowup" or nexttoballname=="oyellowupdown") and direkcijay==-30){
nexttomeid.x=nexttomeid.x+direkcijax
nexttomeid.y=nexttomeid.y+direkcijay
heavymove();
}else{
moveagain=false
}
nexttoballid = instance_position(x+direkcijax*kolkoputa+15, y+direkcijay*kolkoputa+15, all );
if(instance_position(x+direkcijax*kolkoputa+15, y+direkcijay*kolkoputa+15, ostatue)!=noone){
    nexttoballid = instance_position(x+direkcijax*kolkoputa+15, y+direkcijay*kolkoputa+15, ostatue )}
if(instance_position(x+direkcijax*kolkoputa+15, y+direkcijay*kolkoputa+15, oball)!=noone){
    nexttoballid = instance_position(x+direkcijax*kolkoputa+15, y+direkcijay*kolkoputa+15, oball)}
if (nexttoballid>0){
nexttoballname = object_get_name(nexttoballid.object_index)
}else{
nexttoballname = "ospace"
}
kolkoputa=kolkoputa+1
}
}else if((nexttomename=="oredright" or nexttomename=="oredrightleft") and direkcijax==30){
willmove=true
}else if((nexttomename=="oredleft" or nexttomename=="oredrightleft") and direkcijax==-30){
willmove=true
}else if((nexttomename=="oreddown" or nexttomename=="oredupdown") and direkcijay==30){
willmove=true
}else if((nexttomename=="oredup" or nexttomename=="oredupdown") and direkcijay==-30){
willmove=true
}else if((nexttomename=="oyellowright" or nexttomename=="oyellowrightleft") and direkcijax==30){
willmove=true
}else if((nexttomename=="oyellowleft" or nexttomename=="oyellowrightleft") and direkcijax==-30){
willmove=true
}else if((nexttomename=="oyellowdown" or nexttomename=="oyellowupdown") and direkcijay==30){
willmove=true
}else if((nexttomename=="oyellowup" or nexttomename=="oyellowupdown") and direkcijay==-30){
willmove=true
}else if((nexttomename=="ogreenright" or nexttomename=="ogreenrightleft") and direkcijax==30){
willmove=true
}else if((nexttomename=="ogreenleft" or nexttomename=="ogreenrightleft") and direkcijax==-30){
willmove=true
}else if((nexttomename=="ogreendown" or nexttomename=="ogreenupdown") and direkcijay==30){
willmove=true
}else if((nexttomename=="ogreenup" or nexttomename=="ogreenupdown") and direkcijay==-30){
willmove=true
}else if(nexttomename=="ospace" or nexttomeid==noone){
willmove=true
}else if(nexttomename=="oteleport11"){
willmove=false
self.x=global.teleport12x
self.y=global.teleport12y
telemove()
}else if(nexttomename=="oteleport12"){
willmove=false
self.x=global.teleport11x
self.y=global.teleport11y
telemove()
}else if(nexttomename=="oteleport21"){
willmove=false
self.x=global.teleport22x
self.y=global.teleport22y
telemove()
}else if(nexttomename=="oteleport22"){
willmove=false
self.x=global.teleport21x
self.y=global.teleport21y
telemove()
}else if(nexttomename=="obutton"){
with(nexttomeid){instance_destroy()}
willmove=true
findanddomirrors()
}else{
willmove=false}
greenhere=true
if(willmove==true){
    if(sprite_get_name(self.sprite_index)=="player_transparent"){
        green1=instance_position(x+15, y+15, ogreenright)
        green2=instance_position(x+15, y+15, ogreenleft)
        green3=instance_position(x+15, y+15, ogreenup)
        green4=instance_position(x+15, y+15, ogreendown)
        green5=instance_position(x+15, y+15, ogreenrightleft)
        green6=instance_position(x+15, y+15, ogreenupdown)
        tp1=instance_position(x+15, y+15, oteleport11)
        tp2=instance_position(x+15, y+15, oteleport12)
        tp3=instance_position(x+15, y+15, oteleport21)
        tp4=instance_position(x+15, y+15, oteleport22)
        if(green1==noone and green2==noone and green3==noone and green4==noone and green5==noone and green6==noone and tp1==noone and tp2==noone and tp3==noone and tp4==noone){
            greenhere=false
        }
        if(greenhere==false){
            with(instance_position(x+15, y+15, oredright)){instance_destroy()}
            with(instance_position(x+15, y+15, oredleft)){instance_destroy()}
            with(instance_position(x+15, y+15, oredup)){instance_destroy()}
            with(instance_position(x+15, y+15, oreddown)){instance_destroy()}
            with(instance_position(x+15, y+15, oredrightleft)){instance_destroy()}
            with(instance_position(x+15, y+15, oredupdown)){instance_destroy()}
            with(instance_position(x+15, y+15, oyellowright)){instance_destroy()}
            with(instance_position(x+15, y+15, oyellowleft)){instance_destroy()}
            with(instance_position(x+15, y+15, oyellowup)){instance_destroy()}
            with(instance_position(x+15, y+15, oyellowdown)){instance_destroy()}
            with(instance_position(x+15, y+15, oyellowrightleft)){instance_destroy()}
            with(instance_position(x+15, y+15, oyellowupdown)){instance_destroy()}
            instance_create(self.x,self.y,owall)
            }
    }
    self.x=x+direkcijax
    self.y=y+direkcijay
}
destroylazorz()
findlasers()
