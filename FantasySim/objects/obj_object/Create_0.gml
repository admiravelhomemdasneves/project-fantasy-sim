/// @description Insert description here
// You can write your code in this editor

storable = false;
grabbable = false;
rooted = false;
destroyable = false;

grabbed = false;
stored = false;
destroyed = false;
throwed = false;

xSpeed = 0;
ySpeed = 0;

weight = 1;
hp = 1;

unrootingProcess = 0;
unrootingPace = 1 / game_get_speed(gamespeed_fps);
unrootingMultiplier = 0.5;
unrootingTarget = weight * unrootingMultiplier;