// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gameplay_init_enums(){
	enum ENTITY {
		PLAYER,
		ITEM
	}
	
	enum STATES {
		IDLE,
		RUN,
		SPRINT,
		CROUCH,
		DODGE,
		ATTACK,
		HURT
	}
	
	enum CAMERA {
		MODE_SINGLE_PLAYER,
		MODE_MULTIPLAYER,
		DEFAULT_WIDTH = 1366,
		DEFAULT_HEIGHT = 768
	}
	
	enum ATTACK_LIFETYPE {
		TIMED,
		DESTROY_ONLY_ON_CONTACT
	}
	
	enum ATTACK_GEOMETRY {
		SQUARE,
		CIRCLE
	}
	
	enum ATTACK_LOCOMOTION {
		IDLE,
		PROJECTILE,
		TARGET_FOLLOWER
	}
	
	enum STATUS {
		DEATH	
	}
	
	enum COLLISION_ORIENTATION {
		FRONT = 0,
		SIDE = 1
	}
	
	enum ITEM_TAG {
		WALL	
	}
}