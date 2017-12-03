display_set_gui_size(512,288);

draw_set_color(c_white);
draw_set_font(fntGUI);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

drawnMoney = lerp(drawnMoney,global.money,0.125);
if(round(lastDrawn*100) != round(drawnMoney*100)) audio_play_sound(sndGain,10,false);
if(room != rmSend) draw_text(2,2,"\$" + string(drawnMoney));

lastDrawn = drawnMoney;

if(global.money != lastMoney){
	lastChange = global.money - lastMoney;
	drawChange = 1;
}

if(drawChange > 0){
	if(sign(lastChange) > 0){
		draw_set_color($4dc663);
		lastChangeSign = "+";
	}else{
		draw_set_color($443be5);
		lastChangeSign = "-";
	}
	draw_set_alpha(drawChange);
	draw_text(2,4+string_height("$"), lastChangeSign + "$" + string(abs(lastChange)));
	draw_set_alpha(1);
	drawChange -= 1/(room_speed*3);
}

lastMoney = global.money;

if(room == rmMain && tutorial){
	draw_set_color($35289e);
	draw_set_font(fntLogo);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(room_width/2+2,2+2,"\$adist");
	draw_set_color($443be5);
	draw_text(room_width/2,2,"\$adist");
	draw_set_font(fntGUISmall);
	draw_set_color(c_white);
	draw_text(room_width/2,80,"You are a sadist. You love to watch the world burn.\nYou also like money, but don't have much use for it.\nGo off and earn as much money as possible so you can\nput that money into other economies to bring them to their downfall!\n(WASD to move, SPACE to jump)");
}