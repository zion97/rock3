// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_player_step()
{
	sc_move_stand(spr_player_stand, spr_player_jump);
	
	if (keyboard_check(vk_left))
	{
		dir = -1;
		sc_move_walk(spr_player_run, 3, spr_player_jump);
	}
	if (keyboard_check(vk_right))
	{
		dir = 1;
		sc_move_walk(spr_player_run, 3, spr_player_jump);
	}
	
	if (keyboard_check_pressed(ord("C")))
	{
		speed_y = -5;
	}
}