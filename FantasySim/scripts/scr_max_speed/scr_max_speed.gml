function scr_max_speed(instance_locomotion_id){
	
	var xSpeed = instance_locomotion_id.xSpeed;
	var ySpeed = instance_locomotion_id.ySpeed;
	var maxSpeed = instance_locomotion_id.maxSpeed;
	
	if (abs(xSpeed) > maxSpeed)
	{
		instance_locomotion_id.xSpeed = maxSpeed * sign(xSpeed);	
	}
	if (abs(ySpeed) > maxSpeed)
	{
		instance_locomotion_id.ySpeed = maxSpeed * sign(ySpeed);	
	}
}