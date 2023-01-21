/// @description Insert description here
// You can write your code in this editor

var var_player_id = parent_manager_id.player_number;

draw_healthbar(64, 64*var_player_id, 500, 84*var_player_id, (health_points/max_health_points)*100, c_black, c_red, c_green, 0, true, true);