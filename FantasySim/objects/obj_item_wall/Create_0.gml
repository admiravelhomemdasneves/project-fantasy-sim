/// @description Insert description here
// You can write your code in this editor

item_tag = ITEM_TAG.WALL;

	/*ANIMATION MANAGER VARIABLES*/
v_spr_animation[COLLISION_ORIENTATION.FRONT] = spr_wall_front;
v_spr_animation[COLLISION_ORIENTATION.SIDE] = spr_wall_side;
v_spr_animation_width = sprite_get_width(v_spr_animation[v_spr_collision_orientation]);
v_spr_animation_height = sprite_get_height(v_spr_animation[v_spr_collision_orientation]);

	/*LOCOMOTION MANAGER VARIABLES*/
collision_mask_width = v_spr_animation_width/2;
collision_mask_height = 4;

v_collision_on = true;
v_spr_collision = spr_collision_pixel;
v_spr_collision_width[COLLISION_ORIENTATION.FRONT] = collision_mask_width;
v_spr_collision_height[COLLISION_ORIENTATION.FRONT] = collision_mask_height;
v_spr_collision_width[COLLISION_ORIENTATION.SIDE] = collision_mask_width;
v_spr_collision_height[COLLISION_ORIENTATION.SIDE] = collision_mask_height;

	/*STATS MANAGER VARIABLES*/
v_max_health_points = 20;
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