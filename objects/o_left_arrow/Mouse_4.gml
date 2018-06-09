/// @description Insert description here
// You can write your code in this editor
if (me == "Skin Tone")
{
	with (o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Skin Tone");
			p_skintone = ds_map_find_previous(map, p_skintone);
		if(is_undefined(p_skintone))
			p_skintone = ds_map_find_last(map);
		ds_map_destroy(map);
	}
}
else if (me == "Face")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Skin Tone", p_skintone, "Ears");
		if(ears_option > 0)
			ears_option--;
		else
			ears_option = ds_list_size(map) - 1;
		ds_list_destroy(map);
	}
}
else if (me == "Eyes")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Eyes");
		if(eyes_color > 0)
			eyes_color--;
		else
			eyes_color = ds_list_size(map) - 1;
		ds_list_destroy(map);
	}
}
else if (me == "Nose")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Skin Tone", p_skintone, "Nose");
		if(nose_option > 0)
			nose_option--;
		else
			nose_option = ds_list_size(map) - 1;
		ds_list_destroy(map);
	}
}
else if (me == "Gender")
{
	with(o_player)
	{
		if(p_gender == "Male")
			p_gender = "Female";
		else
			p_gender = "Male";
		hair_option = 0;
		hair_color = 0;
		shirt_option = 0;
		shirt_color = 0;
		legs_option = 0;
		legs_color = 0;
		feet_option = 0;
		feet_color = 0;
	}
}
else if (me == "Hair")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Hair");
		if (hair_option > 0)
			hair_option--;
		else
			hair_option = ds_list_size(map) - 1;
		ds_list_destroy(map);
		hair_color = 0;
	}
}
else if (me == "Hair Color")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Hair", hair_option);
		if (hair_color > 0)
			hair_color--;
		else
			hair_color = ds_list_size(map) - 1;
		ds_list_destroy(map);
	}
}
else if (me == "Chest")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Chest");
		if (shirt_option > 0)
			shirt_option--;
		else
			shirt_option = ds_list_size(map) - 1;
		ds_list_destroy(map);
		shirt_color = 0;
	}
}
else if (me == "Chest Color")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Chest", shirt_option);
		if (shirt_color > 0)
			shirt_color--;
		else
			shirt_color = ds_list_size(map) - 1;
		ds_list_destroy(map);
	}
}
else if (me == "Legs")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Legs");
		if (legs_option > 0)
			legs_option--;
		else
			legs_option = ds_list_size(map) - 1;
		ds_list_destroy(map);
		legs_color = 0;
	}
}
else if (me == "Legs Color")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Legs", legs_option);
		if (legs_color > 0)
			legs_color--;
		else
			legs_color = ds_list_size(map) - 1;
		ds_list_destroy(map);
	}
}
else if (me == "Feet")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Feet");
		if (feet_option > 0)
			feet_option--;
		else
			feet_option = ds_list_size(map) - 1;
		ds_list_destroy(map);
		feet_color = 0;
	}
}
else if (me == "Feet Color")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Feet", feet_option);
		if (feet_color > 0)
			feet_color--;
		else
			feet_color = ds_list_size(map) - 1;
		ds_list_destroy(map);
	}
}