function scr_max_speed(instance_locomotion_id){
	
	var xSpeed = instance_locomotion_id.xSpeed;
	var ySpeed = instance_locomotion_id.ySpeed;
	var xImpulse = instance_locomotion_id.xImpulse;
	var yImpulse = instance_locomotion_id.yImpulse;
	var maxSpeed = instance_locomotion_id.maxSpeed;
	
	if (abs(xSpeed) > maxSpeed + xImpulse)
	{
		instance_locomotion_id.xSpeed = (maxSpeed + xImpulse) * sign(xSpeed);	
	}
	if (abs(ySpeed) > maxSpeed + yImpulse)
	{
		instance_locomotion_id.ySpeed = (maxSpeed + yImpulse) * sign(ySpeed);	
	}
}