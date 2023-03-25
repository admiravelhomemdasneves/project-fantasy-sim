// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gameplay_init_enums(){
	//State Machine
	enum STATES {
		IDLE = 0,
		RUN = 1,
		SPRINT = 2,
		CROUCH = 3,
		DODGE = 4
	}
	
	enum CAMERA {
		MODE_SINGLE_PLAYER,
		MODE_MULTIPLAYER,
		DEFAULT_WIDTH = 1366,
		DEFAULT_HEIGHT = 768
	}
}