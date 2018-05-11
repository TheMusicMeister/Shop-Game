/// @description Insert description here
// You can write your code in this editor
if (me == "Skin Tone")
{
	with (o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Skin Tone");
		p_skintone = ds_map_find_next(map, p_skintone);
		if(is_undefined(p_skintone))
			p_skintone = ds_map_find_first(map);
	}
}
else if (me == "Face")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Skin Tone", p_skintone, "Ears");
		if(ears_option < ds_list_size(map) - 1)
			ears_option++;
		else
			ears_option = 0;
	}
}
else if (me == "Eyes")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Eyes");
		if(eyes_color < ds_list_size(map) - 1)
			eyes_color++;
		else
			eyes_color = 0;
	}
}
else if (me == "Nose")
{
	with(o_player)
	{
		var map = ds_nested_get(customization, p_gender, "Skin Tone", p_skintone, "Nose");
		if(nose_option < ds_list_size(map) - 1)
			nose_option++;
		else
			nose_option = 0;
	}
}