// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_attack(){
	var weapon = instance_create_depth(0,0,0,combat_manager.equipped_weapon);
	var attack = weapon.attack;
	
	instance_create_depth(locomotion_manager.x, locomotion_manager.y, 0, attack);
	state = STATES.IDLE;
}