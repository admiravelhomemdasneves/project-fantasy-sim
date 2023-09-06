 /// @description Insert description here
// You can write your code in this editor

//Constructor
UI_Element = function(
	var_UI_tag, 
	var_UI_element_x, 
	var_UI_element_y, 
	var_UI_element_width, 
	var_UI_element_height, 
	var_draw_on) constructor
{
	UI_tag = var_UI_tag;
	UI_element_x = var_UI_element_x;
	UI_element_y = var_UI_element_y;
	UI_element_width = var_UI_element_width;
	UI_element_height = var_UI_element_height;
	draw_on = var_draw_on;
	
	CreateSelf();
}

//Functions
CreateSelf = function()
{
	if (instance_exists(obj_UI_manager))
	{
		with(obj_UI_manager)
		{
			if (!UI_Element_Exists(id))
			{
				Add_UI_Element(id);
			}
		}
	}
}

DestroySelf = function()
{
	if (instance_exists(obj_UI_manager))
	{
		with(obj_UI_manager)
		{
			Destroy_UI_Element(id);
		}
	}
	else
	{
		instance_destroy(id);	
	}
}

DrawSelf = function(var_x, var_y, var_width, var_height)
{
	switch(UI_tag)
	{
		case UI_ELEMENTS.HEALTHBAR:
			draw_healthbar(var_x, var_y, var_x+var_width, var_y+var_height, 100, c_black, c_green, c_green, 0, 1, 1);
		break;
		
		default:
		break;
	}
}