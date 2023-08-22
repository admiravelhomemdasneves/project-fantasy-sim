/// @description Insert description here
// You can write your code in this editor

scr_actions_library();

if (instance_exists(parent_manager_id)) { if (instance_exists(parent_manager_id.locomotion_manager)) { locomotion_manager = parent_manager_id.Get_Locomotion_Manager(); }}
if (instance_exists(parent_manager_id)) { if (instance_exists(parent_manager_id.combat_manager)) { combat_manager = parent_manager_id.Get_Combat_Manager(); }}
if (instance_exists(parent_manager_id)) { if (instance_exists(parent_manager_id.stats_manager)) { stats_manager = parent_manager_id.Get_Stats_Manager(); }}
if (instance_exists(parent_manager_id)) { if (instance_exists(parent_manager_id.animation_manager)) { animation_manager = parent_manager_id.Get_Animation_Manager(); }}

if (states_function != -1)
{
	//script_execute(states_function);
	
	states_function();
}