/// @description Custom draw event
// You can write your code in this editor
//draw_set_color (c_black);
//draw_text (x, y-30, sprite_get_name(s_base));

var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

var xx = x - x_offset;
var yy = y - y_offset;

if (room_get_name(room) = "r_default"){
if		(xspd < 0) y_frame = 9;
else if (xspd > 0) y_frame = 11;
else if (yspd < 0) y_frame = 8;
else if (yspd > 0) y_frame = 10;
else			   x_frame = 0;
}

global.filename = file_text_open_read(working_directory + "customization.json");
//customization = ds_map_create();
customization = json_decode(file_text_read_string(global.filename));
file_text_close(global.filename);

if (draw){
draw_sprite_part(asset_get_index(ds_nested_get(customization, p_gender, "Skin Tone", p_skintone, "Base")), 0, frame_size * floor(x_frame), frame_size * floor(y_frame), 64, 64, xx, yy);
draw_sprite_part(asset_get_index(ds_nested_get(customization, p_gender, "Feet", feet_option, feet_color)), 0, frame_size * floor(x_frame), frame_size * floor(y_frame), 64, 64, xx, yy);
draw_sprite_part(asset_get_index(ds_nested_get(customization, p_gender, "Legs", legs_option, legs_color)), 0, frame_size * floor(x_frame), frame_size * floor(y_frame), 64, 64, xx, yy);
draw_sprite_part(asset_get_index(ds_nested_get(customization, p_gender, "Chest", shirt_option, shirt_color)), 0, frame_size * floor(x_frame), frame_size * floor(y_frame), 64, 64, xx, yy);
draw_sprite_part(asset_get_index(ds_nested_get(customization, p_gender, "Eyes", eyes_color)), 0, frame_size * floor(x_frame), frame_size * floor(y_frame), 64, 64, xx, yy);	
draw_sprite_part(asset_get_index(ds_nested_get(customization, p_gender, "Hair", hair_option, hair_color)), 0, frame_size * floor(x_frame), frame_size * floor(y_frame), 64, 64, xx, yy);
draw_sprite_part(asset_get_index(ds_nested_get(customization, p_gender, "Skin Tone", p_skintone, "Ears", ears_option)), 0, frame_size * floor(x_frame), frame_size * floor(y_frame), 64, 64, xx, yy);
draw_sprite_part(asset_get_index(ds_nested_get(customization, p_gender, "Skin Tone", p_skintone, "Nose", nose_option)), 0, frame_size * floor(x_frame), frame_size * floor(y_frame), 64, 64, xx, yy);
}

if (x_frame < anim_length - 1)
	x_frame += anim_speed / 60;
else
{
	x_frame = 1;
//	if (room_get_name(room) != "r_default"){
//	y_frame += .15;
//	if (y_frame >= 12)
//		y_frame = 8;
//	}
}