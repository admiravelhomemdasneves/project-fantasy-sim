// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_item_drop_array(){
	/*
		THIS SCRIPT ACCEPTS OBJECTS IN PAIRS OF [OBJECT, QUANTITY]
		AND RETURNS A 2D ARRAY WITH THOSE VALUES SO THAT
		THE ITEMS THAT MUST BE DROPPED WHEN AN INSTANCE IS DESTROYED
		CAN BE READ FROM THE ARRAY
	*/
	
	if (argument_count != 0)
	{
		if (argument_count mod 2 == 0) //If we have a even number of arguments
		{
			var item_drop_array = [][];
		
			for(args=0; args<argument_count/2; args++)
			{
				item_drop_array[args][0] = argument[args*2];	//Here is where we store the object to be created
				item_drop_array[args][1] = argument[args*2+1];  //Here is where we store the number of objects to create
			}
			
			return item_drop_array;
		}
		else
		{
			return -1;	
		}
	}
	else
	{
		return -1;	
	}
}