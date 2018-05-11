/// @description Insert description here
// You can write your code in this editor

p_skintone = ds_map_find_next(ds_nested_get(customization, p_gender, "Skin Tone"), p_skintone);
if(is_undefined(p_skintone))
	p_skintone = ds_map_find_first(ds_nested_get(customization, p_gender, "Skin Tone"));