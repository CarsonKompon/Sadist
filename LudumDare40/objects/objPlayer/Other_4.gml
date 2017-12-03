audio_stop_sound(global.music);
if(room == rmMain) global.music = audio_play_sound(musMain,10,true);
else if(room == rmInternet) global.music = audio_play_sound(musInternet,10,true);
else if(room == rmSend) global.music = audio_play_sound(sndSendMoney, 10, false);
else global.music = audio_play_sound(asset_get_index("musChore" + string(irandom(4)+1)),10,true);

if(instance_exists(objPlayerStart)){
	vspd = 0;
	hspd = 0;
	x = objPlayerStart.x;
	y = objPlayerStart.y;
}

if(room == rmMain && start) tutorial = true;
else tutorial = false;