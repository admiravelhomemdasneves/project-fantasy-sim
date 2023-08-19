/// @description Insert description here
// You can write your code in this editor

event_inherited();

sprite_index = -1;

struct_locomotion = { parent_manager_id : id, collision_on : false };
struct_animation = { parent_manager_id : id, spr_animation : spr_rock_tiny };

locomotion_manager = instance_create_depth(0, 0, 0, obj_locomotion_manager, struct_locomotion);
animation_manager = instance_create_depth(0, 0, 0, obj_animation_manager, struct_animation);

delete struct_locomotion;
delete struct_animation;
delete struct_manager_id;