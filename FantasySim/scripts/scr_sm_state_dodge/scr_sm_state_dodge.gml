// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_dodge(){
	var dodge_started = false;
	var dodge_completed = false;
	var dodge_starting_impulse_x = locomotion_manager.GetXImpulse();
	var dodge_starting_impulse_y = locomotion_manager.GetYImpulse();
	var dodge_speed = 8;
	
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_dash);
	
	if (!dodge_started and !dodge_completed)
	{
		locomotion_manager.AddImpulseTowardsPoint(locomotion_manager.GetDirectionX(), locomotion_manager.GetDirectionY(), dodge_speed);
		dodge_started = true;
	}
	
	if (dodge_started and !dodge_completed)
	{
		if ((abs(locomotion_manager.GetXImpulse()) <= abs(dodge_starting_impulse_x))
				and (abs(locomotion_manager.GetYImpulse()) <= abs(dodge_starting_impulse_y)))
		{
			dodge_completed = true;
		}
	}
	
	if (dodge_started and dodge_completed)
	{
		state = STATES.IDLE;
	}
}