if(keyboard_check(vk_anykey) || mouse_check_button(mb_any)) start = true;

if(start && !instance_exists(objDust) && !complete){
	var bonus = (time <= timeBonus);
	global.money += totalMoney+(totalMoney*0.1*bonus);
	complete = true;
	alarm[0] = 2 * room_speed;
}

if(start && !complete) time++;