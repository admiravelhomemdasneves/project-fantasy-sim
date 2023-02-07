// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_dodge(){
	locomotion_manager.AddImpulse(30, 30);
	scr_change_collision_sprite(locomotion_manager, locomotion_manager.spr_col_dash);
	state = STATES.IDLE;
}