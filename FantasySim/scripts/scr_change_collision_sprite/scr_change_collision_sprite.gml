// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_collision_sprite(locomotion_manager, var_sprite){
	if (locomotion_manager.GetCollisionSprite() != var_sprite)
	{
		locomotion_manager.SetCollisionSprite(var_sprite);	
	}
}