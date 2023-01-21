/// @description Insert description here
// You can write your code in this editor

if (input_player_connected_count() > instance_number(obj_player_manager))
{
	instance_create_depth(x, y, 0, obj_player_manager);	
}