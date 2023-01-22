function scr_calculate_speed(instance_locomotion_id){
	
	var moveH = instance_locomotion_id.moveH;
	var moveV = instance_locomotion_id.moveV;
	var xSpeed = instance_locomotion_id.xSpeed;
	var ySpeed = instance_locomotion_id.ySpeed;
	var speedLossOnMisdirectionRate = instance_locomotion_id.speedLossOnMisdirectionRate;
	var accel = instance_locomotion_id.accel;
	var fric = instance_locomotion_id.fric;
	var xImpulse = instance_locomotion_id.xImpulse;
	var yImpulse = instance_locomotion_id.yImpulse;
	
	if (moveH != 0)
	{
		if (abs(xSpeed) > 1 && sign(xSpeed) != sign(moveH))
		{
			instance_locomotion_id.xSpeed = -(xSpeed / speedLossOnMisdirectionRate);	
		}
	
		instance_locomotion_id.xSpeed += accel * sign(moveH);	
	}
	else
	{
		if (abs(xSpeed) >= fric)
		{
			instance_locomotion_id.xSpeed -= fric * sign(xSpeed);	
		}
		else
		{
			instance_locomotion_id.xSpeed = 0;
		}
	}
	
	if (moveV != 0)
	{
		if (abs(ySpeed) > 1 && sign(ySpeed) != sign(moveV))
		{
			instance_locomotion_id.ySpeed = -(ySpeed / speedLossOnMisdirectionRate);	
		}
	
		instance_locomotion_id.ySpeed += accel * sign(moveV);	
	}
	else
	{
		if (abs(ySpeed) >= fric)
		{
			instance_locomotion_id.ySpeed -= fric * sign(ySpeed);	
		}
		else
		{
			instance_locomotion_id.ySpeed = 0;
		}
	}
	
	if (xImpulse != 0)
	{
		if (abs(xImpulse) >= fric)
		{
			instance_locomotion_id.xImpulse -= fric * sign(xImpulse);
		}
		else
		{
			instance_locomotion_id.xImpulse = 0;
		}
	}
	
	if (yImpulse != 0)
	{
		if (abs(yImpulse) >= fric)
		{
			instance_locomotion_id.yImpulse -= fric * sign(yImpulse);
		}
		else
		{
			instance_locomotion_id.yImpulse = 0;
		}
	}
}