/// @description Insert description here
// You can write your code in this editor

if (active)
{
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	draw_set_color(color);
	draw_set_font(fnt_notifications);					
	draw_text_ext_color(obj_notification_system.border_x, 
					obj_notification_system.border_y + (obj_notification_system.spacing * notification_id),
					text,
					font_spacing,
					window_get_width()-obj_notification_system.border_x,
					color, color, color, color,
					alpha)
}

//DEBUG
/*
draw_text(obj_notification_system.border_x + 500, 
		obj_notification_system.border_y + (obj_notification_system.spacing * notification_id),
		"Notification_id: " + string(notification_id));
*/