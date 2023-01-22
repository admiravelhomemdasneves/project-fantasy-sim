/// @description Player Update Code

scr_calculate_speed(id);
scr_max_speed(id);

x += xSpeed;
y += ySpeed;

sprite_index = spr_collision;

//FOR DEBUG PURPOSES
depth = -y+10;