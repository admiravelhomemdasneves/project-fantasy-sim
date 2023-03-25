/// @description Insert description here
// You can write your code in this editor

if (!grabbable){grabbed = false;}
if (!storable){stored = false;}
if (!destroyable){destroyed = false;}

if (grabbed and rooted)
{
	if (unrootingProcess < unrootingTarget)
	{
		unrootingProcess += unrootingPace;
	}
	else
	{
		rooted = false;	
	}
}
else
if (grabbed and !rooted)
{
	xSpeed = obj_playerOLD.xSpeed;
	ySpeed = obj_playerOLD.ySpeed;
}

if (!grabbed and !throwed)
{
	xSpeed = 0;
	ySpeed = 0;
}

x += xSpeed;
y += ySpeed;