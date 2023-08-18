/// @description Data Initialization

event_inherited();

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

	//Collision Sprites
spr_col_stand = spr_col_player_stand;
spr_col_crouch = spr_col_player_crouch;
spr_col_dash = spr_col_player_dash;
spr_collision = spr_col_stand;