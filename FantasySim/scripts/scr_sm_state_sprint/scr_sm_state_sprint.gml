// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_sprint(){
	//STATE SPRINT FLOWS
	scr_state_flow_to_dodge();
	scr_state_flow_to_idle();
	scr_state_flow_to_attack();
	
	//STATE SPRINT SET VARIABLES	
	if (locomotion_manager.GetMaxSpeed() != locomotion_manager.runningSpeed) { locomotion_manager.SetMaxSpeed(locomotion_manager.runningSpeed); }
	
	//STATE SPRINT ACTIONS
	scr_basic_movement_input();
	
	//STATE SPRINT ANIMATIONS AND COLLISIONS
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_stand);
}