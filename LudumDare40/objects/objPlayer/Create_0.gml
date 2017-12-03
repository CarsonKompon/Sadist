randomize();

grav = 0.5;
fric = 1;
spd = 5;
jumpSpd = 9.5;
hspd = 0;
vspd = 0;

holding = noone;

global.money = 0;
lastMoney = global.money;
drawnMoney = global.money;
lastDrawn = drawnMoney;

global.bank = 0;
global.btc = 0;

global.btcVal = 80;
global.btcMax = global.btcVal;

global.country = 0;

start = true;
tutorial = true;

image_speed = 1;

drawChange = 0;
lastChange = 0;
lastChangeSign = "+";

global.music = audio_play_sound(musMain,10,true);

for(var i=0;i<12;i++){
	global.btcHist[i] = global.btcVal;
}

instance_create_depth(x,y,-1,objTool);

alarm[0] = room_speed * 10;