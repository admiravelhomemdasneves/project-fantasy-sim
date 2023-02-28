//Input defines the default profiles as a macro called 
//This macro is parsed when Input boots up and provides the baseline bindings for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The root struct called INPUT_DEFAULT_PROFILES contains the names of each default profile
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

INPUT_DEFAULT_PROFILES = {
    
    keyboard_and_mouse:
    {
		button_dpad_up: input_binding_key(vk_up),
		button_dpad_down: input_binding_key(vk_down),
		button_dpad_left: input_binding_key(vk_left),
		button_dpad_right: input_binding_key(vk_right),
		
		button_left_stick_up: input_binding_key("W"),
		button_left_stick_down: input_binding_key("S"),
		button_left_stick_left: input_binding_key("A"),
		button_left_stick_right: input_binding_key("D"),
		
		/*
		button_right_stick_up: input_binding_gamepad_axis(gp_axisrv, true),
		button_right_stick_down: input_binding_gamepad_axis(gp_axisrv, false),
		button_right_stick_left: input_binding_gamepad_axis(gp_axisrh, true),
		button_right_stick_right: input_binding_gamepad_axis(gp_axisrh, false),
		*/
		
		button_y: input_binding_key("E"),
		button_b: input_binding_key(vk_shift),
		button_a: input_binding_key(vk_control),
		button_x: input_binding_key(vk_space),
		
		button_left_bumper: input_binding_mouse_button(mb_left),
		button_left_trigger: input_binding_key("G"),
		button_left_stick_press: input_binding_key("H"),
		
		button_right_bumper: input_binding_mouse_button(mb_right),
		button_right_trigger: input_binding_key("B"),
		button_right_stick_press: input_binding_key("N"),
		
		button_start: input_binding_key(vk_escape),
		button_select: input_binding_key(vk_enter),
    },
    
    gamepad:
    {
		button_dpad_up: input_binding_gamepad_button(gp_padu),
		button_dpad_down: input_binding_gamepad_button(gp_padd),
		button_dpad_left: input_binding_gamepad_button(gp_padl),
		button_dpad_right: input_binding_gamepad_button(gp_padr),
		
		button_left_stick_up: input_binding_gamepad_axis(gp_axislv, true),
		button_left_stick_down: input_binding_gamepad_axis(gp_axislv, false),
		button_left_stick_left: input_binding_gamepad_axis(gp_axislh, true),
		button_left_stick_right: input_binding_gamepad_axis(gp_axislh, false),
		
		button_right_stick_up: input_binding_gamepad_axis(gp_axisrv, true),
		button_right_stick_down: input_binding_gamepad_axis(gp_axisrv, false),
		button_right_stick_left: input_binding_gamepad_axis(gp_axisrh, true),
		button_right_stick_right: input_binding_gamepad_axis(gp_axisrh, false),
		
		button_y: input_binding_gamepad_button(gp_face4),
		button_b: input_binding_gamepad_button(gp_face2),
		button_a: input_binding_gamepad_button(gp_face1),
		button_x: input_binding_gamepad_button(gp_face3),
		
		button_left_bumper: input_binding_gamepad_button(gp_shoulderl),
		button_left_trigger: input_binding_gamepad_button(gp_shoulderlb),
		button_left_stick_press: input_binding_gamepad_button(gp_stickl),
		
		button_right_bumper: input_binding_gamepad_button(gp_shoulderr),
		button_right_trigger: input_binding_gamepad_button(gp_shoulderrb),
		button_right_stick_press: input_binding_gamepad_button(gp_stickr),
		
		button_start: input_binding_gamepad_button(gp_start),
		button_select: input_binding_gamepad_button(gp_select),
    },
    
};

//Names of the default profiles to use when automatically assigning profiles based on the source that a
//player is currently using. Default profiles for sources that you don't intend to use in your game do
//not need to be defined
#macro INPUT_AUTO_PROFILE_FOR_KEYBOARD     "keyboard_and_mouse"
#macro INPUT_AUTO_PROFILE_FOR_MOUSE        "keyboard_and_mouse"
#macro INPUT_AUTO_PROFILE_FOR_GAMEPAD      "gamepad"
#macro INPUT_AUTO_PROFILE_FOR_MIXED        "mixed"
#macro INPUT_AUTO_PROFILE_FOR_MULTIDEVICE  "multidevice"

//Toggles whether INPUT_KEYBOARD and INPUT_MOUSE should be considered a single source at all times
//For most PC games you'll want to tie the keyboard and mouse together but occasionally having them
//separated out is useful
#macro INPUT_ASSIGN_KEYBOARD_AND_MOUSE_TOGETHER  true

//Whether to allow default profiles (see below) to contain different verbs. Normally every profile
//should contain a reference to every verb, but for complex games this is inconvenient
#macro INPUT_ALLOW_ASSYMMETRIC_DEFAULT_PROFILES  true