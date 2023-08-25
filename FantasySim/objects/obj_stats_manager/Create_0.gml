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

Drop_Items = function(var_x, var_y)
{
	if (typeof(item_drop) == "array")
	{
		for(item=0; item<array_length(item_drop); item++)
		{
			for(quantity=0; quantity<item_drop[item][1]; quantity++)
			{
				var offset_x = random_range(-48, 48);
				var offset_y = random_range(-48, 48);
				var created_item = instance_create_depth(var_x + offset_x, var_y + offset_y, 0, item_drop[item][0]);
			}
		}
	}
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