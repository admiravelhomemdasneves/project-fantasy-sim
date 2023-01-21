/// @description Insert description here
// You can write your code in this editor

scr_actions_library();
if (instance_exists(parent_manager_id)) { locomotion_manager = parent_manager_id.Get_Locomotion_Manager(); }
if (instance_exists(parent_manager_id)) { action_manager = parent_manager_id.Get_Action_Manager(); }

switch (state)
{
	case STATES.IDLE:
		scr_basic_movement_input();
		if (locomotion_manager.moveH != 0 or locomotion_manager.moveV != 0) { state = STATES.RUN; }
	break;
	
	case STATES.RUN:
		if (locomotion_manager.GetMaxSpeed() != locomotion_manager.walkingSpeed)
			{ locomotion_manager.SetMaxSpeed(locomotion_manager.walkingSpeed); }
		scr_basic_movement_input();
		if (input_check("special")) { state = STATES.SPRINT; }
		if (input_check("action")) { state = STATES.CROUCH; }
		if (locomotion_manager.moveH == 0 and locomotion_manager.moveV == 0) { state = STATES.IDLE; }
	break;
	
	case STATES.SPRINT:
		if (locomotion_manager.GetMaxSpeed() != locomotion_manager.runningSpeed)
			{ locomotion_manager.SetMaxSpeed(locomotion_manager.runningSpeed); }
		scr_basic_movement_input();
		if (!input_check("special")) { state = STATES.RUN; }
	break;
	
	case STATES.CROUCH:
		if (locomotion_manager.GetMaxSpeed() != locomotion_manager.crouchSpeed)
			{ locomotion_manager.SetMaxSpeed(locomotion_manager.crouchSpeed); }
		scr_basic_movement_input();
		if (!input_check("action")) { state = STATES.RUN; }
	break;
	
	case STATES.DODGE:
	break;

	default:
	break;
}