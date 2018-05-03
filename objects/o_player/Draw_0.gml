/// @description Custom draw event
// You can write your code in this editor
var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

var xx = x - x_offset;
var yy = y - y_offset;

if		(xspd < 0) y_frame = 9;
else if (xspd > 0) y_frame = 11;
else if (yspd < 0) y_frame = 8;
else if (yspd > 0) y_frame = 10;
else			   x_frame = 0;

draw_sprite_part(s_base, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
if (base_gender == 0)
{
	draw_sprite_part(s_feet, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_legs, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_shirt, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_hair, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_eyes, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_ears, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_nose, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
}
else
{
	draw_sprite_part(s_feet, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_legs, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_shirt, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_hair, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_eyes, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_ears, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_nose, 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
}

if (x_frame < anim_length - 1)
	x_frame += anim_speed / 60;
else
	x_frame = 1;