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
	
	function actionDodge (dodge_speed)
	{
		if (state_previous_frame != state) //HAPPENS ONLY ONCE, IMMEDIATELY AFTER THE STATE HAS CHANGED TO DODGE
		{
			if (locomotion_manager.GetMoveX()==0 and locomotion_manager.GetMoveY()==0) //BACKWARDS JUMP IF NO KEY IS PRESSED
			{
				locomotion_manager.AddLinearImpulseAwayFromPointRelativeToPlayer(locomotion_manager.GetDirectionX(), locomotion_manager.GetDirectionY(), dodge_speed);
			}
			else //DODGE IN THE DIRECTION OF THE KEYS PRESSED
			{
				locomotion_manager.AddLinearImpulseTowardsPoint(locomotion_manager.GetMoveX(), locomotion_manager.GetMoveY(), dodge_speed);
			}
		}
	}
	
	function actionHurt ()
	{
		var attack = undefined;
		var damage = undefined;
	
		if(alarm_get(state_reset_alarm) < 0) //Checks if the alarm that resets to the IDLE state is not running
		{
			with(locomotion_manager)
			{
				if (place_meeting(x, y, obj_atk))
				{
					attack = instance_place(x, y, obj_atk);
				
					if (instance_exists(attack))
					{
						damage = attack.GetAttackDamageOutput();
					}
				}
			}
		
			if (damage != undefined)
			{
				parent_manager_id.Get_Stats_Manager().Decrease_Health_Points_By_Amount(damage);
			}
				
			alarm_set(state_reset_alarm, 30); //Launches the alarm to reset state to IDLE
		}
	
		//Destroy the attack that took damage away from the player
		if (instance_exists(attack))
		{
			if (attack.destroy_on_contact)
			{
				instance_destroy(attack);	
			}
		}
	}
	
	function actionAttack()
	{
		var attack = undefined;
	
		if(alarm_get(state_reset_alarm) < 0)
		{
			attack = instance_create_depth(locomotion_manager.x, locomotion_manager.y, 0, combat_manager.equipped_weapon.attack, struct_manager_id);
			alarm_set(state_reset_alarm, attack.release_atk_state_time); //TURNS BACK TO IDLE AT THE OF RELESE_ATK_STATE_TIME SET IN THE ATTACK CREATED
		}
	}
}