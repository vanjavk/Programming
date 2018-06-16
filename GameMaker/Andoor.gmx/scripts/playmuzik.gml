randomize();
if (global.musicenabled==true){
if(audio_is_playing(music1)==false and audio_is_playing(music2)==false and audio_is_playing(music3)==false and audio_is_playing(music4)==false and audio_is_playing(music5)==false and audio_is_playing(music6)==false and audio_is_playing(music7)==false and audio_is_playing(music8)==false and audio_is_playing(music9)==false){
rng=irandom(8);
if(rng==0){
audio_play_sound(music1, 10, false);
}else if(rng==1){
audio_play_sound(music2, 10, false);
}else if(rng==2){
audio_play_sound(music3, 10, false);
}else if(rng==3){
audio_play_sound(music4, 10, false);
}else if(rng==4){
audio_play_sound(music5, 10, false);
}else if(rng==5){
audio_play_sound(music6, 10, false);
}else if(rng==6){
audio_play_sound(music7, 10, false);
}else if(rng==7){
audio_play_sound(music8, 10, false);
}else if(rng==8){
audio_play_sound(music9, 10, false);
}}}
