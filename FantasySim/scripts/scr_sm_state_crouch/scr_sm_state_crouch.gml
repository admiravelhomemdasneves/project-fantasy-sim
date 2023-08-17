// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_crouch(){
	//STATE CROUCH FLOWS
	scr_state_flow_to_dodge();
	scr_state_flow_to_run();
		//scr_state_flow_to_attack(); --need to adjust the attack so it returns the player to the previous state he/she was in before attacking
	
	//STATE CROUCH SET VARIABLES
	if (locomotion_manager.GetMaxSpeed() != locomotion_manager.crouchSpeed) { locomotion_manager.SetMaxSpeed(locomotion_manager.crouchSpeed); }
	
	//STATE CROUCH ACTIONS
	scr_basic_movement_input();
	
	//STATE CROUCH ANIMATIONS AND COLLISIONS
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_crouch);
	animation_manager.ChangeAnimation(spr_plr_anm_crouch, 0.5);
}