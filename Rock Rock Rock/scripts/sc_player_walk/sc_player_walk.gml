// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_player_walk()
{
	var _spr_run	= spr_player_run;
	var _spr_jump	= spr_player_jump;
	if (is_head)
	{
		_spr_run	= spr_player2_run;
		_spr_jump	= spr_player2_jump;
	}
	
	
	var _is_jump = sc_move_walk(_spr_run, 3, _spr_jump);
	if (_is_jump) 
	{
		with (obj_player_head)
		{
			sprite_index	= item_struct.index_spr_jump;
			image_index		= other.image_index
		}
	}
	else 
	{
		with (obj_player_head)
		{
			sprite_index	= item_struct.index_spr_run;
			image_index		= other.image_index
		}
	}
}