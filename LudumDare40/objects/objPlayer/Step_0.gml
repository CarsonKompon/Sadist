if(keyboard_check(vk_space) && vspd == 0 && !place_free(x,y+1)){
	audio_play_sound(sndJump,10,false);
	vspd = -jumpSpd;
}else if(keyboard_check_released(vk_space)){
	if(vspd < 0 && vspd >= -jumpSpd) vspd *= 0.25;	
}

if(keyboard_check(ord("A"))){
	hspd -= fric;
	image_xscale = -1;
}else if(keyboard_check(ord("D"))){
	hspd += fric;
	image_xscale = 1;
}else{
	if(abs(hspd) >= fric){
		hspd -= fric*sign(hspd);	
	}else{
		hspd = 0;	
	}
}
hspd = clamp(hspd,-spd,spd);

vspd += grav;

//CANT MOVE LEFT OR RIGHT AND I DONT KNOW WHY

if(!place_free(x,y+vspd)){
	if(sign(vspd) < 0){
		move_contact_solid(90,abs(vspd));
	}else{
		move_contact_solid(270,abs(vspd));	
	}
	vspd = 0;
}

y += vspd;

if(!place_free(x+hspd,y)){
	if(sign(hspd) < 0){
		move_contact_solid(180,abs(hspd));	
	}else{
		move_contact_solid(0,abs(hspd));	
	}
	hspd = 0;
}

if(abs(hspd) > 0){
	sprite_index = sprPlayerWalk;
	image_speed = 2;
}else{
	sprite_index = sprPlayer;
	image_speed = 1;
}

x += hspd;

if(holding != noone && instance_exists(holding)){
	holding.x = x;
	if(instance_exists(objGamePickup)) holding.y = y-16;
	else if(instance_exists(objGameTrash)) holding.y = y-32;
}