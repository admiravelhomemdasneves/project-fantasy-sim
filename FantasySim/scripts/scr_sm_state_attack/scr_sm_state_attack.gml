// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_attack(){
	struct_manager_id = { parent_manager_id : id.parent_manager_id }
	
	//STATE ATTACK FLOWS
	
	//STATE ATTACK SET VARIABLES
	if (locomotion_manager.GetMaxSpeed() != locomotion_manager.crouchSpeed) { locomotion_manager.SetMaxSpeed(locomotion_manager.crouchSpeed); }
	
	//STATE ATTACK ACTIONS	
	actionAttack();
	
	//STATE IDLE ANIMATIONS AND COLLISIONS
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_stand);
}