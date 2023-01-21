// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_notification(var_text){
	if (!instance_exists(obj_notification_system))
	{
		sys_notification = instance_create_depth(0,0,0,obj_notification_system);	
	}
	else
	{
		sys_notification = instance_find(obj_notification_system, 0);
	}
	
	new_notification_event = instance_create_depth(0,0,0,obj_notification);
	
	sys_notification.CreateNotificationEvent(new_notification_event, var_text);
}