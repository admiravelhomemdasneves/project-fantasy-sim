/// @description Insert description here
// You can write your code in this editor

scr_actions_library();
if (instance_exists(parent_manager_id)) { locomotion_manager = parent_manager_id.Get_Locomotion_Manager(); }
if (instance_exists(parent_manager_id)) { action_manager = parent_manager_id.Get_Action_Manager(); }

switch (state)
{
	case STATES.IDLE:
		scr_sm_state_idle();
	break;
	
	case STATES.RUN:
		scr_sm_state_run();
	break;
	
	case STATES.SPRINT:
		scr_sm_state_sprint();
	break;
	
	case STATES.CROUCH:
		scr_sm_state_crouch();
	break;
	
	case STATES.DODGE:
		scr_sm_state_dodge();
	break;

	default:
		scr_sm_state_idle();
	break;
}