 /// @description Insert description here
// You can write your code in this editor

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

//Functions
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