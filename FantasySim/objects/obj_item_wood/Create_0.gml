/// @description Insert description here
// You can write your code in this editor

	/*LOCOMOTION MANAGER VARIABLES*/
v_collision_on = false;
v_spr_collision = spr_wood;

	/*ANIMATION MANAGER VARIABLES*/
v_spr_animation = spr_wood;

	/*STATS MANAGER VARIABLES*/
v_max_health_points = 5;
v_death_on = false;
v_destroy_on_death = false;

	/*STATE MACHINE MANAGER VARIABLES */
v_states_function = function()
{
	with (other)
	{
		switch (state)
		{
			case STATES.IDLE:
				scr_state_flow_to_hurt();
			break;
			
			case STATES.HURT:
				actionHurt();
				scr_state_flow_to_idle();
			break;
			
			default:
			break;
		}
	}
}

event_inherited();