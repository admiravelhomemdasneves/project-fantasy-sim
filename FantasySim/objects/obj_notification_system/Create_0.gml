/// @description Insert description here
// You can write your code in this editor

active_notifications_max_size = 6;
active_notifications = ds_list_create();
notifications_queue = ds_list_create();

border_x = 32;
border_y = 32;
spacing = 16;

/*
CreateNotificationEvent = function(var_notification_event)
{
	ds_list_add(notifications_queue, var_notification_event);
}
*/

CreateNotificationEvent = function(var_notification_event, var_text)
{
	with (var_notification_event)
	{
		text = var_text;	
	}
	
	ds_list_add(notifications_queue, var_notification_event);
}

ActivateNotification = function()
{
	if (ds_list_size(active_notifications) < active_notifications_max_size)
	{
		var new_active_notification = ds_list_find_value(notifications_queue, 0);
		new_active_notification.active = true;		
		ds_list_insert(active_notifications, 0, new_active_notification);
		ds_list_delete(notifications_queue, 0);
	}
}

KillActiveNotification = function (var_id)
{
	ds_list_delete(active_notifications, var_id);
}