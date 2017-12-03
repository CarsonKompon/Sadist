var dirToDust = point_direction(objTool.x,objTool.y,x,y);
if(objTool.sprite_index == sprVacuum && objTool.use){	
	if(place_meeting(x,y,objTool) || place_meeting(x,y,objPlayer)) instance_destroy();
	if(distance_to_object(objTool) <= 48 && objTool.image_angle > dirToDust-20 && objTool.image_angle < dirToDust+20) move_towards_point(objTool.x,objTool.y,4);
	else speed = 0;
}else speed = 0;


if(place_free(x,y)) vspd += grav;
else vspd = 0;
y += vspd;