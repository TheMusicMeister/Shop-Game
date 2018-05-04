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

/*for (var i = 0; i < 2; i++)
	for (var j = 0; j < 10; j++)
		s_base[i,j] = s_player_mask;		//s_base[gender,skin_tone]
for (var i = 0; i < 10; i++)
	for (var j = 0; j < 3; j++)
	{
		s_f_ears[i,j] = s_f_ears_default;	//s_f/m_ears[skin_tone,default/big/elven]
		s_m_ears[i,j] = s_m_ears_default;
		s_f_nose[i,j] = s_f_nose_default;	//s_f/m_nose[skin_tone,default/big/button/straight]
		s_m_nose[i,j] = s_m_nose_default;
	}
for (var i = 0; i < 10; i++)
{
	s_f_eyes[i] = s_f_eyes_default;			//s_f/m_eyes[eye_color]
	s_m_eyes[i] = s_m_eyes_default;
}
for (var i = 0; i < 1; i++)
	for (var j = 0; j < 8; j++)
	{
		s_m_hair[i,j] = s_m_hair_bangs_brown;	//s_m/f_hair[hair_type,hair_color]
		s_f_hair[i,j] = s_f_hair_bangs_brown;
	}
for (var i = 0; i < 2; i++)
	for (var j = 0; j < 4; j++)
	{
		s_m_shirt[i,j] = s_m_shirt_longsleeve_brown;	//s_m/f_shirt[shirt_type,shirt_color]
		s_f_shirt[i,j] = s_f_shirt_pirate_brown;
	}

	
//////Filling arrays with options; gaps keep their default setting
////Ears
//Female
s_f_ears[1,0] = s_f_ears_big_dark;
s_f_ears[1,1] = s_f_ears_big_dark2;
s_f_ears[1,2] = s_f_ears_big_darkelf;
s_f_ears[1,3] = s_f_ears_big_darkelf2;
s_f_ears[1,4] = s_f_ears_big_light;
s_f_ears[1,8] = s_f_ears_big_tanned;
s_f_ears[1,9] = s_f_ears_big_tanned2;
s_f_ears[2,0] = s_f_ears_elven_dark;
s_f_ears[2,1] = s_f_ears_elven_dark2;
s_f_ears[2,2] = s_f_ears_elven_darkelf;
s_f_ears[2,3] = s_f_ears_elven_darkelf2;
s_f_ears[2,4] = s_f_ears_elven_light;
s_f_ears[2,8] = s_f_ears_elven_tanned;
s_f_ears[2,9] = s_f_ears_elven_tanned2;

//Male
s_m_ears[1,0] = s_m_ears_big_dark;
s_m_ears[1,1] = s_m_ears_big_dark2;
s_m_ears[1,2] = s_m_ears_big_darkelf;
s_m_ears[1,3] = s_m_ears_big_darkelf2;
s_m_ears[1,4] = s_m_ears_big_light;
s_m_ears[1,8] = s_m_ears_big_tanned;
s_m_ears[1,9] = s_m_ears_big_tanned2;
s_m_ears[2,0] = s_m_ears_elven_dark;
s_m_ears[2,1] = s_m_ears_elven_dark2;
s_m_ears[2,2] = s_m_ears_elven_darkelf;
s_m_ears[2,3] = s_m_ears_elven_darkelf2;
s_m_ears[2,4] = s_m_ears_elven_light;
s_m_ears[2,8] = s_m_ears_elven_tanned;
s_m_ears[2,9] = s_m_ears_elven_tanned2;

////Eyes
//Female
s_f_eyes[1] = s_f_eyes_blue;
s_f_eyes[2] = s_f_eyes_brown;
s_f_eyes[3] = s_f_eyes_glow;
s_f_eyes[4] = s_f_eyes_gray;
s_f_eyes[5] = s_f_eyes_green;
s_f_eyes[6] = s_f_eyes_orange;
s_f_eyes[7] = s_f_eyes_purple;
s_f_eyes[8] = s_f_eyes_red;
s_f_eyes[9] = s_f_eyes_yellow;

//Male
s_m_eyes[1] = s_m_eyes_blue;
s_m_eyes[2] = s_m_eyes_brown;
s_m_eyes[3] = s_m_eyes_glow;
s_m_eyes[4] = s_m_eyes_gray;
s_m_eyes[5] = s_m_eyes_green;
s_m_eyes[6] = s_m_eyes_orange;
s_m_eyes[7] = s_m_eyes_purple;
s_m_eyes[8] = s_m_eyes_red;
s_m_eyes[9] = s_m_eyes_yellow;

////Skin Tones
s_base[0,0] = s_m_base_dark;
s_base[0,1] = s_m_base_dark2;
s_base[0,2] = s_m_base_darkelf;
s_base[0,3] = s_m_base_darkelf2;
s_base[0,4] = s_m_base_light;
s_base[0,5] = s_m_base_orc;
s_base[0,6] = s_m_base_redorc;
s_base[0,7] = s_m_base_skeleton;
s_base[0,8] = s_m_base_tanned;
s_base[0,9] = s_m_base_tanned2;
s_base[1,0] = s_f_base_dark;
s_base[1,1] = s_f_base_dark2;
s_base[1,2] = s_f_base_darkelf;
s_base[1,3] = s_f_base_darkelf2;
s_base[1,4] = s_f_base_light;
s_base[1,5] = s_f_base_orc;
s_base[1,6] = s_f_base_redorc;
s_base[1,7] = s_f_base_skeleton;
s_base[1,8] = s_f_base_tanned;
s_base[1,9] = s_f_base_tanned2;