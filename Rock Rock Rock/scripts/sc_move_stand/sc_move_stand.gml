// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_move_stand(_stand_spr, _jump_spr = -1)
{
	var _is_jump = false;
	sprite_index	= _stand_spr;
	image_xscale	= dir;
	speed_x			= 0;
	
	if (_jump_spr != -1 && is_jump)
	{
		sprite_index = _jump_spr;
		image_index = 0;
		if (speed_y > 0)	image_index = 1;
		 _is_jump = true;
	}
	
	return _is_jump;
}

