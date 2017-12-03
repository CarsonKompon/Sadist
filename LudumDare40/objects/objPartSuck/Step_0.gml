if(place_meeting(x,y,objPlayer) || place_meeting(x,y,objTool)) instance_destroy();

if(objTool.use == false || done){
	done = true;
	speed = 0;
	gravity += 0.1;
	if(gravity >= 4) instance_destroy();
}