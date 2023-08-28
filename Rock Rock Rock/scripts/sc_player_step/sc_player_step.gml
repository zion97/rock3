// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_player_step()
{
	sprite_index = spr_player_stand
	speed_x = 0;
	if (keyboard_check(vk_left))
	{
		sprite_index = spr_player_run;
		image_xscale = -1;
		speed_x = -3;
	}
	if (keyboard_check(vk_right))
	{
		sprite_index = spr_player_run;
		image_xscale = 1;
		speed_x = 3;
	}
	
	if (keyboard_check_pressed(ord("C")))
	{
		speed_y = -5;
	}
	
	if (is_jump)
	{
		sprite_index = spr_player_jump;
		image_index = 0;
		if (speed_y > 0)	image_index = 1;
	}
}