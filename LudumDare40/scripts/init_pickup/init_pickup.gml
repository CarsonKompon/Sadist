///init_sweeping
/// @argument spawnBlock
/// @argument spawnChance/100
/// @argument toSpawn
/// @argument timeBonus
/// @argument totalMoney
/// @argument maxToys

var spawnBlock = argument0;
var spawnChance = argument1;
var toSpawn = argument2;

var timeBonus = argument3;
var totalMoney = argument4;
var maxToys = argument5;

var controller = instance_create_depth(0,0,0,objGamePickup);
controller.timeBonus = timeBonus;
controller.totalMoney = totalMoney;

var spawned = 0;
for(var i=0;i<instance_number(spawnBlock);i++){
	var b = instance_find(spawnBlock,i);
	if(irandom(99)+1 <= spawnChance){
		instance_create_depth(b.x+8+irandom_range(-4,4),b.y-1,-1,toSpawn)
		spawned++;
	}
	if(spawned >= maxToys) break;
}

controller.timeBonus = irandom_range((spawned*2)-2,(spawned*2)+2)*room_speed;

with(objTool){
	sprite_index = sprNothing;
}