if(instance_exists(objGameWeed)){
	if(grown < times && !objGameWeed.complete && irandom(chance) == 0 && !place_meeting(x,y-16,objWeed)){
		instance_create_depth(x,y-16,1,objWeed);
		grown++;
	}

	alarm[0] = room_speed;
}