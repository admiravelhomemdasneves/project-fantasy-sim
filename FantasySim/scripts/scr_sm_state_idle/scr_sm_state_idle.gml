// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_idle(){
	scr_basic_movement_input();
	if (input_check("button_dpad_down", parent_manager_id.player_number-1)) { state = STATES.CROUCH; }
	if (input_check("button_b", parent_manager_id.player_number-1)) { state = STATES.DODGE; }
	if (locomotion_manager.moveH != 0 or locomotion_manager.moveV != 0) { state = STATES.RUN; }
	if (input_check("button_right_bumper", parent_manager_id.player_number-1)) { state = STATES.ATTACK; }
	with(locomotion_manager)
	{
		if (place_meeting(x, y, obj_atk))
		{
			if (instance_place(x, y, obj_atk).self_hurt == true)
			{
				other.state = STATES.HURT;	
			}
		}
	}
	
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_stand);
}