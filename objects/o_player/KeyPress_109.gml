/// @description Insert description here
// You can write your code in this editor
if (room_get_name(room) == "r_default")
{
	x_frame = 0;
	y_frame = 10;
	x_save = x;
	y_save = y;
	x = 672;
	y = 156;
	room_goto(r_character_customization_base_m);
}
else if (room_get_name(room) == "r_character_customization_base_m")
{
	x = x_save;
	y = y_save;
	x_frame = 0;
	y_frame = 10;
	room_goto(r_default);
}