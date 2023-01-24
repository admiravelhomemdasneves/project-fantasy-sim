// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision_checking(){
	//Collision check
	if (xSpeed+xImpulse!=0)
	{
		if (!place_meeting(x+xSpeed+xImpulse, y, obj_collision_mask))
		{
			x += xSpeed + xImpulse;
		}
		else
		{
			while (!place_meeting(x+xSpeed+xImpulse, y, obj_collision_mask))
			{
				x += sign(xSpeed+xImpulse);
			}
			xSpeed = 0;
			xImpulse = 0;
		}
	}

	if (ySpeed+yImpulse!=0)
	{
		if (!place_meeting(x, y+ySpeed + yImpulse, obj_collision_mask))
		{
			y += ySpeed + yImpulse;
		}
		else
		{
			while (!place_meeting(x, y+ySpeed + yImpulse, obj_collision_mask))
			{
				y += ySpeed + yImpulse;
			}
			ySpeed = 0;
			yImpulse = 0;
		}
	}
}