/// @description Insert description here
// You can write your code in this editor

	/*ANIMATION MANAGER VARIABLES*/
v_spr_animation = spr_tree;

	/*LOCOMOTION MANAGER VARIABLES*/
v_collision_on = true;
v_spr_collision = spr_collision_pixel;
v_spr_collision_width = sprite_get_width(v_spr_animation)/2;
v_spr_collision_height = 4;

	/*STATS MANAGER VARIABLES*/
v_max_health_points = 5;
v_death_on = true;
v_destroy_on_death = true;
v_item_drop = scr_create_item_drop_array(obj_item_wood, round(random_range(0, 4)));

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