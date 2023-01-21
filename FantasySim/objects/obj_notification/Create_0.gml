/// @description Insert description here
// You can write your code in this editor

notification_id = 0;
text = "This is a notification!";
font = fnt_notifications;
font_spacing = 8;
color = c_black;
alpha = 1;
lifetime = 60;
lifetime_over = false;
active = false;
dead = false;

KillAlpha = function()
{
	if (alpha > 0)
	{
		alpha -= 0.05;	
	}
	else
	{
		dead = true;	
	}
}