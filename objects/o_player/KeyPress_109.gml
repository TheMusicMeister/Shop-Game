/// @description Insert description here
// You can write your code in this editor
if (room_get_name(room) == "r_default")
{
	x_frame = 0;
	y_frame = 10;
	x_save = x;
	y_save = y;
	x = 512;
	y = 384;
	draw = false;
	room_goto(r_character_customization);

}
else if (room_get_name(room) != "r_default")
{
	x = x_save;
	y = y_save;
	x_frame = 0;
	y_frame = 10;
	draw = true;
	room_goto(r_default);
}