misx=device_mouse_x(0)
misy=device_mouse_y(0)
if misy<=20{
return -1
}
else if (misy>=375){
if (misx<15){
global.iteminhand=ospace
}else if (misx<30){
global.iteminhand=owall
}else if (misx<45){
global.iteminhand=oplayere
}else if (misx<60){
global.iteminhand=oqueen
}else if (misx<75){
global.iteminhand=ogold
}else if (misx<90){
global.iteminhand=osand
}else if (misx<105){
global.iteminhand=ostatue
}else if (misx<120){
global.iteminhand=oball
}else if (misx<135){
global.iteminhand=ostatueblock
}else if (misx<150){
global.iteminhand=oballblock
}else if (misx<165){
global.iteminhand=ostatueballblock
}else if (misx<180){
global.iteminhand=olaserright
}else if (misx<195){
global.iteminhand=olaserdown
}else if (misx<210){
global.iteminhand=olaserleft
}else if (misx<225){
global.iteminhand=olaserup
}else if (misx<240){
global.iteminhand=oredright
}else if (misx<255){
global.iteminhand=oreddown
}else if (misx<270){
global.iteminhand=oredleft
}else if (misx<285){
global.iteminhand=oredup
}else if (misx<300){
global.iteminhand=oredrightleft
}else if (misx<315){
global.iteminhand=oredupdown
}else if (misx<330){
global.iteminhand=oyellowright
}else if (misx<345){
global.iteminhand=oyellowdown
}else if (misx<360){
global.iteminhand=oyellowleft
}else if (misx<375){
global.iteminhand=oyellowup
}else if (misx<390){
global.iteminhand=oyellowrightleft
}else if (misx<405){
global.iteminhand=oyellowupdown
}else if (misx<420){
global.iteminhand=ogreenright
}else if (misx<435){
global.iteminhand=ogreendown
}else if (misx<450){
global.iteminhand=ogreenleft
}else if (misx<465){
global.iteminhand=ogreenup
}else if (misx<480){
global.iteminhand=ogreenrightleft
}else if (misx<495){
global.iteminhand=ogreenupdown
}else if (misx<510){
global.iteminhand=oteleport11
}else if (misx<525){
global.iteminhand=oteleport21
}else if (misx<540){
global.iteminhand=oI_rot
}else if (misx<555){
global.iteminhand=o_Irot
}else if (misx<570){
global.iteminhand=obutton
}
return -1
}
else
{
rezx=floor(misx/30)
rezy=floor(misy/30)
rezultaat=21*rezy+rezx
return rezultaat}
