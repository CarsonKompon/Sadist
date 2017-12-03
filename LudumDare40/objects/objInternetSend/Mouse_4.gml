if(global.money >= cost){
	global.money = 0;
	global.bank = 0;
	global.btc = 0;
	global.btcVal = 80;
	global.btcMax = global.btcVal;
	for(var i=0;i<12;i++){
		global.btcHist[i] = global.btcVal;
	}
	
	global.country++;
	cutscene = true;
}