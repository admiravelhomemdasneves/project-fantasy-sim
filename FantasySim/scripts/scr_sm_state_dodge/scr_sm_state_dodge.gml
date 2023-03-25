// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_dodge(){
	var dodge_speed = 8;
	
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_dash);
	
	if (state_previous_frame != state)
	{
		//locomotion_manager.AddImpulseTowardsPoint(locomotion_manager.GetDirectionX(), locomotion_manager.GetDirectionY(), dodge_speed); //Using Mouse Direction
		if (locomotion_manager.GetMoveX()==0 and locomotion_manager.GetMoveY()==0)
		{
			locomotion_manager.AddLinearImpulseAwayFromPointRelativeToPlayer(locomotion_manager.GetDirectionX(), locomotion_manager.GetDirectionY(), dodge_speed);
		}
		else
		{
			locomotion_manager.AddLinearImpulseTowardsPoint(locomotion_manager.GetMoveX(), locomotion_manager.GetMoveY(), dodge_speed);
		}
	}
	
	if (locomotion_manager.GetXImpulse() == 0 and locomotion_manager.GetYImpulse() == 0 and state_previous_frame == STATES.DODGE)
	{
		state = STATES.RUN;
	}
}