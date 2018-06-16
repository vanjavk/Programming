if (global.soundenabled==true){
if(audio_is_playing(chain1)==false and audio_is_playing(chain2)==false){
rng=irandom(1);

if(rng==0){
audio_play_sound(chain1, 10, false);
}else if(rng==1){
audio_play_sound(chain2, 10, false);
}}}
