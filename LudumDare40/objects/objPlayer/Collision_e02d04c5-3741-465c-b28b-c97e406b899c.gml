if(keyboard_check_released(ord("W")) || keyboard_check_released(ord("E"))){
	var game = irandom(4);
	var rm = rmSweep1;
	if(game == 0){
		rm = asset_get_index("rmSweep" + string(irandom(global.country)+1));
	}else if(game == 1){
		rm = asset_get_index("rmVacuum" + string(irandom(global.country)+1));
	}else if(game == 2){
		rm = asset_get_index("rmPickup" + string(irandom(global.country)+1));	
	}else if(game == 3){
		rm = asset_get_index("rmWeed" + string(irandom(global.country)+1));
	}else if(game == 4){
		rm = asset_get_index("rmTrash" + string(irandom(global.country)+1));
	}
	room_goto(rm);
	io_clear();
}