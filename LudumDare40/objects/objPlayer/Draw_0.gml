draw_self();

if(place_meeting(x,y,objChoreBoard) || place_meeting(x,y,objComputer)){
	draw_sprite(sprPrompt, 0, x, y-20);	
}