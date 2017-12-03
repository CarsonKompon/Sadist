if(!place_free(x,y+vspeed)){
	move_contact_solid(270,vspeed);
	if(gravity != 0) audio_play_sound(sndPoof,10,false);
	gravity = 0;
	vspeed = 0;
	hspeed = 0;
}

if(!place_free(x+hspeed,y)){
	hspeed *= -0.3;
}

if(objPlayer.holding = noone && place_meeting(x,y,objPlayer) && gravity == 0){
	if(objGameTrash.start) audio_play_sound(sndPick,10,false);
	objPlayer.holding = id;
}

if(objPlayer.holding != id && place_meeting(x,y+1,objDumpster)){
	instance_destroy();	
}