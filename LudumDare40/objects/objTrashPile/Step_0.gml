if(count <= 0) instance_destroy();

if(objPlayer.holding = noone && place_meeting(x,y,objPlayer)){
	if(objGameTrash.start) audio_play_sound(sndPick,10,false);
	objPlayer.holding = instance_create_depth(objPlayer.x,objPlayer.y-32,-1,objTrash);
	count--;
}
