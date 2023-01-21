/// @description Insert description here
// You can write your code in this editor

if (instance_exists(parent_manager_id)) { locomotion_manager = parent_manager_id.Get_Locomotion_Manager(); }
if (instance_exists(parent_manager_id)) { state_machine_manager = parent_manager_id.Get_State_Machine_Manager(); }

	//Movement and Sprite Direction
if (instance_exists(locomotion_manager))
{
	x = locomotion_manager.x;
	y = locomotion_manager.y
}

if (locomotion_manager.moveH != 0) {sprite_direction = locomotion_manager.moveH;}