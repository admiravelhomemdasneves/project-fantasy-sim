/// @description Insert description here
// You can write your code in this editor

//VARIABLES FOR/OF EXTERNAL PROCEDURES
release_atk_state_time = 15;
parent_locomotion = parent_manager_id.Get_Locomotion_Manager();
parent_directionX_atStart = parent_locomotion.GetDirectionX();
parent_directionY_atStart = parent_locomotion.GetDirectionY();

//VARIABLES FOR INTERNAL PROCEDURES
life_type = ATTACK_LIFETYPE.TIMED;
life_time = 90;
dead = false;
dead_alarm = 0; //Index of the alarm that turns 'dead' to true

attack_geometry_sprite = ATTACK_GEOMETRY.SQUARE;
attack_geometry_width = 0.5; //Works as percentage - 0.5 meaning half of the original sprite width
attack_geometry_height = 0.5; //Works as percentage - 0.5 meaning half of the original sprite height

attack_locomotion_type = ATTACK_LOCOMOTION.PROJECTILE;
attack_locomotion_direction = point_direction(x, y, parent_directionX_atStart, parent_directionY_atStart);
attack_locomotion_speed = 6;