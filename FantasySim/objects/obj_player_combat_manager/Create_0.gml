/// @description Insert description here
// You can write your code in this editor

combat_mode = false;
equipped_weapon = obj_wpn_unnarmed;

//Methods
GetCombatMode = function()
{
	return combat_mode;	
}

SetCombatMode = function(var_combat_mode)
{
	combat_mode = var_combat_mode;	
}

GetEquippedWeapon = function()
{
	return equipped_weapon;	
}

SetEquippedWeapon = function(var_equipped_weapon)
{
	equipped_weapon = var_equipped_weapon;	
}