/// @description Initialize Manager

UI_elements_list = ds_list_create();

//Functions

Add_UI_Element = function(var_ui_element)
{
	ds_list_add(UI_elements_list, var_ui_element);	
}

Destroy_UI_Element = function(var_ui_element)
{
	if (UI_Element_Exists(var_ui_element))
	{
		var element_pos = ds_list_find_index(UI_elements_list, var_ui_element);
		
		ds_list_delete(UI_elements_list, element_pos);
		instance_destroy(var_ui_element);
	}
}

UI_Element_Exists = function(var_ui_element)
{
	if (ds_list_find_index(UI_elements_list, var_ui_element) != -1)
	{
		return true;	
	}
	else
	{
		return false;	
	}
}