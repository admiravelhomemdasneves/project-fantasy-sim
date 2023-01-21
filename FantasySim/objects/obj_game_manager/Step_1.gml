/// @description TESTING PURPOSES
if (instance_exists(obj_player_manager))
{
	var locomotion_manager = obj_player_manager.Get_Locomotion_Manager();
	var camera_manager = obj_player_manager.Get_Camera_Manager();
	
	with (locomotion_manager)
	{
		if (x < 0) 
		{
			x = room_width;
			camera_manager.x = room_width;
		}
		if (x > room_width) 
		{
			x = 0;
			camera_manager.x = 0;
		}
		if (y < 0) 
		{
			y = room_height;
			camera_manager.y = room_height;
		}
		if (y > room_height) 
		{
			y = 0;
			camera_manager.y = 0;
		}
	}
}