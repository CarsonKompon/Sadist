if(!start){
	draw_set_font(fntGUI);
	draw_set_color(c_white);
	draw_rectangle(room_width/4,room_height/4,(room_width/4)*3,(room_height/4)*3,false);
	draw_set_color($32283F);
	draw_set_valign(fa_top);
	draw_set_halign(fa_middle);
	draw_text(room_width/2,room_height/4+10,"Garbage Day");
	draw_set_valign(fa_bottom);
	draw_text(room_width/2,(room_height/4)*3-10, "Reward: $" + string(totalMoney));
	draw_set_valign(fa_middle);
	draw_set_font(fntGUISmall);
	draw_text(room_width/2,room_height/2,desc);
}

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fntGUI);
var remainingTime = (timeBonus/room_speed) - floor(time/room_speed)
if(remainingTime > 0) draw_text(512/2,0,"Complete in " + string(remainingTime) + "s for a 10% tip");