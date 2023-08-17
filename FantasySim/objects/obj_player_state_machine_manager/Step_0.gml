/// @description Insert description here
// You can write your code in this editor

scr_actions_library();

if (instance_exists(parent_manager_id)) { locomotion_manager = parent_manager_id.Get_Locomotion_Manager(); }
if (instance_exists(parent_manager_id)) { combat_manager = parent_manager_id.Get_Combat_Manager(); }
if (instance_exists(parent_manager_id)) { stats_manager = parent_manager_id.Get_Stats_Manager(); }
if (instance_exists(parent_manager_id)) { animation_manager = parent_manager_id.Get_Animation_Manager(); }

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

	case STATES.ATTACK:
		scr_sm_state_attack();
	break;
	
	case STATES.HURT:
		scr_sm_state_hurt();
	break;
	
	default:
		scr_sm_state_idle();
	break;
}