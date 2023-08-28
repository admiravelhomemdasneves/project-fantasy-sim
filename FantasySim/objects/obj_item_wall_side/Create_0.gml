/// @description Insert description here
// You can write your code in this editor

v_spr_collision_orientation = COLLISION_ORIENTATION.SIDE;

event_inherited();

//WALL OBSERVER = Will check for other walls in its vicinity to adjust collision mask accordingly
wall_observer[0] = x - v_spr_animation_width / 2;
wall_observer[1] = y;
wall_observer[2] = x + v_spr_animation_width / 2;
wall_observer[3] = y - v_spr_animation_height / 2 - collision_mask_height * 2;