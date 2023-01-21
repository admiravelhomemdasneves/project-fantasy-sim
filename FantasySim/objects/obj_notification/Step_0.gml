/// @description Insert description here
// You can write your code in this editor

//Update notification id
with (obj_notification_system)
{
	other.notification_id = ds_list_find_index(active_notifications, other.id);
}

//Activate lifetime alarm
if (active)
{
	if (alarm[0] <= -1) alarm[0] = lifetime;	
}

//Fade out
if (lifetime_over)
{
	KillAlpha();	
}

//Kill
if (dead) 
{
	obj_notification_system.KillActiveNotification(notification_id);
	instance_destroy(id);
}