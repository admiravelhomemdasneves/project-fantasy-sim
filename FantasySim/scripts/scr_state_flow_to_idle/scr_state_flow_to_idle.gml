// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_flow_to_idle(){
	if (locomotion_manager.moveH == 0 and locomotion_manager.moveV == 0) { state = STATES.IDLE; }
}