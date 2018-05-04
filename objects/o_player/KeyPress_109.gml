/// @description Insert description here
// You can write your code in this editor
if (room_get_name(room) == "r_default")
{
	x_frame = 0;
	y_frame = 10;
	room_goto(r_character_customization_base_m);
}
else if (room_get_name(room) == "r_character_customization_base_m")
{
	room_goto(r_default);
}