// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_attack(){
	struct_manager_id = {
		parent_manager_id : id.parent_manager_id
	}
	
	var attack = undefined;
	
	if(alarm_get(state_reset_alarm) < 0)
	{
		attack = instance_create_depth(locomotion_manager.x, locomotion_manager.y, 0, combat_manager.equipped_weapon.attack, struct_manager_id);
		alarm_set(state_reset_alarm, attack.release_atk_state_time);
	}
}