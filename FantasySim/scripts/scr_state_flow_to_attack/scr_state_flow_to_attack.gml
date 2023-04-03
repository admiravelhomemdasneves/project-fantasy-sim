// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_flow_to_attack(){
	if (input_check_pressed("button_right_bumper", parent_manager_id.player_number-1)) { state = STATES.ATTACK; }
}