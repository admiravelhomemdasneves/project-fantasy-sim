/// @description Insert description here
// You can write your code in this editor

draw_self();

//DEBUG
if (distance_to_object(obj_playerOLD)<60)
{
	draw_set_color(c_red);
	draw_set_halign(fa_center);
	draw_text(x,y+16,"grabbed: " + string(grabbed));
	draw_text(x,y+28,"rooted: " + string(rooted));
	draw_text(x,y+40,"unrootingProcess: " + string(unrootingProcess));
	draw_text(x,y+52,"unrootingTarget: " + string(unrootingTarget));
}