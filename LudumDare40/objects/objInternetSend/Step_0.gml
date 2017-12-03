if(global.country == 0) cost = 1000000;
else if(global.country == 1) cost = 2000000;
else if(global.country == 2) cost = 5000000;
else if(global.country == 3) cost = 8000000;
else if(global.country == 4) cost = 10000000;
else if(global.country == 5) cost = 15000000;
else if(global.country == 6) cost = 20000000;
else if(global.country == 7) cost = 25000000;
else if(global.country == 8) cost = 30000000;
else if(global.country == 9) cost = 100000000;
else cost = 99999999;

if(cutscene && objPlayer.drawnMoney == 0){
	cutscene = false;
	room_goto(rmSend);
}