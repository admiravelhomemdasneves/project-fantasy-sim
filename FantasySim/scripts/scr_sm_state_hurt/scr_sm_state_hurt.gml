// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_hurt(){
	//STATE HURT FLOWS
	
	//STATE HURT SET VARIABLES
	if (locomotion_manager.GetMaxSpeed() != locomotion_manager.crouchSpeed) { locomotion_manager.SetMaxSpeed(locomotion_manager.crouchSpeed); }
	
	//STATE HURT ACTION
	scr_basic_movement_input();
	actionHurt();
	
	//STATE HURT ANIMATIONS AND COLLISIONS
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_stand);
}