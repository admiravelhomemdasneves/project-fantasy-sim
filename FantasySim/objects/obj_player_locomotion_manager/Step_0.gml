/// @description Player Update Code

scr_calculate_speed(id);
scr_max_speed(id);
scr_collision_checking();
scr_locomotion_direction();

sprite_index = spr_collision;

//FOR DEBUG PURPOSES
depth = -y+10;

if (x >= room_width) { x = 0; }
else if (x < 0) { x = room_width; }

if (y >= room_height) { y = 0; }
else if (y < 0) { y = room_height; }