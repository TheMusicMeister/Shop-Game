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
	}
}