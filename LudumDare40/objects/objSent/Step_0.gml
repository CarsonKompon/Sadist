//ANIMAL CROSSING BREAK

if(decrease) cost = lerp(cost,0,0.0125);
if(round(cost*100000) != round(lastCost*100000)){
	if(round(cost*100000) == 0) alarm[1] = room_speed*2;
	audio_play_sound(sndGain,10,false);
}
lastCost = cost;

if(explode && irandom(1) == 0){
	int = 8;
	instance_create_depth(irandom(room_width),irandom(room_height),-10,objExplosion);
}

camera_set_view_pos(view_camera[0],irandom_range(-int,int),irandom_range(-int,int));

if(int > 0) int--;