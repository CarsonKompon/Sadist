global.bank *= 1.1;

if(global.btc > 0){
	var chance = irandom(199);

	if(chance > 0+(global.country*20)){
		global.btcVal *= random_range(0.85,1.5);
	}else{
		global.btcVal *= random_range(0,0.75);	
	}

	if(global.btcVal > global.btcMax) global.btcMax = global.btcVal;
}else{

	if(irandom(2) == 2){
		global.btcVal *= random_range(0,1);
	}else{
		global.btcVal *= random_range(1,1.5);
	}

	if(global.btcVal > global.btcMax) global.btcMax = global.btcVal;
}

if(global.btcVal < 80) global.btcVal = 80;
for(var i=11;i>0;i--){
	global.btcHist[i] = global.btcHist[i-1];
}
global.btcHist[0] = global.btcVal;

alarm[0] = room_speed * 10;

start = false;