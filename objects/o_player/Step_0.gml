if(room_get_name(room) == "r_default"){
// ---- Movement

iLeft = keyboard_check(vk_left);
iRight = keyboard_check(vk_right);
iDown = keyboard_check(vk_down);
iUp = keyboard_check(vk_up);

xspd = (iRight - iLeft) * spd;
yspd = (iDown - iUp) * spd;

//////Movement and Collision Checking
////Horizontal
if (xspd != 0)
{
	if (place_meeting (x + xspd, y, o_solid))
	{
		repeat (abs (xspd))
		{
			if (!place_meeting (x + sign (xspd), y, o_solid))
				x += sign (xspd);
			else
				break;
		}
		xspd = 0;
	}
}

////Vertical
if (yspd != 0)
{
	if (place_meeting (x, y + yspd, o_solid))
	{
		repeat (abs (yspd))
		{
			if (!place_meeting (x, y + sign (yspd), o_solid))
				y += sign (yspd);
			else
				break;
		}
		yspd = 0;
	}
}

x += xspd;
y += yspd;

//////Character Customization
////Gender
if (keyboard_check_pressed(vk_numpad0))
{
	if (base_gender == 0)
		base_gender = 1;
	else
		base_gender = 0;
}

////Skin Tone
if (keyboard_check_pressed(vk_numpad1))
{
	if (base_skin < array_length_2d(s_base, base_gender) - 1)
		base_skin++;
	else
		base_skin = 0;
}
}