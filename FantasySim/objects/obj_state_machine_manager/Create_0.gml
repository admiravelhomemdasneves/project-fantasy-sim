/// @description Insert description here
// You can write your code in this editor

state = STATES.IDLE;
state_change_aux = state; //auxiliary variable to help calculate previous states and state change
state_previous = state;
state_previous_frame = state_previous;
locomotion_manager = -1;
combat_manager = -1;
stats_manager = -1;
animation_manager = -1;
state_reset_alarm = 0; //Id of the alarm that resets 'state' to STATES.IDLE