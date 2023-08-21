/// @description Insert description here
// You can write your code in this editor

locomotion_manager = undefined;
state_machine_manager = undefined;
camera_manager = undefined;
stats_manager = undefined;
animation_manager = undefined;
combat_manager = undefined;

//delete struct_manager_id; SHOULD BE APPLIED IN CHILD OBJECT

//Methods
Get_Locomotion_Manager = function()
{
	return locomotion_manager;	
}

Get_Input_Manager = function()
{
	return input_manager;	
}

Get_State_Machine_Manager = function()
{
	return state_machine_manager;	
}

Get_Camera_Manager = function()
{
	return camera_manager;	
}

Get_Combat_Manager = function()
{
	return combat_manager;	
}

Get_Stats_Manager = function()
{
	return stats_manager;	
}

Get_Animation_Manager = function()
{
	return animation_manager;	
}