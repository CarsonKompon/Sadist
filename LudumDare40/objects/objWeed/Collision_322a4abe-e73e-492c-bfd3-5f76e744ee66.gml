if(other.use){
	audio_play_sound(sndPoof,10,false);
	repeat(irandom_range(2,5)) instance_create_depth(x,y,-1,objPartGrass);
	instance_destroy();
}