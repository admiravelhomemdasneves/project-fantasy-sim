// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_run(){
	if (locomotion_manager.GetMaxSpeed() != locomotion_manager.walkingSpeed)
		{ locomotion_manager.SetMaxSpeed(locomotion_manager.walkingSpeed); }
	scr_basic_movement_input();
	if (input_check("special", parent_manager_id.player_number-1)) { state = STATES.SPRINT; }
	if (input_check("action", parent_manager_id.player_number-1)) { state = STATES.CROUCH; }
	if (locomotion_manager.moveH == 0 and locomotion_manager.moveV == 0) { state = STATES.IDLE; }
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_stand);
}