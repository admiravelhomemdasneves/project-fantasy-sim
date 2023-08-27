/// @description Update Code

scr_calculate_speed(id);
scr_max_speed(id);
if (collision_on) { scr_collision_checking(); }
scr_locomotion_direction();

if (collision_on)
{
	if (spr_collision != -1)
	{
		sprite_index = spr_collision;
		if (spr_collision_width != -1) { image_xscale = spr_collision_width; }
		if (spr_collision_height != -1) { image_yscale = spr_collision_height; }
	}
}
else
{
	sprite_index = -1;
}

//FOR DEBUG PURPOSES
depth = -y+10;

if (x >= room_width) { x = 0; }
else if (x < 0) { x = room_width; }

if (y >= room_height) { y = 0; }
else if (y < 0) { y = room_height; }