// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_crouch(){
	if (locomotion_manager.GetMaxSpeed() != locomotion_manager.crouchSpeed)
		{ locomotion_manager.SetMaxSpeed(locomotion_manager.crouchSpeed); }
	scr_basic_movement_input();
	if (input_check_pressed("button_dpad_down", parent_manager_id.player_number-1)) { state = STATES.RUN; }
	if (input_check("button_b", parent_manager_id.player_number-1)) { state = STATES.DODGE; }
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_crouch);
}