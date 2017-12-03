///init_sweeping
/// @argument trashBags
/// @argument timeBonus
/// @argument totalMoney

var bagCount = argument0;

var timeBonus = argument1;
var totalMoney = argument2;

var controller = instance_create_depth(0,0,0,objGameTrash);
controller.timeBonus = timeBonus;
controller.totalMoney = totalMoney;

objTrashPile.count = bagCount;

with(objTool){
	sprite_index = sprNothing;
}