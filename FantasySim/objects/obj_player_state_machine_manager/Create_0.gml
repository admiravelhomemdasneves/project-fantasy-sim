/// @description Insert description here
// You can write your code in this editor

state = STATES.IDLE;
state_change_aux = state; //auxiliary variable to help calculate previous states and state change
state_previous = state;
state_previous_frame = state_previous;
locomotion_manager = -1;