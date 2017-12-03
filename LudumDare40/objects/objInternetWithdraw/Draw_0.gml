draw_self();

draw_set_color(c_white);
draw_set_font(fntGUISmall);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x+100,y,"$" + string(global.bank) + " in your account");
draw_text(x+100,y+32, "Gain 10% every 10s!");