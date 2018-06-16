if (global.soundenabled==true){
if(audio_is_playing(push1)==false and audio_is_playing(push2)==false){
rng=irandom(1);

if(rng==0){
audio_play_sound(push1, 10, false);
}else if(rng==1){
audio_play_sound(push2, 10, false);
}}}
