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