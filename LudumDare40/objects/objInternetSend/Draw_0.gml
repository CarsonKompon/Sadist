draw_self();
draw_set_color($32283F);
draw_set_font(fntGUISmall);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var ct;
if(global.country == 0) ct = "South Korea"
else if(global.country == 1) ct = "Australia"
else if(global.country == 2) ct = "Canada"
else if(global.country == 3) ct = "Italy"
else if(global.country == 4) ct = "France"
else if(global.country == 5) ct = "Germany"
else if(global.country == 6) ct = "United Kingdom"
else if(global.country == 7) ct = "Japan"
else if(global.country == 8) ct = "China"
else if(global.country == 9) ct = "United States"
else ct = "N/A";

draw_text(x+96/2,y+48/2,"Send money to:\n" + ct);

draw_set_color(c_white);
draw_set_valign(fa_top);
draw_text(x+(96/2),y+50,"Worth: $" + string(cost));