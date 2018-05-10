spd = 2;
xspd = 0;
yspd = 0;
update = 0;
COLLISION = false;
x_frame = 0;
y_frame = 11;
x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);
s_base = s_m_base_light;
s_shirt = s_m_shirt_longsleeve_teal;
s_legs = s_m_legs_pants_white;
s_feet = s_m_feet_shoes_black;
s_eyes = s_m_eyes_default;
s_nose = s_m_nose_default;
s_ears = s_m_ears_elven_light;
s_hair = s_m_hair_bangs_brown;
base_gender = 0;
base_skin = 0;
shirt_option = 0;
shirt_color = 0;
legs_option = 0;
legs_color = 0;
feet_option = 0;
feet_color = 0;
hair_option = 0;
hair_color = 0;
ears_option = 0;
eyes_option = 0;
nose_option = 0;
depth = -y;

var json = ds_map_create();
var layer2 = ds_map_create();
var list = ds_list_create();
ds_list_add(list, "test1", "test2");
ds_map_add(layer2, "test1", "value1");
ds_map_add_list(json, "list", list);
ds_map_add_map(json, "maplayer", layer2);
global.filename = file_text_open_write(working_directory + "testfile.txt");
if (global.filename > -1)
	show_message ("File created!");
else
	show_message ("File creation error!");
file_text_write_string(global.filename, json_encode(json));

var customize_list = ds_map_create();

/*{ "Male":	{	"Skin":	[dark, light, orc, etc]
				"Hair": [wavy, long, short, bangs, etc]
				"Etc": [etc]	}