/// @description Insert description here
// You can write your code in this editor

health_points = 100;
max_health_points = 100;

//Methods
Get_Health_Points = function()
{
	return health_points;
}

Set_Health_Points = function(var_health_points)
{
	health_points = var_health_points;
}

Decrease_Health_Points_By_Amount = function(var_amount)
{
	health_points -= var_amount;
}