/// @description Insert description here
// You can write your code in this editor

event_inherited();

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