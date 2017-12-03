if(sprite_index == sprBroom){
	if(mouse_check_button_pressed(mb_left) && reload == 0){
		audio_play_sound(sndSweep,10,false);
		use = 1;
		reload = reloadTime;
	}
	
	if(reload > 0) reload--;
	else use = 0;
	
	if(use == 0) image_angle = point_direction(x,y,mouse_x,mouse_y);
}

if(sprite_index == sprVacuum){
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	if(!audio_is_playing(sndVacuum)) vacSnd = audio_play_sound(sndVacuum,10,true);
	use = mouse_check_button(mb_left);
	
	if(use){
		vacIntens = lerp(vacIntens,1.5,0.125);
		var dd = image_angle+irandom_range(-20,20)
		instance_create_depth(x+lengthdir_x(64,dd),y+lengthdir_y(64,dd),2,objPartSuck);
	}else vacIntens = lerp(vacIntens,0,0.125);
	
	audio_sound_pitch(vacSnd, vacIntens);
}else if(sprite_index == sprWeedWhacker){
	var ddir = point_direction(x,y,mouse_x,mouse_y);
	if(ddir > 90 && ddir < 270) image_yscale = -1;
	else image_yscale = 1;
	image_angle = ddir+(30*image_yscale);
	if(!audio_is_playing(sndVacuum)) vacSnd = audio_play_sound(sndVacuum,10,true);
	use = mouse_check_button(mb_left);
	
	if(use){
		vacIntens = lerp(vacIntens,1,0.125);
	}else vacIntens = lerp(vacIntens,0,0.125);
	
	audio_sound_pitch(vacSnd, vacIntens);
}else{
	vacIntens = 0;
	vacSnd = noone;
	audio_stop_sound(sndVacuum);
}

image_index = use;

if(sprite_index != sprWeedWhacker){
	if(image_angle > 90 && image_angle < 270) image_yscale = -1;
	else image_yscale = 1;
}