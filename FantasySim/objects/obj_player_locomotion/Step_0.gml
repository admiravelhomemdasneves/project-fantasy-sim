/// @description Player Update Code

scr_calculate_speed(id);
scr_max_speed(id);
scr_collision_checking();
scr_locomotion_direction();

sprite_index = spr_collision;

//FOR DEBUG PURPOSES
depth = -y+10;