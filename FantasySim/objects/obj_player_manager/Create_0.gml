/// @description Insert description here
// You can write your code in this editor

struct_manager_id = {
	parent_manager_id : id
}

player_number = instance_number(obj_player_manager);
manager_id = "Player"+string(player_number);
locomotion_manager = instance_create_depth(x, y, 0, obj_player_locomotion, struct_manager_id);
action_manager = instance_create_depth(x, y, 0, obj_player_action_manager, struct_manager_id);
state_machine_manager = instance_create_depth(x, y, 0, obj_player_state_machine, struct_manager_id);
camera_manager = instance_create_depth(x, y, 0, obj_player_camera, struct_manager_id);
player_stats_manager = instance_create_depth(x, y, 0, obj_player_stats, struct_manager_id);
animation_manager = instance_create_depth(x, y, 0, obj_player_animation, struct_manager_id);

delete struct_manager_id;

//Methods
Get_Locomotion_Manager = function()
{
	return locomotion_manager;	
}

Get_Input_Manager = function()
{
	return input_manager;	
}

Get_Action_Manager = function()
{
	return action_manager;	
}

Get_State_Machine_Manager = function()
{
	return state_machine_manager;	
}

Get_Camera_Manager = function()
{
	return camera_manager;	
}