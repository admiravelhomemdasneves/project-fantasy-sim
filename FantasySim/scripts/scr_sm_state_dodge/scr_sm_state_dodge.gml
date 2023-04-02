// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_dodge(){
	//STATE DODGE FLOWS
	scr_state_flow_to_run();
	
	//STATE DODGE SET VARIABLES
	var dodge_speed = 8;
	
	//STATE DODGE ACTIONS
	actionDodge(dodge_speed);
	
	//STATE DODGE ANIMATIONS AND COLLISIONS
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_dash);
}