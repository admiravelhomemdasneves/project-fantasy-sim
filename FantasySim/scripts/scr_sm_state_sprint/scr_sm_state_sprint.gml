// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_sprint(){
	if (locomotion_manager.GetMaxSpeed() != locomotion_manager.runningSpeed)
		{ locomotion_manager.SetMaxSpeed(locomotion_manager.runningSpeed); }
	scr_basic_movement_input();
	if (!input_check("special")) { state = STATES.RUN; }
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_stand);
}