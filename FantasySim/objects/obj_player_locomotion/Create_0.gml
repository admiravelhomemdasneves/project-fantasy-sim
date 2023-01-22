/// @description Data Initialization
//Movement
crouchSpeed = 2;
walkingSpeed = 4;
runningSpeed = 8;
dodgeSpeed = 18;
maxSpeed = walkingSpeed;

crouchAccel = 0.1;
walkingAccel = 0.2;
runningAccel = 0.6;
dodgeAccel = 1;
accel = walkingAccel;

dodgeStartX = 0;
dodgeStartY = 0;
dodgeMouseTargetX = 0;
dodgeMouseTargetY = 0;
dodgeMoveH = 0;
dodgeMoveV = 0;
dodgeRange = 90;
dodgeCountDown = 30;
dodgeAble = true;
speedLossOnMisdirectionRate = 4; //The lower the less speed is lost on player route misdirection (left to right/ up to down)
/*
obj_grabbed = 0;
objectGrabRange = 16;
accelObjectWeightMultiplier = 0.1;
*/
fric = 0.4;

moveH = 0;
moveV = 0;

xSpeed = 0;
ySpeed = 0;

//Collision Sprites
spr_col_stand = spr_col_player_stand;
spr_col_crouch = spr_col_player_crouch;
spr_col_dash = spr_col_player_dash;
spr_collision = spr_col_stand;

//Managers
state_machine_manager = undefined;

//Methods
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