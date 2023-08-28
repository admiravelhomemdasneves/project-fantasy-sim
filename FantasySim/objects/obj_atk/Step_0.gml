/// @description Insert description here
// You can write your code in this editor

//Geometry
image_xscale = attack_geometry_width;
image_yscale = attack_geometry_height;

switch(attack_geometry_sprite)
{
	case ATTACK_GEOMETRY.SQUARE:
		sprite_index = spr_atk_square;
	break;
	
	case ATTACK_GEOMETRY.CIRCLE:
		sprite_index = spr_atk_circle;
	break;
	
	default:
		sprite_index = spr_atk_square;
}

//Locomotion
switch(attack_locomotion_type)
{
	case ATTACK_LOCOMOTION.IDLE:
	break;
	
	case ATTACK_LOCOMOTION.PROJECTILE:
		direction = attack_locomotion_direction;
		speed = attack_locomotion_speed;
	break;
	
	case ATTACK_LOCOMOTION.TARGET_FOLLOWER:
	break;
	
	default:
}

//Lifetype, Lifetime and Death
switch(life_type)
{
	case ATTACK_LIFETYPE.TIMED:
		if (life_time != undefined)
		{
			if (alarm_get(dead_alarm)<0)	
			{
				alarm_set(dead_alarm, life_time);	
			}
		}
	break;
	
	case ATTACK_LIFETYPE.DESTROY_ONLY_ON_CONTACT:
	
	break;
	
	default:
}

if (dead)
{
	instance_destroy(id);	
}