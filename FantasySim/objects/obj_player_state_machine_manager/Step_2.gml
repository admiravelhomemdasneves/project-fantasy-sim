/// @description Update previous frame state

/*
	In order to not update the state_previous_frame in the same frame as the state variable -
	(even if in a different phase - 'state' is change in the main step event and 'state_previous_frame'
	is changed in the end step) - we'll be updating the 'state_previous' in this phase and only then
	change the state_previous_frame.
*/

if (state_previous_frame != state and state_previous_frame != state_change_aux)
	{ 
		state_previous_frame = state; 
	}

if (state != state_change_aux) //If there's a change in state we update state_previous
	{ 
		state_previous = state_change_aux
		state_change_aux = state; 
	}