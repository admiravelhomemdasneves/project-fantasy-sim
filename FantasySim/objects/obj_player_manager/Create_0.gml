/// @description Insert description here
// You can write your code in this editor

event_inherited();

player_number = instance_number(obj_player_manager);
manager_id = "Player"+string(player_number);
locomotion_manager = instance_create_depth(x, y, 0, obj_player_locomotion_manager, struct_manager_id);
state_machine_manager = instance_create_depth(x, y, 0, obj_player_state_machine_manager, struct_manager_id);
camera_manager = instance_create_depth(x, y, 0, obj_player_camera_manager, struct_manager_id);
player_stats_manager = instance_create_depth(x, y, 0, obj_player_stats_manager, struct_manager_id);
animation_manager = instance_create_depth(x, y, 0, obj_player_animation_manager, struct_manager_id);
combat_manager = instance_create_depth(x, y, 0, obj_player_combat_manager, struct_manager_id);

delete struct_manager_id;