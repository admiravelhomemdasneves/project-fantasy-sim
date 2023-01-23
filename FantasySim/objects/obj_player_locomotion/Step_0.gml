/// @description Player Update Code

scr_calculate_speed(id);
scr_max_speed(id);

x += xSpeed + xImpulse;
y += ySpeed + yImpulse;

sprite_index = spr_collision;

//FOR DEBUG PURPOSES
depth = -y+10;