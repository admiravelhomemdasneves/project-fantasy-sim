// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_flow_to_sprint(){
	if (input_check_pressed("button_left_stick_press", parent_manager_id.player_number-1)) { state = STATES.SPRINT; }
}