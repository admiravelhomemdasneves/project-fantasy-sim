// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_basic_movement_input(){
	if (input_check("button_left_stick_up", parent_manager_id.player_number-1) or input_check("button_left_stick_down", parent_manager_id.player_number-1))
	{
		actionMoveVertical(locomotion_manager, (-input_check("button_left_stick_up", parent_manager_id.player_number-1) + input_check("button_left_stick_down", parent_manager_id.player_number-1)));
	} else {
		actionMoveVertical(locomotion_manager, 0);
	}
		
	if (input_check("button_left_stick_left", parent_manager_id.player_number-1) or input_check("button_left_stick_right", parent_manager_id.player_number-1))
	{
		actionMoveHorizontal(locomotion_manager, (-input_check("button_left_stick_left", parent_manager_id.player_number-1) + input_check("button_left_stick_right", parent_manager_id.player_number-1)));
	} else {
		actionMoveHorizontal(locomotion_manager, 0);
	}		
}