/// @description Insert description here
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

draw_sprite_part(s_base[base_gender,base_skin], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
if (base_gender == 0)
{
	draw_sprite_part(s_m_feet[feet_option,feet_color], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_m_legs[legs_option,legs_color], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_m_shirt[shirt_option,shirt_color], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_m_hair[hair_option,hair_color], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_m_eyes[eyes_option], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_m_ears[base_skin,ears_option], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_m_nose[base_skin,nose_option], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
}
else
{
	draw_sprite_part(s_f_feet[feet_option,feet_color], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_f_legs[legs_option,legs_color], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_f_shirt[shirt_option,shirt_color], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_f_hair[hair_option,hair_color], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_f_eyes[eyes_option], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_f_ears[base_skin,ears_option], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
	draw_sprite_part(s_f_nose[base_skin,nose_option], 0, frame_size * floor(x_frame), frame_size * y_frame, 64, 64, xx, yy);
}

if (x_frame < anim_length - 1)
	x_frame += anim_speed / 60;
else
	x_frame = 1;