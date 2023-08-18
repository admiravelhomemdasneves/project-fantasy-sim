/// @description Insert description here
// You can write your code in this editor

sprite_direction = 1;
animation_speed = 0.5;

locomotion_manager = undefined;
state_machine_manager = undefined;

sprite_index = -1;
image_speed = animation_speed;
image_xscale = sprite_direction;

//Function

ChangeAnimation = function(animation, animation_speed)
{
	sprite_index = animation;
	image_speed = animation_speed;
}