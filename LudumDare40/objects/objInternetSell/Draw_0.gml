draw_self();

draw_set_color(c_white);
draw_set_font(fntGUISmall);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x+100,y,string(global.btc) + "BTC in your account");
draw_text(x+100,y+32, "1BTC = $" + string(global.btcVal));

draw_line(room_width/4*3,y,room_width/4*3,y+48);
draw_line(room_width/4*3,y+48,room_width-10,y+48);
draw_set_color($443be5);

for(var i=1;i<12;i++){
	var lp = global.btcHist[i-1];
	var p = global.btcHist[i];
	draw_line((room_width-10)-((118/12)*(i-1)), ((y+48) - (48*(lp/global.btcMax))), (room_width-10)-((118/12)*i), ((y+48) - (48*(p/global.btcMax))))
}