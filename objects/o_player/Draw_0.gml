/// @description Insert description here
// You can write your code in this editor
var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

if		(xspd < 0) y_frame = 9;
else if (xspd > 0) y_frame = 11;
else if (yspd < 0) y_frame = 8;
else if (yspd > 0) y_frame = 10;
else			   x_frame = 0;


draw_sprite_part(s_female_1, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, x, y);

if (x_frame < anim_length - 1)
	x_frame += anim_speed / 60;
else
	x_frame = 1;