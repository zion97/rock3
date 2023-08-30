// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_player_step()
{
	if (act_index)
	{
		sc_player_stand();
		if (keyboard_check(vk_left))
		{
			dir = -1;
			sc_player_walk();
		}
		if (keyboard_check(vk_right))
		{
			dir = 1;
			sc_player_walk();
		}
		if (keyboard_check_pressed(ord("C")))
		{
			speed_y = -5;
		}
		
		if (keyboard_check_pressed(ord("X")))
		{
			sc_player_throw();
			sc_move_player_get();
		}
	}
	else
	{
		//act_index();
	}
	col_item = -1;
}