/// @description Insert description here
// You can write your code in this editor

//DEATH STATUS
if (death_on)
{
	if (health_points <= 0)
	{
		Add_Status(STATUS.DEATH);
	}
	else
	{
		if (Status_Exists(STATUS.DEATH))
		{
			Remove_Status(STATUS.DEATH);	
		}
	}
}

if (Status_Exists(STATUS.DEATH))
{
	if (destroy_on_death)
	{
		Drop_Items(parent_manager_id.locomotion_manager.x, parent_manager_id.locomotion_manager.y);
		parent_manager_id.Destroy_Entity();
	}
}