function scr_calculate_speed(instance_locomotion_id){
	
	var moveH = instance_locomotion_id.moveH;
	var moveV = instance_locomotion_id.moveV;
	var xSpeed = instance_locomotion_id.xSpeed;
	var ySpeed = instance_locomotion_id.ySpeed;
	var speedLossOnMisdirectionRate = instance_locomotion_id.speedLossOnMisdirectionRate;
	var accel = instance_locomotion_id.accel;
	var fric = instance_locomotion_id.fric;
	
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
}