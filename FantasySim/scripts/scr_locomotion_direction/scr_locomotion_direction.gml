// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_locomotion_direction() {
	if (variable_instance_exists(parent_manager_id, "player_number"))
	{
		input_cursor_speed_set(direction_cursor_speed, parent_manager_id.player_number-1);
		input_cursor_limit_circle(x, y, arrowDistanceToPlayer*2, parent_manager_id.player_number-1);
	
		direction_target_x = input_cursor_x(parent_manager_id.player_number-1);
		direction_target_y = input_cursor_y(parent_manager_id.player_number-1);
	
		//Rotation and Position of the arrow
		arrow_rot = point_direction(x,y,direction_target_x,direction_target_y);
		arrow_x = x + lengthdir_x(arrowDistanceToPlayer, arrow_rot);
		arrow_y = y + lengthdir_y(arrowDistanceToPlayer, arrow_rot);
	}
	else
	{
		arrow_x = 0;
		arrow_y = 0;
	}
}