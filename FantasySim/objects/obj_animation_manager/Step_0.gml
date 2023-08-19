/// @description Insert description here
// You can write your code in this editor

if (instance_exists(parent_manager_id)) 
{ 
	if (instance_exists(parent_manager_id.locomotion_manager))
	{
		locomotion_manager = parent_manager_id.Get_Locomotion_Manager(); 
	}
}

if (instance_exists(parent_manager_id)) 
{ 
	if (instance_exists(parent_manager_id.state_machine_manager))
	{
		state_machine_manager = parent_manager_id.Get_State_Machine_Manager();
	}
}

	//Sprite
if (spr_animation != -1)
{
	sprite_index = spr_animation;	
}

	//Movement and Sprite Direction
if (instance_exists(locomotion_manager))
{
	x = locomotion_manager.x;
	y = locomotion_manager.y;
	
	if (locomotion_manager.moveH != 0) {sprite_direction = locomotion_manager.moveH;}
}