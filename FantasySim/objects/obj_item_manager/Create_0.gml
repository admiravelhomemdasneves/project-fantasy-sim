/// @description Insert description here
// You can write your code in this editor

event_inherited();

//For Room Editor Diplay Purposes there's a sprite atributed to this object but we later want to remove it
sprite_index = -1;

entity_type = ENTITY.ITEM;

	/*STRUCTS*/
struct_locomotion = { 
	parent_manager_id : id, 
	collision_on : v_collision_on, 
	spr_collision : v_spr_collision,
	spr_collision_width : v_spr_collision_width,
	spr_collision_height : v_spr_collision_height,
	spr_collision_orientation : v_spr_collision_orientation
};

struct_animation = { 
	parent_manager_id : id, 
	spr_animation : v_spr_animation 
};

struct_stats = { 
	parent_manager_id : id, 
	max_health_points : v_max_health_points , 
	death_on : v_death_on, 
	destroy_on_death : v_destroy_on_death,
	item_drop : v_item_drop
};

struct_state_machine = { 
	parent_manager_id : id, 
	states_function : v_states_function 
};

	/*MANAGERS*/
locomotion_manager = instance_create_depth(0, 0, 0, obj_locomotion_manager, struct_locomotion);
animation_manager = instance_create_depth(0, 0, 0, obj_animation_manager, struct_animation);
stats_manager = instance_create_depth(0, 0, 0, obj_stats_manager, struct_stats);
state_machine_manager = instance_create_depth(0, 0, 0, obj_state_machine_manager, struct_state_machine);

delete struct_locomotion;
delete struct_animation;
delete struct_stats;
delete struct_state_machine;

/*	LIST OF MANAGERS FOR REFERENCE
locomotion_manager = undefined;
state_machine_manager = undefined;
camera_manager = undefined;
stats_manager = undefined;
animation_manager = undefined;
combat_manager = undefined;
*/