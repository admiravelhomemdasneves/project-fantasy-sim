/// @description Insert description here
// You can write your code in this editor

	/*BASIC STATS*/
//max_health_points -> SET IN VARIABLE DEFINITIONS
health_points = max_health_points;

	/*STATUS SYSTEM*/
status_list = ds_list_create();

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

Add_Status = function(var_status)
{
	if (ds_list_find_index(status_list, var_status) == -1) //If the status does not exist in our list
	{
		ds_list_add(status_list, var_status);
	}
}

Remove_Status = function(var_status)
{
	if (ds_list_find_index(status_list, var_status) != -1) //If the status exists in our list
	{
		ds_list_delete(status_list, ds_list_find_index(status_list, var_status));
	}
}

Status_Exists = function(var_status)
{
	if (ds_list_find_index(status_list, var_status) != -1) //If the status exists in our list
	{
		return true;
	}
	else
	{
		return false;	
	}
}