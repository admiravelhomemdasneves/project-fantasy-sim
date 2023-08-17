// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_run(){
	//STATE RUN FLOWS
	scr_state_flow_to_crouch();
	scr_state_flow_to_dodge();
	scr_state_flow_to_sprint();
	scr_state_flow_to_attack();
	scr_state_flow_to_idle();
	
	//STATE RUN SET VARIABLES
	if (locomotion_manager.GetMaxSpeed() != locomotion_manager.walkingSpeed) { locomotion_manager.SetMaxSpeed(locomotion_manager.walkingSpeed); }
	
	//STATE RUN ACTIONS
	scr_basic_movement_input();
	
	//STATE RUN ANIMATIONS AND COLLISIONS
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_stand);
	animation_manager.ChangeAnimation(spr_plr_anm_run, 0.5);
}