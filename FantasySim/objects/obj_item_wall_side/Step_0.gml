/// @description Insert description here
// You can write your code in this editor

if (collision_rectangle(wall_observer[0], wall_observer[1], wall_observer[2], wall_observer[3], obj_locomotion_manager, true, true))
{
	var col = collision_rectangle(wall_observer[0], wall_observer[1], wall_observer[2], wall_observer[3], obj_locomotion_manager, true, true);
	
	if (col.GetItemTag() == item_tag and col.id != locomotion_manager.id and col.spr_collision_orientation == COLLISION_ORIENTATION.SIDE)
	{
		v_spr_collision_height[COLLISION_ORIENTATION.SIDE] = v_spr_animation_height / 2;	
	}
}
else
{
	v_spr_collision_height[COLLISION_ORIENTATION.SIDE] = collision_mask_height;
}