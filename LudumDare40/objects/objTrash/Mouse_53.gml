if(objPlayer.holding == id){
	objPlayer.holding = noone;
	direction = point_direction(objPlayer.x,objPlayer.y,mouse_x,mouse_y);
	speed = 12;
	gravity = 0.5;
}