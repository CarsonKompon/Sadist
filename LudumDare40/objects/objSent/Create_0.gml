name = "jeff";
cost = 0;

if(global.country == 1) name = "KRW";
if(global.country == 2) name = "AUD";
if(global.country == 3) name = "CAD";
if(global.country == 4) name = "EUR";
if(global.country == 5) name = "EUR";
if(global.country == 6) name = "EUR";
if(global.country == 7) name = "GBP";
if(global.country == 8) name = "YEN";
if(global.country == 9) name = "CNY";
if(global.country == 10) name = "USD";

if(global.country == 1) cost = 0.00092;
if(global.country == 2) cost = 0.76;
if(global.country == 3) cost = 0.79;
if(global.country == 4) cost = 1.19;
if(global.country == 5) cost = 1.19;
if(global.country == 6) cost = 1.19;
if(global.country == 7) cost = 1.35;
if(global.country == 8) cost = 0.0089;
if(global.country == 9) cost = 0.15;
if(global.country == 10) cost = 1;

lastCost = cost;
decrease = false;
alarm[0] = room_speed*6.5;
explode = false;

int = 0;