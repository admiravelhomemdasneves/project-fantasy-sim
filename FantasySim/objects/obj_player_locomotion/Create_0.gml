/// @description Data Initialization

	//Movement Speed
crouchSpeed = 2;
walkingSpeed = 4;
runningSpeed = 8;
dodgeSpeed = 18;
maxSpeed = walkingSpeed;

	//Movement Acceleration
crouchAccel = 0.1;
walkingAccel = 0.2;
runningAccel = 0.6;
dodgeAccel = 1;
accel = walkingAccel;

	//Other Movement Variables
speedLossOnMisdirectionRate = 4; //The lower the less speed is lost on player route misdirection (left to right/ up to down)
fric = 0.4;

moveH = 0;
moveV = 0;

xSpeed = 0;
ySpeed = 0;

xImpulse = 0;
yImpulse = 0;

	//Direction System
direction_cursor_speed = 18;
direction_target_x = 0;
direction_target_y = 0;
direction_target_max_distance = 128;
input_distance_radius = 128;
arrowDistanceToPlayer = 32;
arrow_rot = point_direction(x,y,x+direction_target_x,y+direction_target_y);
arrow_x = x + lengthdir_x(arrowDistanceToPlayer, arrow_rot);
arrow_y = y + lengthdir_y(arrowDistanceToPlayer,arrow_rot);

	//Collision Sprites
spr_col_stand = spr_col_player_stand;
spr_col_crouch = spr_col_player_crouch;
spr_col_dash = spr_col_player_dash;
spr_collision = spr_col_stand;

	//Managers
state_machine_manager = undefined;

	//Methods
GetDirectionX = function()
{
	return direction_target_x;	
}

GetDirectionY = function()
{
	return direction_target_y;	
}

MoveHorizontally = function(var_moveH)
{
	moveH = var_moveH;
};

MoveVertically = function(var_moveV)
{
	moveV = var_moveV;
};

SetMaxSpeed = function(var_maxSpeed)
{
	maxSpeed = var_maxSpeed;	
};

GetMaxSpeed = function()
{
	return maxSpeed;	
};

SetAcceleration = function(var_accel)
{
	accel = var_accel;	
};

GetAcceleration = function()
{
	return accel;	
};

GetCollisionSprite = function()
{
	return spr_collision;	
}

SetCollisionSprite = function(var_sprite)
{
	spr_collision = var_sprite;	
}

GetXImpulse = function()
{
	return xImpulse;
}

GetYImpulse = function()
{
	return yImpulse;
}

SetXImpulse = function(var_xImpulse)
{
	xImpulse = var_xImpulse;
}

SetYImpulse = function(var_yImpulse)
{
	yImpulse = var_yImpulse;
}

AddXImpulse = function(var_xSpeed)
{
	xImpulse += var_xSpeed;	
}

AddYImpulse = function(var_ySpeed)
{
	yImpulse += var_ySpeed;	
}

AddImpulse = function(var_xSpeed, var_ySpeed)
{
	AddXImpulse(var_xSpeed);
	AddYImpulse(var_ySpeed);
}