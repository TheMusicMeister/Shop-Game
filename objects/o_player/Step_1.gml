xspd = 0;
yspd = 0;

if (update == 1)
{
if (base_gender == 0)
{
	if (s_ears != s_m_ears_default)
	{
		if (string_pos ("elven", sprite_get_name (s_ears)) != 0)
			switch (s_base)
			{
				case s_m_base_tanned:	s_ears = s_m_ears_elven_tanned; break;
				case s_m_base_tanned2:	s_ears = s_m_ears_elven_tanned2; break;
				case s_m_base_dark:		s_ears = s_m_ears_elven_dark; break;
				case s_m_base_dark2:	s_ears = s_m_ears_elven_dark2; break;
				case s_m_base_light:	s_ears = s_m_ears_elven_light; break;
				case s_m_base_darkelf:	s_ears = s_m_ears_elven_darkelf; break;
				case s_m_base_darkelf2:	s_ears = s_m_ears_elven_darkelf2; break;
				default:				s_ears = s_m_ears_default;
										show_message ("Selected race does not have custom ears.  Resetting to default.");
										break;
			}
		else if (string_pos ("big", sprite_get_name (s_ears)) != 0)
			switch (s_base)
			{
				case s_m_base_tanned:	s_ears = s_m_ears_big_tanned; break;
				case s_m_base_tanned2:	s_ears = s_m_ears_big_tanned2; break;
				case s_m_base_dark:		s_ears = s_m_ears_big_dark; break;
				case s_m_base_dark2:	s_ears = s_m_ears_big_dark2; break;
				case s_m_base_light:	s_ears = s_m_ears_big_light; break;
				case s_m_base_darkelf:	s_ears = s_m_ears_big_darkelf; break;
				case s_m_base_darkelf2:	s_ears = s_m_ears_big_darkelf2; break;
				default:				s_ears = s_m_ears_default;
										show_message ("Selected race does not have custom ears.  Resetting to default.");
										break;
			}
	}
}
if (base_gender == 1)
{
	if (s_ears != s_f_ears_default)
	{
		if (string_pos ("elven", sprite_get_name (s_ears)) != 0)
			switch (s_base)
			{
				case s_f_base_tanned:	s_ears = s_f_ears_elven_tanned; break;
				case s_f_base_tanned2:	s_ears = s_f_ears_elven_tanned2; break;
				case s_f_base_dark:		s_ears = s_f_ears_elven_dark; break;
				case s_f_base_dark2:	s_ears = s_f_ears_elven_dark2; break;
				case s_f_base_light:	s_ears = s_f_ears_elven_light; break;
				case s_f_base_darkelf:	s_ears = s_f_ears_elven_darkelf; break;
				case s_f_base_darkelf2:	s_ears = s_f_ears_elven_darkelf2; break;
				default:				s_ears = s_f_ears_default;
										show_message ("Selected race does not have custom ears.  Resetting to default.");
										break;
			}
		else if (string_pos ("big", sprite_get_name (s_ears)) != 0)
			switch (s_base)
			{
				case s_f_base_tanned:	s_ears = s_f_ears_big_tanned; break;
				case s_f_base_tanned2:	s_ears = s_f_ears_big_tanned2; break;
				case s_f_base_dark:		s_ears = s_f_ears_big_dark; break;
				case s_f_base_dark2:	s_ears = s_f_ears_big_dark2; break;
				case s_f_base_light:	s_ears = s_f_ears_big_light; break;
				case s_f_base_darkelf:	s_ears = s_f_ears_big_darkelf; break;
				case s_f_base_darkelf2:	s_ears = s_f_ears_big_darkelf2; break;
				default:				s_ears = s_f_ears_default;
										show_message ("Selected race does not have custom ears.  Resetting to default.");
										break;
			}
	}
}
update = 0;
}