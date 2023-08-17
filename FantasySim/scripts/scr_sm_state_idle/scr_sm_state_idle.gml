// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_idle(){
	//STATE IDLE FLOWS
	scr_state_flow_to_crouch();
	scr_state_flow_to_dodge();
	scr_state_flow_to_run();
	scr_state_flow_to_attack();
	scr_state_flow_to_hurt();
	
	//STATE IDLE SET VARIABLES
	
	//STATE IDLE ACTIONS
	scr_basic_movement_input();
	
	//STATE IDLE ANIMATIONS AND COLLISIONS
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_stand);
	animation_manager.ChangeAnimation(spr_plr_anm_idle, 0.5);
}