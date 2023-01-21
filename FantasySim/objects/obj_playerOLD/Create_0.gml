/// @description Data Initialization
//Movement
CROUCHSpeed = 2;
walkingSpeed = 4;
RUNningSpeed = 8;
DODGESpeed = 18;
maxSpeed = walkingSpeed;

CROUCHAccel = 0.1;
walkingAccel = 0.2;
RUNningAccel = 0.6;
DODGEAccel = 1;
accel = walkingAccel;

DODGEStartX = 0;
DODGEStartY = 0;
DODGEMouseTargetX = 0;
DODGEMouseTargetY = 0;
DODGEMoveH = 0;
DODGEMoveV = 0;
DODGERange = 90;
DODGECountDown = 30;
DODGEAble = true;
speedLossOnMisdirectionRate = 4; //The lower the less speed is lost on player route misdirection (left to right/ up to down)

obj_grabbed = 0;
objectGrabRange = 16;
accelObjectWeightMultiplier = 0.1;

fric = 0.4;

moveH = 0;
moveV = 0;

xSpeed = 0;
ySpeed = 0;

//Sprites
spr_col_stand = spr_col_player_stand;
spr_col_CROUCH = spr_col_player_CROUCH;
spr_col_dash = spr_col_player_dash;

//State Machine
state = PlayerSTATES.free;

//Gear
gearPrimaryHand = 0;
gearSecondaryHand = 0;

//Game System
if (!instance_exists(obj_player_direction_targetOLD)) {instance_create_depth(x,y,0,obj_player_direction_targetOLD);}