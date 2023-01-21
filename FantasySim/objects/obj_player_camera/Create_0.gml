/// @description Insert description here
// You can write your code in this editor

view_camera_id = parent_manager_id.player_number-1;

view_visible[view_camera_id] = true;

width = CAMERA.DEFAULT_WIDTH;
height = CAMERA.DEFAULT_HEIGHT;
view_port_width = width;
view_port_height = height;

camera = undefined;

target = noone;

target_x = x;
target_y = y;

follow_speed = .05;

camera_mode = CAMERA.MODE_SINGLE_PLAYER;