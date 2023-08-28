/// @description Data Initialization

if (parent_manager_id != -1)
{
	x = parent_manager_id.x;
	y = parent_manager_id.y;
}

	//Movement Speed
maxSpeed = 0;

	//Movement Acceleration
accel = 0;

	//Other Movement Variables
speedLossOnMisdirectionRate = 4; //The lower the less speed is lost on route misdirection (left to right/ up to down)
fric = 0;

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
arrowDistanceToPlayer = 16;
arrow_rot = point_direction(x,y,x+direction_target_x,y+direction_target_y);
arrow_x = x + lengthdir_x(arrowDistanceToPlayer, arrow_rot);
arrow_y = y + lengthdir_y(arrowDistanceToPlayer,arrow_rot);

	//Collision Sprites
//spr_collision = -1;	-> SET IN VARIABLE DEFINITIONS
if (spr_collision_orientation == -1)
{
	if (spr_collision_width != -1) { image_xscale = spr_collision_width; }
	if (spr_collision_height != -1) { image_yscale = spr_collision_height; }
}
else
{
	if (typeof(spr_collision) == "array") { sprite_index = spr_collision[spr_collision_orientation]; }
	if (typeof(spr_collision_width) == "array") { image_xscale = spr_collision_width[spr_collision_orientation]; }
	if (typeof(spr_collision_height) == "array") { image_yscale = spr_collision_height[spr_collision_orientation]; }
}

	//Managers
state_machine_manager = undefined;

	//Methods
GetItemTag = function()
{
	if (instance_exists(parent_manager_id))
	{
		return parent_manager_id.item_tag;	
	}
	else
	{
		return -1;	
	}
}

GetMoveX = function()
{
	return moveH;	
}

GetMoveY = function()
{
	return moveV;	
}

GetSpeedX = function()
{
	return xSpeed;	
}

GetSpeedY = function()
{
	return ySpeed;	
}

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

AddProportionalImpulseTowardsPointRelativeToPlayer = function(var_pointX, var_pointY, var_speed)
{
	var xSpeed = 0;
	var ySpeed = 0;
	var absolute_pointX = abs(var_pointX-x);
	var absolute_pointY = abs(var_pointY-y);
	
	if (absolute_pointX > absolute_pointY)
	{
		xSpeed = sign(var_pointX)*var_speed;
		ySpeed = ((absolute_pointY / absolute_pointX)*var_speed)*sign(var_pointY);
	} 
	else if (absolute_pointX < absolute_pointY)
	{
		xSpeed = ((absolute_pointX / absolute_pointY)*var_speed)*sign(var_pointX);
		ySpeed = sign(var_pointY)*var_speed;
	}
	else if (absolute_pointX == absolute_pointY)
	{
		xSpeed = sign(var_pointX)*var_speed;
		ySpeed = sign(var_pointY)*var_speed;
	}
	
	AddImpulse(xSpeed, ySpeed);
}

AddProportionalImpulseAwayFromPointRelativeToPlayer = function(var_pointX, var_pointY, var_speed)
{
	var xSpeed = 0;
	var ySpeed = 0;
	var absolute_pointX = abs(var_pointX-x);
	var absolute_pointY = abs(var_pointY-y);
	
	if (absolute_pointX > absolute_pointY)
	{
		xSpeed = sign(var_pointX)*var_speed;
		ySpeed = ((absolute_pointY / absolute_pointX)*var_speed)*sign(var_pointY);
	} 
	else if (absolute_pointX < absolute_pointY)
	{
		xSpeed = ((absolute_pointX / absolute_pointY)*var_speed)*sign(var_pointX);
		ySpeed = sign(var_pointY)*var_speed;
	}
	else if (absolute_pointX == absolute_pointY)
	{
		xSpeed = sign(var_pointX)*var_speed;
		ySpeed = sign(var_pointY)*var_speed;
	}
	
	AddImpulse(-xSpeed, -ySpeed);
}

AddLinearImpulseTowardsPointRelativeToPlayer = function(var_directionX, var_directionY, var_speed)
{
	var xSpeed = sign(var_directionX - x) * var_speed;
	var ySpeed = sign(var_directionY - y) * var_speed;
	
	AddImpulse(xSpeed, ySpeed);
}

AddLinearImpulseAwayFromPointRelativeToPlayer = function(var_directionX, var_directionY, var_speed)
{
	var xSpeed = sign(var_directionX - x) * var_speed;
	var ySpeed = sign(var_directionY - y) * var_speed;
	
	AddImpulse(-xSpeed, -ySpeed);
}

AddLinearImpulseTowardsPoint = function(var_directionX, var_directionY, var_speed)
{
	var xSpeed = sign(var_directionX) * var_speed;
	var ySpeed = sign(var_directionY) * var_speed;
	
	AddImpulse(xSpeed, ySpeed);
}

AddLinearImpulseAwayFromPoint = function(var_directionX, var_directionY, var_speed)
{
	var xSpeed = sign(var_directionX) * var_speed;
	var ySpeed = sign(var_directionY) * var_speed;
	
	AddImpulse(-xSpeed, -ySpeed);
}