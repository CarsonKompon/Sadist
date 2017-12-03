if(holding != noone && instance_exists(holding)){
	if(objGamePickup.start) audio_play_sound(sndPlace,10,false);
	instance_destroy(holding);
	holding = noone;
}