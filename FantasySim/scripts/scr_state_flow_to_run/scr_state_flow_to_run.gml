// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_flow_to_run(){
	if (state == STATES.DODGE)
	{
		if (locomotion_manager.GetXImpulse() == 0 and locomotion_manager.GetYImpulse() == 0 and state_previous_frame == STATES.DODGE)
		{
			state = STATES.RUN;
		}	
	}
	else
	if (state == STATES.CROUCH)
	{
		if (state_previous_frame == STATES.CROUCH)
		{
			if (input_check_pressed("button_dpad_down", parent_manager_id.player_number-1)) { state = STATES.RUN; }
		}
	}
	else 
	if (locomotion_manager.moveH != 0 or locomotion_manager.moveV != 0) { state = STATES.RUN; }
}