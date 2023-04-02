// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_flow_to_hurt(){
	with(locomotion_manager)
	{
		if place_meeting(x, y, obj_atk)
		{
			if (instance_place(x, y, obj_atk).parent_manager_id == parent_manager_id and instance_place(x, y, obj_atk).self_hurt == true) //If it's the player's own attack and it has the self hurt mode on
			{
				other.state = STATES.HURT;	
			}
			else if (instance_place(x, y, obj_atk).parent_manager_id != parent_manager_id) //If the origin of the attack is not the player
			{
				other.state = STATES.HURT;	
			}
		}
	}	
}