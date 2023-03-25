/// @description Player Update Code

moveH = -global.keyLeft + global.keyRight;
moveV = -global.keyUp + global.keyDown;
	
if (state == PlayerSTATES.free)
{
	scr_calculate_speed(moveH,moveV,xSpeed,ySpeed,accel,fric,speedLossOnMisdirectionRate);
	scr_maxSpeed(xSpeed,ySpeed,maxSpeed);

	//KEY PRESSINGS
	if (global.keySPRINT)
	{
		maxSpeed = RUNningSpeed;
		accel = RUNningAccel;
		sprite_index = spr_col_stand;
	}
	else if (global.keyCROUCH)
	{
		maxSpeed = CROUCHSpeed;
		accel = CROUCHAccel;
		sprite_index = spr_col_CROUCH;
	}
	else
	{
		maxSpeed = walkingSpeed;
		accel = walkingAccel;
		sprite_index = spr_col_stand;
	}
	
	if (global.keyDODGE and DODGEAble == true)
	{
		DODGEStartX = x;
		DODGEStartY = y;
		DODGEMouseTargetX = obj_player_direction_targetOLD.x + lengthdir_x(DODGERange, point_direction(x,y,obj_player_direction_targetOLD.x,obj_player_direction_targetOLD.y));
		DODGEMouseTargetY = obj_player_direction_targetOLD.y + lengthdir_y(DODGERange, point_direction(x,y,obj_player_direction_targetOLD.x,obj_player_direction_targetOLD.y));
		DODGEMoveH = moveH;
		DODGEMoveV = moveV;
		sprite_index = spr_col_dash;
		state = PlayerSTATES.DODGE
	}
	
	if (global.keyGrabPressed)
	{
		scr_create_notification("Grab key pressed!");
		var nearestObject = instance_nearest(x, y, obj_object);
		
		if (point_distance(x,y,nearestObject.x,nearestObject.y) <= objectGrabRange)
		{
			obj_grabbed = nearestObject;
			state = PlayerSTATES.grabbing;	
		}
	}
}
else if (state == PlayerSTATES.DODGE)
{
	maxSpeed = DODGESpeed;
	accel = DODGEAccel;
	
	if (distance_to_point(DODGEStartX, DODGEStartY) <= DODGERange)
	{
		if (DODGEMoveH != 0 or DODGEMoveV != 0)
		{
			xSpeed += accel * sign(xSpeed);
			ySpeed += accel * sign(ySpeed);	
		}
		else
		if (DODGEMoveH == 0 and DODGEMoveV == 0)
		{
			xSpeed -= lengthdir_x(accel, point_direction(x,y,DODGEMouseTargetX,DODGEMouseTargetY));
			ySpeed -= lengthdir_y(accel, point_direction(x,y,DODGEMouseTargetX,DODGEMouseTargetY));
		}
	}
	else
	{
		state = PlayerSTATES.free;	
	}
		
	if (abs(xSpeed) > maxSpeed)
	{
		xSpeed = maxSpeed * sign(xSpeed);	
	}
	if (abs(ySpeed) > maxSpeed)
	{
		ySpeed = maxSpeed * sign(ySpeed);	
	}
	
	if (alarm[0] <= 0)
	{
		DODGEAble = false;
		alarm[0] = DODGECountDown;	
	}
}
else if (state == PlayerSTATES.grabbing)
{
	scr_calculate_speed(moveH,moveV,xSpeed,ySpeed,accel,fric,speedLossOnMisdirectionRate);
	scr_maxSpeed(xSpeed,ySpeed,maxSpeed);
	
	if (obj_grabbed != 0)
	{
		accel = walkingAccel - (obj_grabbed.weight*accelObjectWeightMultiplier);
		maxSpeed = walkingSpeed - obj_grabbed.weight;
		obj_grabbed.grabbed = true;
	}
	else
	{
		obj_grabbed.grabbed = false;
	}
	
	if (global.keyGrabPressed)
	{
		obj_grabbed = 0;
		state = PlayerSTATES.free;
	}
}

x += xSpeed;
y += ySpeed;

depth = -y;