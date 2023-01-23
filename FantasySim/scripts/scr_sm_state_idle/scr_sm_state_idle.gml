// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_idle(){
	scr_basic_movement_input();
	if (input_check("action", parent_manager_id.player_number-1)) { state = STATES.CROUCH; }
	if (locomotion_manager.moveH != 0 or locomotion_manager.moveV != 0) { state = STATES.RUN; }
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_stand);
}