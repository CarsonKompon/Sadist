
if(objPlayer.holding = noone && place_meeting(x,y,objPlayer)){
	if(objGamePickup.start) audio_play_sound(sndPick,10,false);
	objPlayer.holding = id;
}

