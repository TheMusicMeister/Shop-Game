// ---- Movement

iLeft = keyboard_check(vk_left);
iRight = keyboard_check(vk_right);
iDown = keyboard_check(vk_down);
iUp = keyboard_check(vk_up);

xspd = (iRight - iLeft) * spd;
yspd = (iDown - iUp) * spd;

if (xspd != 0)
{
	if (place_meeting (x + xspd, y + yspd, o_solid))
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

if (yspd != 0)
{
	if (place_meeting (x + xspd, y + yspd, o_solid))
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