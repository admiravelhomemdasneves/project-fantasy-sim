/// @description Player Update Code

scr_calculate_speed(id);
scr_max_speed(id);

x += xSpeed + xImpulse;
y += ySpeed + yImpulse;

sprite_index = spr_collision;

//For Testing purposes
if input_check_pressed("accept") 
{ 
	if (GetXImpulse() == 0 and GetYImpulse() == 0)
	{
		AddImpulse(12, 12); 
	}
}

//FOR DEBUG PURPOSES
depth = -y+10;