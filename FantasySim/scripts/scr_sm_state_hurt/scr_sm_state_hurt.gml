// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sm_state_hurt(){
	scr_basic_movement_input();
	//FALTA CRIAR E IMPOR UMA VELOCIDADE MÁXIMA PARA ESTE ESTADO
	
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