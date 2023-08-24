/// @description DEBUG

/*
draw_set_color(c_black);
draw_text(x, y+8, "v_collision_on : " + string(v_collision_on));
draw_text(x, y+18, "v_spr_animation : " + string(v_spr_animation));
draw_text(x, y+28, "v_max_health_points : " + string(v_max_health_points));
draw_text(x, y+38, "v_states_function : " + string(v_states_function));
draw_text(x, y+48, "locomotion collision_on : " + string(locomotion_manager.collision_on));
*/

draw_set_color(c_black);

if (instance_exists(stats_manager)) { draw_text(x, y+8, "hp : " + string(stats_manager.health_points)); }

if (sprite_index != -1) { draw_self(); }