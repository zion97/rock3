// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_player_step()
{
	if (!is_jump)
	{
		can_jump	= true;
	}
		
	if (act_index == 1)
	{
		sc_player_stand();
		if (sc_input(0, 1))
		{
			dir = -1;
			sc_player_walk();
		}
		if (sc_input(1, 1))
		{
			dir = 1;
			sc_player_walk();
		}
		if (sc_input(2, 0))
		{
			if (can_jump)
			{
				speed_y		= -5.5;
				y			-= 5.5;
				can_jump	= false;
			}
		}
		
		if (sc_input(3, 0))
		{
			sc_player_put();
			sc_move_player_get();
		}
	}
	else if (act_index == -1)
	{
		sc_player_stand();
	}
	col_item = -1;
}