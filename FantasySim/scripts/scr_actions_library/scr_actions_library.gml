// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_actions_library(){
	function actionMoveVertical (locomotion_manager, direction_value)
	{
		locomotion_manager.MoveVertically(direction_value);
	}
	
	function actionMoveHorizontal (locomotion_manager, direction_value)
	{
		locomotion_manager.MoveHorizontally(direction_value);
	}
}