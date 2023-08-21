/// @description Insert description here
// You can write your code in this editor

event_inherited();

//For Room Editor Diplay Purposes there's a sprite atributed to this object but we later want to remove it
sprite_index = -1;

struct_locomotion = { parent_manager_id : id, collision_on : v_collision_on };
struct_animation = { parent_manager_id : id, spr_animation : v_spr_animation };

locomotion_manager = instance_create_depth(0, 0, 0, obj_locomotion_manager, struct_locomotion);
animation_manager = instance_create_depth(0, 0, 0, obj_animation_manager, struct_animation);

delete struct_locomotion;
delete struct_animation;

/*	LIST OF MANAGERS FOR REFERENCE
locomotion_manager = undefined;
state_machine_manager = undefined;
camera_manager = undefined;
stats_manager = undefined;
animation_manager = undefined;
combat_manager = undefined;
*/