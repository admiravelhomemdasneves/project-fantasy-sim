/// @description Cameras

var number_of_cameras = instance_number(obj_player_camera);
	
	//Camera: Mode Detection
if (number_of_cameras > 1)
{
	camera_mode = CAMERA.MODE_MULTIPLAYER;
}
else
{
	camera_mode = CAMERA.MODE_SINGLE_PLAYER;	
}

	//Camera: Following target
if (parent_manager_id != -1)
{
	target = parent_manager_id.locomotion_manager;	
}

if (target != noone)
{
	target_x = target.x;
	target_y = target.y;
}

x = lerp(x, target_x, follow_speed);
y = lerp(y, target_y, follow_speed);

	//Camera and Viewport: Dimensions and Position
if (camera_mode == CAMERA.MODE_MULTIPLAYER)
{
	view_port_width = width/2;
	view_port_height = height;
}
else if (camera_mode == CAMERA.MODE_SINGLE_PLAYER)
{
	view_port_width = width;
	view_port_height = height;
}

view_set_wport(view_camera_id, view_port_width);
view_set_hport(view_camera_id, view_port_height);
view_set_xport(view_camera_id, view_port_width * view_camera_id);
view_set_yport(view_camera_id, 0);

camera_set_view_size(view_camera[view_camera_id], view_port_width, view_port_height);
camera_set_view_pos(view_camera[view_camera_id], x-(view_port_width/2), y-(view_port_height/2));